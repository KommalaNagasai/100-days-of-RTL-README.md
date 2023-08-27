module fulladder(a,b,cin,sum,carryout);
input a,b,cin;
output sum,carryout;
wire w1,w2,w3;
halfadder ha1(a,b,w1,w2);
halfadder ha2(w1,cin,sum,w3);
or(carryout,w2,w3);
endmodule
