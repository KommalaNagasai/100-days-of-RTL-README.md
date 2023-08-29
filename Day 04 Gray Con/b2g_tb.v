module b2g_tb();
reg b3,b2,b1,b0;
wire g3,g2,g1,g0;
integer i;

b2g DUT(b3,b2,b1,b0,g3,g2,g1,g0);
initial
begin
for(i=0; i<15; i=i+1)
begin
{b3,b2,b1,b0}=i;
#10;
end
#20;
$monitor("b3=%b, b2=%b, b1=%b, b0=%b, output g3=%b, g2=%b, g1=%b, g0=%b",b3,b2,b1,b0,g3,g2,g1,g0);
end

initial 

#200 
$finish;
endmodule
