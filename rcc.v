module rcc (q, clk, reset);

output [3:0] q;
input clk, reset;

tff tff0(q[0], clk, reset);
tff tff1(q[1], q[0], reset);
tff tff2(q[2], q[1], reset);
tff tff3(q[3], q[2], reset);  

endmodule


module tff (q, clk, reset);
output q;
input clk, reset;
wire d;

dff dff0(q, d, clk, reset);
not n0(q,d);

endmodule


module dff (q, d, clk, reset);
output q;
input d, clk, reset;
reg q;
always @(posedge  reset or negedge clk)    
if (reset)
q=1'b0;
else
q=d;
endmodule