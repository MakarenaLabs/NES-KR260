# NES KR260

This project aims to port the fpgaNES NES emulator (https://github.com/strigeus/fpganes) to the Xilinx KR260 FPGA. The fpgaNES emulator allows you to play NES games on FPGA hardware.

## Project Setup

To recreate the project in Vivado, follow these steps:

1. Open Vivado and navigate to the "project" folder.
2. Launch Vivado and run the command "source project.tcl".

## Compiling and Loading Bitstream

Once the project is compiled in Vivado, you can load the bitstream onto the KR260 FPGA by following these commands in XSCT (Xilinx Software Command-line Tool) in sequence:

1. Connect
2. targets -set -nocase -filter {name =~ "\*PSU\*"}
3. mwr 0xff5e0200 0x0100
4. rst -system

Then, via Vivado, click on "Program device".

## Project Structure

The project directory has the following structure:

- `project`: contains the TCL project file for recreating the project.
- `sources`: contains the project sources.
- `tools`: contains scripts for converting a NES ROM file to COE format for loading the ROM into the Cartridge IP.

## Loading a New Cartridge


To load a new NES cartridge, generate the COE file and load it via Vivado interface. Follow these steps:

1. Generate the COE file using the provided tools/scripts.
3. Load the COE file in Vivado in the ip called Cartridge.

## VGA Output and Joystick Mapping

For VGA output, you can use a PMOD VGA adapter. We recommend using [this PMOD VGA adapter](https://digilent.com/shop/pmod-vga-video-graphics-array/) by Digilent. Connect the PMOD VGA adapter to the PMOD 3-4 ports.

The audio output is mapped on PMOD 2 on pin 1 (left channel) and pin 2 (right channel).

## License

This project is licensed under the MIT License.

Please refer to the LICENSE file for more details.

# References

fpgaNES NES emulator: (https://github.com/strigeus/fpganes)
