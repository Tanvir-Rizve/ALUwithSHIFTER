/*
###############################################################
#  Generated by:      Cadence Innovus 16.10-p004_1
#  OS:                Linux x86_64(Host ID CadenceServer3.localdomain)
#  Generated on:      Wed Jun 14 15:49:40 2023
#  Design:            TOP
#  Command:           saveNetlist ./generated_netlist/cts.v
###############################################################
*/
// Generated by Cadence Genus(TM) Synthesis Solution 16.13-s036_1
// Generated on: Jun 13 2023 09:25:36 BDT (Jun 13 2023 03:25:36 UTC)
// Verification Directory fv/TOP 
module ALU (
	A, 
	B, 
	S, 
	Cin, 
	clk, 
	reset, 
	F, 
	Cout);
   input [3:0] A;
   input [3:0] B;
   input [2:0] S;
   input Cin;
   input clk;
   input reset;
   output [3:0] F;
   output Cout;

   // Internal wires
   wire FE_PHN5_reset;
   wire FE_OFN4_n_104;
   wire FE_OFN3_n_90;
   wire FE_OFN0_n_40;
   wire n_0;
   wire n_1;
   wire n_2;
   wire n_3;
   wire n_4;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_8;
   wire n_9;
   wire n_10;
   wire n_11;
   wire n_12;
   wire n_13;
   wire n_14;
   wire n_15;
   wire n_16;
   wire n_17;
   wire n_18;
   wire n_19;
   wire n_20;
   wire n_21;
   wire n_22;
   wire n_23;
   wire n_24;
   wire n_25;
   wire n_26;
   wire n_27;
   wire n_28;
   wire n_29;
   wire n_30;
   wire n_31;
   wire n_32;
   wire n_33;
   wire n_34;
   wire n_35;
   wire n_36;
   wire n_37;
   wire n_38;
   wire n_39;
   wire n_40;
   wire n_41;
   wire n_42;
   wire n_43;
   wire n_44;
   wire n_45;
   wire n_46;
   wire n_47;
   wire n_48;
   wire n_49;
   wire n_50;
   wire n_51;
   wire n_52;
   wire n_53;
   wire n_54;
   wire n_55;
   wire n_56;
   wire n_57;
   wire n_58;
   wire n_59;
   wire n_60;
   wire n_61;
   wire n_62;
   wire n_63;
   wire n_64;
   wire n_65;
   wire n_66;
   wire n_67;
   wire n_68;
   wire n_69;
   wire n_70;
   wire n_71;
   wire n_72;
   wire n_73;
   wire n_74;
   wire n_75;
   wire n_76;
   wire n_77;
   wire n_78;
   wire n_79;
   wire n_80;
   wire n_81;
   wire n_82;
   wire n_83;
   wire n_84;
   wire n_85;
   wire n_86;
   wire n_87;
   wire n_88;
   wire n_89;
   wire n_90;
   wire n_91;
   wire n_92;
   wire n_93;
   wire n_94;
   wire n_95;
   wire n_96;
   wire n_97;
   wire n_98;
   wire n_99;
   wire n_100;
   wire n_101;
   wire n_102;
   wire n_103;
   wire n_104;
   wire n_105;
   wire n_106;
   wire n_107;
   wire n_108;
   wire n_109;
   wire n_110;
   wire n_111;
   wire n_112;
   wire n_113;
   wire n_114;
   wire n_115;
   wire n_116;
   wire n_117;
   wire n_118;
   wire n_119;
   wire n_120;
   wire n_121;
   wire n_122;
   wire n_124;
   wire n_125;
   wire n_126;
   wire n_127;
   wire n_128;
   wire n_129;
   wire n_130;
   wire n_131;
   wire n_132;
   wire n_133;
   wire n_153;

   BUFX3 FE_PHC5_reset (.Y(FE_PHN5_reset),
	.A(reset));
   BUFX3 FE_OFC4_n_104 (.Y(FE_OFN4_n_104),
	.A(n_104));
   BUFX3 FE_OFC3_n_90 (.Y(FE_OFN3_n_90),
	.A(n_90));
   BUFX3 FE_OFC0_n_40 (.Y(FE_OFN0_n_40),
	.A(n_40));
   DFFRHQX1 Cout_reg (.Q(Cout),
	.D(n_133),
	.RN(n_6),
	.CK(clk));
   OAI211X1 g36167837 (.Y(n_133),
	.A0(n_62),
	.A1(n_130),
	.B0(n_74),
	.C0(n_132));
   DFFRHQX1 \F_reg[3]  (.Q(F[3]),
	.D(n_131),
	.RN(n_6),
	.CK(clk));
   NAND2X1 g36187557 (.Y(n_132),
	.A(n_38),
	.B(n_130));
   OAI211X1 g36197654 (.Y(n_131),
	.A0(n_118),
	.A1(n_115),
	.B0(n_127),
	.C0(n_129));
   DFFRHQX1 \F_reg[2]  (.Q(F[2]),
	.D(n_128),
	.RN(n_6),
	.CK(clk));
   AOI221X1 g36218867 (.Y(n_129),
	.A0(n_30),
	.A1(n_2),
	.B0(n_54),
	.B1(n_124),
	.C0(n_105));
   AOI22X1 g36221377 (.Y(n_130),
	.A0(n_108),
	.A1(n_153),
	.B0(n_29),
	.B1(n_125));
   OAI211X1 g36233717 (.Y(n_128),
	.A0(n_103),
	.A1(n_100),
	.B0(n_117),
	.C0(n_126));
   NAND2X1 g36244599 (.Y(n_127),
	.A(n_118),
	.B(n_115));
   AOI211XL g36253779 (.Y(n_126),
	.A0(n_54),
	.A1(n_113),
	.B0(n_87),
	.C0(n_107));
   NAND3X1 g36262007 (.Y(n_125),
	.A(n_119),
	.B(n_121),
	.C(n_122));
   XNOR2X1 g36271237 (.Y(n_124),
	.A(n_101),
	.B(n_110));
   DFFRHQX1 \F_reg[1]  (.Q(F[1]),
	.D(n_120),
	.RN(n_6),
	.CK(clk));
   OAI221X1 g36301297 (.Y(n_122),
	.A0(n_69),
	.A1(n_116),
	.B0(n_73),
	.B1(FE_OFN4_n_104),
	.C0(n_109));
   OAI21X1 g36312006 (.Y(n_121),
	.A0(n_69),
	.A1(n_111),
	.B0(n_116));
   OAI211X1 g36322833 (.Y(n_120),
	.A0(n_77),
	.A1(n_95),
	.B0(n_99),
	.C0(n_114));
   NAND2X1 g36337547 (.Y(n_117),
	.A(n_103),
	.B(n_100));
   NAND2X1 g36347765 (.Y(n_119),
	.A(n_69),
	.B(n_111));
   NOR2BX1 g36359867 (.Y(n_118),
	.AN(n_103),
	.B(n_100));
   INVX1 g3636 (.Y(n_116),
	.A(n_112));
   AOI211XL g36373377 (.Y(n_114),
	.A0(n_54),
	.A1(n_98),
	.B0(n_85),
	.C0(n_92));
   OAI21X1 g36389719 (.Y(n_113),
	.A0(n_89),
	.A1(n_94),
	.B0(n_110));
   AOI222X1 g36391591 (.Y(n_112),
	.A0(B[3]),
	.A1(n_38),
	.B0(A[3]),
	.B1(FE_OFN0_n_40),
	.C0(n_50),
	.C1(n_2));
   AOI22X1 g36406789 (.Y(n_115),
	.A0(n_28),
	.A1(n_2),
	.B0(A[3]),
	.B1(n_44));
   DFFRHQX1 \F_reg[0]  (.Q(F[0]),
	.D(n_106),
	.RN(n_6),
	.CK(clk));
   AND2X1 g36425927 (.Y(n_111),
	.A(FE_OFN4_n_104),
	.B(n_73));
   OAI2BB1X1 g36432001 (.Y(n_109),
	.A0N(n_72),
	.A1N(FE_OFN3_n_90),
	.B0(n_102));
   NAND2X1 g36441122 (.Y(n_110),
	.A(n_89),
	.B(n_94));
   OAI2BB1X1 g36452005 (.Y(n_108),
	.A0N(B[3]),
	.A1N(A[3]),
	.B0(n_97));
   OAI221X1 g36469771 (.Y(n_107),
	.A0(n_29),
	.A1(n_88),
	.B0(n_8),
	.B1(n_57),
	.C0(n_59));
   OAI221X1 g36473457 (.Y(n_106),
	.A0(n_49),
	.A1(n_77),
	.B0(n_36),
	.B1(n_61),
	.C0(n_96));
   OAI221X1 g36481279 (.Y(n_105),
	.A0(n_39),
	.A1(n_91),
	.B0(n_7),
	.B1(n_66),
	.C0(n_86));
   OAI22X1 g36496179 (.Y(n_102),
	.A0(n_72),
	.A1(FE_OFN3_n_90),
	.B0(n_68),
	.B1(n_76));
   OAI22X1 g36507837 (.Y(n_101),
	.A0(n_37),
	.A1(n_91),
	.B0(n_7),
	.B1(n_42));
   OAI222X1 g36517557 (.Y(n_104),
	.A0(n_8),
	.A1(n_37),
	.B0(n_51),
	.B1(n_88),
	.C0(n_3),
	.C1(n_39));
   OAI22X1 g36527654 (.Y(n_103),
	.A0(n_27),
	.A1(n_88),
	.B0(n_3),
	.B1(n_43));
   NAND2X1 g36548867 (.Y(n_99),
	.A(n_77),
	.B(n_95));
   NAND2BX1 g36551377 (.Y(n_100),
	.AN(n_95),
	.B(n_77));
   AO21XL g36563717 (.Y(n_98),
	.A0(n_78),
	.A1(n_84),
	.B0(n_94));
   OAI21X1 g36574599 (.Y(n_97),
	.A0(B[3]),
	.A1(A[3]),
	.B0(n_93));
   AOI221X1 g36583779 (.Y(n_96),
	.A0(A[0]),
	.A1(n_65),
	.B0(n_54),
	.B1(n_79),
	.C0(n_83));
   OAI221X1 g36602007 (.Y(n_92),
	.A0(n_29),
	.A1(n_71),
	.B0(n_9),
	.B1(n_63),
	.C0(n_56));
   AOI21X1 g36611237 (.Y(n_95),
	.A0(n_28),
	.A1(n_70),
	.B0(n_55));
   NOR2X1 g36621297 (.Y(n_94),
	.A(n_78),
	.B(n_84));
   OAI22X1 g36632006 (.Y(n_93),
	.A0(n_20),
	.A1(n_80),
	.B0(n_8),
	.B1(n_3));
   OAI22X1 g36642833 (.Y(n_87),
	.A0(n_39),
	.A1(n_82),
	.B0(n_3),
	.B1(n_66));
   XNOR2X1 g36657547 (.Y(n_91),
	.A(n_0),
	.B(n_75));
   OAI222X1 g36667765 (.Y(n_90),
	.A0(n_51),
	.A1(n_71),
	.B0(n_9),
	.B1(n_37),
	.C0(n_4),
	.C1(n_39));
   AOI22X1 g36679867 (.Y(n_89),
	.A0(n_38),
	.A1(n_81),
	.B0(A[2]),
	.B1(n_41));
   XNOR2X1 g36683377 (.Y(n_88),
	.A(n_34),
	.B(n_80));
   AOI222X1 g36699719 (.Y(n_86),
	.A0(n_0),
	.A1(n_48),
	.B0(n_7),
	.B1(n_46),
	.C0(B[3]),
	.C1(n_64));
   OAI22X1 g36701591 (.Y(n_85),
	.A0(n_39),
	.A1(n_60),
	.B0(n_4),
	.B1(n_66));
   OAI222X4 g36716789 (.Y(n_83),
	.A0(n_21),
	.A1(n_47),
	.B0(n_10),
	.B1(n_35),
	.C0(A[0]),
	.C1(n_45));
   OAI22X1 g36725927 (.Y(n_84),
	.A0(n_37),
	.A1(n_60),
	.B0(n_4),
	.B1(n_42));
   INVX1 g3673 (.Y(n_82),
	.A(n_81));
   INVX1 g3674 (.Y(n_79),
	.A(n_78));
   OAI222X2 g36752001 (.Y(n_76),
	.A0(n_10),
	.A1(n_37),
	.B0(n_36),
	.B1(n_51),
	.C0(n_5),
	.C1(n_39));
   XNOR2X1 g36761122 (.Y(n_81),
	.A(n_34),
	.B(n_52));
   AOI21X1 g36772005 (.Y(n_75),
	.A0(n_18),
	.A1(n_53),
	.B0(n_16));
   OA22X1 g36789771 (.Y(n_80),
	.A0(n_19),
	.A1(n_21),
	.B0(n_9),
	.B1(n_4));
   OAI22X1 g36793457 (.Y(n_78),
	.A0(n_36),
	.A1(n_37),
	.B0(n_5),
	.B1(n_42));
   OAI22X1 g36801279 (.Y(n_77),
	.A0(n_36),
	.A1(n_27),
	.B0(n_5),
	.B1(n_43));
   INVX1 g3681 (.Y(n_74),
	.A(n_67));
   INVX1 g3682 (.Y(n_70),
	.A(n_71));
   AOI221X1 g36836179 (.Y(n_68),
	.A0(B[0]),
	.A1(FE_OFN0_n_40),
	.B0(A[0]),
	.B1(n_38),
	.C0(n_28));
   OAI211X1 g36847837 (.Y(n_67),
	.A0(n_26),
	.A1(n_42),
	.B0(n_1),
	.C0(n_58));
   AOI221X1 g36857557 (.Y(n_73),
	.A0(B[2]),
	.A1(FE_OFN0_n_40),
	.B0(A[2]),
	.B1(n_38),
	.C0(n_28));
   AOI221X1 g36867654 (.Y(n_72),
	.A0(B[1]),
	.A1(FE_OFN0_n_40),
	.B0(A[1]),
	.B1(n_38),
	.C0(n_28));
   XNOR2X1 g36878867 (.Y(n_71),
	.A(n_21),
	.B(n_32));
   AOI221X1 g36881377 (.Y(n_69),
	.A0(B[3]),
	.A1(FE_OFN0_n_40),
	.B0(A[3]),
	.B1(n_38),
	.C0(n_28));
   INVX1 g3689 (.Y(n_66),
	.A(n_65));
   OAI21X1 g36903717 (.Y(n_64),
	.A0(n_7),
	.A1(n_47),
	.B0(n_35));
   OA21X1 g36914599 (.Y(n_63),
	.A0(n_4),
	.A1(n_47),
	.B0(n_35));
   NOR2X1 g36923779 (.Y(n_62),
	.A(FE_OFN0_n_40),
	.B(n_50));
   NOR3X1 g36932007 (.Y(n_61),
	.A(n_48),
	.B(n_30),
	.C(FE_OFN0_n_40));
   OAI211X1 g36941237 (.Y(n_65),
	.A0(n_22),
	.A1(n_13),
	.B0(n_1),
	.C0(n_35));
   AOI22X1 g36951297 (.Y(n_59),
	.A0(n_33),
	.A1(n_48),
	.B0(n_3),
	.B1(n_46));
   NAND4X1 g36962006 (.Y(n_58),
	.A(A[0]),
	.B(A[3]),
	.C(A[2]),
	.D(n_55));
   OA21X1 g36972833 (.Y(n_57),
	.A0(n_3),
	.A1(n_47),
	.B0(n_35));
   AOI22X1 g36987547 (.Y(n_56),
	.A0(n_31),
	.A1(n_48),
	.B0(n_4),
	.B1(n_46));
   XNOR2X1 g36997765 (.Y(n_60),
	.A(n_14),
	.B(n_32));
   NOR2X1 g37009867 (.Y(n_55),
	.A(n_4),
	.B(n_43));
   NAND2X1 g37013377 (.Y(n_54),
	.A(n_42),
	.B(n_37));
   INVX1 g3702 (.Y(n_53),
	.A(n_52));
   INVX1 g3703 (.Y(n_50),
	.A(n_51));
   NOR2XL g37049719 (.Y(n_49),
	.A(n_44),
	.B(n_28));
   AOI21X1 g37051591 (.Y(n_52),
	.A0(n_15),
	.A1(n_14),
	.B0(n_17));
   NOR2X1 g37066789 (.Y(n_51),
	.A(n_30),
	.B(n_28));
   INVX1 g3707 (.Y(n_45),
	.A(n_46));
   INVX1 g3708 (.Y(n_43),
	.A(n_44));
   INVX1 g3709 (.Y(n_42),
	.A(n_41));
   INVX1 g3710 (.Y(n_39),
	.A(FE_OFN0_n_40));
   INVX1 g3711 (.Y(n_37),
	.A(n_38));
   NOR2X1 g37135927 (.Y(n_48),
	.A(n_12),
	.B(n_23));
   OR2X1 g37142001 (.Y(n_47),
	.A(n_12),
	.B(n_25));
   NOR2X1 g37151122 (.Y(n_46),
	.A(n_12),
	.B(n_24));
   NOR2X1 g37162005 (.Y(n_44),
	.A(n_22),
	.B(n_23));
   NOR2X1 g3717 (.Y(n_41),
	.A(n_13),
	.B(n_11));
   NOR2X1 g37189771 (.Y(n_40),
	.A(n_25),
	.B(n_22));
   NOR2X2 g37193457 (.Y(n_38),
	.A(n_22),
	.B(n_24));
   INVX1 g3720 (.Y(n_33),
	.A(n_34));
   INVX1 g3721 (.Y(n_31),
	.A(n_32));
   INVX1 g3722 (.Y(n_29),
	.A(n_30));
   INVX1 g3723 (.Y(n_27),
	.A(n_28));
   NOR4X1 g37241279 (.Y(n_26),
	.A(A[0]),
	.B(A[3]),
	.C(A[1]),
	.D(A[2]));
   OAI2BB1X1 g37256179 (.Y(n_36),
	.A0N(n_10),
	.A1N(n_5),
	.B0(n_21));
   OR2X1 g37277837 (.Y(n_35),
	.A(n_12),
	.B(n_13));
   NOR2BX1 g37287557 (.Y(n_34),
	.AN(n_18),
	.B(n_16));
   NOR2BX1 g37297654 (.Y(n_32),
	.AN(n_15),
	.B(n_17));
   NOR2X1 g37308867 (.Y(n_30),
	.A(n_23),
	.B(n_11));
   NOR2X2 g37311377 (.Y(n_28),
	.A(n_24),
	.B(n_11));
   NOR2X1 g37323717 (.Y(n_20),
	.A(B[2]),
	.B(A[2]));
   NOR2X1 g37334599 (.Y(n_19),
	.A(B[1]),
	.B(A[1]));
   NAND2X1 g37343779 (.Y(n_25),
	.A(S[0]),
	.B(S[1]));
   NAND2BX1 g37352007 (.Y(n_24),
	.AN(S[1]),
	.B(S[0]));
   NAND2BX1 g37361237 (.Y(n_23),
	.AN(S[0]),
	.B(S[1]));
   OR2X1 g37371297 (.Y(n_22),
	.A(Cin),
	.B(S[2]));
   NAND2X1 g37382006 (.Y(n_21),
	.A(B[0]),
	.B(A[0]));
   NAND2X1 g37402833 (.Y(n_18),
	.A(B[2]),
	.B(n_3));
   NOR2X1 g37417547 (.Y(n_17),
	.A(B[1]),
	.B(n_4));
   NOR2X1 g37427765 (.Y(n_16),
	.A(B[2]),
	.B(n_3));
   NAND2X1 g37439867 (.Y(n_15),
	.A(B[1]),
	.B(n_4));
   NAND2X1 g37443377 (.Y(n_14),
	.A(B[0]),
	.B(n_5));
   OR2X1 g37459719 (.Y(n_13),
	.A(S[0]),
	.B(S[1]));
   NAND2X1 g37461591 (.Y(n_12),
	.A(Cin),
	.B(S[2]));
   NAND2BX1 g37476789 (.Y(n_11),
	.AN(S[2]),
	.B(Cin));
   INVX1 g3748 (.Y(n_10),
	.A(B[0]));
   INVX1 g3749 (.Y(n_9),
	.A(B[1]));
   INVX1 g3750 (.Y(n_8),
	.A(B[2]));
   INVX1 g3751 (.Y(n_7),
	.A(A[3]));
   INVX1 g3752 (.Y(n_6),
	.A(FE_PHN5_reset));
   INVX1 g3754 (.Y(n_5),
	.A(A[0]));
   INVX1 g3755 (.Y(n_4),
	.A(A[1]));
   INVX1 g3756 (.Y(n_3),
	.A(A[2]));
   XOR2X1 g25927 (.Y(n_2),
	.A(n_0),
	.B(n_93));
   OR2X1 g37572001 (.Y(n_1),
	.A(n_25),
	.B(n_11));
   MXI2XL g37581122 (.Y(n_0),
	.A(n_7),
	.B(A[3]),
	.S0(B[3]));
   NAND2X1 g37592005 (.Y(n_153),
	.A(n_27),
	.B(n_122));
endmodule

module SHIFTER (
	F, 
	H, 
	O);
   input [3:0] F;
   input [1:0] H;
   output [3:0] O;

   // Internal wires
   wire n_0;
   wire n_1;
   wire n_2;
   wire n_3;
   wire n_4;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_8;

   OAI22X1 g2469771 (.Y(O[2]),
	.A0(H[0]),
	.A1(n_6),
	.B0(n_1),
	.B1(n_3));
   OAI22X1 g2473457 (.Y(O[1]),
	.A0(H[0]),
	.A1(n_7),
	.B0(n_2),
	.B1(n_3));
   OAI32X1 g2481279 (.Y(O[3]),
	.A0(n_2),
	.A1(H[0]),
	.A2(n_0),
	.B0(n_1),
	.B1(n_5));
   OAI2BB1X1 g2496179 (.Y(O[0]),
	.A0N(F[0]),
	.A1N(n_4),
	.B0(n_8));
   NAND2BX1 g2507837 (.Y(n_8),
	.AN(n_3),
	.B(F[1]));
   AOI22X1 g2517557 (.Y(n_7),
	.A0(F[1]),
	.A1(n_0),
	.B0(F[0]),
	.B1(H[1]));
   AOI22X1 g2527654 (.Y(n_6),
	.A0(F[2]),
	.A1(n_0),
	.B0(F[1]),
	.B1(H[1]));
   INVX1 g253 (.Y(n_5),
	.A(n_4));
   NOR2X1 g2548867 (.Y(n_4),
	.A(H[0]),
	.B(H[1]));
   NAND2X1 g2551377 (.Y(n_3),
	.A(H[0]),
	.B(n_0));
   INVX1 g256 (.Y(n_2),
	.A(F[2]));
   INVX1 g257 (.Y(n_1),
	.A(F[3]));
   INVX1 g258 (.Y(n_0),
	.A(H[1]));
endmodule

module TOP (
	A, 
	B, 
	S, 
	Cin, 
	clk, 
	reset, 
	H, 
	O, 
	Cout);
   input [3:0] A;
   input [3:0] B;
   input [2:0] S;
   input Cin;
   input clk;
   input reset;
   input [1:0] H;
   output [3:0] O;
   output Cout;

   // Internal wires
   wire [3:0] F;

   ALU alu_inst (.A(A),
	.B(B),
	.S(S),
	.Cin(Cin),
	.clk(clk),
	.reset(reset),
	.F(F),
	.Cout(Cout));
   SHIFTER shifter_inst (.F(F),
	.H(H),
	.O(O));
endmodule
