transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/User/Desktop/Nova\ pasta/teste {C:/Users/User/Desktop/Nova pasta/teste/get_next_state.v}

