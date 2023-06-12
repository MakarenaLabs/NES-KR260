# PMOD 3
set_property PACKAGE_PIN AC12 [get_ports {RED[4]}];
set_property PACKAGE_PIN AD11 [get_ports {BLUE[4]}];
set_property PACKAGE_PIN AD12 [get_ports {RED[5]}];
set_property PACKAGE_PIN AD10 [get_ports {BLUE[5]}];
set_property PACKAGE_PIN AE10 [get_ports {RED[6]}];
set_property PACKAGE_PIN AA11 [get_ports {BLUE[6]}];
set_property PACKAGE_PIN AF10 [get_ports {RED[7]}];
set_property PACKAGE_PIN AA10 [get_ports {BLUE[7]}];

# PMOD 4
set_property PACKAGE_PIN AE12 [get_ports {GREEN[4]}];
set_property PACKAGE_PIN AF11 [get_ports {HSYNC}];
set_property PACKAGE_PIN AF12 [get_ports {GREEN[5]}];
set_property PACKAGE_PIN AG11 [get_ports {VSYNC}];
set_property PACKAGE_PIN AG10 [get_ports {GREEN[6]}];
# AH12 NC
set_property PACKAGE_PIN AH10 [get_ports {GREEN[7]}];
# AH11 NC

# PMOD 1
set_property PACKAGE_PIN J11      [get_ports {AUDIO_LEFT}];
set_property PACKAGE_PIN H11      [get_ports {AUDIO_RIGHT}];
set_property PACKAGE_PIN E10      [get_ports {COLOR_GB}];

# 0:A, 1: SELECT, 2: B, 3: START, 4: DX, 5: SX, 6: UP, 7: DOWN

set_property PACKAGE_PIN B11 [get_ports {BUTTONS[0]}]
set_property PACKAGE_PIN E10 [get_ports {BUTTONS[1]}]
set_property PACKAGE_PIN D11 [get_ports {BUTTONS[2]}]
set_property PACKAGE_PIN H12 [get_ports {BUTTONS[3]}]
set_property PACKAGE_PIN D10 [get_ports {BUTTONS[4]}]
set_property PACKAGE_PIN C11 [get_ports {BUTTONS[5]}]
set_property PACKAGE_PIN B10 [get_ports {BUTTONS[6]}]
set_property PACKAGE_PIN E12 [get_ports {BUTTONS[7]}]

set_property PACKAGE_PIN F11 [get_ports {CLOCK_PAC}]

set_property IOSTANDARD LVCMOS33 [get_ports VSYNC]
set_property PULLUP TRUE [get_ports VSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports HSYNC]
set_property PULLUP TRUE [get_ports HSYNC]
set_property IOSTANDARD LVCMOS33 [get_ports CLOCK_PAC]
set_property IOSTANDARD LVCMOS33 [get_ports BLUE[*]]
set_property PULLUP TRUE [get_ports BLUE[*]]
set_property IOSTANDARD LVCMOS33 [get_ports GREEN[*]]
set_property PULLUP TRUE [get_ports GREEN[*]]
set_property IOSTANDARD LVCMOS33 [get_ports RED[*]]
set_property PULLUP TRUE [get_ports RED[*]]
set_property IOSTANDARD LVCMOS33 [get_ports BUTTONS[*]]
set_property PULLUP TRUE [get_ports BUTTONS[*]]

set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_LEFT]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_RIGHT]
set_property IOSTANDARD LVCMOS33 [get_ports COLOR_GB]

# 25Mhz clock
set_property PACKAGE_PIN C3 [get_ports {CLK_IN_gem}]
#set_property DIRECTION IN [get_ports {CLK_IN_gem}]
set_property IOSTANDARD LVCMOS18 [get_ports {CLK_IN_gem}]

