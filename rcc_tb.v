`timescale 1ns/1ns
`include "rcc.v"

module rcc_tb;

reg clk;
reg reset;
wire [3:0] q;

rcc rcc1(q, clk, reset);


initial 
clk=1'b0;
always
#5 clk=~clk;

initial begin
    $dumpfile("rcc_tb.vcd");
    $dumpvars();
    reset=1'b1;
    #15 reset=1'b0;
    #180 reset=1'b1;
    #10 reset=1'b0;
    #20 $finish;
end

initial
$monitor($time, " output q = %d", q);

endmodule