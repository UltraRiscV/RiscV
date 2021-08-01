module dffre(
    clk,
    en,
    d,
    q
);

parameter DATA_W = 8;

input               clk  ;
input               en   ;
input  [DATA_W-1:0] d    ;
output [DATA_W-1:0] q    ;

always@(posedge clk)
begin
    if(en)
        q <= d ;
    else
        q <= q ;
end

endmodule