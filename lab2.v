`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:06:11 PM
// Design Name: 
// Module Name: lab2
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


module lab2(
    input [1:0]i0, i1, i2, i3,
    input [1:0]s,
    output [6:0]oseg
    );
    
    wire [1:0]ymux;
    wire[3:0]iseg;
    
    mux4x1 uut1(i0,i1,i2,i3,s,ymux);
    assign iseg = {2'b00,ymux};
    led_7seg uut2(iseg, oseg);
endmodule

module led_7seg(
    input [3:0]i,
    output reg [6:0]seg
    );
    
    always@(*)
    begin
        case(i)
            0: seg = 7'b1000000;
            1: seg = 7'b1111001;
            2: seg = 7'b0100100;
            3: seg = 7'b0110000;
            4: seg = 7'b0011001;
            5: seg = 7'b0010010;
            6: seg = 7'b0000010;
            7: seg = 7'b1111000;
        endcase
    end
            
endmodule
    
module mux4x1(
    input [1:0]i0, i1, i2, i3,
    input [1:0]s,
    output reg [1:0]y
    );
    
    always@(*)
    begin
        case(s)
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y = 2'bxx;
        endcase
    end
endmodule

