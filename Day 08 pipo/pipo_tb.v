/*module mux21_tb;
reg s,I;
wire y;
mux_21 DUT(s,I,y);

initial
begin
$monitor("$time=%0t,s=%b,I=%b,y=%b",$time,s,I,y);
s=1;I=0;
#10; s=1;I=1;
#10;s=0;I=1;
#10;s=1;I=0;
#10;
$finish;
end
 endmodule*/

module pipo_tb();
reg sel,clk,rst;
reg [31:0]x;
wire [31:0]q;

pipo DUT(sel,clk,rst,q,x);

initial 
begin
sel=1'b0;
rst=1'b1;
clk=1'b0;
end

always #5 clk=~clk;

initial 
begin 

#100 rst=0;
sel=1;
x=32'd10;

#50 rst=0;
sel=1;
x=32'd56;

#100 rst=0;
sel=1;
x=32'd91;

#100 rst=1;
sel=1;
x=32'd10;

#50 rst=0;
sel=0;
x=32'd56;

#100 rst=0;
sel=1;
x=32'd91;

#100 rst=0;
sel=0;
x=32'd10;

#50 rst=0;
sel=0;
x=32'd56;

#100 rst=1;
sel=1;
x=32'd91;

$monitor("sel=%b,rst=%b,q=%b,x=%b",sel,rst,q,x);
#1000
$finish;
end
endmodule


