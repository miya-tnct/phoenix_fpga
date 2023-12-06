# TCL File Generated by Component Editor 22.1
# Wed Dec 06 16:56:29 JST 2023
# DO NOT MODIFY


# 
# phoenix_led_controller "phoenix_led_controller" v1.0
#  2023.12.06.16:56:29
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module phoenix_led_controller
# 
set_module_property DESCRIPTION ""
set_module_property NAME phoenix_led_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME phoenix_led_controller
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL PhoenixLedController
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file phoenix_led_controller.sv SYSTEM_VERILOG PATH hdl/phoenix_led_controller.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL PhoenixLedController
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file phoenix_led_controller.sv SYSTEM_VERILOG PATH hdl/phoenix_led_controller.sv


# 
# parameters
# 
add_parameter CLOCK_FREQUENCY INTEGER 25000000
set_parameter_property CLOCK_FREQUENCY DEFAULT_VALUE 25000000
set_parameter_property CLOCK_FREQUENCY DISPLAY_NAME CLOCK_FREQUENCY
set_parameter_property CLOCK_FREQUENCY TYPE INTEGER
set_parameter_property CLOCK_FREQUENCY UNITS None
set_parameter_property CLOCK_FREQUENCY ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CLOCK_FREQUENCY HDL_PARAMETER true
add_parameter PWM_COUNTER_BITS INTEGER 32
set_parameter_property PWM_COUNTER_BITS DEFAULT_VALUE 32
set_parameter_property PWM_COUNTER_BITS DISPLAY_NAME PWM_COUNTER_BITS
set_parameter_property PWM_COUNTER_BITS TYPE INTEGER
set_parameter_property PWM_COUNTER_BITS UNITS None
set_parameter_property PWM_COUNTER_BITS ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PWM_COUNTER_BITS HDL_PARAMETER true


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
# connection point pwm
# 
add_interface pwm conduit end
set_interface_property pwm associatedClock clock
set_interface_property pwm associatedReset ""
set_interface_property pwm ENABLED true
set_interface_property pwm EXPORT_OF ""
set_interface_property pwm PORT_NAME_MAP ""
set_interface_property pwm CMSIS_SVD_VARIABLES ""
set_interface_property pwm SVD_ADDRESS_GROUP ""

add_interface_port pwm pwm_cycle pwm_cycle Output "((PWM_COUNTER_BITS-1)) - (0) + 1"
add_interface_port pwm pwm_duty pwm_duty Output 32

