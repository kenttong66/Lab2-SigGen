module ram (

    input logic                     clk,
    input logic                     wr_en,       
    input logic                     rd_en,
    input logic [7:0]               wr_addr,
    input logic [7:0]               rd_addr,
    input logic [7:0]               din,
    output logic [7:0]              dout
);

logic [7:0] ram_array [2**7:0];

always_ff @(posedge clk) begin
    if (wr_en == 1'b1 )
       ram_array[wr_addr]<=din;
    if (rd_en == 1'b1)
        //output is synchronous
        dout <= ram_array [rd_addr];
end 
endmodule
