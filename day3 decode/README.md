module decoder(I,Y);
input [1:0]I;
output [3:0]Y;
assign 	Y[0]=(~I[0]&~I[1]);

assign Y[1]=(I[0]&~I[1]);
assign Y[2]=(~I[0]&I[1]);
assign Y[3]=(I[0]&I[1]);
endmodule
