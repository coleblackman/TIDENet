name="ip1_wm"
# Data word size
word_size = 16

# Number of words in the memory
num_words = 256

# Technology to use in $OPENRAM_TECH
tech_name = "sky130A"

# You can use the technology nominal corner only
# nominal_corner_only = True

process_corners = ["TT"]

# Voltage corners to characterize
supply_voltages = [ 1.8 ]

#num_rw_ports=1
#num_r_ports=1
#num_w_ports=0

#Customized module or bit cell
#bitcell = “bitcell_1rw_1r”
#replica_bitcell = “replica_bitcell_1rw_1r


# Temperature corners to characterize
# temperatures = [ 0, 25 100]

# Output directory for the results
output_path = "results_{0}_{1}_{2}_{3}".format(name,word_size,num_words,tech_name)
# Output file base name
output_name = "{0}_sram_{1}_{2}_{3}".format(name,word_size,num_words,tech_name)

# Disable analytical models for full characterization (WARNING: slow!)
# analytical_delay = False

drc_name="magic"                                                                                                                                                                            
lvs_name="ngspice"                                                                                                                                                                           
pex_name="magic"  

