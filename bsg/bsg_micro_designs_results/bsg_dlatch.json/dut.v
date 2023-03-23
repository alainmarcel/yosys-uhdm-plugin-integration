/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */

(* top =  1  *)

module bsg_dlatch(clk_i, data_i, data_o);
  
  input clk_i;
  wire clk_i;
  
  input [15:0] data_i;
  wire [15:0] data_i;
  
  output [15:0] data_o;
  wire [15:0] data_o;
  
  reg [15:0] data_r;
  
  always @*
    if (clk_i) data_r[8] = data_i[8];
  
  always @*
    if (clk_i) data_r[9] = data_i[9];
  
  always @*
    if (clk_i) data_r[10] = data_i[10];
  
  always @*
    if (clk_i) data_r[11] = data_i[11];
  
  always @*
    if (clk_i) data_r[12] = data_i[12];
  
  always @*
    if (clk_i) data_r[13] = data_i[13];
  
  always @*
    if (clk_i) data_r[14] = data_i[14];
  
  always @*
    if (clk_i) data_r[15] = data_i[15];
  
  always @*
    if (clk_i) data_r[0] = data_i[0];
  
  always @*
    if (clk_i) data_r[1] = data_i[1];
  
  always @*
    if (clk_i) data_r[2] = data_i[2];
  
  always @*
    if (clk_i) data_r[3] = data_i[3];
  
  always @*
    if (clk_i) data_r[4] = data_i[4];
  
  always @*
    if (clk_i) data_r[5] = data_i[5];
  
  always @*
    if (clk_i) data_r[6] = data_i[6];
  
  always @*
    if (clk_i) data_r[7] = data_i[7];
  assign data_o = data_r;
endmodule

