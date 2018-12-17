/* dff_tb.v
 * Simple D Flip Flop Testbench
*/

module main_tb;

reg d, clk;
wire q, qnot;

reg count = 2'd0;
always #10 clk = ~clk;

main uut(.d(d), .clk(clk), .q(q), .qnot(qnot));
initial
begin
  d = 0;
  //Wait to initialize
  #100;

  //select increments as count increments
  for(count = 0; count < 4; count = count + 1'b1)
  begin
    d = ~d;
    #5;
  end
end
endmodule
