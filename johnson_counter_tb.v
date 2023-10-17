module pes_johnson_counter_tb;
reg clk;
reg rst;
wire [7:0]q;
pes_johnson_counter j1(rst,clk,q);

initial
begin
clk=0;
rst = 0;

//$monitor($time, ,”c=%b”,clk, , ,”r=%b”,rst, , ,”q=%b”,q);
  $dumpfile("pes_johnson_counter.vcd");
$dumpvars(1);
#6 rst =1;
end

always #2 clk = ~clk;

initial #68 $finish;

endmodule
