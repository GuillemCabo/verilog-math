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

module double_eq(clk, double_eq_a, double_eq_b, double_eq_z);
  input clk;
  input [63:0] double_eq_a;
  input [63:0] double_eq_b;
  output [0:0] double_eq_z;
  wire [0:0] s_0;
  wire [0:0] s_1;
  wire [0:0] s_2;
  wire [0:0] s_3;
  wire [0:0] s_4;
  wire [63:0] s_5;
  wire [0:0] s_6;
  wire [63:0] s_7;
  wire [0:0] s_8;
  wire [10:0] s_9;
  wire [10:0] s_10;
  wire [10:0] s_11;
  wire [10:0] s_12;
  wire [9:0] s_13;
  wire [0:0] s_14;
  wire [10:0] s_15;
  wire [10:0] s_16;
  wire [10:0] s_17;
  wire [10:0] s_18;
  wire [10:0] s_19;
  wire [9:0] s_20;
  wire [0:0] s_21;
  wire [10:0] s_22;
  wire [0:0] s_23;
  wire [52:0] s_24;
  wire [0:0] s_25;
  wire [0:0] s_26;
  wire [0:0] s_27;
  wire [51:0] s_28;
  wire [52:0] s_29;
  wire [0:0] s_30;
  wire [0:0] s_31;
  wire [0:0] s_32;
  wire [51:0] s_33;
  wire [0:0] s_34;
  wire [0:0] s_35;
  wire [0:0] s_36;
  wire [0:0] s_37;
  wire [0:0] s_38;
  wire [0:0] s_39;
  wire [0:0] s_40;
  wire [0:0] s_41;
  wire [0:0] s_42;
  wire [0:0] s_43;
  wire [0:0] s_44;
  wire [10:0] s_45;
  wire [0:0] s_46;
  wire [51:0] s_47;
  wire [0:0] s_48;
  wire [0:0] s_49;
  wire [0:0] s_50;
  wire [10:0] s_51;
  wire [0:0] s_52;
  wire [51:0] s_53;

  assign s_0 = s_1 | s_34;
  assign s_1 = s_2 & s_23;
  assign s_2 = s_3 & s_8;
  assign s_3 = s_4 == s_6;
  assign s_4 = s_5[63];
  assign s_5 = double_eq_a;
  assign s_6 = s_7[63];
  assign s_7 = double_eq_b;
  assign s_8 = s_9 == s_16;
  assign s_9 = s_14?s_10:s_11;
  assign s_10 = -11'd1022;
  assign s_11 = s_12 - s_13;
  assign s_12 = s_5[62:52];
  assign s_13 = 10'd1023;
  assign s_14 = s_11 == s_15;
  assign s_15 = -11'd1023;
  assign s_16 = s_21?s_17:s_18;
  assign s_17 = -11'd1022;
  assign s_18 = s_19 - s_20;
  assign s_19 = s_7[62:52];
  assign s_20 = 10'd1023;
  assign s_21 = s_18 == s_22;
  assign s_22 = -11'd1023;
  assign s_23 = s_24 == s_29;
  assign s_24 = {s_25,s_28};
  assign s_25 = s_14?s_26:s_27;
  assign s_26 = 1'd0;
  assign s_27 = 1'd1;
  assign s_28 = s_5[51:0];
  assign s_29 = {s_30,s_33};
  assign s_30 = s_21?s_31:s_32;
  assign s_31 = 1'd0;
  assign s_32 = 1'd1;
  assign s_33 = s_7[51:0];
  assign s_34 = s_35 & s_48;
  assign s_35 = s_36 & s_42;
  assign s_36 = s_37 & s_40;
  assign s_37 = s_38 & s_39;
  assign s_38 = s_9 == s_16;
  assign s_39 = s_24 == s_29;
  assign s_40 = s_24 == s_41;
  assign s_41 = 1'd0;
  assign s_42 = ~s_43;
  assign s_43 = s_44 & s_46;
  assign s_44 = s_11 == s_45;
  assign s_45 = 11'd1024;
  assign s_46 = s_28 != s_47;
  assign s_47 = 52'd0;
  assign s_48 = ~s_49;
  assign s_49 = s_50 & s_52;
  assign s_50 = s_18 == s_51;
  assign s_51 = 11'd1024;
  assign s_52 = s_33 != s_53;
  assign s_53 = 52'd0;
  assign double_eq_z = s_0;
endmodule
