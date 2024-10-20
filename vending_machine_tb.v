`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2024 15:24:59
// Design Name: 
// Module Name: vending_machine_tb
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
module vending_machine_tb;
//inputs
reg clk;
reg[1:0] in;
reg rst;
//output
wire out;
wire[1:0] change;
vending_machine dut(
.clk(clk),
.rst(rst),
.in(in),
.out(out),
.change(change)
);
initial begin
//initialise inputs
$dumpfile("vending_machine.vcd");
$dumpvars(0,vending_machine_tb);
rst = 1;
clk = 0;
#6 rst = 0;
in = 1;
#19 in = 2;
#25 $finish;
end
always #5 clk = ~clk;
endmodule
