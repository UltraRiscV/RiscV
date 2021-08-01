module dffre_pipe(
    clk,
    rst_n,
    stall,
    en,
    d,
    q
);

parameter DATA_W = 8;

input               clk  ;
input               rst_n;
input               stall;
input               en   ;
input  [DATA_W-1:0] d    ;
output [DATA_W-1:0] q    ;

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n || stall)
        q <= {DATA_W{1'b0}};
    else if(en)
        q <= d ;
    else
        q <= q ;
end

endmodule