# TIDENet: TinyML Image Detection on the Edge with Neural Networks

![TIDENet](https://user-images.githubusercontent.com/20258533/127727938-ccdee7c5-3582-4c0c-a487-ed6c02af17ac.png)


TinyML Image Detection on the Edge with neural networks, or TIDENet, is an ASIC accelerator and ASIC accelerator framework for processing Deep Neural Network Models, written in Verilog using DNNBuilder, targeting the Google SkyWater PDK, OpenLANE, and Caravel. We plan to facilitate the use of custom ASICs as devices capable of full machine learning inference without the difficulty involved in custom IC design.

The main advantages of TIDENet in comparison with similar frameworks (such as autoDNNchip) are the fully open source design flow, usage of openRAM, and caravel targeting.

---

## Overview

This is a University of Virginia HPLP (High Performance Low Power) lab project specifying an ASIC designed for the CIFAR-10 dataset (32x32). This project was submitted for consideration of inclusion into the SSCS Open-Source Design Contest (PICO) for 2021. 

Using DNNBuilder, we generated FPGA-oriented HDL for a pretrained neural network describing the CIFAR-10 dataset. We then took this HDL and modified it for compatibility with the caravel harness (efabless Caravel chip on Google/Skywater 130nm Open PDK). 

#### Process flow

![Hardening process (1)](https://user-images.githubusercontent.com/20258533/138537795-bab417b4-c6be-4b17-a5b8-a931fb069f7f.jpeg)


Notes on the process flow:

- As we progress through the steps prior to passing HDL to OpenLANE, we synthesize targeting Xilinx FPGA boards in Vivado. This allows us to verify logic and data flow are functional prior to hardening. 
- DNNBuilder produces a directory of synthesizable Verilog HDL according to our specifications. We have generated multiple DNNBuilder directories across multiple neural network models in order to identify one that would work within the constraints of the Caravel harness. The primary constraint is die area.

## Roadmap

Contest Homepage:
https://sscs.ieee.org/about/solid-state-circuits-directions/sscs-pico-design-contest

Our initial submission proposal can be found in this repository.

## Repository overview

![image](https://user-images.githubusercontent.com/20258533/138537984-624b54e4-ce74-48d3-9c54-83a4d6a3ebd1.png)

OpenRAM repository - contains our generated SRAM modules
AccDNN directory - contains our HDL, modified in place after DNNBuilder (AccDNN) generated FPGA Verilog HDL

## Metrics

Two main models were used: a modified LeNet-1 for the MNIST dataset and Alex Krizhevsky's cuda-convnet for the CIFAR-10 dataset, the latter of which is used as a tutorial example both for caffe and DNNBuilder. Our modified LeNet-1 with 98% accuracy consists of two convolution/ReLU/max-pooling layers with 4 and 8 filters respectively, ending with a softmax layer. The CIFAR-10 network with ~75% accuracy consists of three convolution/ReLU/max-pooling layers with 32, 32, and 64 filters respectively, ending with a 64 neuron fully connected layer and a softmax layer. 

### CIFAR-10 Quantized Model

We took advantage of the ability to use quantized models with DNNBuilder, using the provided example in DNNBuilder for a quantized version of the CNN on CIFAR-10, with 16 bit activations, 8 bit weights for convolutions, and 4 bit weights for fully connected layers. We are currently working on setting up a quantized version of LeNet-1 to run with DNNBuilder to save computational resources on the ASIC.

## DNNBuilder (also referred to as AccDNN)

https://github.com/IBM/AccDNN

DNNBuilder is a tool for generating FPGA HDL from neural network descriptions written in Caffe. It includes several pretrained models out of the box, including a YOLO model, CIFAR-10, a quantized CIFAR-10 model, and more. DNNBuilder's authors found the YOLO model running on a Xilinx ZC706 FPGA to be 75.5% accurate.

We have made the shift from DNNWeaver 2.0 to DNNBuilder for our initial Verilog neural net generation. We first generated multiple complete neural network FPGA projects with DNNBuilder, using different neural networks specified in Caffe for comparison. We determined that the CIFAR-10 FPGA project was the best candidate for conversion to an ASIC on the caravel platform because of die area constraints (less than 10mm^2 are allocated for our design). 

Much of the technology from DNNBuilder is carried over to TIDENet, such as the column-based cache scheme (to buffer input data) as well as the architecture of the computational engine. More on this can be found on the DNNBuilder paper on the IEEE IEEEexplore site: DNNBuilder: an Automated Tool for Building High-Performance DNN Hardware Accelerators for FPGAs.

DNNBuilder output for our most recent LeNet-1 network:

![c](https://user-images.githubusercontent.com/20258533/138520033-2cfda512-86d5-441d-972e-8369507bdd64.PNG)



![image](https://user-images.githubusercontent.com/20258533/138520366-a6ca3055-4a12-41b0-8bb6-8e28f5904f1f.png)

## SRAM Requirements

We used OpenRAM to generate SRAM volatile memory registers for each layer. 

[OpenRAM](https://github.com/VLSIDA/OpenRAM) is an open-source SRAM generator (compiler).  
We used technology files found here: https://github.com/vsdip/vsdsram_sky130  
Also we benefit from the SKY130_caravel testchip generated by OpenRAM creators: https://github.com/VLSIDA/openram_testchip  

For our LeNet1 model we require 11 SRAMs. The parameters for the SRAMs are in this table:
| name of the SRAM | word width | # of words |
| --- | --- | --- |
|conv1_rm_ram |16 |336 |
|conv1_wm_ram |16 | 100|
|conv1_bm_ram |16 |4|
|pool1_rm_ram |16 |384|
|conv2_rm_ram |16 |288|
|conv2_wm_ram |16| 200|
|conv2_bm_ram |16 |8|
|pool2_rm_ram |16 |256|
|ip1_rm_ram |16 |256|
|ip1_wm_ram |16| 256|
|ip1_bm_ram |16 |10|

OpenRAM generated SRAM files can be found in [OpenRAM/results/DNNBuilder_leNet1](https://github.com/coleblackman/TIDENet/tree/master/OpenRAM/results/DNNBuilder_leNet1). We use smallest possible SRAM that can be generated by OpenRAM for smaller RAMs.

---

## Schematics

![schematic_conv](https://user-images.githubusercontent.com/20258533/138538905-c9c54eb2-ee78-41b2-ac6f-b6cca18d533c.png)

![schematic_pool](https://user-images.githubusercontent.com/20258533/138538929-eae8f5d0-3098-47ac-b001-d7893c34f829.png)

![schematic_ip](https://user-images.githubusercontent.com/20258533/138538932-8eb0b056-0789-466d-9144-2dc5d9a2131a.png)

### Team members
Cole Blackman (Undergraduate), Justin Zhang (Undergraduate), M. Ceylan Morgul (Ph.D. student)  
University of Virginia  
High Performance Low Power Lab  
Electrical and Computer Enginering  

---

# REFERENCES
https://github.com/IBM/AccDNN
https://github.com/VLSIDA/OpenRAM
https://github.com/vsdip/vsdsram_sky130
https://github.com/VLSIDA/openram_testchip


X. Zhang et al., "DNNBuilder: an Automated Tool for Building High-Performance DNN Hardware Accelerators for FPGAs," 2018 IEEE/ACM International Conference on Computer-Aided Design (ICCAD), 2018, pp. 1-8, doi: 10.1145/3240765.3240801.
