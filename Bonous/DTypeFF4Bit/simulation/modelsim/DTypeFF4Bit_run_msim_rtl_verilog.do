transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/DTypeFF4Bit {C:/Temp/QuartusProjects/Bonous Lab/DTypeFF4Bit/DTypeFF4Bit.v}

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/DTypeFF4Bit {C:/Temp/QuartusProjects/Bonous Lab/DTypeFF4Bit/DTypeFF4Bit_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  DTypeFF4Bit_tb

add wave *
view structure
view signals
run -all
