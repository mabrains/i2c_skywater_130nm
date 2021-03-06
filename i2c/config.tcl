# Design
set ::env(DESIGN_NAME) "i2c_master_top"

set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/i2c/src/*.v]



set ::env(CLOCK_PERIOD) "10.000"
set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CELL_PAD) 4

# set ::env(FP_PIN_ORDER_CFG) $::env(OPENLANE_ROOT)/designs/spm/pin_order.cfg

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
