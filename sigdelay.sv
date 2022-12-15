module sigdelay(
              input logic        clk, 
              input logic        rst,
              input logic        wr,
              input logic        rd,
              input logic [7:0]  offset,
              input logic[7:0]   mic_signal,
              output logic[7:0]   delayed_signal
              );
        
    logic [7:0] addr;
    logic [7:0] addr1;

    counter c(rst, 1, clk, addr);

    always_ff @(posedge clk)
        addr1 <= addr + offset;

    ram     r(clk,wr,rd, addr, addr1, mic_signal,delayed_signal);

    

endmodule
