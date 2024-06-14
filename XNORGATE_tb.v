`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 11:17:09
// Design Name: 
// Module Name: XNORGATE_tb
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


module XNORGATE_tb;
reg A, B;
wire Y;
XNORGATE xnorgate(.A(A), .B(B),.Y(Y));
initial begin
A =1'b0;B= 1'b0;
#10 A =1'b0;B= 1'b1;
#10 A =1'b1;B= 1'b0;
#10 A =1'b1;B= 1'b1;
#10
$finish;
end
always @(Y)
$display( "time =%0t \tINPUT VALUES: \t A=%b B =%b \t output value Y =%b",$time,A,B,Y);
endmodule

 
