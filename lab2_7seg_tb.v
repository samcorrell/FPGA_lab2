`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/19/2024 01:19:05 PM
// Design Name: 
// Module Name: multiplexer_tb
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

`timescale 1ns/1ps
module lab2_7seg_tb;
wire [6:0]oseg; //output 
reg [3:0] iseg; //input

// Instantiate original module (named DUT {device under test}) 
led_7seg uut(iseg, oseg);

integer i;
initial begin
    for(i=0; i<8; i=i+1) begin
        #10 iseg = i;
    end
    #10 $stop;
end


endmodule
