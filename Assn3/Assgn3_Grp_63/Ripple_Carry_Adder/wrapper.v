`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:29 08/30/2022 
// Design Name: 
// Module Name:    wrapper 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

/*
	Assignment 3, Group 63
	Team Members :-
	
	Pranav Nyati - 20CS30037
	Shreyas Jena - 20CS30049
	
*/

module wrapper(input clk, input rst, input [63:0] in1, input [63:0] in2, input cin, output reg [63:0] sum, output reg cout);

reg [63:0] in1_reg;
reg [63:0] in2_reg;
reg cin_reg;
wire [63:0] sum_net;
wire cout_net;

always @(posedge clk)
    begin
        if(rst)
            begin
                in1_reg<=64'd0;
                in2_reg<=64'd0;
					 cin_reg<=1'd0;
					 sum<=64'd0;
					 cout<=1'd0;
            end
        else
            begin
                in1_reg<=in1;
                in2_reg<=in2;
					 cin_reg<=cin;
					 sum<=sum_net;
					 cout<=cout_net;
            end
    end

rca_64bit rca_64_bit(in1, in2, cin, sum_net, cout_net);

endmodule