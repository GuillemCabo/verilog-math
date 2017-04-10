module dq (clk, q, d);
  input  clk;
  input  [width-1:0] d;
  output [width-1:0] q;
  parameter width=8;
  parameter depth=2;
  integer i;
  reg [width-1:0] delay_line [depth-1:0];
  always @(posedge clk) begin
    delay_line[0] <= d;
    for(i=1; i<depth; i=i+1) begin
      delay_line[i] <= delay_line[i-1];
    end
  end
  assign q = delay_line[depth-1];
endmodule

module single_to_unsigned_int(clk, single_to_unsigned_int_a, single_to_unsigned_int_z);
  input clk;
  input [31:0] single_to_unsigned_int_a;
  output [31:0] single_to_unsigned_int_z;
  wire [31:0] s_0;
  wire [31:0] s_1;
  wire [31:0] s_2;
  wire [23:0] s_3;
  wire [0:0] s_4;
  wire [0:0] s_5;
  wire [0:0] s_6;
  wire [0:0] s_7;
  wire [7:0] s_8;
  wire [7:0] s_9;
  wire [31:0] s_10;
  wire [6:0] s_11;
  wire [7:0] s_12;
  wire [22:0] s_13;
  wire [7:0] s_14;
  wire [7:0] s_15;
  wire [7:0] s_16;
  wire [7:0] s_17;
  wire [7:0] s_18;
  wire [7:0] s_19;
  wire [0:0] s_20;

  dq #(32, 1) dq_s_0 (clk, s_0, s_1);
  assign s_1 = s_2 >> s_15;
  assign s_2 = {s_3,s_14};
  assign s_3 = {s_4,s_13};
  assign s_4 = s_7?s_5:s_6;
  assign s_5 = 1'd0;
  assign s_6 = 1'd1;
  assign s_7 = s_8 == s_12;
  assign s_8 = s_9 - s_11;
  assign s_9 = s_10[30:23];
  assign s_10 = single_to_unsigned_int_a;
  assign s_11 = 7'd127;
  assign s_12 = -8'd127;
  assign s_13 = s_10[22:0];
  assign s_14 = 8'd0;
  assign s_15 = s_16 - s_20;
  assign s_16 = s_17 - s_18;
  assign s_17 = 8'd32;
  assign s_18 = s_7?s_19:s_8;
  assign s_19 = -8'd126;
  assign s_20 = 1'd1;
  assign single_to_unsigned_int_z = s_0;
endmodule
