transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier {C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier/OneBitFullAdder.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier {C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier/ArrayCell.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier {C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier/EightBitUnsignedArrayMultiplier.v}

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier {C:/Temp/QuartusProjects/204/EightBitUnsignedArrayMultiplier/EightBitUnsignedArrayMultiplier_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  EightBitUnsignedArrayMultiplier_tb

add wave *
view structure
view signals
run -all
