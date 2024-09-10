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
module lab2_tb;
wire [6:0]oseg; //output 
reg [1:0]i0, i1, i2, i3; //input
reg [1:0]s; //input

// Instantiate original module (named DUT {device under test}) 
lab2 uut(i0,i1,i2,i3,s,oseg);

integer i;
integer j;
initial begin
    for(i=0; i<4; i=i+1) begin
        s = i;
        for(j=0; j<4; j=j+1) begin
            #10 i0=j; i1=j; i2=j; i3=j;
        end
    end
    #10 $stop;
end


endmodule
