`include "halfadder.v"

module testbench();
wire c, sum;
reg a, b;

halfadder uut(c, sum, a, b);

initial begin
    $dumpfile("halfaddertb.vcd");
    $dumpvars();

    a=0; b=0;
    #1 $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, c);

    a=0; b=1;
    #1 $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, c);

    a=1; b=0;
    #1 $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, c);

    a=1; b=1;
    #1 $display("a=%b, b=%b, sum=%b, carry=%b", a, b, sum, c);

end
endmodule