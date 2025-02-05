// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:xlconcat:2.1
// IP Revision: 3

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_xlconcat_interrupt_1_0 (
  In0,
  In1,
  In2,
  In3,
  In4,
  In5,
  In6,
  In7,
  In8,
  In9,
  In10,
  In11,
  In12,
  In13,
  In14,
  In15,
  In16,
  In17,
  In18,
  In19,
  In20,
  In21,
  In22,
  In23,
  In24,
  In25,
  In26,
  In27,
  In28,
  In29,
  In30,
  In31,
  dout
);

input wire [0 : 0] In0;
input wire [0 : 0] In1;
input wire [0 : 0] In2;
input wire [0 : 0] In3;
input wire [0 : 0] In4;
input wire [0 : 0] In5;
input wire [0 : 0] In6;
input wire [0 : 0] In7;
input wire [0 : 0] In8;
input wire [0 : 0] In9;
input wire [0 : 0] In10;
input wire [0 : 0] In11;
input wire [0 : 0] In12;
input wire [0 : 0] In13;
input wire [0 : 0] In14;
input wire [0 : 0] In15;
input wire [0 : 0] In16;
input wire [0 : 0] In17;
input wire [0 : 0] In18;
input wire [0 : 0] In19;
input wire [0 : 0] In20;
input wire [0 : 0] In21;
input wire [0 : 0] In22;
input wire [0 : 0] In23;
input wire [0 : 0] In24;
input wire [0 : 0] In25;
input wire [0 : 0] In26;
input wire [0 : 0] In27;
input wire [0 : 0] In28;
input wire [0 : 0] In29;
input wire [0 : 0] In30;
input wire [0 : 0] In31;
output wire [31 : 0] dout;

  xlconcat_v2_1_3_xlconcat #(
    .IN0_WIDTH(1),
    .IN1_WIDTH(1),
    .IN2_WIDTH(1),
    .IN3_WIDTH(1),
    .IN4_WIDTH(1),
    .IN5_WIDTH(1),
    .IN6_WIDTH(1),
    .IN7_WIDTH(1),
    .IN8_WIDTH(1),
    .IN9_WIDTH(1),
    .IN10_WIDTH(1),
    .IN11_WIDTH(1),
    .IN12_WIDTH(1),
    .IN13_WIDTH(1),
    .IN14_WIDTH(1),
    .IN15_WIDTH(1),
    .IN16_WIDTH(1),
    .IN17_WIDTH(1),
    .IN18_WIDTH(1),
    .IN19_WIDTH(1),
    .IN20_WIDTH(1),
    .IN21_WIDTH(1),
    .IN22_WIDTH(1),
    .IN23_WIDTH(1),
    .IN24_WIDTH(1),
    .IN25_WIDTH(1),
    .IN26_WIDTH(1),
    .IN27_WIDTH(1),
    .IN28_WIDTH(1),
    .IN29_WIDTH(1),
    .IN30_WIDTH(1),
    .IN31_WIDTH(1),
    .dout_width(32),
    .NUM_PORTS(32)
  ) inst (
    .In0(In0),
    .In1(In1),
    .In2(In2),
    .In3(In3),
    .In4(In4),
    .In5(In5),
    .In6(In6),
    .In7(In7),
    .In8(In8),
    .In9(In9),
    .In10(In10),
    .In11(In11),
    .In12(In12),
    .In13(In13),
    .In14(In14),
    .In15(In15),
    .In16(In16),
    .In17(In17),
    .In18(In18),
    .In19(In19),
    .In20(In20),
    .In21(In21),
    .In22(In22),
    .In23(In23),
    .In24(In24),
    .In25(In25),
    .In26(In26),
    .In27(In27),
    .In28(In28),
    .In29(In29),
    .In30(In30),
    .In31(In31),
    .dout(dout)
  );
endmodule
