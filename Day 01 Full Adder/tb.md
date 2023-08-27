module fulladder_tb();
reg a,b,cin;
wire sum,carryout;
integer i;
fulladder DUT(a,b,cin,sum,carryout);
initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#10;
end
end
initial $monitor("input a=%b, b=%b, cin=%b, sum=%b, carry=%b",a,b,cin,sum,carryout);
initial #100 $finish;
endmodule
