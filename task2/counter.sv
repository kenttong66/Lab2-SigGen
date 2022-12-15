module counter #(
  parameter WIDTH = 8
)(

  input  logic [WIDTH-1:0] incr, 
  input  logic             rst,   
  input  logic             en,  
  input  logic             clk,      

  output logic [WIDTH-1:0] count
);

always_ff @ (posedge clk)
  if (rst)    count <= {WIDTH{1'b0}};
  else        count <= count + incr;
              

endmodule
