module lfsr_tb();
reg clk,rst;
wire [3:0]q;

lfsr DUT(clk,rst,q[0],q[1],q[2],q[3]);
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

$monitor("output q0=%d,q1=%d,q2=%d,q3=%d",q[0],q[1],q[2],q[3]);
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
