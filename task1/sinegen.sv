module sinegen(input logic [7:0]  incr,
              input logic        rst,
              input logic        en,
              input logic        clk,
              
              output logic[7:0]  dout);
        
    logic [7:0] addr;

    counter c(incr, rst, en, clk, addr);
    rom     r(clk, addr, dout);
    

endmodule
