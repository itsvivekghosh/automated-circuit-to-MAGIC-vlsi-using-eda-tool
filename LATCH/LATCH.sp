*** Spice netlist generated by cell2spice.pl from cell file LATCH.cell ***

.subckt LATCH vdd gnd D CLK Q
M0 vdd CLK 1 vdd pmos w=1.0u l=1.0u
M1 2 D vdd vdd pmos w=1.0u l=1.0u
M2 3 1 2 vdd pmos w=1.0u l=1.0u
M3 4 CLK 3 vdd pmos w=1.0u l=1.0u
M4 vdd Q 4 vdd pmos w=1.0u l=1.0u
M5 gnd CLK 1 gnd nmos w=1.0u l=1.0u
M6 Q 3 vdd vdd pmos w=1.0u l=1.0u
M7 5 D gnd gnd nmos w=1.0u l=1.0u
M8 3 CLK 5 gnd nmos w=1.0u l=1.0u
M9 6 1 3 gnd nmos w=1.0u l=1.0u
M10 gnd Q 6 gnd nmos w=1.0u l=1.0u
M11 Q 3 gnd gnd nmos w=1.0u l=1.0u
.ends LATCH

