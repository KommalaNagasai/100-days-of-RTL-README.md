module lfsr_tb();
reg clk,rst;
wire q1,q3,q2,q0;

lfsr DUT(clk,rst,q0,q1,q2,q3);
initial
begin
rst=1;
clk=1'b0;
//forever #5 clk=~clk;
end
always #10 clk = ~clk;
initial
begin 

#25 rst=0;

$monitor("output q0=%d,q1=%d,q2=%d,q3=%d",q0,q1,q2,q3);
/*#10;d1=1;d2=0;d3=0;d0=0;
#10;d1=1;d2=0;d3=0;d0=1;
#10;d1=1;d2=1;d3=0;d0=0;
#10;d1=1;d2=0;d3=1;d0=1;*/


end

initial
begin

#500;
$finish;
end
endmodule
