`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 16:22:33
// Design Name: 
// Module Name: Equality operators
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


module equality_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (==): (i1 = %0h) == (i2 = %0h) --> %h", i1, i2, i1 == i2);
    $display("For operator: (!=): (i1 = %0h) != (i2 = %0h) --> %h", i1, i2, i1 != i2);
    
    i1 = 4'b1x0z; i2 = 4'b1x0z;
    $display("For operator: (==) : (i1 = %0b) == n(i2 = %0b) --> %0b", i1, i2, i1 == i2);
    $display("For operator: (!=) : (i1 = %0b) !=  (i2 = %0b) --> %0b", i1, i2, i1 != i2);
    
    $display("For operator: (===) : (i1 = %0b) ===  (i2 = %0b) --> %0b", i1, i2, i1 === i2);
    $display("For operator: (!==) : (i1 = %0b) !==  (i2 = %0b) --> %0b", i1, i2, i1 !== i2);
    
    i1 = 4'b1x0z; i2 = 4'b1x0x;
    $display("For operator: (===) : (i1 = %0b) ===  (i2 = %0b) --> %0b", i1, i2, i1 === i2);
    $display("For operator: (!==) : (i1 = %0b) !==  (i2 = %0b) --> %0b", i1, i2, i1 !== i2);
  end
endmodule

  
