module d_ff(d,q,rst,clk);

input d,clk,rst;

output reg q;

always @(posedge clk)
begin
if (rst)
q<=1'b0;
else 
q<=d;
end

endmodule

//module lfsr(clk,rst,d0,d1,d2,d3,q0,q1,q2,q3);
module lfsr(clk,rst,q0,q1,q2,q3);
input clk,rst;
output q0,q3,q2,q1;
wire y;
xor N(y,q3,~q0);
d_ff d_0(.d(q3),.q(q0),.rst(rst),.clk(clk));
d_ff d_1(.d(y),.q(q1),.rst(rst),.clk(clk));
d_ff d_2(.d(q1),.q(q2),.rst(rst),.clk(clk));
d_ff d_3(.d(q2),.q(q3),.rst(rst),.clk(clk));


//d_ff d_0(.d(d0),.q(q0),.rst(rst),.clk(clk));
//d_ff d_1(.d(d1),.q(q1),.rst(rst),.clk(clk));
//d_ff d_2(.d(d2),.q(q2),.rst(rst),.clk(clk));
//d_ff d_3(.d(d3),.q(q3),.rst(rst),.clk(clk));

//xor N1(y,q3,q0);

//assign q1=y;
//assign q0=d3;
//assign q2=q1;
//assign q3=q2;


endmodule
