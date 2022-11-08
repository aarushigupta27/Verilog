`timescale 1ns/1ns
`include "mux41.v"

module testbench;
wire out;
reg i0, i1, i2, i3;
reg s0, s1;

mux41 uut(out, i0, i1, i2, i3, s0, s1);

initial begin

$dumpfile("mux41_tb.vcd");
$dumpvars();

//set input lines
i0=1; i1=0; i2=1; i3=0;
#1 $display("i0=%b, i1=%b, i2=%b, i3=%b", i0, i1, i2, i3);

s1=0; s0=0;
#1 $display("s1=%b, s0=%b, out=%b", s1, s0, out);

s1=0; s0=1;
#1 $display("s1=%b, s0=%b, out=%b", s1, s0, out);

s1=1; s0=0;
#1 $display("s1=%b, s0=%b, out=%b", s1, s0, out);

s1=1; s0=1;
#1 $display("s1=%b, s0=%b, out=%b", s1, s0, out);
end
endmodule

