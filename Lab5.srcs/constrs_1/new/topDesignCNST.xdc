## Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]


## Switches
set_property PACKAGE_PIN V17 [get_ports {writeData[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[0]}]
set_property PACKAGE_PIN V16 [get_ports {writeData[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[1]}]
set_property PACKAGE_PIN W16 [get_ports {writeData[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[2]}]
set_property PACKAGE_PIN W17 [get_ports {writeData[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[3]}]
set_property PACKAGE_PIN W15 [get_ports {writeData[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[4]}]
set_property PACKAGE_PIN V15 [get_ports {writeData[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[5]}]
set_property PACKAGE_PIN W14 [get_ports {writeData[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[6]}]
set_property PACKAGE_PIN W13 [get_ports {writeData[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeData[7]}]

set_property PACKAGE_PIN W2 [get_ports {writeAddress[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeAddress[0]}]
set_property PACKAGE_PIN U1 [get_ports {writeAddress[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeAddress[1]}]
set_property PACKAGE_PIN T1 [get_ports {writeAddress[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeAddress[2]}]
set_property PACKAGE_PIN R2 [get_ports {writeAddress[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {writeAddress[3]}]
	
##Buttons
set_property PACKAGE_PIN U18 [get_ports giveSumO]						
	set_property IOSTANDARD LVCMOS33 [get_ports giveSumO]
set_property PACKAGE_PIN T18 [get_ports writeEnableButtonO]						
	set_property IOSTANDARD LVCMOS33 [get_ports writeEnableButtonO]
set_property PACKAGE_PIN W19 [get_ports displayPrevO]						
	set_property IOSTANDARD LVCMOS33 [get_ports displayPrevO]
set_property PACKAGE_PIN T17 [get_ports displayNextO]						
	set_property IOSTANDARD LVCMOS33 [get_ports displayNextO]

## LEDs
set_property PACKAGE_PIN U16 [get_ports {sum[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[0]}]
set_property PACKAGE_PIN E19 [get_ports {sum[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[1]}]
set_property PACKAGE_PIN U19 [get_ports {sum[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[2]}]
set_property PACKAGE_PIN V19 [get_ports {sum[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[3]}]
set_property PACKAGE_PIN W18 [get_ports {sum[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[4]}]
set_property PACKAGE_PIN U15 [get_ports {sum[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[5]}]
set_property PACKAGE_PIN U14 [get_ports {sum[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[6]}]
set_property PACKAGE_PIN V14 [get_ports {sum[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[7]}]
set_property PACKAGE_PIN V13 [get_ports {sum[8]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[8]}]
set_property PACKAGE_PIN V3 [get_ports {sum[9]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[9]}]
set_property PACKAGE_PIN W3 [get_ports {sum[10]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[10]}]
set_property PACKAGE_PIN U3 [get_ports {sum[11]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {sum[11]}]
	
	
	
##7 segment display
set_property PACKAGE_PIN W7 [get_ports {seg[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property PACKAGE_PIN W6 [get_ports {seg[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property PACKAGE_PIN U8 [get_ports {seg[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property PACKAGE_PIN V8 [get_ports {seg[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property PACKAGE_PIN U5 [get_ports {seg[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property PACKAGE_PIN V5 [get_ports {seg[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property PACKAGE_PIN U7 [get_ports {seg[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]

set_property PACKAGE_PIN V7 [get_ports dp]							
	set_property IOSTANDARD LVCMOS33 [get_ports dp]

set_property PACKAGE_PIN U2 [get_ports {an[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property PACKAGE_PIN U4 [get_ports {an[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property PACKAGE_PIN V4 [get_ports {an[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property PACKAGE_PIN W4 [get_ports {an[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
