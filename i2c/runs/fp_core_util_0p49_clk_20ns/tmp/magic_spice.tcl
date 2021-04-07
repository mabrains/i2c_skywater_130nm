
if { [info exist ::env(MAGIC_EXT_USE_GDS)] && $::env(MAGIC_EXT_USE_GDS) } {
	gds read $::env(CURRENT_GDS)
} else {
	lef read /home/abanoub/openlane/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd.tlef
	if {  [info exist ::env(EXTRA_LEFS)] } {
		set lefs_in $::env(EXTRA_LEFS)
		foreach lef_file $lefs_in {
			lef read $lef_file
		}
	}
	def read /openLANE_flow/designs/i2c/runs/trial_run_1/results/routing/i2c_master_top.def
}
load i2c_master_top -dereference
cd /openLANE_flow/designs/i2c/runs/trial_run_1/results/magic/
extract do local
extract no capacitance
extract no coupling
extract no resistance
extract no adjust
if { ! 0 } {
	extract unique
}
# extract warn all
extract

ext2spice lvs
ext2spice -o /openLANE_flow/designs/i2c/runs/trial_run_1/results/magic/i2c_master_top.spice i2c_master_top.ext
feedback save /openLANE_flow/designs/i2c/runs/trial_run_1/logs/magic/37-magic_ext2spice.feedback.txt
# exec cp i2c_master_top.spice /openLANE_flow/designs/i2c/runs/trial_run_1/results/magic/i2c_master_top.spice

