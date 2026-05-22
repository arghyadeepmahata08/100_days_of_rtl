# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #575d6c
property boxcolor1 #575d6c
property boxcolor2 #000000
property boxinstcolor #1c1f28
property boxpincolor #1c1f28
property buscolor #009633
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #e5c7ff
property fillcolor2 #cde5ff
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #8bc34a
property objecthighlight0 #fe00f6
property objecthighlight1 #ffea00
property objecthighlight2 #84e413
property objecthighlight3 #0288d1
property objecthighlight4 #8a60ff
property objecthighlight5 #ffa358
property objecthighlight6 #ff2b2b
property objecthighlight7 #00e0ff
property objecthighlight8 #c0ca33
property objecthighlight9 #b16eff
property objecthighlight10 #46a466
property objecthighlight11 #caff78
property objecthighlight12 #ab47bc
property objecthighlight13 #b4602c
property objecthighlight14 #c20f8c
property objecthighlight15 #00ffaa
property objecthighlight16 #ff9fe4
property objecthighlight17 #ff8019
property objecthighlight18 #26b3ff
property objecthighlight19 #e5551c
property overlaycolor #8bc34a
property pbuscolor #000000
property pbusnamecolor #1c1f28
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #1c1f28
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #1c1f28
property rubberbandfontsize 16
property selectattr 0
property selectionappearance 2
property selectioncolor #396cef
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new reg_file work:reg_file:NOFILE -nosplit
load symbol IBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol BUFG hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT4 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left fillcolor 1
load symbol FDRE hdi_primitives GEN pin Q output.right pin C input.clk.left pin CE input.left pin D input.left pin R input.left fillcolor 1
load symbol OBUF hdi_primitives BUF pin O output pin I input fillcolor 1
load symbol LUT5 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left fillcolor 1
load symbol LUT6 hdi_primitives BOX pin O output.right pin I0 input.left pin I1 input.left pin I2 input.left pin I3 input.left pin I4 input.left pin I5 input.left fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 31170
load port rd_en input -pg 1 -lvl 0 -x 0 -y 30640
load port rst input -pg 1 -lvl 0 -x 0 -y 31240
load port wr_en input -pg 1 -lvl 0 -x 0 -y 26770
load portBus addr input [2:0] -attr @name addr[2:0] -pg 1 -lvl 0 -x 0 -y 25950
load portBus rd_data output [31:0] -attr @name rd_data[31:0] -pg 1 -lvl 7 -x 4620 -y 11990
load portBus wr_data input [31:0] -attr @name wr_data[31:0] -pg 1 -lvl 0 -x 0 -y 11790
load inst addr_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 25950
load inst addr_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 26020
load inst addr_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 26090
load inst clk_IBUF_BUFG_inst BUFG hdi_primitives -attr @cell(#1c1f28) BUFG -pg 1 -lvl 2 -x 340 -y 31170
load inst clk_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 31170
load inst mem[1][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 25970
load inst mem[2][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26100
load inst mem[3][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26230
load inst mem[4][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26360
load inst mem[5][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26490
load inst mem[6][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26620
load inst mem[7][31]_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 2 -x 340 -y 26760
load inst mem_reg[1][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11330
load inst mem_reg[1][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18380
load inst mem_reg[1][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18530
load inst mem_reg[1][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18680
load inst mem_reg[1][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18830
load inst mem_reg[1][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18980
load inst mem_reg[1][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19130
load inst mem_reg[1][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22300
load inst mem_reg[1][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22900
load inst mem_reg[1][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23050
load inst mem_reg[1][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23500
load inst mem_reg[1][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12080
load inst mem_reg[1][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23950
load inst mem_reg[1][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24700
load inst mem_reg[1][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24850
load inst mem_reg[1][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25450
load inst mem_reg[1][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25750
load inst mem_reg[1][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26650
load inst mem_reg[1][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27710
load inst mem_reg[1][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28760
load inst mem_reg[1][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29810
load inst mem_reg[1][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30870
load inst mem_reg[1][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12680
load inst mem_reg[1][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31470
load inst mem_reg[1][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31770
load inst mem_reg[1][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13280
load inst mem_reg[1][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14180
load inst mem_reg[1][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14330
load inst mem_reg[1][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17780
load inst mem_reg[1][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17930
load inst mem_reg[1][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18080
load inst mem_reg[1][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 18230
load inst mem_reg[2][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11480
load inst mem_reg[2][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16130
load inst mem_reg[2][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16430
load inst mem_reg[2][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16580
load inst mem_reg[2][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16730
load inst mem_reg[2][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16880
load inst mem_reg[2][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17030
load inst mem_reg[2][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17180
load inst mem_reg[2][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17330
load inst mem_reg[2][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17480
load inst mem_reg[2][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 17630
load inst mem_reg[2][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11930
load inst mem_reg[2][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20480
load inst mem_reg[2][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20630
load inst mem_reg[2][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20790
load inst mem_reg[2][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20940
load inst mem_reg[2][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25900
load inst mem_reg[2][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26350
load inst mem_reg[2][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27410
load inst mem_reg[2][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28460
load inst mem_reg[2][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29510
load inst mem_reg[2][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30720
load inst mem_reg[2][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12530
load inst mem_reg[2][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31020
load inst mem_reg[2][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31620
load inst mem_reg[2][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13130
load inst mem_reg[2][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13730
load inst mem_reg[2][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14480
load inst mem_reg[2][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14930
load inst mem_reg[2][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15230
load inst mem_reg[2][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15380
load inst mem_reg[2][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15830
load inst mem_reg[3][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11630
load inst mem_reg[3][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21400
load inst mem_reg[3][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21550
load inst mem_reg[3][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21700
load inst mem_reg[3][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21850
load inst mem_reg[3][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22000
load inst mem_reg[3][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22150
load inst mem_reg[3][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22450
load inst mem_reg[3][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22600
load inst mem_reg[3][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23200
load inst mem_reg[3][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23650
load inst mem_reg[3][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12230
load inst mem_reg[3][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24100
load inst mem_reg[3][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24400
load inst mem_reg[3][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25000
load inst mem_reg[3][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25300
load inst mem_reg[3][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26050
load inst mem_reg[3][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26500
load inst mem_reg[3][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27560
load inst mem_reg[3][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28610
load inst mem_reg[3][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29660
load inst mem_reg[3][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30560
load inst mem_reg[3][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12830
load inst mem_reg[3][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31170
load inst mem_reg[3][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31320
load inst mem_reg[3][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13430
load inst mem_reg[3][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13880
load inst mem_reg[3][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14630
load inst mem_reg[3][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20180
load inst mem_reg[3][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20330
load inst mem_reg[3][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21100
load inst mem_reg[3][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 21250
load inst mem_reg[4][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 80
load inst mem_reg[4][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3080
load inst mem_reg[4][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3380
load inst mem_reg[4][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3680
load inst mem_reg[4][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3980
load inst mem_reg[4][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4430
load inst mem_reg[4][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4580
load inst mem_reg[4][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4880
load inst mem_reg[4][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5180
load inst mem_reg[4][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5480
load inst mem_reg[4][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5930
load inst mem_reg[4][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 380
load inst mem_reg[4][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6080
load inst mem_reg[4][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6530
load inst mem_reg[4][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9380
load inst mem_reg[4][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9680
load inst mem_reg[4][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9980
load inst mem_reg[4][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27110
load inst mem_reg[4][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28160
load inst mem_reg[4][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29210
load inst mem_reg[4][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30260
load inst mem_reg[4][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32070
load inst mem_reg[4][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 680
load inst mem_reg[4][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32670
load inst mem_reg[4][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32820
load inst mem_reg[4][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 980
load inst mem_reg[4][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1280
load inst mem_reg[4][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1580
load inst mem_reg[4][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1880
load inst mem_reg[4][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2330
load inst mem_reg[4][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2480
load inst mem_reg[4][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2930
load inst mem_reg[5][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 230
load inst mem_reg[5][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3230
load inst mem_reg[5][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3530
load inst mem_reg[5][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 3830
load inst mem_reg[5][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4130
load inst mem_reg[5][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4280
load inst mem_reg[5][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 4730
load inst mem_reg[5][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5030
load inst mem_reg[5][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5330
load inst mem_reg[5][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5630
load inst mem_reg[5][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 5780
load inst mem_reg[5][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 530
load inst mem_reg[5][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6230
load inst mem_reg[5][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6380
load inst mem_reg[5][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9530
load inst mem_reg[5][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9830
load inst mem_reg[5][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10130
load inst mem_reg[5][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27260
load inst mem_reg[5][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28310
load inst mem_reg[5][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29360
load inst mem_reg[5][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30410
load inst mem_reg[5][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32220
load inst mem_reg[5][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 830
load inst mem_reg[5][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32370
load inst mem_reg[5][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32520
load inst mem_reg[5][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1130
load inst mem_reg[5][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1430
load inst mem_reg[5][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 1730
load inst mem_reg[5][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2030
load inst mem_reg[5][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2180
load inst mem_reg[5][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2630
load inst mem_reg[5][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 2780
load inst mem_reg[6][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6680
load inst mem_reg[6][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8180
load inst mem_reg[6][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8330
load inst mem_reg[6][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8480
load inst mem_reg[6][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8630
load inst mem_reg[6][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8780
load inst mem_reg[6][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8930
load inst mem_reg[6][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9080
load inst mem_reg[6][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 9230
load inst mem_reg[6][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10280
load inst mem_reg[6][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10430
load inst mem_reg[6][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6830
load inst mem_reg[6][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10580
load inst mem_reg[6][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10730
load inst mem_reg[6][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 10880
load inst mem_reg[6][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11030
load inst mem_reg[6][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11180
load inst mem_reg[6][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26810
load inst mem_reg[6][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 27860
load inst mem_reg[6][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28910
load inst mem_reg[6][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29960
load inst mem_reg[6][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 31920
load inst mem_reg[6][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 6980
load inst mem_reg[6][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 33120
load inst mem_reg[6][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 33420
load inst mem_reg[6][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7130
load inst mem_reg[6][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7280
load inst mem_reg[6][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7430
load inst mem_reg[6][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7580
load inst mem_reg[6][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7730
load inst mem_reg[6][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 7880
load inst mem_reg[6][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 8030
load inst mem_reg[7][0] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 11780
load inst mem_reg[7][10] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 16280
load inst mem_reg[7][11] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19280
load inst mem_reg[7][12] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19430
load inst mem_reg[7][13] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19580
load inst mem_reg[7][14] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19730
load inst mem_reg[7][15] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 19880
load inst mem_reg[7][16] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 20030
load inst mem_reg[7][17] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 22750
load inst mem_reg[7][18] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23350
load inst mem_reg[7][19] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 23800
load inst mem_reg[7][1] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12380
load inst mem_reg[7][20] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24250
load inst mem_reg[7][21] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 24550
load inst mem_reg[7][22] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25150
load inst mem_reg[7][23] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 25600
load inst mem_reg[7][24] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26200
load inst mem_reg[7][25] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 26960
load inst mem_reg[7][26] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 28010
load inst mem_reg[7][27] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 29060
load inst mem_reg[7][28] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 30110
load inst mem_reg[7][29] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 32970
load inst mem_reg[7][2] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 12980
load inst mem_reg[7][30] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 33270
load inst mem_reg[7][31] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 33570
load inst mem_reg[7][3] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 13580
load inst mem_reg[7][4] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14030
load inst mem_reg[7][5] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 14780
load inst mem_reg[7][6] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15080
load inst mem_reg[7][7] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15530
load inst mem_reg[7][8] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15680
load inst mem_reg[7][9] FDRE hdi_primitives -attr @cell(#1c1f28) FDRE -pg 1 -lvl 3 -x 1250 -y 15980
load inst rd_data_OBUF[0]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 11990
load inst rd_data_OBUF[0]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 11960
load inst rd_data_OBUF[0]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 11620
load inst rd_data_OBUF[0]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 11770
load inst rd_data_OBUF[10]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 16020
load inst rd_data_OBUF[10]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 15990
load inst rd_data_OBUF[10]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 15840
load inst rd_data_OBUF[10]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 15990
load inst rd_data_OBUF[11]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 16230
load inst rd_data_OBUF[11]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 16200
load inst rd_data_OBUF[11]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 16160
load inst rd_data_OBUF[11]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 16310
load inst rd_data_OBUF[12]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 16660
load inst rd_data_OBUF[12]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 16630
load inst rd_data_OBUF[12]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 16480
load inst rd_data_OBUF[12]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 16630
load inst rd_data_OBUF[13]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 16980
load inst rd_data_OBUF[13]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 16950
load inst rd_data_OBUF[13]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 16800
load inst rd_data_OBUF[13]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 16950
load inst rd_data_OBUF[14]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 17300
load inst rd_data_OBUF[14]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 17270
load inst rd_data_OBUF[14]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 17120
load inst rd_data_OBUF[14]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 17270
load inst rd_data_OBUF[15]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 17620
load inst rd_data_OBUF[15]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 17590
load inst rd_data_OBUF[15]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 17440
load inst rd_data_OBUF[15]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 17590
load inst rd_data_OBUF[16]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 17940
load inst rd_data_OBUF[16]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 17910
load inst rd_data_OBUF[16]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 17760
load inst rd_data_OBUF[16]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 17910
load inst rd_data_OBUF[17]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 18260
load inst rd_data_OBUF[17]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 18230
load inst rd_data_OBUF[17]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 18080
load inst rd_data_OBUF[17]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 18230
load inst rd_data_OBUF[18]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 18580
load inst rd_data_OBUF[18]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 18550
load inst rd_data_OBUF[18]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 18400
load inst rd_data_OBUF[18]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 18550
load inst rd_data_OBUF[19]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 18790
load inst rd_data_OBUF[19]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 18760
load inst rd_data_OBUF[19]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 18720
load inst rd_data_OBUF[19]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 18870
load inst rd_data_OBUF[1]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 12120
load inst rd_data_OBUF[1]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 12090
load inst rd_data_OBUF[1]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 11940
load inst rd_data_OBUF[1]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 12090
load inst rd_data_OBUF[20]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 20510
load inst rd_data_OBUF[20]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 20480
load inst rd_data_OBUF[20]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 20440
load inst rd_data_OBUF[20]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 20590
load inst rd_data_OBUF[21]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 20640
load inst rd_data_OBUF[21]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 20610
load inst rd_data_OBUF[21]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 21090
load inst rd_data_OBUF[21]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 21240
load inst rd_data_OBUF[22]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 20770
load inst rd_data_OBUF[22]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 20740
load inst rd_data_OBUF[22]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 20760
load inst rd_data_OBUF[22]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 20910
load inst rd_data_OBUF[23]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 20900
load inst rd_data_OBUF[23]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 20870
load inst rd_data_OBUF[23]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 19800
load inst rd_data_OBUF[23]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 19950
load inst rd_data_OBUF[24]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 21030
load inst rd_data_OBUF[24]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 21000
load inst rd_data_OBUF[24]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 20120
load inst rd_data_OBUF[24]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 20270
load inst rd_data_OBUF[25]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 26630
load inst rd_data_OBUF[25]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 26600
load inst rd_data_OBUF[25]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 26560
load inst rd_data_OBUF[25]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 26950
load inst rd_data_OBUF[26]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 27690
load inst rd_data_OBUF[26]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 27660
load inst rd_data_OBUF[26]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 27620
load inst rd_data_OBUF[26]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 28000
load inst rd_data_OBUF[27]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 28740
load inst rd_data_OBUF[27]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 28710
load inst rd_data_OBUF[27]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 28670
load inst rd_data_OBUF[27]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 29050
load inst rd_data_OBUF[28]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 29790
load inst rd_data_OBUF[28]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 29760
load inst rd_data_OBUF[28]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 29720
load inst rd_data_OBUF[28]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 30100
load inst rd_data_OBUF[29]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 30850
load inst rd_data_OBUF[29]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 30820
load inst rd_data_OBUF[29]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 30780
load inst rd_data_OBUF[29]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 31960
load inst rd_data_OBUF[2]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 12570
load inst rd_data_OBUF[2]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 12540
load inst rd_data_OBUF[2]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 12500
load inst rd_data_OBUF[2]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 12650
load inst rd_data_OBUF[30]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 31230
load inst rd_data_OBUF[30]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 31200
load inst rd_data_OBUF[30]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 31160
load inst rd_data_OBUF[30]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 32620
load inst rd_data_OBUF[31]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 31360
load inst rd_data_OBUF[31]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 31330
load inst rd_data_OBUF[31]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 31590
load inst rd_data_OBUF[31]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 32450
load inst rd_data_OBUF[3]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 13170
load inst rd_data_OBUF[3]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 13140
load inst rd_data_OBUF[3]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 13100
load inst rd_data_OBUF[3]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 13250
load inst rd_data_OBUF[4]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 13770
load inst rd_data_OBUF[4]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 13740
load inst rd_data_OBUF[4]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 13700
load inst rd_data_OBUF[4]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 13850
load inst rd_data_OBUF[5]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 14310
load inst rd_data_OBUF[5]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 14280
load inst rd_data_OBUF[5]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 14240
load inst rd_data_OBUF[5]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 14390
load inst rd_data_OBUF[6]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 14740
load inst rd_data_OBUF[6]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 14710
load inst rd_data_OBUF[6]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 14560
load inst rd_data_OBUF[6]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 14710
load inst rd_data_OBUF[7]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 15270
load inst rd_data_OBUF[7]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 15240
load inst rd_data_OBUF[7]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 15200
load inst rd_data_OBUF[7]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 15350
load inst rd_data_OBUF[8]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 15400
load inst rd_data_OBUF[8]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 15370
load inst rd_data_OBUF[8]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 14880
load inst rd_data_OBUF[8]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 15030
load inst rd_data_OBUF[9]_inst OBUF hdi_primitives -attr @cell(#1c1f28) OBUF -pg 1 -lvl 6 -x 4420 -y 15590
load inst rd_data_OBUF[9]_inst_i_1 LUT4 hdi_primitives -attr @cell(#1c1f28) LUT4 -pg 1 -lvl 5 -x 4260 -y 15560
load inst rd_data_OBUF[9]_inst_i_2 LUT5 hdi_primitives -attr @cell(#1c1f28) LUT5 -pg 1 -lvl 4 -x 3840 -y 15520
load inst rd_data_OBUF[9]_inst_i_3 LUT6 hdi_primitives -attr @cell(#1c1f28) LUT6 -pg 1 -lvl 4 -x 3840 -y 15670
load inst rd_en_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 4 -x 3840 -y 30640
load inst rst_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 31240
load inst wr_data_IBUF[0]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 11790
load inst wr_data_IBUF[10]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 14960
load inst wr_data_IBUF[11]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 15030
load inst wr_data_IBUF[12]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 15100
load inst wr_data_IBUF[13]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 15170
load inst wr_data_IBUF[14]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 20750
load inst wr_data_IBUF[15]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 20820
load inst wr_data_IBUF[16]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 20890
load inst wr_data_IBUF[17]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 20960
load inst wr_data_IBUF[18]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21030
load inst wr_data_IBUF[19]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21110
load inst wr_data_IBUF[1]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 11860
load inst wr_data_IBUF[20]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21180
load inst wr_data_IBUF[21]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21250
load inst wr_data_IBUF[22]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21320
load inst wr_data_IBUF[23]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21390
load inst wr_data_IBUF[24]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 21460
load inst wr_data_IBUF[25]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 26900
load inst wr_data_IBUF[26]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 27420
load inst wr_data_IBUF[27]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 28470
load inst wr_data_IBUF[28]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 29520
load inst wr_data_IBUF[29]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 30680
load inst wr_data_IBUF[2]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 11930
load inst wr_data_IBUF[30]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 31030
load inst wr_data_IBUF[31]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 31100
load inst wr_data_IBUF[3]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 12000
load inst wr_data_IBUF[4]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 12070
load inst wr_data_IBUF[5]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 12140
load inst wr_data_IBUF[6]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 14680
load inst wr_data_IBUF[7]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 14750
load inst wr_data_IBUF[8]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 14820
load inst wr_data_IBUF[9]_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 2 -x 340 -y 14890
load inst wr_en_IBUF_inst IBUF hdi_primitives -attr @cell(#1c1f28) IBUF -pg 1 -lvl 1 -x 60 -y 26770
load net addr[0] -attr @rip(#1c1f28) addr[0] -port addr[0] -pin addr_IBUF[0]_inst I
load net addr[1] -attr @rip(#1c1f28) addr[1] -port addr[1] -pin addr_IBUF[1]_inst I
load net addr[2] -attr @rip(#1c1f28) addr[2] -port addr[2] -pin addr_IBUF[2]_inst I
load net addr_IBUF[0] -pin addr_IBUF[0]_inst O -pin mem[1][31]_i_1 I1 -pin mem[2][31]_i_1 I2 -pin mem[3][31]_i_1 I1 -pin mem[4][31]_i_1 I1 -pin mem[5][31]_i_1 I1 -pin mem[6][31]_i_1 I2 -pin mem[7][31]_i_1 I1 -pin rd_data_OBUF[0]_inst_i_2 I3 -pin rd_data_OBUF[0]_inst_i_3 I4 -pin rd_data_OBUF[10]_inst_i_2 I3 -pin rd_data_OBUF[10]_inst_i_3 I4 -pin rd_data_OBUF[11]_inst_i_2 I3 -pin rd_data_OBUF[11]_inst_i_3 I4 -pin rd_data_OBUF[12]_inst_i_2 I3 -pin rd_data_OBUF[12]_inst_i_3 I4 -pin rd_data_OBUF[13]_inst_i_2 I3 -pin rd_data_OBUF[13]_inst_i_3 I4 -pin rd_data_OBUF[14]_inst_i_2 I3 -pin rd_data_OBUF[14]_inst_i_3 I4 -pin rd_data_OBUF[15]_inst_i_2 I3 -pin rd_data_OBUF[15]_inst_i_3 I4 -pin rd_data_OBUF[16]_inst_i_2 I3 -pin rd_data_OBUF[16]_inst_i_3 I4 -pin rd_data_OBUF[17]_inst_i_2 I3 -pin rd_data_OBUF[17]_inst_i_3 I4 -pin rd_data_OBUF[18]_inst_i_2 I3 -pin rd_data_OBUF[18]_inst_i_3 I4 -pin rd_data_OBUF[19]_inst_i_2 I3 -pin rd_data_OBUF[19]_inst_i_3 I4 -pin rd_data_OBUF[1]_inst_i_2 I3 -pin rd_data_OBUF[1]_inst_i_3 I4 -pin rd_data_OBUF[20]_inst_i_2 I3 -pin rd_data_OBUF[20]_inst_i_3 I4 -pin rd_data_OBUF[21]_inst_i_2 I3 -pin rd_data_OBUF[21]_inst_i_3 I4 -pin rd_data_OBUF[22]_inst_i_2 I3 -pin rd_data_OBUF[22]_inst_i_3 I4 -pin rd_data_OBUF[23]_inst_i_2 I3 -pin rd_data_OBUF[23]_inst_i_3 I4 -pin rd_data_OBUF[24]_inst_i_2 I3 -pin rd_data_OBUF[24]_inst_i_3 I4 -pin rd_data_OBUF[25]_inst_i_2 I3 -pin rd_data_OBUF[25]_inst_i_3 I4 -pin rd_data_OBUF[26]_inst_i_2 I3 -pin rd_data_OBUF[26]_inst_i_3 I4 -pin rd_data_OBUF[27]_inst_i_2 I3 -pin rd_data_OBUF[27]_inst_i_3 I4 -pin rd_data_OBUF[28]_inst_i_2 I3 -pin rd_data_OBUF[28]_inst_i_3 I4 -pin rd_data_OBUF[29]_inst_i_2 I3 -pin rd_data_OBUF[29]_inst_i_3 I4 -pin rd_data_OBUF[2]_inst_i_2 I3 -pin rd_data_OBUF[2]_inst_i_3 I4 -pin rd_data_OBUF[30]_inst_i_2 I3 -pin rd_data_OBUF[30]_inst_i_3 I4 -pin rd_data_OBUF[31]_inst_i_2 I3 -pin rd_data_OBUF[31]_inst_i_3 I4 -pin rd_data_OBUF[3]_inst_i_2 I3 -pin rd_data_OBUF[3]_inst_i_3 I4 -pin rd_data_OBUF[4]_inst_i_2 I3 -pin rd_data_OBUF[4]_inst_i_3 I4 -pin rd_data_OBUF[5]_inst_i_2 I3 -pin rd_data_OBUF[5]_inst_i_3 I4 -pin rd_data_OBUF[6]_inst_i_2 I3 -pin rd_data_OBUF[6]_inst_i_3 I4 -pin rd_data_OBUF[7]_inst_i_2 I3 -pin rd_data_OBUF[7]_inst_i_3 I4 -pin rd_data_OBUF[8]_inst_i_2 I3 -pin rd_data_OBUF[8]_inst_i_3 I4 -pin rd_data_OBUF[9]_inst_i_2 I3 -pin rd_data_OBUF[9]_inst_i_3 I4
netloc addr_IBUF[0] 1 1 3 250 20710 NJ 20710 2320
load net addr_IBUF[1] -pin addr_IBUF[1]_inst O -pin mem[1][31]_i_1 I2 -pin mem[2][31]_i_1 I1 -pin mem[3][31]_i_1 I2 -pin mem[4][31]_i_1 I2 -pin mem[5][31]_i_1 I2 -pin mem[6][31]_i_1 I1 -pin mem[7][31]_i_1 I2 -pin rd_data_OBUF[0]_inst_i_2 I2 -pin rd_data_OBUF[0]_inst_i_3 I2 -pin rd_data_OBUF[10]_inst_i_2 I2 -pin rd_data_OBUF[10]_inst_i_3 I2 -pin rd_data_OBUF[11]_inst_i_2 I2 -pin rd_data_OBUF[11]_inst_i_3 I2 -pin rd_data_OBUF[12]_inst_i_2 I2 -pin rd_data_OBUF[12]_inst_i_3 I2 -pin rd_data_OBUF[13]_inst_i_2 I2 -pin rd_data_OBUF[13]_inst_i_3 I2 -pin rd_data_OBUF[14]_inst_i_2 I2 -pin rd_data_OBUF[14]_inst_i_3 I2 -pin rd_data_OBUF[15]_inst_i_2 I2 -pin rd_data_OBUF[15]_inst_i_3 I2 -pin rd_data_OBUF[16]_inst_i_2 I2 -pin rd_data_OBUF[16]_inst_i_3 I2 -pin rd_data_OBUF[17]_inst_i_2 I2 -pin rd_data_OBUF[17]_inst_i_3 I2 -pin rd_data_OBUF[18]_inst_i_2 I2 -pin rd_data_OBUF[18]_inst_i_3 I2 -pin rd_data_OBUF[19]_inst_i_2 I2 -pin rd_data_OBUF[19]_inst_i_3 I2 -pin rd_data_OBUF[1]_inst_i_2 I2 -pin rd_data_OBUF[1]_inst_i_3 I2 -pin rd_data_OBUF[20]_inst_i_2 I2 -pin rd_data_OBUF[20]_inst_i_3 I2 -pin rd_data_OBUF[21]_inst_i_2 I2 -pin rd_data_OBUF[21]_inst_i_3 I2 -pin rd_data_OBUF[22]_inst_i_2 I2 -pin rd_data_OBUF[22]_inst_i_3 I2 -pin rd_data_OBUF[23]_inst_i_2 I2 -pin rd_data_OBUF[23]_inst_i_3 I2 -pin rd_data_OBUF[24]_inst_i_2 I2 -pin rd_data_OBUF[24]_inst_i_3 I2 -pin rd_data_OBUF[25]_inst_i_2 I2 -pin rd_data_OBUF[25]_inst_i_3 I2 -pin rd_data_OBUF[26]_inst_i_2 I2 -pin rd_data_OBUF[26]_inst_i_3 I2 -pin rd_data_OBUF[27]_inst_i_2 I2 -pin rd_data_OBUF[27]_inst_i_3 I2 -pin rd_data_OBUF[28]_inst_i_2 I2 -pin rd_data_OBUF[28]_inst_i_3 I2 -pin rd_data_OBUF[29]_inst_i_2 I2 -pin rd_data_OBUF[29]_inst_i_3 I2 -pin rd_data_OBUF[2]_inst_i_2 I2 -pin rd_data_OBUF[2]_inst_i_3 I2 -pin rd_data_OBUF[30]_inst_i_2 I2 -pin rd_data_OBUF[30]_inst_i_3 I2 -pin rd_data_OBUF[31]_inst_i_2 I2 -pin rd_data_OBUF[31]_inst_i_3 I2 -pin rd_data_OBUF[3]_inst_i_2 I2 -pin rd_data_OBUF[3]_inst_i_3 I2 -pin rd_data_OBUF[4]_inst_i_2 I2 -pin rd_data_OBUF[4]_inst_i_3 I2 -pin rd_data_OBUF[5]_inst_i_2 I2 -pin rd_data_OBUF[5]_inst_i_3 I2 -pin rd_data_OBUF[6]_inst_i_2 I2 -pin rd_data_OBUF[6]_inst_i_3 I2 -pin rd_data_OBUF[7]_inst_i_2 I2 -pin rd_data_OBUF[7]_inst_i_3 I2 -pin rd_data_OBUF[8]_inst_i_2 I2 -pin rd_data_OBUF[8]_inst_i_3 I2 -pin rd_data_OBUF[9]_inst_i_2 I2 -pin rd_data_OBUF[9]_inst_i_3 I2
netloc addr_IBUF[1] 1 1 3 230 26730 NJ 26730 2640
load net addr_IBUF[2] -pin addr_IBUF[2]_inst O -pin mem[1][31]_i_1 I0 -pin mem[2][31]_i_1 I0 -pin mem[3][31]_i_1 I0 -pin mem[4][31]_i_1 I0 -pin mem[5][31]_i_1 I0 -pin mem[6][31]_i_1 I0 -pin mem[7][31]_i_1 I0 -pin rd_data_OBUF[0]_inst_i_1 I1 -pin rd_data_OBUF[10]_inst_i_1 I1 -pin rd_data_OBUF[11]_inst_i_1 I1 -pin rd_data_OBUF[12]_inst_i_1 I1 -pin rd_data_OBUF[13]_inst_i_1 I1 -pin rd_data_OBUF[14]_inst_i_1 I1 -pin rd_data_OBUF[15]_inst_i_1 I1 -pin rd_data_OBUF[16]_inst_i_1 I1 -pin rd_data_OBUF[17]_inst_i_1 I1 -pin rd_data_OBUF[18]_inst_i_1 I1 -pin rd_data_OBUF[19]_inst_i_1 I1 -pin rd_data_OBUF[1]_inst_i_1 I1 -pin rd_data_OBUF[20]_inst_i_1 I1 -pin rd_data_OBUF[21]_inst_i_1 I1 -pin rd_data_OBUF[22]_inst_i_1 I1 -pin rd_data_OBUF[23]_inst_i_1 I1 -pin rd_data_OBUF[24]_inst_i_1 I1 -pin rd_data_OBUF[25]_inst_i_1 I1 -pin rd_data_OBUF[26]_inst_i_1 I1 -pin rd_data_OBUF[27]_inst_i_1 I1 -pin rd_data_OBUF[28]_inst_i_1 I1 -pin rd_data_OBUF[29]_inst_i_1 I1 -pin rd_data_OBUF[2]_inst_i_1 I1 -pin rd_data_OBUF[30]_inst_i_1 I1 -pin rd_data_OBUF[31]_inst_i_1 I1 -pin rd_data_OBUF[3]_inst_i_1 I1 -pin rd_data_OBUF[4]_inst_i_1 I1 -pin rd_data_OBUF[5]_inst_i_1 I1 -pin rd_data_OBUF[6]_inst_i_1 I1 -pin rd_data_OBUF[7]_inst_i_1 I1 -pin rd_data_OBUF[8]_inst_i_1 I1 -pin rd_data_OBUF[9]_inst_i_1 I1
netloc addr_IBUF[2] 1 1 4 290 21070 680J 21020 1360J 21060 4000
load net clk -port clk -pin clk_IBUF_inst I
netloc clk 1 0 1 NJ 31170
load net clk_IBUF -pin clk_IBUF_BUFG_inst I -pin clk_IBUF_inst O
netloc clk_IBUF 1 1 1 NJ 31170
load net clk_IBUF_BUFG -pin clk_IBUF_BUFG_inst O -pin mem_reg[1][0] C -pin mem_reg[1][10] C -pin mem_reg[1][11] C -pin mem_reg[1][12] C -pin mem_reg[1][13] C -pin mem_reg[1][14] C -pin mem_reg[1][15] C -pin mem_reg[1][16] C -pin mem_reg[1][17] C -pin mem_reg[1][18] C -pin mem_reg[1][19] C -pin mem_reg[1][1] C -pin mem_reg[1][20] C -pin mem_reg[1][21] C -pin mem_reg[1][22] C -pin mem_reg[1][23] C -pin mem_reg[1][24] C -pin mem_reg[1][25] C -pin mem_reg[1][26] C -pin mem_reg[1][27] C -pin mem_reg[1][28] C -pin mem_reg[1][29] C -pin mem_reg[1][2] C -pin mem_reg[1][30] C -pin mem_reg[1][31] C -pin mem_reg[1][3] C -pin mem_reg[1][4] C -pin mem_reg[1][5] C -pin mem_reg[1][6] C -pin mem_reg[1][7] C -pin mem_reg[1][8] C -pin mem_reg[1][9] C -pin mem_reg[2][0] C -pin mem_reg[2][10] C -pin mem_reg[2][11] C -pin mem_reg[2][12] C -pin mem_reg[2][13] C -pin mem_reg[2][14] C -pin mem_reg[2][15] C -pin mem_reg[2][16] C -pin mem_reg[2][17] C -pin mem_reg[2][18] C -pin mem_reg[2][19] C -pin mem_reg[2][1] C -pin mem_reg[2][20] C -pin mem_reg[2][21] C -pin mem_reg[2][22] C -pin mem_reg[2][23] C -pin mem_reg[2][24] C -pin mem_reg[2][25] C -pin mem_reg[2][26] C -pin mem_reg[2][27] C -pin mem_reg[2][28] C -pin mem_reg[2][29] C -pin mem_reg[2][2] C -pin mem_reg[2][30] C -pin mem_reg[2][31] C -pin mem_reg[2][3] C -pin mem_reg[2][4] C -pin mem_reg[2][5] C -pin mem_reg[2][6] C -pin mem_reg[2][7] C -pin mem_reg[2][8] C -pin mem_reg[2][9] C -pin mem_reg[3][0] C -pin mem_reg[3][10] C -pin mem_reg[3][11] C -pin mem_reg[3][12] C -pin mem_reg[3][13] C -pin mem_reg[3][14] C -pin mem_reg[3][15] C -pin mem_reg[3][16] C -pin mem_reg[3][17] C -pin mem_reg[3][18] C -pin mem_reg[3][19] C -pin mem_reg[3][1] C -pin mem_reg[3][20] C -pin mem_reg[3][21] C -pin mem_reg[3][22] C -pin mem_reg[3][23] C -pin mem_reg[3][24] C -pin mem_reg[3][25] C -pin mem_reg[3][26] C -pin mem_reg[3][27] C -pin mem_reg[3][28] C -pin mem_reg[3][29] C -pin mem_reg[3][2] C -pin mem_reg[3][30] C -pin mem_reg[3][31] C -pin mem_reg[3][3] C -pin mem_reg[3][4] C -pin mem_reg[3][5] C -pin mem_reg[3][6] C -pin mem_reg[3][7] C -pin mem_reg[3][8] C -pin mem_reg[3][9] C -pin mem_reg[4][0] C -pin mem_reg[4][10] C -pin mem_reg[4][11] C -pin mem_reg[4][12] C -pin mem_reg[4][13] C -pin mem_reg[4][14] C -pin mem_reg[4][15] C -pin mem_reg[4][16] C -pin mem_reg[4][17] C -pin mem_reg[4][18] C -pin mem_reg[4][19] C -pin mem_reg[4][1] C -pin mem_reg[4][20] C -pin mem_reg[4][21] C -pin mem_reg[4][22] C -pin mem_reg[4][23] C -pin mem_reg[4][24] C -pin mem_reg[4][25] C -pin mem_reg[4][26] C -pin mem_reg[4][27] C -pin mem_reg[4][28] C -pin mem_reg[4][29] C -pin mem_reg[4][2] C -pin mem_reg[4][30] C -pin mem_reg[4][31] C -pin mem_reg[4][3] C -pin mem_reg[4][4] C -pin mem_reg[4][5] C -pin mem_reg[4][6] C -pin mem_reg[4][7] C -pin mem_reg[4][8] C -pin mem_reg[4][9] C -pin mem_reg[5][0] C -pin mem_reg[5][10] C -pin mem_reg[5][11] C -pin mem_reg[5][12] C -pin mem_reg[5][13] C -pin mem_reg[5][14] C -pin mem_reg[5][15] C -pin mem_reg[5][16] C -pin mem_reg[5][17] C -pin mem_reg[5][18] C -pin mem_reg[5][19] C -pin mem_reg[5][1] C -pin mem_reg[5][20] C -pin mem_reg[5][21] C -pin mem_reg[5][22] C -pin mem_reg[5][23] C -pin mem_reg[5][24] C -pin mem_reg[5][25] C -pin mem_reg[5][26] C -pin mem_reg[5][27] C -pin mem_reg[5][28] C -pin mem_reg[5][29] C -pin mem_reg[5][2] C -pin mem_reg[5][30] C -pin mem_reg[5][31] C -pin mem_reg[5][3] C -pin mem_reg[5][4] C -pin mem_reg[5][5] C -pin mem_reg[5][6] C -pin mem_reg[5][7] C -pin mem_reg[5][8] C -pin mem_reg[5][9] C -pin mem_reg[6][0] C -pin mem_reg[6][10] C -pin mem_reg[6][11] C -pin mem_reg[6][12] C -pin mem_reg[6][13] C -pin mem_reg[6][14] C -pin mem_reg[6][15] C -pin mem_reg[6][16] C -pin mem_reg[6][17] C -pin mem_reg[6][18] C -pin mem_reg[6][19] C -pin mem_reg[6][1] C -pin mem_reg[6][20] C -pin mem_reg[6][21] C -pin mem_reg[6][22] C -pin mem_reg[6][23] C -pin mem_reg[6][24] C -pin mem_reg[6][25] C -pin mem_reg[6][26] C -pin mem_reg[6][27] C -pin mem_reg[6][28] C -pin mem_reg[6][29] C -pin mem_reg[6][2] C -pin mem_reg[6][30] C -pin mem_reg[6][31] C -pin mem_reg[6][3] C -pin mem_reg[6][4] C -pin mem_reg[6][5] C -pin mem_reg[6][6] C -pin mem_reg[6][7] C -pin mem_reg[6][8] C -pin mem_reg[6][9] C -pin mem_reg[7][0] C -pin mem_reg[7][10] C -pin mem_reg[7][11] C -pin mem_reg[7][12] C -pin mem_reg[7][13] C -pin mem_reg[7][14] C -pin mem_reg[7][15] C -pin mem_reg[7][16] C -pin mem_reg[7][17] C -pin mem_reg[7][18] C -pin mem_reg[7][19] C -pin mem_reg[7][1] C -pin mem_reg[7][20] C -pin mem_reg[7][21] C -pin mem_reg[7][22] C -pin mem_reg[7][23] C -pin mem_reg[7][24] C -pin mem_reg[7][25] C -pin mem_reg[7][26] C -pin mem_reg[7][27] C -pin mem_reg[7][28] C -pin mem_reg[7][29] C -pin mem_reg[7][2] C -pin mem_reg[7][30] C -pin mem_reg[7][31] C -pin mem_reg[7][3] C -pin mem_reg[7][4] C -pin mem_reg[7][5] C -pin mem_reg[7][6] C -pin mem_reg[7][7] C -pin mem_reg[7][8] C -pin mem_reg[7][9] C
netloc clk_IBUF_BUFG 1 2 1 760 50n
load net mem[1][31]_i_1_n_0 -pin mem[1][31]_i_1 O -pin mem_reg[1][0] CE -pin mem_reg[1][10] CE -pin mem_reg[1][11] CE -pin mem_reg[1][12] CE -pin mem_reg[1][13] CE -pin mem_reg[1][14] CE -pin mem_reg[1][15] CE -pin mem_reg[1][16] CE -pin mem_reg[1][17] CE -pin mem_reg[1][18] CE -pin mem_reg[1][19] CE -pin mem_reg[1][1] CE -pin mem_reg[1][20] CE -pin mem_reg[1][21] CE -pin mem_reg[1][22] CE -pin mem_reg[1][23] CE -pin mem_reg[1][24] CE -pin mem_reg[1][25] CE -pin mem_reg[1][26] CE -pin mem_reg[1][27] CE -pin mem_reg[1][28] CE -pin mem_reg[1][29] CE -pin mem_reg[1][2] CE -pin mem_reg[1][30] CE -pin mem_reg[1][31] CE -pin mem_reg[1][3] CE -pin mem_reg[1][4] CE -pin mem_reg[1][5] CE -pin mem_reg[1][6] CE -pin mem_reg[1][7] CE -pin mem_reg[1][8] CE -pin mem_reg[1][9] CE
netloc mem[1][31]_i_1_n_0 1 2 1 920 11320n
load net mem[2][31]_i_1_n_0 -pin mem[2][31]_i_1 O -pin mem_reg[2][0] CE -pin mem_reg[2][10] CE -pin mem_reg[2][11] CE -pin mem_reg[2][12] CE -pin mem_reg[2][13] CE -pin mem_reg[2][14] CE -pin mem_reg[2][15] CE -pin mem_reg[2][16] CE -pin mem_reg[2][17] CE -pin mem_reg[2][18] CE -pin mem_reg[2][19] CE -pin mem_reg[2][1] CE -pin mem_reg[2][20] CE -pin mem_reg[2][21] CE -pin mem_reg[2][22] CE -pin mem_reg[2][23] CE -pin mem_reg[2][24] CE -pin mem_reg[2][25] CE -pin mem_reg[2][26] CE -pin mem_reg[2][27] CE -pin mem_reg[2][28] CE -pin mem_reg[2][29] CE -pin mem_reg[2][2] CE -pin mem_reg[2][30] CE -pin mem_reg[2][31] CE -pin mem_reg[2][3] CE -pin mem_reg[2][4] CE -pin mem_reg[2][5] CE -pin mem_reg[2][6] CE -pin mem_reg[2][7] CE -pin mem_reg[2][8] CE -pin mem_reg[2][9] CE
netloc mem[2][31]_i_1_n_0 1 2 1 960 11470n
load net mem[3][31]_i_1_n_0 -pin mem[3][31]_i_1 O -pin mem_reg[3][0] CE -pin mem_reg[3][10] CE -pin mem_reg[3][11] CE -pin mem_reg[3][12] CE -pin mem_reg[3][13] CE -pin mem_reg[3][14] CE -pin mem_reg[3][15] CE -pin mem_reg[3][16] CE -pin mem_reg[3][17] CE -pin mem_reg[3][18] CE -pin mem_reg[3][19] CE -pin mem_reg[3][1] CE -pin mem_reg[3][20] CE -pin mem_reg[3][21] CE -pin mem_reg[3][22] CE -pin mem_reg[3][23] CE -pin mem_reg[3][24] CE -pin mem_reg[3][25] CE -pin mem_reg[3][26] CE -pin mem_reg[3][27] CE -pin mem_reg[3][28] CE -pin mem_reg[3][29] CE -pin mem_reg[3][2] CE -pin mem_reg[3][30] CE -pin mem_reg[3][31] CE -pin mem_reg[3][3] CE -pin mem_reg[3][4] CE -pin mem_reg[3][5] CE -pin mem_reg[3][6] CE -pin mem_reg[3][7] CE -pin mem_reg[3][8] CE -pin mem_reg[3][9] CE
netloc mem[3][31]_i_1_n_0 1 2 1 1000 11620n
load net mem[4][31]_i_1_n_0 -pin mem[4][31]_i_1 O -pin mem_reg[4][0] CE -pin mem_reg[4][10] CE -pin mem_reg[4][11] CE -pin mem_reg[4][12] CE -pin mem_reg[4][13] CE -pin mem_reg[4][14] CE -pin mem_reg[4][15] CE -pin mem_reg[4][16] CE -pin mem_reg[4][17] CE -pin mem_reg[4][18] CE -pin mem_reg[4][19] CE -pin mem_reg[4][1] CE -pin mem_reg[4][20] CE -pin mem_reg[4][21] CE -pin mem_reg[4][22] CE -pin mem_reg[4][23] CE -pin mem_reg[4][24] CE -pin mem_reg[4][25] CE -pin mem_reg[4][26] CE -pin mem_reg[4][27] CE -pin mem_reg[4][28] CE -pin mem_reg[4][29] CE -pin mem_reg[4][2] CE -pin mem_reg[4][30] CE -pin mem_reg[4][31] CE -pin mem_reg[4][3] CE -pin mem_reg[4][4] CE -pin mem_reg[4][5] CE -pin mem_reg[4][6] CE -pin mem_reg[4][7] CE -pin mem_reg[4][8] CE -pin mem_reg[4][9] CE
netloc mem[4][31]_i_1_n_0 1 2 1 780 70n
load net mem[5][31]_i_1_n_0 -pin mem[5][31]_i_1 O -pin mem_reg[5][0] CE -pin mem_reg[5][10] CE -pin mem_reg[5][11] CE -pin mem_reg[5][12] CE -pin mem_reg[5][13] CE -pin mem_reg[5][14] CE -pin mem_reg[5][15] CE -pin mem_reg[5][16] CE -pin mem_reg[5][17] CE -pin mem_reg[5][18] CE -pin mem_reg[5][19] CE -pin mem_reg[5][1] CE -pin mem_reg[5][20] CE -pin mem_reg[5][21] CE -pin mem_reg[5][22] CE -pin mem_reg[5][23] CE -pin mem_reg[5][24] CE -pin mem_reg[5][25] CE -pin mem_reg[5][26] CE -pin mem_reg[5][27] CE -pin mem_reg[5][28] CE -pin mem_reg[5][29] CE -pin mem_reg[5][2] CE -pin mem_reg[5][30] CE -pin mem_reg[5][31] CE -pin mem_reg[5][3] CE -pin mem_reg[5][4] CE -pin mem_reg[5][5] CE -pin mem_reg[5][6] CE -pin mem_reg[5][7] CE -pin mem_reg[5][8] CE -pin mem_reg[5][9] CE
netloc mem[5][31]_i_1_n_0 1 2 1 820 220n
load net mem[6][31]_i_1_n_0 -pin mem[6][31]_i_1 O -pin mem_reg[6][0] CE -pin mem_reg[6][10] CE -pin mem_reg[6][11] CE -pin mem_reg[6][12] CE -pin mem_reg[6][13] CE -pin mem_reg[6][14] CE -pin mem_reg[6][15] CE -pin mem_reg[6][16] CE -pin mem_reg[6][17] CE -pin mem_reg[6][18] CE -pin mem_reg[6][19] CE -pin mem_reg[6][1] CE -pin mem_reg[6][20] CE -pin mem_reg[6][21] CE -pin mem_reg[6][22] CE -pin mem_reg[6][23] CE -pin mem_reg[6][24] CE -pin mem_reg[6][25] CE -pin mem_reg[6][26] CE -pin mem_reg[6][27] CE -pin mem_reg[6][28] CE -pin mem_reg[6][29] CE -pin mem_reg[6][2] CE -pin mem_reg[6][30] CE -pin mem_reg[6][31] CE -pin mem_reg[6][3] CE -pin mem_reg[6][4] CE -pin mem_reg[6][5] CE -pin mem_reg[6][6] CE -pin mem_reg[6][7] CE -pin mem_reg[6][8] CE -pin mem_reg[6][9] CE
netloc mem[6][31]_i_1_n_0 1 2 1 880 6670n
load net mem[7][31]_i_1_n_0 -pin mem[7][31]_i_1 O -pin mem_reg[7][0] CE -pin mem_reg[7][10] CE -pin mem_reg[7][11] CE -pin mem_reg[7][12] CE -pin mem_reg[7][13] CE -pin mem_reg[7][14] CE -pin mem_reg[7][15] CE -pin mem_reg[7][16] CE -pin mem_reg[7][17] CE -pin mem_reg[7][18] CE -pin mem_reg[7][19] CE -pin mem_reg[7][1] CE -pin mem_reg[7][20] CE -pin mem_reg[7][21] CE -pin mem_reg[7][22] CE -pin mem_reg[7][23] CE -pin mem_reg[7][24] CE -pin mem_reg[7][25] CE -pin mem_reg[7][26] CE -pin mem_reg[7][27] CE -pin mem_reg[7][28] CE -pin mem_reg[7][29] CE -pin mem_reg[7][2] CE -pin mem_reg[7][30] CE -pin mem_reg[7][31] CE -pin mem_reg[7][3] CE -pin mem_reg[7][4] CE -pin mem_reg[7][5] CE -pin mem_reg[7][6] CE -pin mem_reg[7][7] CE -pin mem_reg[7][8] CE -pin mem_reg[7][9] CE
netloc mem[7][31]_i_1_n_0 1 2 1 720 11770n
load net mem_reg[1][0] -pin mem_reg[1][0] Q -pin rd_data_OBUF[0]_inst_i_2 I4
netloc mem_reg[1][0] 1 3 1 3020 11330n
load net mem_reg[1][10] -pin mem_reg[1][10] Q -pin rd_data_OBUF[10]_inst_i_2 I4
netloc mem_reg[1][10] 1 3 1 1920 15930n
load net mem_reg[1][11] -pin mem_reg[1][11] Q -pin rd_data_OBUF[11]_inst_i_2 I4
netloc mem_reg[1][11] 1 3 1 2060 16250n
load net mem_reg[1][12] -pin mem_reg[1][12] Q -pin rd_data_OBUF[12]_inst_i_2 I4
netloc mem_reg[1][12] 1 3 1 2120 16570n
load net mem_reg[1][13] -pin mem_reg[1][13] Q -pin rd_data_OBUF[13]_inst_i_2 I4
netloc mem_reg[1][13] 1 3 1 2240 16890n
load net mem_reg[1][14] -pin mem_reg[1][14] Q -pin rd_data_OBUF[14]_inst_i_2 I4
netloc mem_reg[1][14] 1 3 1 2300 17210n
load net mem_reg[1][15] -pin mem_reg[1][15] Q -pin rd_data_OBUF[15]_inst_i_2 I4
netloc mem_reg[1][15] 1 3 1 2440 17530n
load net mem_reg[1][16] -pin mem_reg[1][16] Q -pin rd_data_OBUF[16]_inst_i_2 I4
netloc mem_reg[1][16] 1 3 1 2740 17850n
load net mem_reg[1][17] -pin mem_reg[1][17] Q -pin rd_data_OBUF[17]_inst_i_2 I4
netloc mem_reg[1][17] 1 3 1 3280 18170n
load net mem_reg[1][18] -pin mem_reg[1][18] Q -pin rd_data_OBUF[18]_inst_i_2 I4
netloc mem_reg[1][18] 1 3 1 3360 18490n
load net mem_reg[1][19] -pin mem_reg[1][19] Q -pin rd_data_OBUF[19]_inst_i_2 I4
netloc mem_reg[1][19] 1 3 1 3420 18810n
load net mem_reg[1][1] -pin mem_reg[1][1] Q -pin rd_data_OBUF[1]_inst_i_2 I4
netloc mem_reg[1][1] 1 3 1 1380 12030n
load net mem_reg[1][20] -pin mem_reg[1][20] Q -pin rd_data_OBUF[20]_inst_i_2 I4
netloc mem_reg[1][20] 1 3 1 3500 20530n
load net mem_reg[1][21] -pin mem_reg[1][21] Q -pin rd_data_OBUF[21]_inst_i_2 I4
netloc mem_reg[1][21] 1 3 1 3700 21180n
load net mem_reg[1][22] -pin mem_reg[1][22] Q -pin rd_data_OBUF[22]_inst_i_2 I4
netloc mem_reg[1][22] 1 3 1 3680 20850n
load net mem_reg[1][23] -pin mem_reg[1][23] Q -pin rd_data_OBUF[23]_inst_i_2 I4
netloc mem_reg[1][23] 1 3 1 3520 19890n
load net mem_reg[1][24] -pin mem_reg[1][24] Q -pin rd_data_OBUF[24]_inst_i_2 I4
netloc mem_reg[1][24] 1 3 1 3620 20210n
load net mem_reg[1][25] -pin mem_reg[1][25] Q -pin rd_data_OBUF[25]_inst_i_2 I4
netloc mem_reg[1][25] 1 3 1 N 26650
load net mem_reg[1][26] -pin mem_reg[1][26] Q -pin rd_data_OBUF[26]_inst_i_2 I4
netloc mem_reg[1][26] 1 3 1 N 27710
load net mem_reg[1][27] -pin mem_reg[1][27] Q -pin rd_data_OBUF[27]_inst_i_2 I4
netloc mem_reg[1][27] 1 3 1 N 28760
load net mem_reg[1][28] -pin mem_reg[1][28] Q -pin rd_data_OBUF[28]_inst_i_2 I4
netloc mem_reg[1][28] 1 3 1 N 29810
load net mem_reg[1][29] -pin mem_reg[1][29] Q -pin rd_data_OBUF[29]_inst_i_2 I4
netloc mem_reg[1][29] 1 3 1 N 30870
load net mem_reg[1][2] -pin mem_reg[1][2] Q -pin rd_data_OBUF[2]_inst_i_2 I4
netloc mem_reg[1][2] 1 3 1 1380 12590n
load net mem_reg[1][30] -pin mem_reg[1][30] Q -pin rd_data_OBUF[30]_inst_i_2 I4
netloc mem_reg[1][30] 1 3 1 3760 31250n
load net mem_reg[1][31] -pin mem_reg[1][31] Q -pin rd_data_OBUF[31]_inst_i_2 I4
netloc mem_reg[1][31] 1 3 1 3760 31680n
load net mem_reg[1][3] -pin mem_reg[1][3] Q -pin rd_data_OBUF[3]_inst_i_2 I4
netloc mem_reg[1][3] 1 3 1 1380 13190n
load net mem_reg[1][4] -pin mem_reg[1][4] Q -pin rd_data_OBUF[4]_inst_i_2 I4
netloc mem_reg[1][4] 1 3 1 1380 13790n
load net mem_reg[1][5] -pin mem_reg[1][5] Q -pin rd_data_OBUF[5]_inst_i_2 I4
netloc mem_reg[1][5] 1 3 1 N 14330
load net mem_reg[1][6] -pin mem_reg[1][6] Q -pin rd_data_OBUF[6]_inst_i_2 I4
netloc mem_reg[1][6] 1 3 1 1500 14650n
load net mem_reg[1][7] -pin mem_reg[1][7] Q -pin rd_data_OBUF[7]_inst_i_2 I4
netloc mem_reg[1][7] 1 3 1 1640 15290n
load net mem_reg[1][8] -pin mem_reg[1][8] Q -pin rd_data_OBUF[8]_inst_i_2 I4
netloc mem_reg[1][8] 1 3 1 1580 14970n
load net mem_reg[1][9] -pin mem_reg[1][9] Q -pin rd_data_OBUF[9]_inst_i_2 I4
netloc mem_reg[1][9] 1 3 1 1760 15610n
load net mem_reg[2][0] -pin mem_reg[2][0] Q -pin rd_data_OBUF[0]_inst_i_2 I1
netloc mem_reg[2][0] 1 3 1 3000 11480n
load net mem_reg[2][10] -pin mem_reg[2][10] Q -pin rd_data_OBUF[10]_inst_i_2 I1
netloc mem_reg[2][10] 1 3 1 1660 15870n
load net mem_reg[2][11] -pin mem_reg[2][11] Q -pin rd_data_OBUF[11]_inst_i_2 I1
netloc mem_reg[2][11] 1 3 1 1840 16190n
load net mem_reg[2][12] -pin mem_reg[2][12] Q -pin rd_data_OBUF[12]_inst_i_2 I1
netloc mem_reg[2][12] 1 3 1 1940 16510n
load net mem_reg[2][13] -pin mem_reg[2][13] Q -pin rd_data_OBUF[13]_inst_i_2 I1
netloc mem_reg[2][13] 1 3 1 2300 16730n
load net mem_reg[2][14] -pin mem_reg[2][14] Q -pin rd_data_OBUF[14]_inst_i_2 I1
netloc mem_reg[2][14] 1 3 1 2220 16880n
load net mem_reg[2][15] -pin mem_reg[2][15] Q -pin rd_data_OBUF[15]_inst_i_2 I1
netloc mem_reg[2][15] 1 3 1 2100 17030n
load net mem_reg[2][16] -pin mem_reg[2][16] Q -pin rd_data_OBUF[16]_inst_i_2 I1
netloc mem_reg[2][16] 1 3 1 2040 17180n
load net mem_reg[2][17] -pin mem_reg[2][17] Q -pin rd_data_OBUF[17]_inst_i_2 I1
netloc mem_reg[2][17] 1 3 1 1900 17330n
load net mem_reg[2][18] -pin mem_reg[2][18] Q -pin rd_data_OBUF[18]_inst_i_2 I1
netloc mem_reg[2][18] 1 3 1 1720 17480n
load net mem_reg[2][19] -pin mem_reg[2][19] Q -pin rd_data_OBUF[19]_inst_i_2 I1
netloc mem_reg[2][19] 1 3 1 1660 17630n
load net mem_reg[2][1] -pin mem_reg[2][1] Q -pin rd_data_OBUF[1]_inst_i_2 I1
netloc mem_reg[2][1] 1 3 1 2940 11930n
load net mem_reg[2][20] -pin mem_reg[2][20] Q -pin rd_data_OBUF[20]_inst_i_2 I1
netloc mem_reg[2][20] 1 3 1 1360 20470n
load net mem_reg[2][21] -pin mem_reg[2][21] Q -pin rd_data_OBUF[21]_inst_i_2 I1
netloc mem_reg[2][21] 1 3 1 1380 20630n
load net mem_reg[2][22] -pin mem_reg[2][22] Q -pin rd_data_OBUF[22]_inst_i_2 I1
netloc mem_reg[2][22] 1 3 1 N 20790
load net mem_reg[2][23] -pin mem_reg[2][23] Q -pin rd_data_OBUF[23]_inst_i_2 I1
netloc mem_reg[2][23] 1 3 1 1400 19830n
load net mem_reg[2][24] -pin mem_reg[2][24] Q -pin rd_data_OBUF[24]_inst_i_2 I1
netloc mem_reg[2][24] 1 3 1 3600 20150n
load net mem_reg[2][25] -pin mem_reg[2][25] Q -pin rd_data_OBUF[25]_inst_i_2 I1
netloc mem_reg[2][25] 1 3 1 1400 26350n
load net mem_reg[2][26] -pin mem_reg[2][26] Q -pin rd_data_OBUF[26]_inst_i_2 I1
netloc mem_reg[2][26] 1 3 1 1400 27410n
load net mem_reg[2][27] -pin mem_reg[2][27] Q -pin rd_data_OBUF[27]_inst_i_2 I1
netloc mem_reg[2][27] 1 3 1 1400 28460n
load net mem_reg[2][28] -pin mem_reg[2][28] Q -pin rd_data_OBUF[28]_inst_i_2 I1
netloc mem_reg[2][28] 1 3 1 1400 29510n
load net mem_reg[2][29] -pin mem_reg[2][29] Q -pin rd_data_OBUF[29]_inst_i_2 I1
netloc mem_reg[2][29] 1 3 1 1360 30720n
load net mem_reg[2][2] -pin mem_reg[2][2] Q -pin rd_data_OBUF[2]_inst_i_2 I1
netloc mem_reg[2][2] 1 3 1 N 12530
load net mem_reg[2][30] -pin mem_reg[2][30] Q -pin rd_data_OBUF[30]_inst_i_2 I1
netloc mem_reg[2][30] 1 3 1 1360 31020n
load net mem_reg[2][31] -pin mem_reg[2][31] Q -pin rd_data_OBUF[31]_inst_i_2 I1
netloc mem_reg[2][31] 1 3 1 N 31620
load net mem_reg[2][3] -pin mem_reg[2][3] Q -pin rd_data_OBUF[3]_inst_i_2 I1
netloc mem_reg[2][3] 1 3 1 N 13130
load net mem_reg[2][4] -pin mem_reg[2][4] Q -pin rd_data_OBUF[4]_inst_i_2 I1
netloc mem_reg[2][4] 1 3 1 N 13730
load net mem_reg[2][5] -pin mem_reg[2][5] Q -pin rd_data_OBUF[5]_inst_i_2 I1
netloc mem_reg[2][5] 1 3 1 1380 14270n
load net mem_reg[2][6] -pin mem_reg[2][6] Q -pin rd_data_OBUF[6]_inst_i_2 I1
netloc mem_reg[2][6] 1 3 1 1420 14590n
load net mem_reg[2][7] -pin mem_reg[2][7] Q -pin rd_data_OBUF[7]_inst_i_2 I1
netloc mem_reg[2][7] 1 3 1 N 15230
load net mem_reg[2][8] -pin mem_reg[2][8] Q -pin rd_data_OBUF[8]_inst_i_2 I1
netloc mem_reg[2][8] 1 3 1 1460 14910n
load net mem_reg[2][9] -pin mem_reg[2][9] Q -pin rd_data_OBUF[9]_inst_i_2 I1
netloc mem_reg[2][9] 1 3 1 1560 15550n
load net mem_reg[3][0] -pin mem_reg[3][0] Q -pin rd_data_OBUF[0]_inst_i_2 I0
netloc mem_reg[3][0] 1 3 1 N 11630
load net mem_reg[3][10] -pin mem_reg[3][10] Q -pin rd_data_OBUF[10]_inst_i_2 I0
netloc mem_reg[3][10] 1 3 1 2260 15850n
load net mem_reg[3][11] -pin mem_reg[3][11] Q -pin rd_data_OBUF[11]_inst_i_2 I0
netloc mem_reg[3][11] 1 3 1 2380 16170n
load net mem_reg[3][12] -pin mem_reg[3][12] Q -pin rd_data_OBUF[12]_inst_i_2 I0
netloc mem_reg[3][12] 1 3 1 2500 16490n
load net mem_reg[3][13] -pin mem_reg[3][13] Q -pin rd_data_OBUF[13]_inst_i_2 I0
netloc mem_reg[3][13] 1 3 1 2540 16810n
load net mem_reg[3][14] -pin mem_reg[3][14] Q -pin rd_data_OBUF[14]_inst_i_2 I0
netloc mem_reg[3][14] 1 3 1 2620 17130n
load net mem_reg[3][15] -pin mem_reg[3][15] Q -pin rd_data_OBUF[15]_inst_i_2 I0
netloc mem_reg[3][15] 1 3 1 2700 17450n
load net mem_reg[3][16] -pin mem_reg[3][16] Q -pin rd_data_OBUF[16]_inst_i_2 I0
netloc mem_reg[3][16] 1 3 1 2720 17770n
load net mem_reg[3][17] -pin mem_reg[3][17] Q -pin rd_data_OBUF[17]_inst_i_2 I0
netloc mem_reg[3][17] 1 3 1 3160 18090n
load net mem_reg[3][18] -pin mem_reg[3][18] Q -pin rd_data_OBUF[18]_inst_i_2 I0
netloc mem_reg[3][18] 1 3 1 3340 18410n
load net mem_reg[3][19] -pin mem_reg[3][19] Q -pin rd_data_OBUF[19]_inst_i_2 I0
netloc mem_reg[3][19] 1 3 1 3400 18730n
load net mem_reg[3][1] -pin mem_reg[3][1] Q -pin rd_data_OBUF[1]_inst_i_2 I0
netloc mem_reg[3][1] 1 3 1 1360 11950n
load net mem_reg[3][20] -pin mem_reg[3][20] Q -pin rd_data_OBUF[20]_inst_i_2 I0
netloc mem_reg[3][20] 1 3 1 3480 20450n
load net mem_reg[3][21] -pin mem_reg[3][21] Q -pin rd_data_OBUF[21]_inst_i_2 I0
netloc mem_reg[3][21] 1 3 1 3640 21100n
load net mem_reg[3][22] -pin mem_reg[3][22] Q -pin rd_data_OBUF[22]_inst_i_2 I0
netloc mem_reg[3][22] 1 3 1 3660 20770n
load net mem_reg[3][23] -pin mem_reg[3][23] Q -pin rd_data_OBUF[23]_inst_i_2 I0
netloc mem_reg[3][23] 1 3 1 3460 19810n
load net mem_reg[3][24] -pin mem_reg[3][24] Q -pin rd_data_OBUF[24]_inst_i_2 I0
netloc mem_reg[3][24] 1 3 1 3580 20130n
load net mem_reg[3][25] -pin mem_reg[3][25] Q -pin rd_data_OBUF[25]_inst_i_2 I0
netloc mem_reg[3][25] 1 3 1 1360 26500n
load net mem_reg[3][26] -pin mem_reg[3][26] Q -pin rd_data_OBUF[26]_inst_i_2 I0
netloc mem_reg[3][26] 1 3 1 1360 27560n
load net mem_reg[3][27] -pin mem_reg[3][27] Q -pin rd_data_OBUF[27]_inst_i_2 I0
netloc mem_reg[3][27] 1 3 1 1360 28610n
load net mem_reg[3][28] -pin mem_reg[3][28] Q -pin rd_data_OBUF[28]_inst_i_2 I0
netloc mem_reg[3][28] 1 3 1 1360 29660n
load net mem_reg[3][29] -pin mem_reg[3][29] Q -pin rd_data_OBUF[29]_inst_i_2 I0
netloc mem_reg[3][29] 1 3 1 1400 30560n
load net mem_reg[3][2] -pin mem_reg[3][2] Q -pin rd_data_OBUF[2]_inst_i_2 I0
netloc mem_reg[3][2] 1 3 1 1360 12510n
load net mem_reg[3][30] -pin mem_reg[3][30] Q -pin rd_data_OBUF[30]_inst_i_2 I0
netloc mem_reg[3][30] 1 3 1 N 31170
load net mem_reg[3][31] -pin mem_reg[3][31] Q -pin rd_data_OBUF[31]_inst_i_2 I0
netloc mem_reg[3][31] 1 3 1 1360 31320n
load net mem_reg[3][3] -pin mem_reg[3][3] Q -pin rd_data_OBUF[3]_inst_i_2 I0
netloc mem_reg[3][3] 1 3 1 1360 13110n
load net mem_reg[3][4] -pin mem_reg[3][4] Q -pin rd_data_OBUF[4]_inst_i_2 I0
netloc mem_reg[3][4] 1 3 1 1360 13710n
load net mem_reg[3][5] -pin mem_reg[3][5] Q -pin rd_data_OBUF[5]_inst_i_2 I0
netloc mem_reg[3][5] 1 3 1 1360 14250n
load net mem_reg[3][6] -pin mem_reg[3][6] Q -pin rd_data_OBUF[6]_inst_i_2 I0
netloc mem_reg[3][6] 1 3 1 1740 14570n
load net mem_reg[3][7] -pin mem_reg[3][7] Q -pin rd_data_OBUF[7]_inst_i_2 I0
netloc mem_reg[3][7] 1 3 1 1360 15210n
load net mem_reg[3][8] -pin mem_reg[3][8] Q -pin rd_data_OBUF[8]_inst_i_2 I0
netloc mem_reg[3][8] 1 3 1 1960 14890n
load net mem_reg[3][9] -pin mem_reg[3][9] Q -pin rd_data_OBUF[9]_inst_i_2 I0
netloc mem_reg[3][9] 1 3 1 2160 15530n
load net mem_reg[4][0] -pin mem_reg[4][0] Q -pin rd_data_OBUF[0]_inst_i_3 I5
netloc mem_reg[4][0] 1 3 1 3760 80n
load net mem_reg[4][10] -pin mem_reg[4][10] Q -pin rd_data_OBUF[10]_inst_i_3 I5
netloc mem_reg[4][10] 1 3 1 3320 3080n
load net mem_reg[4][11] -pin mem_reg[4][11] Q -pin rd_data_OBUF[11]_inst_i_3 I5
netloc mem_reg[4][11] 1 3 1 3240 3380n
load net mem_reg[4][12] -pin mem_reg[4][12] Q -pin rd_data_OBUF[12]_inst_i_3 I5
netloc mem_reg[4][12] 1 3 1 3180 3680n
load net mem_reg[4][13] -pin mem_reg[4][13] Q -pin rd_data_OBUF[13]_inst_i_3 I5
netloc mem_reg[4][13] 1 3 1 3120 3980n
load net mem_reg[4][14] -pin mem_reg[4][14] Q -pin rd_data_OBUF[14]_inst_i_3 I5
netloc mem_reg[4][14] 1 3 1 2980 4430n
load net mem_reg[4][15] -pin mem_reg[4][15] Q -pin rd_data_OBUF[15]_inst_i_3 I5
netloc mem_reg[4][15] 1 3 1 2920 4580n
load net mem_reg[4][16] -pin mem_reg[4][16] Q -pin rd_data_OBUF[16]_inst_i_3 I5
netloc mem_reg[4][16] 1 3 1 2840 4880n
load net mem_reg[4][17] -pin mem_reg[4][17] Q -pin rd_data_OBUF[17]_inst_i_3 I5
netloc mem_reg[4][17] 1 3 1 2780 5180n
load net mem_reg[4][18] -pin mem_reg[4][18] Q -pin rd_data_OBUF[18]_inst_i_3 I5
netloc mem_reg[4][18] 1 3 1 2680 5480n
load net mem_reg[4][19] -pin mem_reg[4][19] Q -pin rd_data_OBUF[19]_inst_i_3 I5
netloc mem_reg[4][19] 1 3 1 2560 5930n
load net mem_reg[4][1] -pin mem_reg[4][1] Q -pin rd_data_OBUF[1]_inst_i_3 I5
netloc mem_reg[4][1] 1 3 1 3720 380n
load net mem_reg[4][20] -pin mem_reg[4][20] Q -pin rd_data_OBUF[20]_inst_i_3 I5
netloc mem_reg[4][20] 1 3 1 2420 6080n
load net mem_reg[4][21] -pin mem_reg[4][21] Q -pin rd_data_OBUF[21]_inst_i_3 I5
netloc mem_reg[4][21] 1 3 1 2140 6530n
load net mem_reg[4][22] -pin mem_reg[4][22] Q -pin rd_data_OBUF[22]_inst_i_3 I5
netloc mem_reg[4][22] 1 3 1 1820 9380n
load net mem_reg[4][23] -pin mem_reg[4][23] Q -pin rd_data_OBUF[23]_inst_i_3 I5
netloc mem_reg[4][23] 1 3 1 2020 9680n
load net mem_reg[4][24] -pin mem_reg[4][24] Q -pin rd_data_OBUF[24]_inst_i_3 I5
netloc mem_reg[4][24] 1 3 1 1880 9980n
load net mem_reg[4][25] -pin mem_reg[4][25] Q -pin rd_data_OBUF[25]_inst_i_3 I5
netloc mem_reg[4][25] 1 3 1 3760 27060n
load net mem_reg[4][26] -pin mem_reg[4][26] Q -pin rd_data_OBUF[26]_inst_i_3 I5
netloc mem_reg[4][26] 1 3 1 3760 28110n
load net mem_reg[4][27] -pin mem_reg[4][27] Q -pin rd_data_OBUF[27]_inst_i_3 I5
netloc mem_reg[4][27] 1 3 1 3760 29160n
load net mem_reg[4][28] -pin mem_reg[4][28] Q -pin rd_data_OBUF[28]_inst_i_3 I5
netloc mem_reg[4][28] 1 3 1 3760 30210n
load net mem_reg[4][29] -pin mem_reg[4][29] Q -pin rd_data_OBUF[29]_inst_i_3 I5
netloc mem_reg[4][29] 1 3 1 N 32070
load net mem_reg[4][2] -pin mem_reg[4][2] Q -pin rd_data_OBUF[2]_inst_i_3 I5
netloc mem_reg[4][2] 1 3 1 3680 680n
load net mem_reg[4][30] -pin mem_reg[4][30] Q -pin rd_data_OBUF[30]_inst_i_3 I5
netloc mem_reg[4][30] 1 3 1 1360 32670n
load net mem_reg[4][31] -pin mem_reg[4][31] Q -pin rd_data_OBUF[31]_inst_i_3 I5
netloc mem_reg[4][31] 1 3 1 3680 32560n
load net mem_reg[4][3] -pin mem_reg[4][3] Q -pin rd_data_OBUF[3]_inst_i_3 I5
netloc mem_reg[4][3] 1 3 1 3640 980n
load net mem_reg[4][4] -pin mem_reg[4][4] Q -pin rd_data_OBUF[4]_inst_i_3 I5
netloc mem_reg[4][4] 1 3 1 3600 1280n
load net mem_reg[4][5] -pin mem_reg[4][5] Q -pin rd_data_OBUF[5]_inst_i_3 I5
netloc mem_reg[4][5] 1 3 1 3560 1580n
load net mem_reg[4][6] -pin mem_reg[4][6] Q -pin rd_data_OBUF[6]_inst_i_3 I5
netloc mem_reg[4][6] 1 3 1 3520 1880n
load net mem_reg[4][7] -pin mem_reg[4][7] Q -pin rd_data_OBUF[7]_inst_i_3 I5
netloc mem_reg[4][7] 1 3 1 3420 2330n
load net mem_reg[4][8] -pin mem_reg[4][8] Q -pin rd_data_OBUF[8]_inst_i_3 I5
netloc mem_reg[4][8] 1 3 1 3460 2480n
load net mem_reg[4][9] -pin mem_reg[4][9] Q -pin rd_data_OBUF[9]_inst_i_3 I5
netloc mem_reg[4][9] 1 3 1 3360 2930n
load net mem_reg[5][0] -pin mem_reg[5][0] Q -pin rd_data_OBUF[0]_inst_i_3 I3
netloc mem_reg[5][0] 1 3 1 3740 230n
load net mem_reg[5][10] -pin mem_reg[5][10] Q -pin rd_data_OBUF[10]_inst_i_3 I3
netloc mem_reg[5][10] 1 3 1 3300 3230n
load net mem_reg[5][11] -pin mem_reg[5][11] Q -pin rd_data_OBUF[11]_inst_i_3 I3
netloc mem_reg[5][11] 1 3 1 3220 3530n
load net mem_reg[5][12] -pin mem_reg[5][12] Q -pin rd_data_OBUF[12]_inst_i_3 I3
netloc mem_reg[5][12] 1 3 1 3160 3830n
load net mem_reg[5][13] -pin mem_reg[5][13] Q -pin rd_data_OBUF[13]_inst_i_3 I3
netloc mem_reg[5][13] 1 3 1 3100 4130n
load net mem_reg[5][14] -pin mem_reg[5][14] Q -pin rd_data_OBUF[14]_inst_i_3 I3
netloc mem_reg[5][14] 1 3 1 3060 4280n
load net mem_reg[5][15] -pin mem_reg[5][15] Q -pin rd_data_OBUF[15]_inst_i_3 I3
netloc mem_reg[5][15] 1 3 1 2900 4730n
load net mem_reg[5][16] -pin mem_reg[5][16] Q -pin rd_data_OBUF[16]_inst_i_3 I3
netloc mem_reg[5][16] 1 3 1 2820 5030n
load net mem_reg[5][17] -pin mem_reg[5][17] Q -pin rd_data_OBUF[17]_inst_i_3 I3
netloc mem_reg[5][17] 1 3 1 2760 5330n
load net mem_reg[5][18] -pin mem_reg[5][18] Q -pin rd_data_OBUF[18]_inst_i_3 I3
netloc mem_reg[5][18] 1 3 1 2660 5630n
load net mem_reg[5][19] -pin mem_reg[5][19] Q -pin rd_data_OBUF[19]_inst_i_3 I3
netloc mem_reg[5][19] 1 3 1 2580 5780n
load net mem_reg[5][1] -pin mem_reg[5][1] Q -pin rd_data_OBUF[1]_inst_i_3 I3
netloc mem_reg[5][1] 1 3 1 3700 530n
load net mem_reg[5][20] -pin mem_reg[5][20] Q -pin rd_data_OBUF[20]_inst_i_3 I3
netloc mem_reg[5][20] 1 3 1 2400 6230n
load net mem_reg[5][21] -pin mem_reg[5][21] Q -pin rd_data_OBUF[21]_inst_i_3 I3
netloc mem_reg[5][21] 1 3 1 2200 6380n
load net mem_reg[5][22] -pin mem_reg[5][22] Q -pin rd_data_OBUF[22]_inst_i_3 I3
netloc mem_reg[5][22] 1 3 1 1800 9530n
load net mem_reg[5][23] -pin mem_reg[5][23] Q -pin rd_data_OBUF[23]_inst_i_3 I3
netloc mem_reg[5][23] 1 3 1 2000 9830n
load net mem_reg[5][24] -pin mem_reg[5][24] Q -pin rd_data_OBUF[24]_inst_i_3 I3
netloc mem_reg[5][24] 1 3 1 1860 10130n
load net mem_reg[5][25] -pin mem_reg[5][25] Q -pin rd_data_OBUF[25]_inst_i_3 I3
netloc mem_reg[5][25] 1 3 1 3720 27020n
load net mem_reg[5][26] -pin mem_reg[5][26] Q -pin rd_data_OBUF[26]_inst_i_3 I3
netloc mem_reg[5][26] 1 3 1 3720 28070n
load net mem_reg[5][27] -pin mem_reg[5][27] Q -pin rd_data_OBUF[27]_inst_i_3 I3
netloc mem_reg[5][27] 1 3 1 3720 29120n
load net mem_reg[5][28] -pin mem_reg[5][28] Q -pin rd_data_OBUF[28]_inst_i_3 I3
netloc mem_reg[5][28] 1 3 1 3720 30170n
load net mem_reg[5][29] -pin mem_reg[5][29] Q -pin rd_data_OBUF[29]_inst_i_3 I3
netloc mem_reg[5][29] 1 3 1 3420 32030n
load net mem_reg[5][2] -pin mem_reg[5][2] Q -pin rd_data_OBUF[2]_inst_i_3 I3
netloc mem_reg[5][2] 1 3 1 3660 830n
load net mem_reg[5][30] -pin mem_reg[5][30] Q -pin rd_data_OBUF[30]_inst_i_3 I3
netloc mem_reg[5][30] 1 3 1 1400 32370n
load net mem_reg[5][31] -pin mem_reg[5][31] Q -pin rd_data_OBUF[31]_inst_i_3 I3
netloc mem_reg[5][31] 1 3 1 N 32520
load net mem_reg[5][3] -pin mem_reg[5][3] Q -pin rd_data_OBUF[3]_inst_i_3 I3
netloc mem_reg[5][3] 1 3 1 3620 1130n
load net mem_reg[5][4] -pin mem_reg[5][4] Q -pin rd_data_OBUF[4]_inst_i_3 I3
netloc mem_reg[5][4] 1 3 1 3580 1430n
load net mem_reg[5][5] -pin mem_reg[5][5] Q -pin rd_data_OBUF[5]_inst_i_3 I3
netloc mem_reg[5][5] 1 3 1 3540 1730n
load net mem_reg[5][6] -pin mem_reg[5][6] Q -pin rd_data_OBUF[6]_inst_i_3 I3
netloc mem_reg[5][6] 1 3 1 3500 2030n
load net mem_reg[5][7] -pin mem_reg[5][7] Q -pin rd_data_OBUF[7]_inst_i_3 I3
netloc mem_reg[5][7] 1 3 1 3480 2180n
load net mem_reg[5][8] -pin mem_reg[5][8] Q -pin rd_data_OBUF[8]_inst_i_3 I3
netloc mem_reg[5][8] 1 3 1 3440 2630n
load net mem_reg[5][9] -pin mem_reg[5][9] Q -pin rd_data_OBUF[9]_inst_i_3 I3
netloc mem_reg[5][9] 1 3 1 3380 2780n
load net mem_reg[6][0] -pin mem_reg[6][0] Q -pin rd_data_OBUF[0]_inst_i_3 I1
netloc mem_reg[6][0] 1 3 1 3400 6680n
load net mem_reg[6][10] -pin mem_reg[6][10] Q -pin rd_data_OBUF[10]_inst_i_3 I1
netloc mem_reg[6][10] 1 3 1 2860 8180n
load net mem_reg[6][11] -pin mem_reg[6][11] Q -pin rd_data_OBUF[11]_inst_i_3 I1
netloc mem_reg[6][11] 1 3 1 2800 8330n
load net mem_reg[6][12] -pin mem_reg[6][12] Q -pin rd_data_OBUF[12]_inst_i_3 I1
netloc mem_reg[6][12] 1 3 1 2720 8480n
load net mem_reg[6][13] -pin mem_reg[6][13] Q -pin rd_data_OBUF[13]_inst_i_3 I1
netloc mem_reg[6][13] 1 3 1 2700 8630n
load net mem_reg[6][14] -pin mem_reg[6][14] Q -pin rd_data_OBUF[14]_inst_i_3 I1
netloc mem_reg[6][14] 1 3 1 2600 8780n
load net mem_reg[6][15] -pin mem_reg[6][15] Q -pin rd_data_OBUF[15]_inst_i_3 I1
netloc mem_reg[6][15] 1 3 1 2520 8930n
load net mem_reg[6][16] -pin mem_reg[6][16] Q -pin rd_data_OBUF[16]_inst_i_3 I1
netloc mem_reg[6][16] 1 3 1 2480 9080n
load net mem_reg[6][17] -pin mem_reg[6][17] Q -pin rd_data_OBUF[17]_inst_i_3 I1
netloc mem_reg[6][17] 1 3 1 2340 9230n
load net mem_reg[6][18] -pin mem_reg[6][18] Q -pin rd_data_OBUF[18]_inst_i_3 I1
netloc mem_reg[6][18] 1 3 1 2080 10280n
load net mem_reg[6][19] -pin mem_reg[6][19] Q -pin rd_data_OBUF[19]_inst_i_3 I1
netloc mem_reg[6][19] 1 3 1 1980 10430n
load net mem_reg[6][1] -pin mem_reg[6][1] Q -pin rd_data_OBUF[1]_inst_i_3 I1
netloc mem_reg[6][1] 1 3 1 3340 6830n
load net mem_reg[6][20] -pin mem_reg[6][20] Q -pin rd_data_OBUF[20]_inst_i_3 I1
netloc mem_reg[6][20] 1 3 1 1700 10580n
load net mem_reg[6][21] -pin mem_reg[6][21] Q -pin rd_data_OBUF[21]_inst_i_3 I1
netloc mem_reg[6][21] 1 3 1 1540 10730n
load net mem_reg[6][22] -pin mem_reg[6][22] Q -pin rd_data_OBUF[22]_inst_i_3 I1
netloc mem_reg[6][22] 1 3 1 1620 10880n
load net mem_reg[6][23] -pin mem_reg[6][23] Q -pin rd_data_OBUF[23]_inst_i_3 I1
netloc mem_reg[6][23] 1 3 1 1780 11030n
load net mem_reg[6][24] -pin mem_reg[6][24] Q -pin rd_data_OBUF[24]_inst_i_3 I1
netloc mem_reg[6][24] 1 3 1 1680 11180n
load net mem_reg[6][25] -pin mem_reg[6][25] Q -pin rd_data_OBUF[25]_inst_i_3 I1
netloc mem_reg[6][25] 1 3 1 1360 26810n
load net mem_reg[6][26] -pin mem_reg[6][26] Q -pin rd_data_OBUF[26]_inst_i_3 I1
netloc mem_reg[6][26] 1 3 1 1360 27860n
load net mem_reg[6][27] -pin mem_reg[6][27] Q -pin rd_data_OBUF[27]_inst_i_3 I1
netloc mem_reg[6][27] 1 3 1 1360 28910n
load net mem_reg[6][28] -pin mem_reg[6][28] Q -pin rd_data_OBUF[28]_inst_i_3 I1
netloc mem_reg[6][28] 1 3 1 1360 29960n
load net mem_reg[6][29] -pin mem_reg[6][29] Q -pin rd_data_OBUF[29]_inst_i_3 I1
netloc mem_reg[6][29] 1 3 1 1360 31920n
load net mem_reg[6][2] -pin mem_reg[6][2] Q -pin rd_data_OBUF[2]_inst_i_3 I1
netloc mem_reg[6][2] 1 3 1 3280 6980n
load net mem_reg[6][30] -pin mem_reg[6][30] Q -pin rd_data_OBUF[30]_inst_i_3 I1
netloc mem_reg[6][30] 1 3 1 3760 32650n
load net mem_reg[6][31] -pin mem_reg[6][31] Q -pin rd_data_OBUF[31]_inst_i_3 I1
netloc mem_reg[6][31] 1 3 1 3720 32480n
load net mem_reg[6][3] -pin mem_reg[6][3] Q -pin rd_data_OBUF[3]_inst_i_3 I1
netloc mem_reg[6][3] 1 3 1 3260 7130n
load net mem_reg[6][4] -pin mem_reg[6][4] Q -pin rd_data_OBUF[4]_inst_i_3 I1
netloc mem_reg[6][4] 1 3 1 3200 7280n
load net mem_reg[6][5] -pin mem_reg[6][5] Q -pin rd_data_OBUF[5]_inst_i_3 I1
netloc mem_reg[6][5] 1 3 1 3140 7430n
load net mem_reg[6][6] -pin mem_reg[6][6] Q -pin rd_data_OBUF[6]_inst_i_3 I1
netloc mem_reg[6][6] 1 3 1 3080 7580n
load net mem_reg[6][7] -pin mem_reg[6][7] Q -pin rd_data_OBUF[7]_inst_i_3 I1
netloc mem_reg[6][7] 1 3 1 2960 7730n
load net mem_reg[6][8] -pin mem_reg[6][8] Q -pin rd_data_OBUF[8]_inst_i_3 I1
netloc mem_reg[6][8] 1 3 1 3040 7880n
load net mem_reg[6][9] -pin mem_reg[6][9] Q -pin rd_data_OBUF[9]_inst_i_3 I1
netloc mem_reg[6][9] 1 3 1 2880 8030n
load net mem_reg[7][0] -pin mem_reg[7][0] Q -pin rd_data_OBUF[0]_inst_i_3 I0
netloc mem_reg[7][0] 1 3 1 N 11780
load net mem_reg[7][10] -pin mem_reg[7][10] Q -pin rd_data_OBUF[10]_inst_i_3 I0
netloc mem_reg[7][10] 1 3 1 1720 16000n
load net mem_reg[7][11] -pin mem_reg[7][11] Q -pin rd_data_OBUF[11]_inst_i_3 I0
netloc mem_reg[7][11] 1 3 1 2180 16320n
load net mem_reg[7][12] -pin mem_reg[7][12] Q -pin rd_data_OBUF[12]_inst_i_3 I0
netloc mem_reg[7][12] 1 3 1 2280 16640n
load net mem_reg[7][13] -pin mem_reg[7][13] Q -pin rd_data_OBUF[13]_inst_i_3 I0
netloc mem_reg[7][13] 1 3 1 2360 16960n
load net mem_reg[7][14] -pin mem_reg[7][14] Q -pin rd_data_OBUF[14]_inst_i_3 I0
netloc mem_reg[7][14] 1 3 1 2460 17280n
load net mem_reg[7][15] -pin mem_reg[7][15] Q -pin rd_data_OBUF[15]_inst_i_3 I0
netloc mem_reg[7][15] 1 3 1 1380 17600n
load net mem_reg[7][16] -pin mem_reg[7][16] Q -pin rd_data_OBUF[16]_inst_i_3 I0
netloc mem_reg[7][16] 1 3 1 1840 17920n
load net mem_reg[7][17] -pin mem_reg[7][17] Q -pin rd_data_OBUF[17]_inst_i_3 I0
netloc mem_reg[7][17] 1 3 1 3320 18240n
load net mem_reg[7][18] -pin mem_reg[7][18] Q -pin rd_data_OBUF[18]_inst_i_3 I0
netloc mem_reg[7][18] 1 3 1 3380 18560n
load net mem_reg[7][19] -pin mem_reg[7][19] Q -pin rd_data_OBUF[19]_inst_i_3 I0
netloc mem_reg[7][19] 1 3 1 3440 18880n
load net mem_reg[7][1] -pin mem_reg[7][1] Q -pin rd_data_OBUF[1]_inst_i_3 I0
netloc mem_reg[7][1] 1 3 1 1380 12100n
load net mem_reg[7][20] -pin mem_reg[7][20] Q -pin rd_data_OBUF[20]_inst_i_3 I0
netloc mem_reg[7][20] 1 3 1 3540 20600n
load net mem_reg[7][21] -pin mem_reg[7][21] Q -pin rd_data_OBUF[21]_inst_i_3 I0
netloc mem_reg[7][21] 1 3 1 3720 21250n
load net mem_reg[7][22] -pin mem_reg[7][22] Q -pin rd_data_OBUF[22]_inst_i_3 I0
netloc mem_reg[7][22] 1 3 1 3760 20920n
load net mem_reg[7][23] -pin mem_reg[7][23] Q -pin rd_data_OBUF[23]_inst_i_3 I0
netloc mem_reg[7][23] 1 3 1 3560 19960n
load net mem_reg[7][24] -pin mem_reg[7][24] Q -pin rd_data_OBUF[24]_inst_i_3 I0
netloc mem_reg[7][24] 1 3 1 3740 20280n
load net mem_reg[7][25] -pin mem_reg[7][25] Q -pin rd_data_OBUF[25]_inst_i_3 I0
netloc mem_reg[7][25] 1 3 1 N 26960
load net mem_reg[7][26] -pin mem_reg[7][26] Q -pin rd_data_OBUF[26]_inst_i_3 I0
netloc mem_reg[7][26] 1 3 1 N 28010
load net mem_reg[7][27] -pin mem_reg[7][27] Q -pin rd_data_OBUF[27]_inst_i_3 I0
netloc mem_reg[7][27] 1 3 1 N 29060
load net mem_reg[7][28] -pin mem_reg[7][28] Q -pin rd_data_OBUF[28]_inst_i_3 I0
netloc mem_reg[7][28] 1 3 1 N 30110
load net mem_reg[7][29] -pin mem_reg[7][29] Q -pin rd_data_OBUF[29]_inst_i_3 I0
netloc mem_reg[7][29] 1 3 1 3580 31970n
load net mem_reg[7][2] -pin mem_reg[7][2] Q -pin rd_data_OBUF[2]_inst_i_3 I0
netloc mem_reg[7][2] 1 3 1 1400 12660n
load net mem_reg[7][30] -pin mem_reg[7][30] Q -pin rd_data_OBUF[30]_inst_i_3 I0
netloc mem_reg[7][30] 1 3 1 3740 32630n
load net mem_reg[7][31] -pin mem_reg[7][31] Q -pin rd_data_OBUF[31]_inst_i_3 I0
netloc mem_reg[7][31] 1 3 1 3700 32460n
load net mem_reg[7][3] -pin mem_reg[7][3] Q -pin rd_data_OBUF[3]_inst_i_3 I0
netloc mem_reg[7][3] 1 3 1 1400 13260n
load net mem_reg[7][4] -pin mem_reg[7][4] Q -pin rd_data_OBUF[4]_inst_i_3 I0
netloc mem_reg[7][4] 1 3 1 1400 13860n
load net mem_reg[7][5] -pin mem_reg[7][5] Q -pin rd_data_OBUF[5]_inst_i_3 I0
netloc mem_reg[7][5] 1 3 1 1400 14400n
load net mem_reg[7][6] -pin mem_reg[7][6] Q -pin rd_data_OBUF[6]_inst_i_3 I0
netloc mem_reg[7][6] 1 3 1 1440 14720n
load net mem_reg[7][7] -pin mem_reg[7][7] Q -pin rd_data_OBUF[7]_inst_i_3 I0
netloc mem_reg[7][7] 1 3 1 1520 15360n
load net mem_reg[7][8] -pin mem_reg[7][8] Q -pin rd_data_OBUF[8]_inst_i_3 I0
netloc mem_reg[7][8] 1 3 1 1480 15040n
load net mem_reg[7][9] -pin mem_reg[7][9] Q -pin rd_data_OBUF[9]_inst_i_3 I0
netloc mem_reg[7][9] 1 3 1 1600 15680n
load net rd_data[0] -attr @rip(#1c1f28) 0 -port rd_data[0] -pin rd_data_OBUF[0]_inst O
load net rd_data[10] -attr @rip(#1c1f28) 10 -port rd_data[10] -pin rd_data_OBUF[10]_inst O
load net rd_data[11] -attr @rip(#1c1f28) 11 -port rd_data[11] -pin rd_data_OBUF[11]_inst O
load net rd_data[12] -attr @rip(#1c1f28) 12 -port rd_data[12] -pin rd_data_OBUF[12]_inst O
load net rd_data[13] -attr @rip(#1c1f28) 13 -port rd_data[13] -pin rd_data_OBUF[13]_inst O
load net rd_data[14] -attr @rip(#1c1f28) 14 -port rd_data[14] -pin rd_data_OBUF[14]_inst O
load net rd_data[15] -attr @rip(#1c1f28) 15 -port rd_data[15] -pin rd_data_OBUF[15]_inst O
load net rd_data[16] -attr @rip(#1c1f28) 16 -port rd_data[16] -pin rd_data_OBUF[16]_inst O
load net rd_data[17] -attr @rip(#1c1f28) 17 -port rd_data[17] -pin rd_data_OBUF[17]_inst O
load net rd_data[18] -attr @rip(#1c1f28) 18 -port rd_data[18] -pin rd_data_OBUF[18]_inst O
load net rd_data[19] -attr @rip(#1c1f28) 19 -port rd_data[19] -pin rd_data_OBUF[19]_inst O
load net rd_data[1] -attr @rip(#1c1f28) 1 -port rd_data[1] -pin rd_data_OBUF[1]_inst O
load net rd_data[20] -attr @rip(#1c1f28) 20 -port rd_data[20] -pin rd_data_OBUF[20]_inst O
load net rd_data[21] -attr @rip(#1c1f28) 21 -port rd_data[21] -pin rd_data_OBUF[21]_inst O
load net rd_data[22] -attr @rip(#1c1f28) 22 -port rd_data[22] -pin rd_data_OBUF[22]_inst O
load net rd_data[23] -attr @rip(#1c1f28) 23 -port rd_data[23] -pin rd_data_OBUF[23]_inst O
load net rd_data[24] -attr @rip(#1c1f28) 24 -port rd_data[24] -pin rd_data_OBUF[24]_inst O
load net rd_data[25] -attr @rip(#1c1f28) 25 -port rd_data[25] -pin rd_data_OBUF[25]_inst O
load net rd_data[26] -attr @rip(#1c1f28) 26 -port rd_data[26] -pin rd_data_OBUF[26]_inst O
load net rd_data[27] -attr @rip(#1c1f28) 27 -port rd_data[27] -pin rd_data_OBUF[27]_inst O
load net rd_data[28] -attr @rip(#1c1f28) 28 -port rd_data[28] -pin rd_data_OBUF[28]_inst O
load net rd_data[29] -attr @rip(#1c1f28) 29 -port rd_data[29] -pin rd_data_OBUF[29]_inst O
load net rd_data[2] -attr @rip(#1c1f28) 2 -port rd_data[2] -pin rd_data_OBUF[2]_inst O
load net rd_data[30] -attr @rip(#1c1f28) 30 -port rd_data[30] -pin rd_data_OBUF[30]_inst O
load net rd_data[31] -attr @rip(#1c1f28) 31 -port rd_data[31] -pin rd_data_OBUF[31]_inst O
load net rd_data[3] -attr @rip(#1c1f28) 3 -port rd_data[3] -pin rd_data_OBUF[3]_inst O
load net rd_data[4] -attr @rip(#1c1f28) 4 -port rd_data[4] -pin rd_data_OBUF[4]_inst O
load net rd_data[5] -attr @rip(#1c1f28) 5 -port rd_data[5] -pin rd_data_OBUF[5]_inst O
load net rd_data[6] -attr @rip(#1c1f28) 6 -port rd_data[6] -pin rd_data_OBUF[6]_inst O
load net rd_data[7] -attr @rip(#1c1f28) 7 -port rd_data[7] -pin rd_data_OBUF[7]_inst O
load net rd_data[8] -attr @rip(#1c1f28) 8 -port rd_data[8] -pin rd_data_OBUF[8]_inst O
load net rd_data[9] -attr @rip(#1c1f28) 9 -port rd_data[9] -pin rd_data_OBUF[9]_inst O
load net rd_data_OBUF[0] -pin rd_data_OBUF[0]_inst I -pin rd_data_OBUF[0]_inst_i_1 O
netloc rd_data_OBUF[0] 1 5 1 N 11990
load net rd_data_OBUF[0]_inst_i_2_n_0 -pin rd_data_OBUF[0]_inst_i_1 I0 -pin rd_data_OBUF[0]_inst_i_2 O
netloc rd_data_OBUF[0]_inst_i_2_n_0 1 4 1 4100 11670n
load net rd_data_OBUF[0]_inst_i_3_n_0 -pin rd_data_OBUF[0]_inst_i_1 I2 -pin rd_data_OBUF[0]_inst_i_3 O
netloc rd_data_OBUF[0]_inst_i_3_n_0 1 4 1 4020 11820n
load net rd_data_OBUF[10] -pin rd_data_OBUF[10]_inst I -pin rd_data_OBUF[10]_inst_i_1 O
netloc rd_data_OBUF[10] 1 5 1 N 16020
load net rd_data_OBUF[10]_inst_i_2_n_0 -pin rd_data_OBUF[10]_inst_i_1 I0 -pin rd_data_OBUF[10]_inst_i_2 O
netloc rd_data_OBUF[10]_inst_i_2_n_0 1 4 1 4180 15890n
load net rd_data_OBUF[10]_inst_i_3_n_0 -pin rd_data_OBUF[10]_inst_i_1 I2 -pin rd_data_OBUF[10]_inst_i_3 O
netloc rd_data_OBUF[10]_inst_i_3_n_0 1 4 1 N 16040
load net rd_data_OBUF[11] -pin rd_data_OBUF[11]_inst I -pin rd_data_OBUF[11]_inst_i_1 O
netloc rd_data_OBUF[11] 1 5 1 N 16230
load net rd_data_OBUF[11]_inst_i_2_n_0 -pin rd_data_OBUF[11]_inst_i_1 I0 -pin rd_data_OBUF[11]_inst_i_2 O
netloc rd_data_OBUF[11]_inst_i_2_n_0 1 4 1 N 16210
load net rd_data_OBUF[11]_inst_i_3_n_0 -pin rd_data_OBUF[11]_inst_i_1 I2 -pin rd_data_OBUF[11]_inst_i_3 O
netloc rd_data_OBUF[11]_inst_i_3_n_0 1 4 1 3980 16250n
load net rd_data_OBUF[12] -pin rd_data_OBUF[12]_inst I -pin rd_data_OBUF[12]_inst_i_1 O
netloc rd_data_OBUF[12] 1 5 1 N 16660
load net rd_data_OBUF[12]_inst_i_2_n_0 -pin rd_data_OBUF[12]_inst_i_1 I0 -pin rd_data_OBUF[12]_inst_i_2 O
netloc rd_data_OBUF[12]_inst_i_2_n_0 1 4 1 4180 16530n
load net rd_data_OBUF[12]_inst_i_3_n_0 -pin rd_data_OBUF[12]_inst_i_1 I2 -pin rd_data_OBUF[12]_inst_i_3 O
netloc rd_data_OBUF[12]_inst_i_3_n_0 1 4 1 N 16680
load net rd_data_OBUF[13] -pin rd_data_OBUF[13]_inst I -pin rd_data_OBUF[13]_inst_i_1 O
netloc rd_data_OBUF[13] 1 5 1 N 16980
load net rd_data_OBUF[13]_inst_i_2_n_0 -pin rd_data_OBUF[13]_inst_i_1 I0 -pin rd_data_OBUF[13]_inst_i_2 O
netloc rd_data_OBUF[13]_inst_i_2_n_0 1 4 1 4180 16850n
load net rd_data_OBUF[13]_inst_i_3_n_0 -pin rd_data_OBUF[13]_inst_i_1 I2 -pin rd_data_OBUF[13]_inst_i_3 O
netloc rd_data_OBUF[13]_inst_i_3_n_0 1 4 1 N 17000
load net rd_data_OBUF[14] -pin rd_data_OBUF[14]_inst I -pin rd_data_OBUF[14]_inst_i_1 O
netloc rd_data_OBUF[14] 1 5 1 N 17300
load net rd_data_OBUF[14]_inst_i_2_n_0 -pin rd_data_OBUF[14]_inst_i_1 I0 -pin rd_data_OBUF[14]_inst_i_2 O
netloc rd_data_OBUF[14]_inst_i_2_n_0 1 4 1 3980 17170n
load net rd_data_OBUF[14]_inst_i_3_n_0 -pin rd_data_OBUF[14]_inst_i_1 I2 -pin rd_data_OBUF[14]_inst_i_3 O
netloc rd_data_OBUF[14]_inst_i_3_n_0 1 4 1 N 17320
load net rd_data_OBUF[15] -pin rd_data_OBUF[15]_inst I -pin rd_data_OBUF[15]_inst_i_1 O
netloc rd_data_OBUF[15] 1 5 1 N 17620
load net rd_data_OBUF[15]_inst_i_2_n_0 -pin rd_data_OBUF[15]_inst_i_1 I0 -pin rd_data_OBUF[15]_inst_i_2 O
netloc rd_data_OBUF[15]_inst_i_2_n_0 1 4 1 3980 17490n
load net rd_data_OBUF[15]_inst_i_3_n_0 -pin rd_data_OBUF[15]_inst_i_1 I2 -pin rd_data_OBUF[15]_inst_i_3 O
netloc rd_data_OBUF[15]_inst_i_3_n_0 1 4 1 N 17640
load net rd_data_OBUF[16] -pin rd_data_OBUF[16]_inst I -pin rd_data_OBUF[16]_inst_i_1 O
netloc rd_data_OBUF[16] 1 5 1 N 17940
load net rd_data_OBUF[16]_inst_i_2_n_0 -pin rd_data_OBUF[16]_inst_i_1 I0 -pin rd_data_OBUF[16]_inst_i_2 O
netloc rd_data_OBUF[16]_inst_i_2_n_0 1 4 1 3980 17810n
load net rd_data_OBUF[16]_inst_i_3_n_0 -pin rd_data_OBUF[16]_inst_i_1 I2 -pin rd_data_OBUF[16]_inst_i_3 O
netloc rd_data_OBUF[16]_inst_i_3_n_0 1 4 1 N 17960
load net rd_data_OBUF[17] -pin rd_data_OBUF[17]_inst I -pin rd_data_OBUF[17]_inst_i_1 O
netloc rd_data_OBUF[17] 1 5 1 N 18260
load net rd_data_OBUF[17]_inst_i_2_n_0 -pin rd_data_OBUF[17]_inst_i_1 I0 -pin rd_data_OBUF[17]_inst_i_2 O
netloc rd_data_OBUF[17]_inst_i_2_n_0 1 4 1 3980 18130n
load net rd_data_OBUF[17]_inst_i_3_n_0 -pin rd_data_OBUF[17]_inst_i_1 I2 -pin rd_data_OBUF[17]_inst_i_3 O
netloc rd_data_OBUF[17]_inst_i_3_n_0 1 4 1 N 18280
load net rd_data_OBUF[18] -pin rd_data_OBUF[18]_inst I -pin rd_data_OBUF[18]_inst_i_1 O
netloc rd_data_OBUF[18] 1 5 1 N 18580
load net rd_data_OBUF[18]_inst_i_2_n_0 -pin rd_data_OBUF[18]_inst_i_1 I0 -pin rd_data_OBUF[18]_inst_i_2 O
netloc rd_data_OBUF[18]_inst_i_2_n_0 1 4 1 3980 18450n
load net rd_data_OBUF[18]_inst_i_3_n_0 -pin rd_data_OBUF[18]_inst_i_1 I2 -pin rd_data_OBUF[18]_inst_i_3 O
netloc rd_data_OBUF[18]_inst_i_3_n_0 1 4 1 N 18600
load net rd_data_OBUF[19] -pin rd_data_OBUF[19]_inst I -pin rd_data_OBUF[19]_inst_i_1 O
netloc rd_data_OBUF[19] 1 5 1 N 18790
load net rd_data_OBUF[19]_inst_i_2_n_0 -pin rd_data_OBUF[19]_inst_i_1 I0 -pin rd_data_OBUF[19]_inst_i_2 O
netloc rd_data_OBUF[19]_inst_i_2_n_0 1 4 1 N 18770
load net rd_data_OBUF[19]_inst_i_3_n_0 -pin rd_data_OBUF[19]_inst_i_1 I2 -pin rd_data_OBUF[19]_inst_i_3 O
netloc rd_data_OBUF[19]_inst_i_3_n_0 1 4 1 3980 18810n
load net rd_data_OBUF[1] -pin rd_data_OBUF[1]_inst I -pin rd_data_OBUF[1]_inst_i_1 O
netloc rd_data_OBUF[1] 1 5 1 N 12120
load net rd_data_OBUF[1]_inst_i_2_n_0 -pin rd_data_OBUF[1]_inst_i_1 I0 -pin rd_data_OBUF[1]_inst_i_2 O
netloc rd_data_OBUF[1]_inst_i_2_n_0 1 4 1 3980 11990n
load net rd_data_OBUF[1]_inst_i_3_n_0 -pin rd_data_OBUF[1]_inst_i_1 I2 -pin rd_data_OBUF[1]_inst_i_3 O
netloc rd_data_OBUF[1]_inst_i_3_n_0 1 4 1 N 12140
load net rd_data_OBUF[20] -pin rd_data_OBUF[20]_inst I -pin rd_data_OBUF[20]_inst_i_1 O
netloc rd_data_OBUF[20] 1 5 1 N 20510
load net rd_data_OBUF[20]_inst_i_2_n_0 -pin rd_data_OBUF[20]_inst_i_1 I0 -pin rd_data_OBUF[20]_inst_i_2 O
netloc rd_data_OBUF[20]_inst_i_2_n_0 1 4 1 N 20490
load net rd_data_OBUF[20]_inst_i_3_n_0 -pin rd_data_OBUF[20]_inst_i_1 I2 -pin rd_data_OBUF[20]_inst_i_3 O
netloc rd_data_OBUF[20]_inst_i_3_n_0 1 4 1 3980 20530n
load net rd_data_OBUF[21] -pin rd_data_OBUF[21]_inst I -pin rd_data_OBUF[21]_inst_i_1 O
netloc rd_data_OBUF[21] 1 5 1 N 20640
load net rd_data_OBUF[21]_inst_i_2_n_0 -pin rd_data_OBUF[21]_inst_i_1 I0 -pin rd_data_OBUF[21]_inst_i_2 O
netloc rd_data_OBUF[21]_inst_i_2_n_0 1 4 1 4140 20620n
load net rd_data_OBUF[21]_inst_i_3_n_0 -pin rd_data_OBUF[21]_inst_i_1 I2 -pin rd_data_OBUF[21]_inst_i_3 O
netloc rd_data_OBUF[21]_inst_i_3_n_0 1 4 1 4160 20660n
load net rd_data_OBUF[22] -pin rd_data_OBUF[22]_inst I -pin rd_data_OBUF[22]_inst_i_1 O
netloc rd_data_OBUF[22] 1 5 1 N 20770
load net rd_data_OBUF[22]_inst_i_2_n_0 -pin rd_data_OBUF[22]_inst_i_1 I0 -pin rd_data_OBUF[22]_inst_i_2 O
netloc rd_data_OBUF[22]_inst_i_2_n_0 1 4 1 3980 20750n
load net rd_data_OBUF[22]_inst_i_3_n_0 -pin rd_data_OBUF[22]_inst_i_1 I2 -pin rd_data_OBUF[22]_inst_i_3 O
netloc rd_data_OBUF[22]_inst_i_3_n_0 1 4 1 4180 20790n
load net rd_data_OBUF[23] -pin rd_data_OBUF[23]_inst I -pin rd_data_OBUF[23]_inst_i_1 O
netloc rd_data_OBUF[23] 1 5 1 N 20900
load net rd_data_OBUF[23]_inst_i_2_n_0 -pin rd_data_OBUF[23]_inst_i_1 I0 -pin rd_data_OBUF[23]_inst_i_2 O
netloc rd_data_OBUF[23]_inst_i_2_n_0 1 4 1 4080 19850n
load net rd_data_OBUF[23]_inst_i_3_n_0 -pin rd_data_OBUF[23]_inst_i_1 I2 -pin rd_data_OBUF[23]_inst_i_3 O
netloc rd_data_OBUF[23]_inst_i_3_n_0 1 4 1 4060 20000n
load net rd_data_OBUF[24] -pin rd_data_OBUF[24]_inst I -pin rd_data_OBUF[24]_inst_i_1 O
netloc rd_data_OBUF[24] 1 5 1 N 21030
load net rd_data_OBUF[24]_inst_i_2_n_0 -pin rd_data_OBUF[24]_inst_i_1 I0 -pin rd_data_OBUF[24]_inst_i_2 O
netloc rd_data_OBUF[24]_inst_i_2_n_0 1 4 1 4040 20170n
load net rd_data_OBUF[24]_inst_i_3_n_0 -pin rd_data_OBUF[24]_inst_i_1 I2 -pin rd_data_OBUF[24]_inst_i_3 O
netloc rd_data_OBUF[24]_inst_i_3_n_0 1 4 1 4020 20320n
load net rd_data_OBUF[25] -pin rd_data_OBUF[25]_inst I -pin rd_data_OBUF[25]_inst_i_1 O
netloc rd_data_OBUF[25] 1 5 1 N 26630
load net rd_data_OBUF[25]_inst_i_2_n_0 -pin rd_data_OBUF[25]_inst_i_1 I0 -pin rd_data_OBUF[25]_inst_i_2 O
netloc rd_data_OBUF[25]_inst_i_2_n_0 1 4 1 N 26610
load net rd_data_OBUF[25]_inst_i_3_n_0 -pin rd_data_OBUF[25]_inst_i_1 I2 -pin rd_data_OBUF[25]_inst_i_3 O
netloc rd_data_OBUF[25]_inst_i_3_n_0 1 4 1 4180 26650n
load net rd_data_OBUF[26] -pin rd_data_OBUF[26]_inst I -pin rd_data_OBUF[26]_inst_i_1 O
netloc rd_data_OBUF[26] 1 5 1 N 27690
load net rd_data_OBUF[26]_inst_i_2_n_0 -pin rd_data_OBUF[26]_inst_i_1 I0 -pin rd_data_OBUF[26]_inst_i_2 O
netloc rd_data_OBUF[26]_inst_i_2_n_0 1 4 1 N 27670
load net rd_data_OBUF[26]_inst_i_3_n_0 -pin rd_data_OBUF[26]_inst_i_1 I2 -pin rd_data_OBUF[26]_inst_i_3 O
netloc rd_data_OBUF[26]_inst_i_3_n_0 1 4 1 4180 27710n
load net rd_data_OBUF[27] -pin rd_data_OBUF[27]_inst I -pin rd_data_OBUF[27]_inst_i_1 O
netloc rd_data_OBUF[27] 1 5 1 N 28740
load net rd_data_OBUF[27]_inst_i_2_n_0 -pin rd_data_OBUF[27]_inst_i_1 I0 -pin rd_data_OBUF[27]_inst_i_2 O
netloc rd_data_OBUF[27]_inst_i_2_n_0 1 4 1 N 28720
load net rd_data_OBUF[27]_inst_i_3_n_0 -pin rd_data_OBUF[27]_inst_i_1 I2 -pin rd_data_OBUF[27]_inst_i_3 O
netloc rd_data_OBUF[27]_inst_i_3_n_0 1 4 1 4180 28760n
load net rd_data_OBUF[28] -pin rd_data_OBUF[28]_inst I -pin rd_data_OBUF[28]_inst_i_1 O
netloc rd_data_OBUF[28] 1 5 1 N 29790
load net rd_data_OBUF[28]_inst_i_2_n_0 -pin rd_data_OBUF[28]_inst_i_1 I0 -pin rd_data_OBUF[28]_inst_i_2 O
netloc rd_data_OBUF[28]_inst_i_2_n_0 1 4 1 N 29770
load net rd_data_OBUF[28]_inst_i_3_n_0 -pin rd_data_OBUF[28]_inst_i_1 I2 -pin rd_data_OBUF[28]_inst_i_3 O
netloc rd_data_OBUF[28]_inst_i_3_n_0 1 4 1 4180 29810n
load net rd_data_OBUF[29] -pin rd_data_OBUF[29]_inst I -pin rd_data_OBUF[29]_inst_i_1 O
netloc rd_data_OBUF[29] 1 5 1 N 30850
load net rd_data_OBUF[29]_inst_i_2_n_0 -pin rd_data_OBUF[29]_inst_i_1 I0 -pin rd_data_OBUF[29]_inst_i_2 O
netloc rd_data_OBUF[29]_inst_i_2_n_0 1 4 1 N 30830
load net rd_data_OBUF[29]_inst_i_3_n_0 -pin rd_data_OBUF[29]_inst_i_1 I2 -pin rd_data_OBUF[29]_inst_i_3 O
netloc rd_data_OBUF[29]_inst_i_3_n_0 1 4 1 4120 30870n
load net rd_data_OBUF[2] -pin rd_data_OBUF[2]_inst I -pin rd_data_OBUF[2]_inst_i_1 O
netloc rd_data_OBUF[2] 1 5 1 N 12570
load net rd_data_OBUF[2]_inst_i_2_n_0 -pin rd_data_OBUF[2]_inst_i_1 I0 -pin rd_data_OBUF[2]_inst_i_2 O
netloc rd_data_OBUF[2]_inst_i_2_n_0 1 4 1 N 12550
load net rd_data_OBUF[2]_inst_i_3_n_0 -pin rd_data_OBUF[2]_inst_i_1 I2 -pin rd_data_OBUF[2]_inst_i_3 O
netloc rd_data_OBUF[2]_inst_i_3_n_0 1 4 1 3980 12590n
load net rd_data_OBUF[30] -pin rd_data_OBUF[30]_inst I -pin rd_data_OBUF[30]_inst_i_1 O
netloc rd_data_OBUF[30] 1 5 1 N 31230
load net rd_data_OBUF[30]_inst_i_2_n_0 -pin rd_data_OBUF[30]_inst_i_1 I0 -pin rd_data_OBUF[30]_inst_i_2 O
netloc rd_data_OBUF[30]_inst_i_2_n_0 1 4 1 N 31210
load net rd_data_OBUF[30]_inst_i_3_n_0 -pin rd_data_OBUF[30]_inst_i_1 I2 -pin rd_data_OBUF[30]_inst_i_3 O
netloc rd_data_OBUF[30]_inst_i_3_n_0 1 4 1 4160 31250n
load net rd_data_OBUF[31] -pin rd_data_OBUF[31]_inst I -pin rd_data_OBUF[31]_inst_i_1 O
netloc rd_data_OBUF[31] 1 5 1 N 31360
load net rd_data_OBUF[31]_inst_i_2_n_0 -pin rd_data_OBUF[31]_inst_i_1 I0 -pin rd_data_OBUF[31]_inst_i_2 O
netloc rd_data_OBUF[31]_inst_i_2_n_0 1 4 1 4140 31340n
load net rd_data_OBUF[31]_inst_i_3_n_0 -pin rd_data_OBUF[31]_inst_i_1 I2 -pin rd_data_OBUF[31]_inst_i_3 O
netloc rd_data_OBUF[31]_inst_i_3_n_0 1 4 1 4180 31380n
load net rd_data_OBUF[3] -pin rd_data_OBUF[3]_inst I -pin rd_data_OBUF[3]_inst_i_1 O
netloc rd_data_OBUF[3] 1 5 1 N 13170
load net rd_data_OBUF[3]_inst_i_2_n_0 -pin rd_data_OBUF[3]_inst_i_1 I0 -pin rd_data_OBUF[3]_inst_i_2 O
netloc rd_data_OBUF[3]_inst_i_2_n_0 1 4 1 N 13150
load net rd_data_OBUF[3]_inst_i_3_n_0 -pin rd_data_OBUF[3]_inst_i_1 I2 -pin rd_data_OBUF[3]_inst_i_3 O
netloc rd_data_OBUF[3]_inst_i_3_n_0 1 4 1 3980 13190n
load net rd_data_OBUF[4] -pin rd_data_OBUF[4]_inst I -pin rd_data_OBUF[4]_inst_i_1 O
netloc rd_data_OBUF[4] 1 5 1 N 13770
load net rd_data_OBUF[4]_inst_i_2_n_0 -pin rd_data_OBUF[4]_inst_i_1 I0 -pin rd_data_OBUF[4]_inst_i_2 O
netloc rd_data_OBUF[4]_inst_i_2_n_0 1 4 1 N 13750
load net rd_data_OBUF[4]_inst_i_3_n_0 -pin rd_data_OBUF[4]_inst_i_1 I2 -pin rd_data_OBUF[4]_inst_i_3 O
netloc rd_data_OBUF[4]_inst_i_3_n_0 1 4 1 3980 13790n
load net rd_data_OBUF[5] -pin rd_data_OBUF[5]_inst I -pin rd_data_OBUF[5]_inst_i_1 O
netloc rd_data_OBUF[5] 1 5 1 N 14310
load net rd_data_OBUF[5]_inst_i_2_n_0 -pin rd_data_OBUF[5]_inst_i_1 I0 -pin rd_data_OBUF[5]_inst_i_2 O
netloc rd_data_OBUF[5]_inst_i_2_n_0 1 4 1 N 14290
load net rd_data_OBUF[5]_inst_i_3_n_0 -pin rd_data_OBUF[5]_inst_i_1 I2 -pin rd_data_OBUF[5]_inst_i_3 O
netloc rd_data_OBUF[5]_inst_i_3_n_0 1 4 1 3980 14330n
load net rd_data_OBUF[6] -pin rd_data_OBUF[6]_inst I -pin rd_data_OBUF[6]_inst_i_1 O
netloc rd_data_OBUF[6] 1 5 1 N 14740
load net rd_data_OBUF[6]_inst_i_2_n_0 -pin rd_data_OBUF[6]_inst_i_1 I0 -pin rd_data_OBUF[6]_inst_i_2 O
netloc rd_data_OBUF[6]_inst_i_2_n_0 1 4 1 4180 14610n
load net rd_data_OBUF[6]_inst_i_3_n_0 -pin rd_data_OBUF[6]_inst_i_1 I2 -pin rd_data_OBUF[6]_inst_i_3 O
netloc rd_data_OBUF[6]_inst_i_3_n_0 1 4 1 N 14760
load net rd_data_OBUF[7] -pin rd_data_OBUF[7]_inst I -pin rd_data_OBUF[7]_inst_i_1 O
netloc rd_data_OBUF[7] 1 5 1 N 15270
load net rd_data_OBUF[7]_inst_i_2_n_0 -pin rd_data_OBUF[7]_inst_i_1 I0 -pin rd_data_OBUF[7]_inst_i_2 O
netloc rd_data_OBUF[7]_inst_i_2_n_0 1 4 1 N 15250
load net rd_data_OBUF[7]_inst_i_3_n_0 -pin rd_data_OBUF[7]_inst_i_1 I2 -pin rd_data_OBUF[7]_inst_i_3 O
netloc rd_data_OBUF[7]_inst_i_3_n_0 1 4 1 3980 15290n
load net rd_data_OBUF[8] -pin rd_data_OBUF[8]_inst I -pin rd_data_OBUF[8]_inst_i_1 O
netloc rd_data_OBUF[8] 1 5 1 N 15400
load net rd_data_OBUF[8]_inst_i_2_n_0 -pin rd_data_OBUF[8]_inst_i_1 I0 -pin rd_data_OBUF[8]_inst_i_2 O
netloc rd_data_OBUF[8]_inst_i_2_n_0 1 4 1 4180 14930n
load net rd_data_OBUF[8]_inst_i_3_n_0 -pin rd_data_OBUF[8]_inst_i_1 I2 -pin rd_data_OBUF[8]_inst_i_3 O
netloc rd_data_OBUF[8]_inst_i_3_n_0 1 4 1 4140 15080n
load net rd_data_OBUF[9] -pin rd_data_OBUF[9]_inst I -pin rd_data_OBUF[9]_inst_i_1 O
netloc rd_data_OBUF[9] 1 5 1 N 15590
load net rd_data_OBUF[9]_inst_i_2_n_0 -pin rd_data_OBUF[9]_inst_i_1 I0 -pin rd_data_OBUF[9]_inst_i_2 O
netloc rd_data_OBUF[9]_inst_i_2_n_0 1 4 1 N 15570
load net rd_data_OBUF[9]_inst_i_3_n_0 -pin rd_data_OBUF[9]_inst_i_1 I2 -pin rd_data_OBUF[9]_inst_i_3 O
netloc rd_data_OBUF[9]_inst_i_3_n_0 1 4 1 3980 15610n
load net rd_en -port rd_en -pin rd_en_IBUF_inst I
netloc rd_en 1 0 4 NJ 30640 NJ 30640 NJ 30640 NJ
load net rd_en_IBUF -pin rd_data_OBUF[0]_inst_i_1 I3 -pin rd_data_OBUF[10]_inst_i_1 I3 -pin rd_data_OBUF[11]_inst_i_1 I3 -pin rd_data_OBUF[12]_inst_i_1 I3 -pin rd_data_OBUF[13]_inst_i_1 I3 -pin rd_data_OBUF[14]_inst_i_1 I3 -pin rd_data_OBUF[15]_inst_i_1 I3 -pin rd_data_OBUF[16]_inst_i_1 I3 -pin rd_data_OBUF[17]_inst_i_1 I3 -pin rd_data_OBUF[18]_inst_i_1 I3 -pin rd_data_OBUF[19]_inst_i_1 I3 -pin rd_data_OBUF[1]_inst_i_1 I3 -pin rd_data_OBUF[20]_inst_i_1 I3 -pin rd_data_OBUF[21]_inst_i_1 I3 -pin rd_data_OBUF[22]_inst_i_1 I3 -pin rd_data_OBUF[23]_inst_i_1 I3 -pin rd_data_OBUF[24]_inst_i_1 I3 -pin rd_data_OBUF[25]_inst_i_1 I3 -pin rd_data_OBUF[26]_inst_i_1 I3 -pin rd_data_OBUF[27]_inst_i_1 I3 -pin rd_data_OBUF[28]_inst_i_1 I3 -pin rd_data_OBUF[29]_inst_i_1 I3 -pin rd_data_OBUF[2]_inst_i_1 I3 -pin rd_data_OBUF[30]_inst_i_1 I3 -pin rd_data_OBUF[31]_inst_i_1 I3 -pin rd_data_OBUF[3]_inst_i_1 I3 -pin rd_data_OBUF[4]_inst_i_1 I3 -pin rd_data_OBUF[5]_inst_i_1 I3 -pin rd_data_OBUF[6]_inst_i_1 I3 -pin rd_data_OBUF[7]_inst_i_1 I3 -pin rd_data_OBUF[8]_inst_i_1 I3 -pin rd_data_OBUF[9]_inst_i_1 I3 -pin rd_en_IBUF_inst O
netloc rd_en_IBUF 1 4 1 4100 12030n
load net rst -port rst -pin rst_IBUF_inst I
netloc rst 1 0 2 NJ 31240 NJ
load net rst_IBUF -pin mem_reg[1][0] R -pin mem_reg[1][10] R -pin mem_reg[1][11] R -pin mem_reg[1][12] R -pin mem_reg[1][13] R -pin mem_reg[1][14] R -pin mem_reg[1][15] R -pin mem_reg[1][16] R -pin mem_reg[1][17] R -pin mem_reg[1][18] R -pin mem_reg[1][19] R -pin mem_reg[1][1] R -pin mem_reg[1][20] R -pin mem_reg[1][21] R -pin mem_reg[1][22] R -pin mem_reg[1][23] R -pin mem_reg[1][24] R -pin mem_reg[1][25] R -pin mem_reg[1][26] R -pin mem_reg[1][27] R -pin mem_reg[1][28] R -pin mem_reg[1][29] R -pin mem_reg[1][2] R -pin mem_reg[1][30] R -pin mem_reg[1][31] R -pin mem_reg[1][3] R -pin mem_reg[1][4] R -pin mem_reg[1][5] R -pin mem_reg[1][6] R -pin mem_reg[1][7] R -pin mem_reg[1][8] R -pin mem_reg[1][9] R -pin mem_reg[2][0] R -pin mem_reg[2][10] R -pin mem_reg[2][11] R -pin mem_reg[2][12] R -pin mem_reg[2][13] R -pin mem_reg[2][14] R -pin mem_reg[2][15] R -pin mem_reg[2][16] R -pin mem_reg[2][17] R -pin mem_reg[2][18] R -pin mem_reg[2][19] R -pin mem_reg[2][1] R -pin mem_reg[2][20] R -pin mem_reg[2][21] R -pin mem_reg[2][22] R -pin mem_reg[2][23] R -pin mem_reg[2][24] R -pin mem_reg[2][25] R -pin mem_reg[2][26] R -pin mem_reg[2][27] R -pin mem_reg[2][28] R -pin mem_reg[2][29] R -pin mem_reg[2][2] R -pin mem_reg[2][30] R -pin mem_reg[2][31] R -pin mem_reg[2][3] R -pin mem_reg[2][4] R -pin mem_reg[2][5] R -pin mem_reg[2][6] R -pin mem_reg[2][7] R -pin mem_reg[2][8] R -pin mem_reg[2][9] R -pin mem_reg[3][0] R -pin mem_reg[3][10] R -pin mem_reg[3][11] R -pin mem_reg[3][12] R -pin mem_reg[3][13] R -pin mem_reg[3][14] R -pin mem_reg[3][15] R -pin mem_reg[3][16] R -pin mem_reg[3][17] R -pin mem_reg[3][18] R -pin mem_reg[3][19] R -pin mem_reg[3][1] R -pin mem_reg[3][20] R -pin mem_reg[3][21] R -pin mem_reg[3][22] R -pin mem_reg[3][23] R -pin mem_reg[3][24] R -pin mem_reg[3][25] R -pin mem_reg[3][26] R -pin mem_reg[3][27] R -pin mem_reg[3][28] R -pin mem_reg[3][29] R -pin mem_reg[3][2] R -pin mem_reg[3][30] R -pin mem_reg[3][31] R -pin mem_reg[3][3] R -pin mem_reg[3][4] R -pin mem_reg[3][5] R -pin mem_reg[3][6] R -pin mem_reg[3][7] R -pin mem_reg[3][8] R -pin mem_reg[3][9] R -pin mem_reg[4][0] R -pin mem_reg[4][10] R -pin mem_reg[4][11] R -pin mem_reg[4][12] R -pin mem_reg[4][13] R -pin mem_reg[4][14] R -pin mem_reg[4][15] R -pin mem_reg[4][16] R -pin mem_reg[4][17] R -pin mem_reg[4][18] R -pin mem_reg[4][19] R -pin mem_reg[4][1] R -pin mem_reg[4][20] R -pin mem_reg[4][21] R -pin mem_reg[4][22] R -pin mem_reg[4][23] R -pin mem_reg[4][24] R -pin mem_reg[4][25] R -pin mem_reg[4][26] R -pin mem_reg[4][27] R -pin mem_reg[4][28] R -pin mem_reg[4][29] R -pin mem_reg[4][2] R -pin mem_reg[4][30] R -pin mem_reg[4][31] R -pin mem_reg[4][3] R -pin mem_reg[4][4] R -pin mem_reg[4][5] R -pin mem_reg[4][6] R -pin mem_reg[4][7] R -pin mem_reg[4][8] R -pin mem_reg[4][9] R -pin mem_reg[5][0] R -pin mem_reg[5][10] R -pin mem_reg[5][11] R -pin mem_reg[5][12] R -pin mem_reg[5][13] R -pin mem_reg[5][14] R -pin mem_reg[5][15] R -pin mem_reg[5][16] R -pin mem_reg[5][17] R -pin mem_reg[5][18] R -pin mem_reg[5][19] R -pin mem_reg[5][1] R -pin mem_reg[5][20] R -pin mem_reg[5][21] R -pin mem_reg[5][22] R -pin mem_reg[5][23] R -pin mem_reg[5][24] R -pin mem_reg[5][25] R -pin mem_reg[5][26] R -pin mem_reg[5][27] R -pin mem_reg[5][28] R -pin mem_reg[5][29] R -pin mem_reg[5][2] R -pin mem_reg[5][30] R -pin mem_reg[5][31] R -pin mem_reg[5][3] R -pin mem_reg[5][4] R -pin mem_reg[5][5] R -pin mem_reg[5][6] R -pin mem_reg[5][7] R -pin mem_reg[5][8] R -pin mem_reg[5][9] R -pin mem_reg[6][0] R -pin mem_reg[6][10] R -pin mem_reg[6][11] R -pin mem_reg[6][12] R -pin mem_reg[6][13] R -pin mem_reg[6][14] R -pin mem_reg[6][15] R -pin mem_reg[6][16] R -pin mem_reg[6][17] R -pin mem_reg[6][18] R -pin mem_reg[6][19] R -pin mem_reg[6][1] R -pin mem_reg[6][20] R -pin mem_reg[6][21] R -pin mem_reg[6][22] R -pin mem_reg[6][23] R -pin mem_reg[6][24] R -pin mem_reg[6][25] R -pin mem_reg[6][26] R -pin mem_reg[6][27] R -pin mem_reg[6][28] R -pin mem_reg[6][29] R -pin mem_reg[6][2] R -pin mem_reg[6][30] R -pin mem_reg[6][31] R -pin mem_reg[6][3] R -pin mem_reg[6][4] R -pin mem_reg[6][5] R -pin mem_reg[6][6] R -pin mem_reg[6][7] R -pin mem_reg[6][8] R -pin mem_reg[6][9] R -pin mem_reg[7][0] R -pin mem_reg[7][10] R -pin mem_reg[7][11] R -pin mem_reg[7][12] R -pin mem_reg[7][13] R -pin mem_reg[7][14] R -pin mem_reg[7][15] R -pin mem_reg[7][16] R -pin mem_reg[7][17] R -pin mem_reg[7][18] R -pin mem_reg[7][19] R -pin mem_reg[7][1] R -pin mem_reg[7][20] R -pin mem_reg[7][21] R -pin mem_reg[7][22] R -pin mem_reg[7][23] R -pin mem_reg[7][24] R -pin mem_reg[7][25] R -pin mem_reg[7][26] R -pin mem_reg[7][27] R -pin mem_reg[7][28] R -pin mem_reg[7][29] R -pin mem_reg[7][2] R -pin mem_reg[7][30] R -pin mem_reg[7][31] R -pin mem_reg[7][3] R -pin mem_reg[7][4] R -pin mem_reg[7][5] R -pin mem_reg[7][6] R -pin mem_reg[7][7] R -pin mem_reg[7][8] R -pin mem_reg[7][9] R -pin rst_IBUF_inst O
netloc rst_IBUF 1 2 1 840 110n
load net wr_data[0] -attr @rip(#1c1f28) wr_data[0] -port wr_data[0] -pin wr_data_IBUF[0]_inst I
load net wr_data[10] -attr @rip(#1c1f28) wr_data[10] -port wr_data[10] -pin wr_data_IBUF[10]_inst I
load net wr_data[11] -attr @rip(#1c1f28) wr_data[11] -port wr_data[11] -pin wr_data_IBUF[11]_inst I
load net wr_data[12] -attr @rip(#1c1f28) wr_data[12] -port wr_data[12] -pin wr_data_IBUF[12]_inst I
load net wr_data[13] -attr @rip(#1c1f28) wr_data[13] -port wr_data[13] -pin wr_data_IBUF[13]_inst I
load net wr_data[14] -attr @rip(#1c1f28) wr_data[14] -port wr_data[14] -pin wr_data_IBUF[14]_inst I
load net wr_data[15] -attr @rip(#1c1f28) wr_data[15] -port wr_data[15] -pin wr_data_IBUF[15]_inst I
load net wr_data[16] -attr @rip(#1c1f28) wr_data[16] -port wr_data[16] -pin wr_data_IBUF[16]_inst I
load net wr_data[17] -attr @rip(#1c1f28) wr_data[17] -port wr_data[17] -pin wr_data_IBUF[17]_inst I
load net wr_data[18] -attr @rip(#1c1f28) wr_data[18] -port wr_data[18] -pin wr_data_IBUF[18]_inst I
load net wr_data[19] -attr @rip(#1c1f28) wr_data[19] -port wr_data[19] -pin wr_data_IBUF[19]_inst I
load net wr_data[1] -attr @rip(#1c1f28) wr_data[1] -port wr_data[1] -pin wr_data_IBUF[1]_inst I
load net wr_data[20] -attr @rip(#1c1f28) wr_data[20] -port wr_data[20] -pin wr_data_IBUF[20]_inst I
load net wr_data[21] -attr @rip(#1c1f28) wr_data[21] -port wr_data[21] -pin wr_data_IBUF[21]_inst I
load net wr_data[22] -attr @rip(#1c1f28) wr_data[22] -port wr_data[22] -pin wr_data_IBUF[22]_inst I
load net wr_data[23] -attr @rip(#1c1f28) wr_data[23] -port wr_data[23] -pin wr_data_IBUF[23]_inst I
load net wr_data[24] -attr @rip(#1c1f28) wr_data[24] -port wr_data[24] -pin wr_data_IBUF[24]_inst I
load net wr_data[25] -attr @rip(#1c1f28) wr_data[25] -port wr_data[25] -pin wr_data_IBUF[25]_inst I
load net wr_data[26] -attr @rip(#1c1f28) wr_data[26] -port wr_data[26] -pin wr_data_IBUF[26]_inst I
load net wr_data[27] -attr @rip(#1c1f28) wr_data[27] -port wr_data[27] -pin wr_data_IBUF[27]_inst I
load net wr_data[28] -attr @rip(#1c1f28) wr_data[28] -port wr_data[28] -pin wr_data_IBUF[28]_inst I
load net wr_data[29] -attr @rip(#1c1f28) wr_data[29] -port wr_data[29] -pin wr_data_IBUF[29]_inst I
load net wr_data[2] -attr @rip(#1c1f28) wr_data[2] -port wr_data[2] -pin wr_data_IBUF[2]_inst I
load net wr_data[30] -attr @rip(#1c1f28) wr_data[30] -port wr_data[30] -pin wr_data_IBUF[30]_inst I
load net wr_data[31] -attr @rip(#1c1f28) wr_data[31] -port wr_data[31] -pin wr_data_IBUF[31]_inst I
load net wr_data[3] -attr @rip(#1c1f28) wr_data[3] -port wr_data[3] -pin wr_data_IBUF[3]_inst I
load net wr_data[4] -attr @rip(#1c1f28) wr_data[4] -port wr_data[4] -pin wr_data_IBUF[4]_inst I
load net wr_data[5] -attr @rip(#1c1f28) wr_data[5] -port wr_data[5] -pin wr_data_IBUF[5]_inst I
load net wr_data[6] -attr @rip(#1c1f28) wr_data[6] -port wr_data[6] -pin wr_data_IBUF[6]_inst I
load net wr_data[7] -attr @rip(#1c1f28) wr_data[7] -port wr_data[7] -pin wr_data_IBUF[7]_inst I
load net wr_data[8] -attr @rip(#1c1f28) wr_data[8] -port wr_data[8] -pin wr_data_IBUF[8]_inst I
load net wr_data[9] -attr @rip(#1c1f28) wr_data[9] -port wr_data[9] -pin wr_data_IBUF[9]_inst I
load net wr_data_IBUF[0] -pin mem_reg[1][0] D -pin mem_reg[2][0] D -pin mem_reg[3][0] D -pin mem_reg[4][0] D -pin mem_reg[5][0] D -pin mem_reg[6][0] D -pin mem_reg[7][0] D -pin wr_data_IBUF[0]_inst O
netloc wr_data_IBUF[0] 1 2 1 680 90n
load net wr_data_IBUF[10] -pin mem_reg[1][10] D -pin mem_reg[2][10] D -pin mem_reg[3][10] D -pin mem_reg[4][10] D -pin mem_reg[5][10] D -pin mem_reg[6][10] D -pin mem_reg[7][10] D -pin wr_data_IBUF[10]_inst O
netloc wr_data_IBUF[10] 1 2 1 800 3090n
load net wr_data_IBUF[11] -pin mem_reg[1][11] D -pin mem_reg[2][11] D -pin mem_reg[3][11] D -pin mem_reg[4][11] D -pin mem_reg[5][11] D -pin mem_reg[6][11] D -pin mem_reg[7][11] D -pin wr_data_IBUF[11]_inst O
netloc wr_data_IBUF[11] 1 2 1 1100 3390n
load net wr_data_IBUF[12] -pin mem_reg[1][12] D -pin mem_reg[2][12] D -pin mem_reg[3][12] D -pin mem_reg[4][12] D -pin mem_reg[5][12] D -pin mem_reg[6][12] D -pin mem_reg[7][12] D -pin wr_data_IBUF[12]_inst O
netloc wr_data_IBUF[12] 1 2 1 540 3690n
load net wr_data_IBUF[13] -pin mem_reg[1][13] D -pin mem_reg[2][13] D -pin mem_reg[3][13] D -pin mem_reg[4][13] D -pin mem_reg[5][13] D -pin mem_reg[6][13] D -pin mem_reg[7][13] D -pin wr_data_IBUF[13]_inst O
netloc wr_data_IBUF[13] 1 2 1 1120 3990n
load net wr_data_IBUF[14] -pin mem_reg[1][14] D -pin mem_reg[2][14] D -pin mem_reg[3][14] D -pin mem_reg[4][14] D -pin mem_reg[5][14] D -pin mem_reg[6][14] D -pin mem_reg[7][14] D -pin wr_data_IBUF[14]_inst O
netloc wr_data_IBUF[14] 1 2 1 560 4290n
load net wr_data_IBUF[15] -pin mem_reg[1][15] D -pin mem_reg[2][15] D -pin mem_reg[3][15] D -pin mem_reg[4][15] D -pin mem_reg[5][15] D -pin mem_reg[6][15] D -pin mem_reg[7][15] D -pin wr_data_IBUF[15]_inst O
netloc wr_data_IBUF[15] 1 2 1 620 4590n
load net wr_data_IBUF[16] -pin mem_reg[1][16] D -pin mem_reg[2][16] D -pin mem_reg[3][16] D -pin mem_reg[4][16] D -pin mem_reg[5][16] D -pin mem_reg[6][16] D -pin mem_reg[7][16] D -pin wr_data_IBUF[16]_inst O
netloc wr_data_IBUF[16] 1 2 1 1140 4890n
load net wr_data_IBUF[17] -pin mem_reg[1][17] D -pin mem_reg[2][17] D -pin mem_reg[3][17] D -pin mem_reg[4][17] D -pin mem_reg[5][17] D -pin mem_reg[6][17] D -pin mem_reg[7][17] D -pin wr_data_IBUF[17]_inst O
netloc wr_data_IBUF[17] 1 2 1 580 5190n
load net wr_data_IBUF[18] -pin mem_reg[1][18] D -pin mem_reg[2][18] D -pin mem_reg[3][18] D -pin mem_reg[4][18] D -pin mem_reg[5][18] D -pin mem_reg[6][18] D -pin mem_reg[7][18] D -pin wr_data_IBUF[18]_inst O
netloc wr_data_IBUF[18] 1 2 1 640 5490n
load net wr_data_IBUF[19] -pin mem_reg[1][19] D -pin mem_reg[2][19] D -pin mem_reg[3][19] D -pin mem_reg[4][19] D -pin mem_reg[5][19] D -pin mem_reg[6][19] D -pin mem_reg[7][19] D -pin wr_data_IBUF[19]_inst O
netloc wr_data_IBUF[19] 1 2 1 660 5790n
load net wr_data_IBUF[1] -pin mem_reg[1][1] D -pin mem_reg[2][1] D -pin mem_reg[3][1] D -pin mem_reg[4][1] D -pin mem_reg[5][1] D -pin mem_reg[6][1] D -pin mem_reg[7][1] D -pin wr_data_IBUF[1]_inst O
netloc wr_data_IBUF[1] 1 2 1 1020 390n
load net wr_data_IBUF[20] -pin mem_reg[1][20] D -pin mem_reg[2][20] D -pin mem_reg[3][20] D -pin mem_reg[4][20] D -pin mem_reg[5][20] D -pin mem_reg[6][20] D -pin mem_reg[7][20] D -pin wr_data_IBUF[20]_inst O
netloc wr_data_IBUF[20] 1 2 1 1160 6090n
load net wr_data_IBUF[21] -pin mem_reg[1][21] D -pin mem_reg[2][21] D -pin mem_reg[3][21] D -pin mem_reg[4][21] D -pin mem_reg[5][21] D -pin mem_reg[6][21] D -pin mem_reg[7][21] D -pin wr_data_IBUF[21]_inst O
netloc wr_data_IBUF[21] 1 2 1 600 6390n
load net wr_data_IBUF[22] -pin mem_reg[1][22] D -pin mem_reg[2][22] D -pin mem_reg[3][22] D -pin mem_reg[4][22] D -pin mem_reg[5][22] D -pin mem_reg[6][22] D -pin mem_reg[7][22] D -pin wr_data_IBUF[22]_inst O
netloc wr_data_IBUF[22] 1 2 1 1180 9390n
load net wr_data_IBUF[23] -pin mem_reg[1][23] D -pin mem_reg[2][23] D -pin mem_reg[3][23] D -pin mem_reg[4][23] D -pin mem_reg[5][23] D -pin mem_reg[6][23] D -pin mem_reg[7][23] D -pin wr_data_IBUF[23]_inst O
netloc wr_data_IBUF[23] 1 2 1 980 9690n
load net wr_data_IBUF[24] -pin mem_reg[1][24] D -pin mem_reg[2][24] D -pin mem_reg[3][24] D -pin mem_reg[4][24] D -pin mem_reg[5][24] D -pin mem_reg[6][24] D -pin mem_reg[7][24] D -pin wr_data_IBUF[24]_inst O
netloc wr_data_IBUF[24] 1 2 1 1200 9990n
load net wr_data_IBUF[25] -pin mem_reg[1][25] D -pin mem_reg[2][25] D -pin mem_reg[3][25] D -pin mem_reg[4][25] D -pin mem_reg[5][25] D -pin mem_reg[6][25] D -pin mem_reg[7][25] D -pin wr_data_IBUF[25]_inst O
netloc wr_data_IBUF[25] 1 2 1 1200 26360n
load net wr_data_IBUF[26] -pin mem_reg[1][26] D -pin mem_reg[2][26] D -pin mem_reg[3][26] D -pin mem_reg[4][26] D -pin mem_reg[5][26] D -pin mem_reg[6][26] D -pin mem_reg[7][26] D -pin wr_data_IBUF[26]_inst O
netloc wr_data_IBUF[26] 1 2 1 860 27420n
load net wr_data_IBUF[27] -pin mem_reg[1][27] D -pin mem_reg[2][27] D -pin mem_reg[3][27] D -pin mem_reg[4][27] D -pin mem_reg[5][27] D -pin mem_reg[6][27] D -pin mem_reg[7][27] D -pin wr_data_IBUF[27]_inst O
netloc wr_data_IBUF[27] 1 2 1 860 28470n
load net wr_data_IBUF[28] -pin mem_reg[1][28] D -pin mem_reg[2][28] D -pin mem_reg[3][28] D -pin mem_reg[4][28] D -pin mem_reg[5][28] D -pin mem_reg[6][28] D -pin mem_reg[7][28] D -pin wr_data_IBUF[28]_inst O
netloc wr_data_IBUF[28] 1 2 1 860 29520n
load net wr_data_IBUF[29] -pin mem_reg[1][29] D -pin mem_reg[2][29] D -pin mem_reg[3][29] D -pin mem_reg[4][29] D -pin mem_reg[5][29] D -pin mem_reg[6][29] D -pin mem_reg[7][29] D -pin wr_data_IBUF[29]_inst O
netloc wr_data_IBUF[29] 1 2 1 740 30570n
load net wr_data_IBUF[2] -pin mem_reg[1][2] D -pin mem_reg[2][2] D -pin mem_reg[3][2] D -pin mem_reg[4][2] D -pin mem_reg[5][2] D -pin mem_reg[6][2] D -pin mem_reg[7][2] D -pin wr_data_IBUF[2]_inst O
netloc wr_data_IBUF[2] 1 2 1 940 690n
load net wr_data_IBUF[30] -pin mem_reg[1][30] D -pin mem_reg[2][30] D -pin mem_reg[3][30] D -pin mem_reg[4][30] D -pin mem_reg[5][30] D -pin mem_reg[6][30] D -pin mem_reg[7][30] D -pin wr_data_IBUF[30]_inst O
netloc wr_data_IBUF[30] 1 2 1 800 31030n
load net wr_data_IBUF[31] -pin mem_reg[1][31] D -pin mem_reg[2][31] D -pin mem_reg[3][31] D -pin mem_reg[4][31] D -pin mem_reg[5][31] D -pin mem_reg[6][31] D -pin mem_reg[7][31] D -pin wr_data_IBUF[31]_inst O
netloc wr_data_IBUF[31] 1 2 1 520 31100n
load net wr_data_IBUF[3] -pin mem_reg[1][3] D -pin mem_reg[2][3] D -pin mem_reg[3][3] D -pin mem_reg[4][3] D -pin mem_reg[5][3] D -pin mem_reg[6][3] D -pin mem_reg[7][3] D -pin wr_data_IBUF[3]_inst O
netloc wr_data_IBUF[3] 1 2 1 1040 990n
load net wr_data_IBUF[4] -pin mem_reg[1][4] D -pin mem_reg[2][4] D -pin mem_reg[3][4] D -pin mem_reg[4][4] D -pin mem_reg[5][4] D -pin mem_reg[6][4] D -pin mem_reg[7][4] D -pin wr_data_IBUF[4]_inst O
netloc wr_data_IBUF[4] 1 2 1 900 1290n
load net wr_data_IBUF[5] -pin mem_reg[1][5] D -pin mem_reg[2][5] D -pin mem_reg[3][5] D -pin mem_reg[4][5] D -pin mem_reg[5][5] D -pin mem_reg[6][5] D -pin mem_reg[7][5] D -pin wr_data_IBUF[5]_inst O
netloc wr_data_IBUF[5] 1 2 1 1060 1590n
load net wr_data_IBUF[6] -pin mem_reg[1][6] D -pin mem_reg[2][6] D -pin mem_reg[3][6] D -pin mem_reg[4][6] D -pin mem_reg[5][6] D -pin mem_reg[6][6] D -pin mem_reg[7][6] D -pin wr_data_IBUF[6]_inst O
netloc wr_data_IBUF[6] 1 2 1 1080 1890n
load net wr_data_IBUF[7] -pin mem_reg[1][7] D -pin mem_reg[2][7] D -pin mem_reg[3][7] D -pin mem_reg[4][7] D -pin mem_reg[5][7] D -pin mem_reg[6][7] D -pin mem_reg[7][7] D -pin wr_data_IBUF[7]_inst O
netloc wr_data_IBUF[7] 1 2 1 520 2190n
load net wr_data_IBUF[8] -pin mem_reg[1][8] D -pin mem_reg[2][8] D -pin mem_reg[3][8] D -pin mem_reg[4][8] D -pin mem_reg[5][8] D -pin mem_reg[6][8] D -pin mem_reg[7][8] D -pin wr_data_IBUF[8]_inst O
netloc wr_data_IBUF[8] 1 2 1 700 2490n
load net wr_data_IBUF[9] -pin mem_reg[1][9] D -pin mem_reg[2][9] D -pin mem_reg[3][9] D -pin mem_reg[4][9] D -pin mem_reg[5][9] D -pin mem_reg[6][9] D -pin mem_reg[7][9] D -pin wr_data_IBUF[9]_inst O
netloc wr_data_IBUF[9] 1 2 1 740 2790n
load net wr_en -port wr_en -pin wr_en_IBUF_inst I
netloc wr_en 1 0 1 NJ 26770
load net wr_en_IBUF -pin mem[1][31]_i_1 I3 -pin mem[2][31]_i_1 I3 -pin mem[3][31]_i_1 I3 -pin mem[4][31]_i_1 I3 -pin mem[5][31]_i_1 I3 -pin mem[6][31]_i_1 I3 -pin mem[7][31]_i_1 I3 -pin wr_en_IBUF_inst O
netloc wr_en_IBUF 1 1 1 270 26040n
load netBundle @addr 3 addr[2] addr[1] addr[0] -autobundled
netbloc @addr 1 0 1 20 25950n
load netBundle @wr_data 32 wr_data[31] wr_data[30] wr_data[29] wr_data[28] wr_data[27] wr_data[26] wr_data[25] wr_data[24] wr_data[23] wr_data[22] wr_data[21] wr_data[20] wr_data[19] wr_data[18] wr_data[17] wr_data[16] wr_data[15] wr_data[14] wr_data[13] wr_data[12] wr_data[11] wr_data[10] wr_data[9] wr_data[8] wr_data[7] wr_data[6] wr_data[5] wr_data[4] wr_data[3] wr_data[2] wr_data[1] wr_data[0] -autobundled
netbloc @wr_data 1 0 2 NJ 11790 210
load netBundle @rd_data 32 rd_data[31] rd_data[30] rd_data[29] rd_data[28] rd_data[27] rd_data[26] rd_data[25] rd_data[24] rd_data[23] rd_data[22] rd_data[21] rd_data[20] rd_data[19] rd_data[18] rd_data[17] rd_data[16] rd_data[15] rd_data[14] rd_data[13] rd_data[12] rd_data[11] rd_data[10] rd_data[9] rd_data[8] rd_data[7] rd_data[6] rd_data[5] rd_data[4] rd_data[3] rd_data[2] rd_data[1] rd_data[0] -autobundled
netbloc @rd_data 1 6 1 4600 11990n
levelinfo -pg 1 0 60 340 1250 3840 4260 4420 4620
pagesize -pg 1 -db -bbox -sgen -140 0 4760 33650
show
zoom 0.117451
scrollpos -745 0
#
# initialize ictrl to current module reg_file work:reg_file:NOFILE
ictrl init topinfo |
