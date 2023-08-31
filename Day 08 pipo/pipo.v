module mux_21 (s,I,y);

input s;
input I;
output y;

assign y=(s&I);

endmodule
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////


module d_ff (d,clk,q,rst);
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
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

module pipo(sel,clk,rst,q,x);
input sel,clk,rst;
input [31:0]x;
output [31:0]q;
wire [31:0]w;

mux_21 m0(.s(sel),.I(x[0]),.y(w[0]));
mux_21 m1(.s(sel),.I(x[1]),.y(w[1]));
mux_21 m2(.s(sel),.I(x[2]),.y(w[2]));
mux_21 m3(.s(sel),.I(x[3]),.y(w[3]));
mux_21 m4(.s(sel),.I(x[4]),.y(w[4]));
mux_21 m5(.s(sel),.I(x[5]),.y(w[5]));
mux_21 m6(.s(sel),.I(x[6]),.y(w[6]));
mux_21 m7(.s(sel),.I(x[7]),.y(w[7]));
mux_21 m8(.s(sel),.I(x[8]),.y(w[8]));
mux_21 m9(.s(sel),.I(x[9]),.y(w[9]));
mux_21 m10(.s(sel),.I(x[10]),.y(w[10]));
mux_21 m11(.s(sel),.I(x[11]),.y(w[11]));
mux_21 m12(.s(sel),.I(x[12]),.y(w[12]));
mux_21 m13(.s(sel),.I(x[13]),.y(w[13]));
mux_21 m14(.s(sel),.I(x[14]),.y(w[14]));
mux_21 m15(.s(sel),.I(x[15]),.y(w[15]));
mux_21 m16(.s(sel),.I(x[16]),.y(w[16]));
mux_21 m17(.s(sel),.I(x[17]),.y(w[17]));
mux_21 m18(.s(sel),.I(x[18]),.y(w[18]));
mux_21 m19(.s(sel),.I(x[19]),.y(w[19]));
mux_21 m20(.s(sel),.I(x[20]),.y(w[20]));
mux_21 m21(.s(sel),.I(x[21]),.y(w[21]));
mux_21 m22(.s(sel),.I(x[22]),.y(w[22]));
mux_21 m23(.s(sel),.I(x[23]),.y(w[23]));
mux_21 m24(.s(sel),.I(x[24]),.y(w[24]));
mux_21 m25(.s(sel),.I(x[25]),.y(w[25]));
mux_21 m26(.s(sel),.I(x[26]),.y(w[26]));
mux_21 m27(.s(sel),.I(x[27]),.y(w[27]));
mux_21 m28(.s(sel),.I(x[28]),.y(w[28]));
mux_21 m29(.s(sel),.I(x[29]),.y(w[29]));
mux_21 m30(.s(sel),.I(x[30]),.y(w[30]));
mux_21 m31(.s(sel),.I(x[31]),.y(w[31]));


d_ff d0(.d(w[0]),.clk(clk),.q(q[0]),.rst(rst));
d_ff d1(.d(w[1]),.clk(clk),.q(q[1]),.rst(rst));
d_ff d2(.d(w[2]),.clk(clk),.q(q[2]),.rst(rst));
d_ff d3(.d(w[3]),.clk(clk),.q(q[3]),.rst(rst));
d_ff d4(.d(w[4]),.clk(clk),.q(q[4]),.rst(rst));
d_ff d5(.d(w[5]),.clk(clk),.q(q[5]),.rst(rst));
d_ff d6(.d(w[6]),.clk(clk),.q(q[6]),.rst(rst));
d_ff d7(.d(w[7]),.clk(clk),.q(q[7]),.rst(rst));
d_ff d8(.d(w[8]),.clk(clk),.q(q[8]),.rst(rst));
d_ff d9(.d(w[9]),.clk(clk),.q(q[9]),.rst(rst));
d_ff d10(.d(w[10]),.clk(clk),.q(q[10]),.rst(rst));
d_ff d11(.d(w[11]),.clk(clk),.q(q[11]),.rst(rst));
d_ff d12(.d(w[12]),.clk(clk),.q(q[12]),.rst(rst));
d_ff d13(.d(w[13]),.clk(clk),.q(q[13]),.rst(rst));
d_ff d14(.d(w[14]),.clk(clk),.q(q[14]),.rst(rst));
d_ff d15(.d(w[15]),.clk(clk),.q(q[15]),.rst(rst));
d_ff d16(.d(w[16]),.clk(clk),.q(q[16]),.rst(rst));
d_ff d17(.d(w[17]),.clk(clk),.q(q[17]),.rst(rst));
d_ff d18(.d(w[18]),.clk(clk),.q(q[18]),.rst(rst));
d_ff d19(.d(w[19]),.clk(clk),.q(q[19]),.rst(rst));
d_ff d20(.d(w[20]),.clk(clk),.q(q[20]),.rst(rst));
d_ff d21(.d(w[21]),.clk(clk),.q(q[21]),.rst(rst));
d_ff d22(.d(w[22]),.clk(clk),.q(q[22]),.rst(rst));
d_ff d23(.d(w[23]),.clk(clk),.q(q[23]),.rst(rst));
d_ff d24(.d(w[24]),.clk(clk),.q(q[24]),.rst(rst));
d_ff d25(.d(w[25]),.clk(clk),.q(q[25]),.rst(rst));
d_ff d26(.d(w[26]),.clk(clk),.q(q[26]),.rst(rst));
d_ff d27(.d(w[27]),.clk(clk),.q(q[27]),.rst(rst));
d_ff d28(.d(w[28]),.clk(clk),.q(q[28]),.rst(rst));
d_ff d29(.d(w[29]),.clk(clk),.q(q[29]),.rst(rst));
d_ff d30(.d(w[30]),.clk(clk),.q(q[30]),.rst(rst));
d_ff d31(.d(w[31]),.clk(clk),.q(q[31]),.rst(rst));

endmodule

