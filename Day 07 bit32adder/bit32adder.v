module h_f (a,b,sum,carry);
input b,a;
output sum,carry;

assign sum=b^a;
assign carry=a&b;
endmodule

module f_a (a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
h_f hf1(.a(a),.b(b),.sum(w1),.carry(w2));
h_f hf2(.a(w1),.b(c),.sum(sum),.carry(w3));


or OR1(carry,w2,w3);

endmodule

module adder32bit (a,b,cin,sum,cout);
input [31:0] a,b;
input cin;
output [31:0] sum;
output cout;
wire [30:0]c;

f_a fa0(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(c[0]));
f_a fa1(.a(a[1]),.b(b[1]),.c(c[0]),.sum(sum[1]),.carry(c[1]));
f_a fa2(.a(a[2]),.b(b[2]),.c(c[1]),.sum(sum[2]),.carry(c[2]));
f_a fa3(.a(a[3]),.b(b[3]),.c(c[2]),.sum(sum[3]),.carry(c[3]));
f_a fa4(.a(a[4]),.b(b[4]),.c(c[3]),.sum(sum[4]),.carry(c[4]));
f_a fa5(.a(a[5]),.b(b[5]),.c(c[4]),.sum(sum[5]),.carry(c[5]));
f_a fa6(.a(a[6]),.b(b[6]),.c(c[5]),.sum(sum[6]),.carry(c[6]));
f_a fa7(.a(a[7]),.b(b[7]),.c(c[6]),.sum(sum[7]),.carry(c[7]));
f_a fa8(.a(a[8]),.b(b[8]),.c(c[7]),.sum(sum[8]),.carry(c[8]));
f_a fa9(.a(a[9]),.b(b[9]),.c(c[8]),.sum(sum[9]),.carry(c[9]));
f_a fa10(.a(a[10]),.b(b[10]),.c(c[9]),.sum(sum[10]),.carry(c[10]));
f_a fa11(.a(a[11]),.b(b[11]),.c(c[10]),.sum(sum[11]),.carry(c[11]));
f_a fa12(.a(a[12]),.b(b[12]),.c(c[11]),.sum(sum[12]),.carry(c[12]));
f_a fa13(.a(a[13]),.b(b[13]),.c(c[12]),.sum(sum[13]),.carry(c[13]));
f_a fa14(.a(a[14]),.b(b[14]),.c(c[13]),.sum(sum[14]),.carry(c[14]));
f_a fa15(.a(a[15]),.b(b[15]),.c(c[14]),.sum(sum[15]),.carry(c[15]));
f_a fa16(.a(a[16]),.b(b[16]),.c(c[15]),.sum(sum[16]),.carry(c[16]));
f_a fa17(.a(a[17]),.b(b[17]),.c(c[16]),.sum(sum[17]),.carry(c[17]));
f_a fa18(.a(a[18]),.b(b[18]),.c(c[17]),.sum(sum[18]),.carry(c[18]));
f_a fa19(.a(a[19]),.b(b[19]),.c(c[18]),.sum(sum[19]),.carry(c[19]));
f_a fa20(.a(a[20]),.b(b[20]),.c(c[19]),.sum(sum[20]),.carry(c[20]));
f_a fa21(.a(a[21]),.b(b[21]),.c(c[20]),.sum(sum[21]),.carry(c[21]));
f_a fa22(.a(a[22]),.b(b[22]),.c(c[21]),.sum(sum[22]),.carry(c[22]));
f_a fa23(.a(a[23]),.b(b[23]),.c(c[22]),.sum(sum[23]),.carry(c[23]));
f_a fa24(.a(a[24]),.b(b[24]),.c(c[23]),.sum(sum[24]),.carry(c[24]));
f_a fa25(.a(a[25]),.b(b[25]),.c(c[24]),.sum(sum[25]),.carry(c[25]));
f_a fa26(.a(a[26]),.b(b[26]),.c(c[25]),.sum(sum[26]),.carry(c[26]));
f_a fa27(.a(a[27]),.b(b[27]),.c(c[26]),.sum(sum[27]),.carry(c[27]));
f_a fa28(.a(a[28]),.b(b[28]),.c(c[27]),.sum(sum[28]),.carry(c[28]));
f_a fa29(.a(a[29]),.b(b[29]),.c(c[28]),.sum(sum[29]),.carry(c[29]));
f_a fa30(.a(a[30]),.b(b[30]),.c(c[29]),.sum(sum[30]),.carry(c[30]));
f_a fa31(.a(a[31]),.b(b[31]),.c(c[30]),.sum(sum[31]),.carry(cout));
//f_a fa132(.a(a32),.b(b32),.c(c31),.sum(sum32),.carry(c32));
//f_a fa133(.a(a33),.b(b33),.c(c32),.sum(sum33),.carry(c33));

endmodule


