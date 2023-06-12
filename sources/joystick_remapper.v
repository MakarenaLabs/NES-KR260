`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2023 23:31:08
// Design Name: 
// Module Name: joystick_remapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module joystick_remapper(
    input wire [7:0] in_gpio,
    output wire [7:0] out_gpio
    );
    
    // input
    // 0: A, 1: SELECT, 2: B, 3: START, 4: DX, 5: SX, 6: UP, 7: DOWN

    // output
    // 0: A, 1: B, 2: Select, 3: Start, 4: Down, 5: Up, 6: Right, 7: Left
    
    assign out_gpio[0] = in_gpio[0];
    assign out_gpio[1] = in_gpio[2];
    assign out_gpio[2] = in_gpio[1];
    assign out_gpio[3] = in_gpio[3];
    assign out_gpio[4] = in_gpio[6];
    assign out_gpio[5] = in_gpio[7];
    assign out_gpio[6] = in_gpio[5];
    assign out_gpio[7] = in_gpio[4];
        
endmodule
