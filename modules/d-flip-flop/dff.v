/* dff.v
 * 
 * Implementation of simple D Flip Flop
 *
*/

module dff(d, clk, q, qnot);
input d, clk;
output q, qnot;

reg q, qnot;

always@(posedge clk)
begin
q <= d;
qnot <= !d;
end

endmodule
