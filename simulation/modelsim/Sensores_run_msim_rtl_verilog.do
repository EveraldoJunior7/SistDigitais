transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/MUX8x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/GeradorParidade.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/TransmissorPacote.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/DEMUX8x1.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/VerificadorParidade.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/ControladorEndereco.v}
vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/SistemaSensores.v}

vlog -vlog01compat -work work +incdir+C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho {C:/Users/junio/Documents/IFF/7Periodo/SistemasDigitais/Trabalho/SistemaSensoresTB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  SistemaSensoresTB

add wave *
view structure
view signals
run -all
