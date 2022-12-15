module sinegen(input logic [7:0]  incr,
              input logic        rst,
              input logic        en,
              input logic        clk,
              input logic [7:0]  offset,
              output logic[7:0]  dout,
              output logic[7:0]  dout1
              );
        
    logic [7:0] addr;
    logic [7:0] addr1;

    counter c(incr, rst, en, clk, addr);

    
    always_ff @(posedge clk)
        addr1 <= addr + offset;

    rom     r(clk, addr, addr1, dout, dout1);

    

endmodule
