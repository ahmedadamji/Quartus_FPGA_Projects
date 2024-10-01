transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/Register {C:/Temp/QuartusProjects/Bonous Lab/Register/Mux2Way4.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/Register {C:/Temp/QuartusProjects/Bonous Lab/Register/DTypeFF4Bit.v}
vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/Register {C:/Temp/QuartusProjects/Bonous Lab/Register/Register.v}

vlog -vlog01compat -work work +incdir+C:/Temp/QuartusProjects/Bonous\ Lab/Register {C:/Temp/QuartusProjects/Bonous Lab/Register/Register_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  Register_tb

add wave *
view structure
view signals
run -all
