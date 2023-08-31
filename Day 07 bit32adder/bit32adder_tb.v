module adder32bit_tb ();
reg [31:0] a,b; reg cin;
wire [31:0]sum;
wire cout;


adder32bit DUT (a,b,cin,sum,cout);

initial 
begin
#100;
a=32'b1010111;
b=32'b0100101;
cin=1'b0;
#100;
a=32'd2;
b=32'd5;
cin=1'b0;


$monitor("a=%d,b=%d,cin=%d,output sum=%d,cout=%d",a,b,cin,sum,cout);
end

endmodule
