//one bit half adder
module halfadder (c, sum, a, b);

output c, sum;
input a, b;

and (c, a, b);
xor (sum, a, b);
    
endmodule
