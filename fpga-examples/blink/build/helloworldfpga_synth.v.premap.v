/* Generated by Yosys 0.9+2406 (git sha1 ca763e6d5, gcc 10.2.1-6 -fPIC -Os) */

(* top =  1  *)
(* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:1.1-16.10" *)
module helloworldfpga(A, B, C, r, g, b);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:2.8-2.9" *)
  input A;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:3.8-3.9" *)
  input B;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:4.8-4.9" *)
  input C;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:7.14-7.15" *)
  output b;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:6.14-6.15" *)
  output g;
  (* src = "/data/data/com.termux/files/home/fpga-examples/blink/helloworldfpga.v:5.14-5.15" *)
  output r;
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC({0{1'b0}}),
    .IO_PAD({0{1'b0}}),
    .IO_TYPE({0{1'b0}})
  ) _06_ (
    .P(A),
    .Q(_00_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC({0{1'b0}}),
    .IO_PAD({0{1'b0}}),
    .IO_TYPE({0{1'b0}})
  ) _07_ (
    .P(B),
    .Q(_01_)
  );
  (* keep = 32'd1 *)
  inpad #(
    .IO_LOC({0{1'b0}}),
    .IO_PAD({0{1'b0}}),
    .IO_TYPE({0{1'b0}})
  ) _08_ (
    .P(C),
    .Q(_02_)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X30Y32"),
    .IO_PAD("38"),
    .IO_TYPE("BIDIR")
  ) _09_ (
    .A(_03_),
    .P(b)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X24Y32"),
    .IO_PAD("39"),
    .IO_TYPE("BIDIR")
  ) _10_ (
    .A(_04_),
    .P(g)
  );
  (* keep = 32'd1 *)
  outpad #(
    .IO_LOC("X22Y32"),
    .IO_PAD("34"),
    .IO_TYPE("BIDIR")
  ) _11_ (
    .A(_05_),
    .P(r)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/data/data/com.termux/files/home/symbiflow/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(I0*~I1*~I2)+(~I0*I1*~I2)+(I0*I1*~I2)+(~I0*~I1*I2)+(~I0*I1*I2)"),
    .INIT(9'h0bd)
  ) b_LUT3_O (
    .I0(_00_),
    .I1(_02_),
    .I2(_01_),
    .O(_03_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/data/data/com.termux/files/home/symbiflow/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*~I1*~I2)+(~I0*I1*~I2)+(~I0*~I1*I2)+(I0*~I1*I2)+(~I0*I1*I2)"),
    .INIT(9'h0ea)
  ) g_LUT3_O (
    .I0(_00_),
    .I1(_01_),
    .I2(_02_),
    .O(_04_)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/data/data/com.termux/files/home/symbiflow/bin/../share/yosys/quicklogic/pp3_lut_map.v:36.63-36.121" *)
  LUT3 #(
    .EQN("(~I0*I1*~I2)+(~I0*~I1*I2)+(~I0*I1*I2)"),
    .INIT(9'h0a8)
  ) r_LUT3_O (
    .I0(_00_),
    .I1(_01_),
    .I2(_02_),
    .O(_05_)
  );
endmodule