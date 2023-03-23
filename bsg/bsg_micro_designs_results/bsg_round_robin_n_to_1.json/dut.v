/* Generated by Yosys 0.27+9 (git sha1 101d19bb6, gcc 11.2.0-7ubuntu2 -fPIC -Os) */


module \$paramod$8b3a5982b5f6b83180631a3ec4ec1f5df57f21a3\bsg_round_robin_arb (clk_i, reset_i, grants_en_i, reqs_i, grants_o, sel_one_hot_o, v_o, tag_o, yumi_i);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  
  input clk_i;
  wire clk_i;
  
  input grants_en_i;
  wire grants_en_i;
  
  output [1:0] grants_o;
  wire [1:0] grants_o;
  
  wire hold_on_sr;
  
  wire [1:0] \inputs_2.sel_one_hot_n ;
  
  reg last_r;
  
  input [1:0] reqs_i;
  wire [1:0] reqs_i;
  
  input reset_i;
  wire reset_i;
  
  wire reset_on_sr;
  
  output [1:0] sel_one_hot_o;
  wire [1:0] sel_one_hot_o;
  
  output tag_o;
  wire tag_o;
  
  output v_o;
  wire v_o;
  
  input yumi_i;
  wire yumi_i;
  assign v_o = reqs_i[1] | reqs_i[0];
  assign _00_ = ~reqs_i[1];
  assign _01_ = reqs_i[0] | ~(reqs_i[1]);
  assign _02_ = last_r ? _01_ : _00_;
  assign tag_o = ~_02_;
  assign _03_ = ~reqs_i[0];
  assign _04_ = reqs_i[1] | ~(reqs_i[0]);
  assign _05_ = last_r ? _03_ : _04_;
  assign _06_ = _05_ & _02_;
  assign sel_one_hot_o[0] = ~(_06_ | _05_);
  assign sel_one_hot_o[1] = tag_o & ~(_06_);
  assign grants_o[0] = sel_one_hot_o[0] & grants_en_i;
  assign grants_o[1] = grants_en_i & ~(_02_);
  (* \always_ff  = 32'd1 *)
  
  always @(posedge clk_i)
    if (reset_i) last_r <= 1'h0;
    else if (yumi_i) last_r <= tag_o;
  assign hold_on_sr = 1'h0;
  assign \inputs_2.sel_one_hot_n  = sel_one_hot_o;
  assign reset_on_sr = 1'h0;
endmodule


module \$paramod$a75eec64863704427435722c39a1483a3946ed69\bsg_mux_one_hot (data_i, sel_one_hot_i, data_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  
  input [31:0] data_i;
  wire [31:0] data_i;
  
  output [15:0] data_o;
  wire [15:0] data_o;
  
  input [1:0] sel_one_hot_i;
  wire [1:0] sel_one_hot_i;
  assign _00_ = sel_one_hot_i[0] & data_i[0];
  assign _01_ = sel_one_hot_i[1] & data_i[16];
  assign data_o[0] = _01_ | _00_;
  assign _02_ = data_i[1] & sel_one_hot_i[0];
  assign _03_ = data_i[17] & sel_one_hot_i[1];
  assign data_o[1] = _03_ | _02_;
  assign _04_ = data_i[2] & sel_one_hot_i[0];
  assign _05_ = data_i[18] & sel_one_hot_i[1];
  assign data_o[2] = _05_ | _04_;
  assign _06_ = data_i[3] & sel_one_hot_i[0];
  assign _07_ = data_i[19] & sel_one_hot_i[1];
  assign data_o[3] = _07_ | _06_;
  assign _08_ = data_i[4] & sel_one_hot_i[0];
  assign _09_ = data_i[20] & sel_one_hot_i[1];
  assign data_o[4] = _09_ | _08_;
  assign _10_ = data_i[5] & sel_one_hot_i[0];
  assign _11_ = data_i[21] & sel_one_hot_i[1];
  assign data_o[5] = _11_ | _10_;
  assign _12_ = data_i[6] & sel_one_hot_i[0];
  assign _13_ = data_i[22] & sel_one_hot_i[1];
  assign data_o[6] = _13_ | _12_;
  assign _14_ = data_i[7] & sel_one_hot_i[0];
  assign _15_ = data_i[23] & sel_one_hot_i[1];
  assign data_o[7] = _15_ | _14_;
  assign _16_ = data_i[8] & sel_one_hot_i[0];
  assign _17_ = data_i[24] & sel_one_hot_i[1];
  assign data_o[8] = _17_ | _16_;
  assign _18_ = data_i[9] & sel_one_hot_i[0];
  assign _19_ = data_i[25] & sel_one_hot_i[1];
  assign data_o[9] = _19_ | _18_;
  assign _20_ = data_i[10] & sel_one_hot_i[0];
  assign _21_ = data_i[26] & sel_one_hot_i[1];
  assign data_o[10] = _21_ | _20_;
  assign _22_ = data_i[11] & sel_one_hot_i[0];
  assign _23_ = data_i[27] & sel_one_hot_i[1];
  assign data_o[11] = _23_ | _22_;
  assign _24_ = data_i[12] & sel_one_hot_i[0];
  assign _25_ = data_i[28] & sel_one_hot_i[1];
  assign data_o[12] = _25_ | _24_;
  assign _26_ = data_i[13] & sel_one_hot_i[0];
  assign _27_ = data_i[29] & sel_one_hot_i[1];
  assign data_o[13] = _27_ | _26_;
  assign _28_ = data_i[14] & sel_one_hot_i[0];
  assign _29_ = data_i[30] & sel_one_hot_i[1];
  assign data_o[14] = _29_ | _28_;
  assign _30_ = data_i[15] & sel_one_hot_i[0];
  assign _31_ = data_i[31] & sel_one_hot_i[1];
  assign data_o[15] = _31_ | _30_;
endmodule


module \$paramod$decdc08fbd782cf4887b04e0edb12253341b4038\bsg_crossbar_o_by_i (i, sel_oi_one_hot_i, o);
  
  input [31:0] i;
  wire [31:0] i;
  
  output [15:0] o;
  wire [15:0] o;
  
  input [1:0] sel_oi_one_hot_i;
  wire [1:0] sel_oi_one_hot_i;
  (* module_not_derived = 32'd1 *)
  
  \$paramod$a75eec64863704427435722c39a1483a3946ed69\bsg_mux_one_hot  \l[0].mux_one_hot  (
    .data_i(i),
    .data_o(o),
    .sel_one_hot_i(sel_oi_one_hot_i)
  );
endmodule

(* top =  1  *)

module bsg_round_robin_n_to_1(clk_i, reset_i, data_i, v_i, yumi_o, v_o, data_o, tag_o, yumi_i);
  
  wire _0_;
  
  input clk_i;
  wire clk_i;
  
  input [31:0] data_i;
  wire [31:0] data_i;
  
  output [15:0] data_o;
  wire [15:0] data_o;
  
  wire [1:0] \greedy.grants_lo ;
  
  input reset_i;
  wire reset_i;
  
  output tag_o;
  wire tag_o;
  
  input [1:0] v_i;
  wire [1:0] v_i;
  
  output v_o;
  wire v_o;
  
  input yumi_i;
  wire yumi_i;
  
  output [1:0] yumi_o;
  wire [1:0] yumi_o;
  assign yumi_o[0] = yumi_i & \greedy.grants_lo [0];
  assign yumi_o[1] = \greedy.grants_lo [1] & yumi_i;
  assign _0_ = v_o & yumi_i;
  (* module_not_derived = 32'd1 *)
  
  \$paramod$8b3a5982b5f6b83180631a3ec4ec1f5df57f21a3\bsg_round_robin_arb  \greedy.scan0.rr_arb_ctrl  (
    .clk_i(clk_i),
    .grants_en_i(1'h1),
    .grants_o(\greedy.grants_lo ),
    .reqs_i(v_i),
    .reset_i(reset_i),
    .tag_o(tag_o),
    .v_o(v_o),
    .yumi_i(_0_)
  );
  (* module_not_derived = 32'd1 *)
  
  \$paramod$decdc08fbd782cf4887b04e0edb12253341b4038\bsg_crossbar_o_by_i  \greedy.xbar  (
    .i(data_i),
    .o(data_o),
    .sel_oi_one_hot_i(\greedy.grants_lo )
  );
endmodule

