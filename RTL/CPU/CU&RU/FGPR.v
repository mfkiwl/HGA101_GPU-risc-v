module FGPR
(
    input [4:0]rs1,
    input [4:0]rs2,
    output [31:0]rs1o,
    output [31:0]rs2o,
    input [31:0]rdi,
    input [4:0]rd,
    input rdw,
    input clk
);
reg [31:0]fregs[31:0];
assign rs1o=fregs[rs1];
assign rs2o=fregs[rs2];
always @(posedge clk)
begin
    if(rdw)
        fregs[rd]<=rdi;
end

endmodule

