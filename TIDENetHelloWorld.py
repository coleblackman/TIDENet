import dnnweaver2

import logging
import numpy as np
import array

from dnnweaver2.benchmarks import get_graph
from dnnweaver2.simulator.accelerator import Accelerator
from dnnweaver2.compiler import *
from dnnweaver2.fpga.fpgamanager import FPGAManager

from dnnweaver2.scalar.dtypes import FixedPoint


print("Hello world DNNWeaver2.0 output Neural network")

graph = Graph('YOLOv2-Test: 16-bit', dataset='imagenet', log_level=logging.INFO)
batch_size = 1

with graph.as_default():

    with graph.name_scope('inputs'):
        i = get_tensor(shape=(batch_size,32,32,3), name='data', dtype=FQDtype.FXP16, trainable=False)

    with graph.name_scope('conv0'):
        weights = get_tensor(shape=(128, 3, 3, 3),
                             name='weights',
                             dtype=FixedPoint(16,12))
        biases = get_tensor(shape=(128),
                             name='biases',
                             dtype=FixedPoint(32,20))
        conv = conv2D(i, weights, biases, pad='SAME', dtype=FixedPoint(16,8))
    # DnnWeaver2 automatically takes care of type conversion
    with graph.name_scope('pool1'):
        pool = maxPool(conv, pooling_kernel=(1,2,2,1), stride=(1,2,2,1), pad='VALID')


print('*'*50)
print('List of ops (nodes) in the graph')
# print the ops in the yolo2_graph
for op in graph.op_registry:
    print('\tOp name: {}'.format(op))
print('*'*50)
    
print('*'*50)
print('List of tensors (edges) in the graph')
# print the tensors in the yolo2_graph
for tname, t in graph.tensor_registry.iteritems():
    print('\t{}'.format(t))
print('*'*50)

# Step 2.1
# on-chip BRAM buffers (number_bram * data_type * entries)
num_rows = 32
num_cols = 32
bram = {
    'ibuf':            num_cols * 16 * 2048 / 2,
    'obuf':            num_rows * 64 * 2048 / 2,
    'wbuf': num_cols * num_rows * 16 *  512 / 2,
    'bbuf':            num_rows * 32 * 2048 / 2,
}
acc_obj = Accelerator(
    N=num_rows, M=num_cols,
    prec=16,
    mem_if_width=256,
    frequency=150e6,
    sram=bram
)

print(acc_obj.__str__())

# Step 2.2
log_level = logging.INFO
compiler = GraphCompiler(log_level=log_level)
inst_binary = compiler.compile(graph=graph, acc_obj=acc_obj)

print('Number of instructions: {}'.format(inst_binary.size))

# Program the accelerator
fpga_manager = FPGAManager()
fpga_manager.write('pci_cl_data', 0, inst_binary)

import time

num_tests = 100
start = time.time()
for i in range(num_tests):    
    # Start the accelerator
    fpga_manager.start()
    # Wait for execution to finish
    fpga_manager.wait_fpga_execution()
end = time.time()

print('Frames per second: {}'.format(1./(end-start)))