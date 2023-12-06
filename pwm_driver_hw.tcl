# TCL File Generated by Component Editor 22.1
# Wed Dec 06 14:34:17 JST 2023
# DO NOT MODIFY


# 
# pwm_driver "pwm_driver" v1.0
#  2023.12.06.14:34:17
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module pwm_driver
# 
set_module_property DESCRIPTION ""
set_module_property NAME pwm_driver
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME pwm_driver
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL PwmDriver
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pwm_driver.sv SYSTEM_VERILOG PATH hdl/pwm_driver.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL PwmDriver
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pwm_driver.sv SYSTEM_VERILOG PATH hdl/pwm_driver.sv


# 
# parameters
# 
add_parameter COUNTER_BITS INTEGER 32 ""
set_parameter_property COUNTER_BITS DEFAULT_VALUE 32
set_parameter_property COUNTER_BITS DISPLAY_NAME COUNTER_BITS
set_parameter_property COUNTER_BITS TYPE INTEGER
set_parameter_property COUNTER_BITS ENABLED false
set_parameter_property COUNTER_BITS UNITS None
set_parameter_property COUNTER_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property COUNTER_BITS DESCRIPTION ""
set_parameter_property COUNTER_BITS HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point pio
# 
add_interface pio conduit end
set_interface_property pio associatedClock ""
set_interface_property pio associatedReset ""
set_interface_property pio ENABLED true
set_interface_property pio EXPORT_OF ""
set_interface_property pio PORT_NAME_MAP ""
set_interface_property pio CMSIS_SVD_VARIABLES ""
set_interface_property pio SVD_ADDRESS_GROUP ""

add_interface_port pio pio pio Output 1


# 
# connection point pwm
# 
add_interface pwm conduit end
set_interface_property pwm associatedClock clock
set_interface_property pwm associatedReset reset
set_interface_property pwm ENABLED true
set_interface_property pwm EXPORT_OF ""
set_interface_property pwm PORT_NAME_MAP ""
set_interface_property pwm CMSIS_SVD_VARIABLES ""
set_interface_property pwm SVD_ADDRESS_GROUP ""

add_interface_port pwm cycle pwm_cycle Input "((COUNTER_BITS-1)) - (0) + 1"
add_interface_port pwm duty pwm_duty Input "((COUNTER_BITS-1)) - (0) + 1"

