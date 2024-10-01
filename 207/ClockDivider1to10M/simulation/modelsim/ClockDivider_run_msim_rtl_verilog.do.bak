transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/207/ClockDivider {C:/Temp/QuartusProjects/207/ClockDivider/JKTypeFF.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/207/ClockDivider {C:/Temp/QuartusProjects/207/ClockDivider/FourBitBinaryCounter.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/207/ClockDivider {C:/Temp/QuartusProjects/207/ClockDivider/Comparator.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/207/ClockDivider {C:/Temp/QuartusProjects/207/ClockDivider/ClockDivider.v}

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/207/ClockDivider {C:/Temp/QuartusProjects/207/ClockDivider/ClockDivider_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  ClockDivider_tb

add wave *
view structure
view signals
run -all
