/* dff.v
   Implementation of a simple D Flip Flop
*/

module main(d, clk, q, qnot);
input d, clk;
output q, qnot;

reg q, qnot;

always@(posedge clk)
begin
q <= d;
qnot <= !d;
end

endmodule
