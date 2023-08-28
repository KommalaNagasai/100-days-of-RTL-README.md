module mux41_21_tb();
reg i0,i1,i2,i3;
reg s1,s0;
wire y;
integer a;
mux41_21 m1(i0,i1,i2,i3,s0,s1,y);
initial
begin
for(a=0;a<64;a=a+1)
begin
{i3,i2,i1,i0,s1,s0}=a;

#10;
end


end
initial $monitor("input i3=%b,i2=%b,i1=%b,i0=%b, s1=%b,s0=%b, output y=%b", i3,i2,i1,i0,s1,s0,y );
initial #1000 $finish;
endmodule

