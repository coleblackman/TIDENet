export OPENRAM_TECH="/home/mm4uz/Documents/openram/vsdsram_sky130/OpenRAM/technology"
export OPENRAM_HOME="/home/mm4uz/Documents/openram/vsdsram_sky130/OpenRAM/compiler"

python3 $OPENRAM_HOME/openram.py ./config_conv1_bm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_conv1_rm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_conv1_wm_ram.py

python3 $OPENRAM_HOME/openram.py ./config_pool1_rm_ram.py

python3 $OPENRAM_HOME/openram.py ./config_conv2_bm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_conv2_rm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_conv2_wm_ram.py

python3 $OPENRAM_HOME/openram.py ./config_pool2_rm_ram.py

python3 $OPENRAM_HOME/openram.py ./config_ip1_bm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_ip1_rm_ram.py
python3 $OPENRAM_HOME/openram.py ./config_ip1_wm_ram.py


python3 $OPENRAM_HOME/openram.py ./config_conv1_bm_ram_b.py
python3 $OPENRAM_HOME/openram.py ./config_conv2_bm_ram_b.py
python3 $OPENRAM_HOME/openram.py ./config_ip1_bm_ram_b.py

