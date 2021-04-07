module i2c_master_top (arst_i,
    scl_pad_i,
    scl_pad_o,
    scl_padoen_o,
    sda_pad_i,
    sda_pad_o,
    sda_padoen_o,
    wb_ack_o,
    wb_clk_i,
    wb_cyc_i,
    wb_inta_o,
    wb_rst_i,
    wb_stb_i,
    wb_we_i,
    VPWR,
    VGND,
    wb_adr_i,
    wb_dat_i,
    wb_dat_o);
 input arst_i;
 input scl_pad_i;
 output scl_pad_o;
 output scl_padoen_o;
 input sda_pad_i;
 output sda_pad_o;
 output sda_padoen_o;
 output wb_ack_o;
 input wb_clk_i;
 input wb_cyc_i;
 output wb_inta_o;
 input wb_rst_i;
 input wb_stb_i;
 input wb_we_i;
 input VPWR;
 input VGND;
 input [2:0] wb_adr_i;
 input [7:0] wb_dat_i;
 output [7:0] wb_dat_o;

 sky130_fd_sc_hd__clkbuf_2 _0612_ (.A(net16),
    .X(_0238_));
 sky130_fd_sc_hd__buf_1 _0613_ (.A(_0238_),
    .X(_0239_));
 sky130_fd_sc_hd__clkbuf_2 _0614_ (.A(_0239_),
    .X(_0240_));
 sky130_fd_sc_hd__clkbuf_2 _0615_ (.A(_0240_),
    .X(_0241_));
 sky130_fd_sc_hd__nand2_1 _0616_ (.A(net18),
    .B(net23),
    .Y(_0242_));
 sky130_fd_sc_hd__clkbuf_2 _0617_ (.A(_0242_),
    .X(_0243_));
 sky130_fd_sc_hd__inv_2 _0618_ (.A(_0243_),
    .Y(_0244_));
 sky130_fd_sc_hd__inv_2 _0619_ (.A(net5),
    .Y(_0245_));
 sky130_fd_sc_hd__inv_2 _0620_ (.A(net4),
    .Y(_0246_));
 sky130_fd_sc_hd__inv_2 _0621_ (.A(net6),
    .Y(_0247_));
 sky130_fd_sc_hd__and3_1 _0622_ (.A(_0245_),
    .B(_0246_),
    .C(_0247_),
    .X(_0248_));
 sky130_fd_sc_hd__buf_4 _0623_ (.A(_0248_),
    .X(_0140_));
 sky130_fd_sc_hd__nand2_2 _0624_ (.A(_0244_),
    .B(_0140_),
    .Y(_0249_));
 sky130_fd_sc_hd__buf_1 _0625_ (.A(_0249_),
    .X(_0250_));
 sky130_fd_sc_hd__inv_2 _0626_ (.A(net16),
    .Y(_0251_));
 sky130_fd_sc_hd__clkbuf_2 _0627_ (.A(_0251_),
    .X(_0252_));
 sky130_fd_sc_hd__nand2_2 _0628_ (.A(_0252_),
    .B(_0249_),
    .Y(_0253_));
 sky130_fd_sc_hd__buf_1 _0629_ (.A(_0253_),
    .X(_0254_));
 sky130_fd_sc_hd__o32a_1 _0630_ (.A1(_0241_),
    .A2(net15),
    .A3(_0250_),
    .B1(\byte_controller.bit_controller.clk_cnt[7] ),
    .B2(_0254_),
    .X(_0236_));
 sky130_fd_sc_hd__o32a_1 _0631_ (.A1(_0241_),
    .A2(net14),
    .A3(_0250_),
    .B1(\byte_controller.bit_controller.clk_cnt[6] ),
    .B2(_0254_),
    .X(_0235_));
 sky130_fd_sc_hd__o32a_1 _0632_ (.A1(_0241_),
    .A2(net13),
    .A3(_0250_),
    .B1(\byte_controller.bit_controller.clk_cnt[5] ),
    .B2(_0254_),
    .X(_0234_));
 sky130_fd_sc_hd__o32a_1 _0633_ (.A1(_0241_),
    .A2(net12),
    .A3(_0250_),
    .B1(\byte_controller.bit_controller.clk_cnt[4] ),
    .B2(_0254_),
    .X(_0233_));
 sky130_fd_sc_hd__clkbuf_2 _0634_ (.A(_0240_),
    .X(_0255_));
 sky130_fd_sc_hd__o32a_1 _0635_ (.A1(_0255_),
    .A2(net11),
    .A3(_0250_),
    .B1(\byte_controller.bit_controller.clk_cnt[3] ),
    .B2(_0254_),
    .X(_0232_));
 sky130_fd_sc_hd__o32a_1 _0636_ (.A1(_0255_),
    .A2(net10),
    .A3(_0249_),
    .B1(\byte_controller.bit_controller.clk_cnt[2] ),
    .B2(_0253_),
    .X(_0231_));
 sky130_fd_sc_hd__o32a_1 _0637_ (.A1(_0255_),
    .A2(net9),
    .A3(_0249_),
    .B1(\byte_controller.bit_controller.clk_cnt[1] ),
    .B2(_0253_),
    .X(_0230_));
 sky130_fd_sc_hd__o32a_1 _0638_ (.A1(_0255_),
    .A2(net8),
    .A3(_0249_),
    .B1(\byte_controller.bit_controller.clk_cnt[0] ),
    .B2(_0253_),
    .X(_0229_));
 sky130_fd_sc_hd__inv_2 _0639_ (.A(\byte_controller.start ),
    .Y(_0256_));
 sky130_fd_sc_hd__clkbuf_2 _0640_ (.A(_0256_),
    .X(_0257_));
 sky130_fd_sc_hd__inv_2 _0641_ (.A(\byte_controller.bit_controller.ena ),
    .Y(_0258_));
 sky130_fd_sc_hd__or3_4 _0642_ (.A(net5),
    .B(net4),
    .C(_0247_),
    .X(_0259_));
 sky130_fd_sc_hd__or3_4 _0643_ (.A(_0258_),
    .B(_0259_),
    .C(_0242_),
    .X(_0260_));
 sky130_fd_sc_hd__inv_2 _0644_ (.A(_0260_),
    .Y(_0261_));
 sky130_fd_sc_hd__o21a_1 _0645_ (.A1(\byte_controller.bit_controller.al ),
    .A2(\byte_controller.cmd_ack ),
    .B1(_0243_),
    .X(_0262_));
 sky130_fd_sc_hd__or3_4 _0646_ (.A(_0238_),
    .B(_0261_),
    .C(_0262_),
    .X(_0263_));
 sky130_fd_sc_hd__inv_2 _0647_ (.A(_0263_),
    .Y(_0264_));
 sky130_fd_sc_hd__buf_1 _0648_ (.A(_0238_),
    .X(_0265_));
 sky130_fd_sc_hd__inv_2 _0649_ (.A(net15),
    .Y(_0266_));
 sky130_fd_sc_hd__buf_1 _0650_ (.A(_0243_),
    .X(_0267_));
 sky130_fd_sc_hd__or3_1 _0651_ (.A(_0265_),
    .B(_0266_),
    .C(_0267_),
    .X(_0268_));
 sky130_fd_sc_hd__o22ai_1 _0652_ (.A1(_0257_),
    .A2(_0263_),
    .B1(_0264_),
    .B2(_0268_),
    .Y(_0228_));
 sky130_fd_sc_hd__buf_2 _0653_ (.A(_0251_),
    .X(_0269_));
 sky130_fd_sc_hd__nand2_2 _0654_ (.A(_0269_),
    .B(net14),
    .Y(_0270_));
 sky130_fd_sc_hd__inv_2 _0655_ (.A(\byte_controller.stop ),
    .Y(_0271_));
 sky130_fd_sc_hd__o32a_1 _0656_ (.A1(_0267_),
    .A2(_0270_),
    .A3(_0264_),
    .B1(_0271_),
    .B2(_0263_),
    .X(_0272_));
 sky130_fd_sc_hd__inv_2 _0657_ (.A(_0272_),
    .Y(_0227_));
 sky130_fd_sc_hd__inv_2 _0658_ (.A(\byte_controller.read ),
    .Y(_0273_));
 sky130_fd_sc_hd__inv_2 _0659_ (.A(net13),
    .Y(_0274_));
 sky130_fd_sc_hd__or3_1 _0660_ (.A(_0265_),
    .B(_0274_),
    .C(_0267_),
    .X(_0275_));
 sky130_fd_sc_hd__o22ai_2 _0661_ (.A1(_0273_),
    .A2(_0263_),
    .B1(_0264_),
    .B2(_0275_),
    .Y(_0226_));
 sky130_fd_sc_hd__inv_2 _0662_ (.A(\byte_controller.write ),
    .Y(_0276_));
 sky130_fd_sc_hd__inv_2 _0663_ (.A(net12),
    .Y(_0277_));
 sky130_fd_sc_hd__or3_1 _0664_ (.A(_0265_),
    .B(_0277_),
    .C(_0267_),
    .X(_0278_));
 sky130_fd_sc_hd__o22ai_1 _0665_ (.A1(_0276_),
    .A2(_0263_),
    .B1(_0264_),
    .B2(_0278_),
    .Y(_0225_));
 sky130_fd_sc_hd__clkbuf_2 _0666_ (.A(_0239_),
    .X(_0279_));
 sky130_fd_sc_hd__inv_2 _0667_ (.A(net10),
    .Y(_0280_));
 sky130_fd_sc_hd__inv_2 _0668_ (.A(\cr[2] ),
    .Y(_0281_));
 sky130_fd_sc_hd__clkbuf_2 _0669_ (.A(_0259_),
    .X(_0282_));
 sky130_fd_sc_hd__o211ai_4 _0670_ (.A1(_0258_),
    .A2(_0282_),
    .B1(_0269_),
    .C1(_0244_),
    .Y(_0283_));
 sky130_fd_sc_hd__o32a_1 _0671_ (.A1(_0279_),
    .A2(_0280_),
    .A3(_0260_),
    .B1(_0281_),
    .B2(_0283_),
    .X(_0284_));
 sky130_fd_sc_hd__inv_2 _0672_ (.A(_0284_),
    .Y(_0224_));
 sky130_fd_sc_hd__inv_2 _0673_ (.A(net9),
    .Y(_0285_));
 sky130_fd_sc_hd__inv_2 _0674_ (.A(\cr[1] ),
    .Y(_0286_));
 sky130_fd_sc_hd__o32a_1 _0675_ (.A1(_0279_),
    .A2(_0285_),
    .A3(_0260_),
    .B1(_0286_),
    .B2(_0283_),
    .X(_0287_));
 sky130_fd_sc_hd__inv_2 _0676_ (.A(_0287_),
    .Y(_0223_));
 sky130_fd_sc_hd__clkbuf_2 _0677_ (.A(_0239_),
    .X(_0288_));
 sky130_fd_sc_hd__inv_2 _0678_ (.A(net8),
    .Y(_0289_));
 sky130_fd_sc_hd__inv_2 _0679_ (.A(\cr[0] ),
    .Y(_0290_));
 sky130_fd_sc_hd__o32a_1 _0680_ (.A1(_0288_),
    .A2(_0289_),
    .A3(_0260_),
    .B1(_0290_),
    .B2(_0283_),
    .X(_0291_));
 sky130_fd_sc_hd__inv_2 _0681_ (.A(_0291_),
    .Y(_0222_));
 sky130_fd_sc_hd__inv_2 _0682_ (.A(\byte_controller.bit_controller.slave_wait ),
    .Y(_0292_));
 sky130_fd_sc_hd__inv_2 _0683_ (.A(\byte_controller.bit_controller.sSCL ),
    .Y(_0293_));
 sky130_fd_sc_hd__or2_4 _0684_ (.A(_0258_),
    .B(net16),
    .X(_0294_));
 sky130_fd_sc_hd__or2_1 _0685_ (.A(\byte_controller.bit_controller.cnt[15] ),
    .B(\byte_controller.bit_controller.cnt[14] ),
    .X(_0295_));
 sky130_fd_sc_hd__or2_1 _0686_ (.A(\byte_controller.bit_controller.cnt[11] ),
    .B(\byte_controller.bit_controller.cnt[10] ),
    .X(_0296_));
 sky130_fd_sc_hd__or2_1 _0687_ (.A(\byte_controller.bit_controller.cnt[1] ),
    .B(\byte_controller.bit_controller.cnt[0] ),
    .X(_0297_));
 sky130_fd_sc_hd__or2_1 _0688_ (.A(\byte_controller.bit_controller.cnt[2] ),
    .B(_0297_),
    .X(_0298_));
 sky130_fd_sc_hd__or2_1 _0689_ (.A(\byte_controller.bit_controller.cnt[3] ),
    .B(_0298_),
    .X(_0299_));
 sky130_fd_sc_hd__or3_1 _0690_ (.A(\byte_controller.bit_controller.cnt[5] ),
    .B(\byte_controller.bit_controller.cnt[4] ),
    .C(_0299_),
    .X(_0300_));
 sky130_fd_sc_hd__or2_1 _0691_ (.A(\byte_controller.bit_controller.cnt[6] ),
    .B(_0300_),
    .X(_0301_));
 sky130_fd_sc_hd__or2_2 _0692_ (.A(\byte_controller.bit_controller.cnt[7] ),
    .B(_0301_),
    .X(_0302_));
 sky130_fd_sc_hd__or4_4 _0693_ (.A(\byte_controller.bit_controller.cnt[9] ),
    .B(\byte_controller.bit_controller.cnt[8] ),
    .C(_0296_),
    .D(_0302_),
    .X(_0303_));
 sky130_fd_sc_hd__or4_4 _0694_ (.A(\byte_controller.bit_controller.cnt[13] ),
    .B(\byte_controller.bit_controller.cnt[12] ),
    .C(_0295_),
    .D(_0303_),
    .X(_0304_));
 sky130_fd_sc_hd__inv_2 _0695_ (.A(_0304_),
    .Y(_0305_));
 sky130_fd_sc_hd__a311o_4 _0696_ (.A1(net20),
    .A2(_0293_),
    .A3(\byte_controller.bit_controller.dSCL ),
    .B1(_0294_),
    .C1(_0305_),
    .X(_0016_));
 sky130_fd_sc_hd__or2_2 _0697_ (.A(_0292_),
    .B(_0016_),
    .X(_0306_));
 sky130_fd_sc_hd__clkbuf_2 _0698_ (.A(_0306_),
    .X(_0307_));
 sky130_fd_sc_hd__inv_2 _0699_ (.A(_0306_),
    .Y(_0308_));
 sky130_fd_sc_hd__clkbuf_2 _0700_ (.A(_0308_),
    .X(_0309_));
 sky130_fd_sc_hd__a22o_1 _0701_ (.A1(_0034_),
    .A2(_0307_),
    .B1(\byte_controller.bit_controller.cnt[15] ),
    .B2(_0309_),
    .X(_0221_));
 sky130_fd_sc_hd__a22o_1 _0702_ (.A1(_0033_),
    .A2(_0307_),
    .B1(\byte_controller.bit_controller.cnt[14] ),
    .B2(_0309_),
    .X(_0220_));
 sky130_fd_sc_hd__a22o_1 _0703_ (.A1(_0032_),
    .A2(_0307_),
    .B1(\byte_controller.bit_controller.cnt[13] ),
    .B2(_0309_),
    .X(_0219_));
 sky130_fd_sc_hd__a22o_1 _0704_ (.A1(_0031_),
    .A2(_0307_),
    .B1(\byte_controller.bit_controller.cnt[12] ),
    .B2(_0309_),
    .X(_0218_));
 sky130_fd_sc_hd__a22o_1 _0705_ (.A1(_0030_),
    .A2(_0307_),
    .B1(\byte_controller.bit_controller.cnt[11] ),
    .B2(_0309_),
    .X(_0217_));
 sky130_fd_sc_hd__clkbuf_2 _0706_ (.A(_0306_),
    .X(_0310_));
 sky130_fd_sc_hd__clkbuf_2 _0707_ (.A(_0308_),
    .X(_0311_));
 sky130_fd_sc_hd__a22o_1 _0708_ (.A1(_0029_),
    .A2(_0310_),
    .B1(\byte_controller.bit_controller.cnt[10] ),
    .B2(_0311_),
    .X(_0216_));
 sky130_fd_sc_hd__a22o_1 _0709_ (.A1(_0043_),
    .A2(_0310_),
    .B1(\byte_controller.bit_controller.cnt[9] ),
    .B2(_0311_),
    .X(_0215_));
 sky130_fd_sc_hd__a22o_1 _0710_ (.A1(_0042_),
    .A2(_0310_),
    .B1(\byte_controller.bit_controller.cnt[8] ),
    .B2(_0311_),
    .X(_0214_));
 sky130_fd_sc_hd__a22o_1 _0711_ (.A1(_0041_),
    .A2(_0310_),
    .B1(\byte_controller.bit_controller.cnt[7] ),
    .B2(_0311_),
    .X(_0213_));
 sky130_fd_sc_hd__a22o_1 _0712_ (.A1(_0040_),
    .A2(_0310_),
    .B1(\byte_controller.bit_controller.cnt[6] ),
    .B2(_0311_),
    .X(_0212_));
 sky130_fd_sc_hd__clkbuf_2 _0713_ (.A(_0306_),
    .X(_0312_));
 sky130_fd_sc_hd__clkbuf_2 _0714_ (.A(_0308_),
    .X(_0313_));
 sky130_fd_sc_hd__a22o_1 _0715_ (.A1(_0039_),
    .A2(_0312_),
    .B1(\byte_controller.bit_controller.cnt[5] ),
    .B2(_0313_),
    .X(_0211_));
 sky130_fd_sc_hd__a22o_1 _0716_ (.A1(_0038_),
    .A2(_0312_),
    .B1(\byte_controller.bit_controller.cnt[4] ),
    .B2(_0313_),
    .X(_0210_));
 sky130_fd_sc_hd__a22o_1 _0717_ (.A1(_0037_),
    .A2(_0312_),
    .B1(\byte_controller.bit_controller.cnt[3] ),
    .B2(_0313_),
    .X(_0209_));
 sky130_fd_sc_hd__a22o_1 _0718_ (.A1(_0036_),
    .A2(_0312_),
    .B1(\byte_controller.bit_controller.cnt[2] ),
    .B2(_0313_),
    .X(_0208_));
 sky130_fd_sc_hd__a22o_1 _0719_ (.A1(_0035_),
    .A2(_0312_),
    .B1(\byte_controller.bit_controller.cnt[1] ),
    .B2(_0313_),
    .X(_0207_));
 sky130_fd_sc_hd__a22o_1 _0720_ (.A1(_0028_),
    .A2(_0306_),
    .B1(\byte_controller.bit_controller.cnt[0] ),
    .B2(_0308_),
    .X(_0206_));
 sky130_fd_sc_hd__or2_1 _0721_ (.A(\byte_controller.bit_controller.filter_cnt[11] ),
    .B(\byte_controller.bit_controller.filter_cnt[10] ),
    .X(_0314_));
 sky130_fd_sc_hd__or2_1 _0722_ (.A(\byte_controller.bit_controller.filter_cnt[1] ),
    .B(\byte_controller.bit_controller.filter_cnt[0] ),
    .X(_0315_));
 sky130_fd_sc_hd__or2_1 _0723_ (.A(\byte_controller.bit_controller.filter_cnt[2] ),
    .B(_0315_),
    .X(_0316_));
 sky130_fd_sc_hd__or2_1 _0724_ (.A(\byte_controller.bit_controller.filter_cnt[3] ),
    .B(_0316_),
    .X(_0317_));
 sky130_fd_sc_hd__or3_1 _0725_ (.A(\byte_controller.bit_controller.filter_cnt[5] ),
    .B(\byte_controller.bit_controller.filter_cnt[4] ),
    .C(_0317_),
    .X(_0318_));
 sky130_fd_sc_hd__or2_1 _0726_ (.A(\byte_controller.bit_controller.filter_cnt[6] ),
    .B(_0318_),
    .X(_0319_));
 sky130_fd_sc_hd__or2_2 _0727_ (.A(\byte_controller.bit_controller.filter_cnt[7] ),
    .B(_0319_),
    .X(_0320_));
 sky130_fd_sc_hd__or4_4 _0728_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .B(\byte_controller.bit_controller.filter_cnt[8] ),
    .C(_0314_),
    .D(_0320_),
    .X(_0321_));
 sky130_fd_sc_hd__or2_1 _0729_ (.A(\byte_controller.bit_controller.filter_cnt[12] ),
    .B(_0321_),
    .X(_0322_));
 sky130_fd_sc_hd__or2_2 _0730_ (.A(\byte_controller.bit_controller.filter_cnt[13] ),
    .B(_0322_),
    .X(_0323_));
 sky130_fd_sc_hd__inv_2 _0731_ (.A(_0323_),
    .Y(_0324_));
 sky130_fd_sc_hd__buf_6 _0732_ (.A(_0324_),
    .X(_0074_));
 sky130_fd_sc_hd__buf_1 _0733_ (.A(_0323_),
    .X(_0325_));
 sky130_fd_sc_hd__buf_2 _0734_ (.A(_0240_),
    .X(_0326_));
 sky130_fd_sc_hd__a221o_1 _0735_ (.A1(\byte_controller.bit_controller.fSDA[1] ),
    .A2(_0074_),
    .B1(\byte_controller.bit_controller.fSDA[2] ),
    .B2(_0325_),
    .C1(_0326_),
    .X(_0205_));
 sky130_fd_sc_hd__a221o_1 _0736_ (.A1(\byte_controller.bit_controller.fSDA[0] ),
    .A2(_0074_),
    .B1(\byte_controller.bit_controller.fSDA[1] ),
    .B2(_0325_),
    .C1(_0326_),
    .X(_0204_));
 sky130_fd_sc_hd__buf_1 _0737_ (.A(_0279_),
    .X(_0327_));
 sky130_fd_sc_hd__a221o_1 _0738_ (.A1(\byte_controller.bit_controller.cSDA[1] ),
    .A2(_0074_),
    .B1(\byte_controller.bit_controller.fSDA[0] ),
    .B2(_0325_),
    .C1(_0327_),
    .X(_0203_));
 sky130_fd_sc_hd__a221o_1 _0739_ (.A1(\byte_controller.bit_controller.fSCL[1] ),
    .A2(_0324_),
    .B1(\byte_controller.bit_controller.fSCL[2] ),
    .B2(_0325_),
    .C1(_0327_),
    .X(_0202_));
 sky130_fd_sc_hd__a221o_1 _0740_ (.A1(\byte_controller.bit_controller.fSCL[0] ),
    .A2(_0324_),
    .B1(\byte_controller.bit_controller.fSCL[1] ),
    .B2(_0325_),
    .C1(_0327_),
    .X(_0201_));
 sky130_fd_sc_hd__a221o_1 _0741_ (.A1(\byte_controller.bit_controller.cSCL[1] ),
    .A2(_0324_),
    .B1(\byte_controller.bit_controller.fSCL[0] ),
    .B2(_0323_),
    .C1(_0327_),
    .X(_0200_));
 sky130_fd_sc_hd__inv_2 _0742_ (.A(\byte_controller.bit_controller.clk_en ),
    .Y(_0328_));
 sky130_fd_sc_hd__clkbuf_2 _0743_ (.A(_0328_),
    .X(_0329_));
 sky130_fd_sc_hd__clkbuf_2 _0744_ (.A(_0269_),
    .X(_0330_));
 sky130_fd_sc_hd__clkbuf_2 _0745_ (.A(_0330_),
    .X(_0331_));
 sky130_fd_sc_hd__o221a_1 _0746_ (.A1(\byte_controller.bit_controller.cmd_stop ),
    .A2(\byte_controller.bit_controller.clk_en ),
    .B1(_0329_),
    .B2(\byte_controller.core_cmd[3] ),
    .C1(_0331_),
    .X(_0199_));
 sky130_fd_sc_hd__buf_1 _0747_ (.A(\byte_controller.bit_controller.c_state[16] ),
    .X(_0332_));
 sky130_fd_sc_hd__clkbuf_2 _0748_ (.A(_0332_),
    .X(_0333_));
 sky130_fd_sc_hd__clkbuf_2 _0749_ (.A(_0333_),
    .X(_0334_));
 sky130_fd_sc_hd__inv_2 _0750_ (.A(\byte_controller.bit_controller.c_state[5] ),
    .Y(_0335_));
 sky130_fd_sc_hd__or4_4 _0751_ (.A(\byte_controller.bit_controller.c_state[1] ),
    .B(\byte_controller.bit_controller.c_state[0] ),
    .C(\byte_controller.bit_controller.c_state[3] ),
    .D(\byte_controller.bit_controller.c_state[2] ),
    .X(_0336_));
 sky130_fd_sc_hd__or4_4 _0752_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .B(\byte_controller.bit_controller.c_state[10] ),
    .C(\byte_controller.bit_controller.c_state[9] ),
    .D(\byte_controller.bit_controller.c_state[8] ),
    .X(_0337_));
 sky130_fd_sc_hd__or4_4 _0753_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(\byte_controller.bit_controller.c_state[12] ),
    .C(\byte_controller.bit_controller.c_state[15] ),
    .D(\byte_controller.bit_controller.c_state[14] ),
    .X(_0338_));
 sky130_fd_sc_hd__or2_2 _0754_ (.A(_0337_),
    .B(_0338_),
    .X(_0339_));
 sky130_fd_sc_hd__or4_4 _0755_ (.A(\byte_controller.bit_controller.c_state[7] ),
    .B(\byte_controller.bit_controller.c_state[6] ),
    .C(_0336_),
    .D(_0339_),
    .X(_0340_));
 sky130_fd_sc_hd__nor4_2 _0756_ (.A(_0334_),
    .B(_0335_),
    .C(\byte_controller.bit_controller.c_state[4] ),
    .D(_0340_),
    .Y(_0341_));
 sky130_fd_sc_hd__inv_2 _0757_ (.A(\byte_controller.bit_controller.c_state[0] ),
    .Y(_0342_));
 sky130_fd_sc_hd__or4_4 _0758_ (.A(\byte_controller.bit_controller.c_state[7] ),
    .B(\byte_controller.bit_controller.c_state[6] ),
    .C(\byte_controller.bit_controller.c_state[5] ),
    .D(\byte_controller.bit_controller.c_state[4] ),
    .X(_0343_));
 sky130_fd_sc_hd__or2_1 _0759_ (.A(_0343_),
    .B(_0339_),
    .X(_0344_));
 sky130_fd_sc_hd__or4_4 _0760_ (.A(\byte_controller.bit_controller.c_state[16] ),
    .B(\byte_controller.bit_controller.c_state[3] ),
    .C(\byte_controller.bit_controller.c_state[2] ),
    .D(_0344_),
    .X(_0345_));
 sky130_fd_sc_hd__or3_1 _0761_ (.A(\byte_controller.bit_controller.c_state[1] ),
    .B(_0342_),
    .C(_0345_),
    .X(_0346_));
 sky130_fd_sc_hd__or3b_1 _0762_ (.A(_0345_),
    .B(\byte_controller.bit_controller.c_state[0] ),
    .C_N(\byte_controller.bit_controller.c_state[1] ),
    .X(_0347_));
 sky130_fd_sc_hd__nand2_1 _0763_ (.A(_0346_),
    .B(_0347_),
    .Y(_0348_));
 sky130_fd_sc_hd__inv_2 _0764_ (.A(\byte_controller.bit_controller.c_state[3] ),
    .Y(_0349_));
 sky130_fd_sc_hd__or3_1 _0765_ (.A(\byte_controller.bit_controller.c_state[1] ),
    .B(\byte_controller.bit_controller.c_state[0] ),
    .C(_0344_),
    .X(_0350_));
 sky130_fd_sc_hd__or4_4 _0766_ (.A(_0333_),
    .B(_0349_),
    .C(\byte_controller.bit_controller.c_state[2] ),
    .D(_0350_),
    .X(_0351_));
 sky130_fd_sc_hd__inv_2 _0767_ (.A(\byte_controller.bit_controller.c_state[2] ),
    .Y(_0352_));
 sky130_fd_sc_hd__or4_4 _0768_ (.A(_0333_),
    .B(\byte_controller.bit_controller.c_state[3] ),
    .C(_0352_),
    .D(_0350_),
    .X(_0353_));
 sky130_fd_sc_hd__nand2_1 _0769_ (.A(_0351_),
    .B(_0353_),
    .Y(_0354_));
 sky130_fd_sc_hd__or4_4 _0770_ (.A(\byte_controller.bit_controller.c_state[5] ),
    .B(\byte_controller.bit_controller.c_state[4] ),
    .C(_0336_),
    .D(_0339_),
    .X(_0355_));
 sky130_fd_sc_hd__or4b_4 _0771_ (.A(_0333_),
    .B(\byte_controller.bit_controller.c_state[7] ),
    .C(_0355_),
    .D_N(\byte_controller.bit_controller.c_state[6] ),
    .X(_0356_));
 sky130_fd_sc_hd__or4b_4 _0772_ (.A(_0341_),
    .B(_0348_),
    .C(_0354_),
    .D_N(_0356_),
    .X(_0357_));
 sky130_fd_sc_hd__inv_2 _0773_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .Y(_0358_));
 sky130_fd_sc_hd__or3_2 _0774_ (.A(_0332_),
    .B(_0358_),
    .C(\byte_controller.bit_controller.c_state[12] ),
    .X(_0359_));
 sky130_fd_sc_hd__or2_2 _0775_ (.A(_0343_),
    .B(_0336_),
    .X(_0360_));
 sky130_fd_sc_hd__or2_2 _0776_ (.A(_0337_),
    .B(_0360_),
    .X(_0361_));
 sky130_fd_sc_hd__or4_4 _0777_ (.A(\byte_controller.bit_controller.c_state[15] ),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .C(_0359_),
    .D(_0361_),
    .X(_0362_));
 sky130_fd_sc_hd__or2_1 _0778_ (.A(\byte_controller.bit_controller.c_state[8] ),
    .B(_0338_),
    .X(_0363_));
 sky130_fd_sc_hd__inv_2 _0779_ (.A(\byte_controller.bit_controller.c_state[9] ),
    .Y(_0364_));
 sky130_fd_sc_hd__or4_4 _0780_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .B(\byte_controller.bit_controller.c_state[10] ),
    .C(\byte_controller.bit_controller.c_state[16] ),
    .D(_0364_),
    .X(_0365_));
 sky130_fd_sc_hd__or3_4 _0781_ (.A(_0360_),
    .B(_0363_),
    .C(_0365_),
    .X(_0366_));
 sky130_fd_sc_hd__nand2_1 _0782_ (.A(_0362_),
    .B(_0366_),
    .Y(_0367_));
 sky130_fd_sc_hd__inv_2 _0783_ (.A(\byte_controller.bit_controller.c_state[7] ),
    .Y(_0368_));
 sky130_fd_sc_hd__or4_4 _0784_ (.A(_0334_),
    .B(_0368_),
    .C(\byte_controller.bit_controller.c_state[6] ),
    .D(_0355_),
    .X(_0369_));
 sky130_fd_sc_hd__inv_2 _0785_ (.A(\byte_controller.bit_controller.c_state[14] ),
    .Y(_0370_));
 sky130_fd_sc_hd__or3_1 _0786_ (.A(_0332_),
    .B(\byte_controller.bit_controller.c_state[15] ),
    .C(_0370_),
    .X(_0371_));
 sky130_fd_sc_hd__or4_4 _0787_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(\byte_controller.bit_controller.c_state[12] ),
    .C(_0371_),
    .D(_0361_),
    .X(_0372_));
 sky130_fd_sc_hd__inv_2 _0788_ (.A(\byte_controller.bit_controller.c_state[4] ),
    .Y(_0373_));
 sky130_fd_sc_hd__or4_4 _0789_ (.A(_0332_),
    .B(\byte_controller.bit_controller.c_state[5] ),
    .C(_0373_),
    .D(_0340_),
    .X(_0374_));
 sky130_fd_sc_hd__inv_2 _0790_ (.A(\byte_controller.bit_controller.c_state[8] ),
    .Y(_0375_));
 sky130_fd_sc_hd__or4_4 _0791_ (.A(\byte_controller.bit_controller.c_state[16] ),
    .B(\byte_controller.bit_controller.c_state[9] ),
    .C(_0375_),
    .D(_0338_),
    .X(_0376_));
 sky130_fd_sc_hd__or4_4 _0792_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .B(\byte_controller.bit_controller.c_state[10] ),
    .C(_0360_),
    .D(_0376_),
    .X(_0377_));
 sky130_fd_sc_hd__and3_1 _0793_ (.A(_0076_),
    .B(_0374_),
    .C(_0377_),
    .X(_0378_));
 sky130_fd_sc_hd__nand4b_4 _0794_ (.A_N(_0367_),
    .B(_0369_),
    .C(_0372_),
    .D(_0378_),
    .Y(_0379_));
 sky130_fd_sc_hd__or2_2 _0795_ (.A(net16),
    .B(\byte_controller.bit_controller.al ),
    .X(_0380_));
 sky130_fd_sc_hd__or2_1 _0796_ (.A(_0339_),
    .B(_0360_),
    .X(_0381_));
 sky130_fd_sc_hd__buf_1 _0797_ (.A(_0381_),
    .X(_0073_));
 sky130_fd_sc_hd__nor2_1 _0798_ (.A(_0333_),
    .B(_0073_),
    .Y(_0382_));
 sky130_fd_sc_hd__or2_1 _0799_ (.A(_0328_),
    .B(_0382_),
    .X(_0383_));
 sky130_fd_sc_hd__inv_2 _0800_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .Y(_0384_));
 sky130_fd_sc_hd__or4_4 _0801_ (.A(_0332_),
    .B(\byte_controller.bit_controller.c_state[9] ),
    .C(_0360_),
    .D(_0363_),
    .X(_0385_));
 sky130_fd_sc_hd__or3_1 _0802_ (.A(_0384_),
    .B(\byte_controller.bit_controller.c_state[10] ),
    .C(_0385_),
    .X(_0386_));
 sky130_fd_sc_hd__inv_2 _0803_ (.A(\byte_controller.bit_controller.c_state[10] ),
    .Y(_0387_));
 sky130_fd_sc_hd__or3_1 _0804_ (.A(\byte_controller.bit_controller.c_state[11] ),
    .B(_0387_),
    .C(_0385_),
    .X(_0388_));
 sky130_fd_sc_hd__nand2_1 _0805_ (.A(_0386_),
    .B(_0388_),
    .Y(_0389_));
 sky130_fd_sc_hd__or3_1 _0806_ (.A(_0380_),
    .B(_0383_),
    .C(_0389_),
    .X(_0390_));
 sky130_fd_sc_hd__inv_2 _0807_ (.A(\byte_controller.bit_controller.sda_chk ),
    .Y(_0391_));
 sky130_fd_sc_hd__buf_2 _0808_ (.A(_0380_),
    .X(_0392_));
 sky130_fd_sc_hd__or2_2 _0809_ (.A(\byte_controller.bit_controller.clk_en ),
    .B(_0392_),
    .X(_0393_));
 sky130_fd_sc_hd__clkbuf_2 _0810_ (.A(_0393_),
    .X(_0394_));
 sky130_fd_sc_hd__o32a_1 _0811_ (.A1(_0357_),
    .A2(_0379_),
    .A3(_0390_),
    .B1(_0391_),
    .B2(_0394_),
    .X(_0395_));
 sky130_fd_sc_hd__inv_2 _0812_ (.A(_0395_),
    .Y(_0198_));
 sky130_fd_sc_hd__inv_2 _0813_ (.A(_0380_),
    .Y(_0396_));
 sky130_fd_sc_hd__clkbuf_2 _0814_ (.A(_0396_),
    .X(_0397_));
 sky130_fd_sc_hd__clkbuf_2 _0815_ (.A(_0397_),
    .X(_0398_));
 sky130_fd_sc_hd__or2_2 _0816_ (.A(_0329_),
    .B(_0380_),
    .X(_0399_));
 sky130_fd_sc_hd__clkbuf_2 _0817_ (.A(_0399_),
    .X(_0400_));
 sky130_fd_sc_hd__inv_2 _0818_ (.A(_0400_),
    .Y(_0401_));
 sky130_fd_sc_hd__inv_2 _0819_ (.A(\byte_controller.bit_controller.c_state[15] ),
    .Y(_0402_));
 sky130_fd_sc_hd__or2_1 _0820_ (.A(_0402_),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .X(_0403_));
 sky130_fd_sc_hd__or4_4 _0821_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(\byte_controller.bit_controller.c_state[12] ),
    .C(_0403_),
    .D(_0361_),
    .X(_0404_));
 sky130_fd_sc_hd__clkbuf_1 _0822_ (.A(_0404_),
    .X(_0077_));
 sky130_fd_sc_hd__nor2_1 _0823_ (.A(_0334_),
    .B(_0077_),
    .Y(_0405_));
 sky130_fd_sc_hd__a32o_1 _0824_ (.A1(_0329_),
    .A2(_0398_),
    .A3(_0334_),
    .B1(_0401_),
    .B2(_0405_),
    .X(_0197_));
 sky130_fd_sc_hd__clkbuf_2 _0825_ (.A(_0393_),
    .X(_0406_));
 sky130_fd_sc_hd__clkbuf_2 _0826_ (.A(_0400_),
    .X(_0407_));
 sky130_fd_sc_hd__o22ai_1 _0827_ (.A1(_0402_),
    .A2(_0406_),
    .B1(_0407_),
    .B2(_0372_),
    .Y(_0196_));
 sky130_fd_sc_hd__o22ai_1 _0828_ (.A1(_0370_),
    .A2(_0406_),
    .B1(_0407_),
    .B2(_0362_),
    .Y(_0195_));
 sky130_fd_sc_hd__inv_2 _0829_ (.A(\byte_controller.core_cmd[2] ),
    .Y(_0408_));
 sky130_fd_sc_hd__or4_4 _0830_ (.A(_0389_),
    .B(_0405_),
    .C(_0379_),
    .D(_0357_),
    .X(_0409_));
 sky130_fd_sc_hd__o32a_1 _0831_ (.A1(_0408_),
    .A2(_0400_),
    .A3(_0409_),
    .B1(_0358_),
    .B2(_0394_),
    .X(_0410_));
 sky130_fd_sc_hd__inv_2 _0832_ (.A(_0410_),
    .Y(_0194_));
 sky130_fd_sc_hd__inv_2 _0833_ (.A(\byte_controller.bit_controller.c_state[12] ),
    .Y(_0411_));
 sky130_fd_sc_hd__o22ai_1 _0834_ (.A1(_0411_),
    .A2(_0406_),
    .B1(_0386_),
    .B2(_0407_),
    .Y(_0193_));
 sky130_fd_sc_hd__o22ai_1 _0835_ (.A1(_0384_),
    .A2(_0406_),
    .B1(_0388_),
    .B2(_0407_),
    .Y(_0192_));
 sky130_fd_sc_hd__clkbuf_2 _0836_ (.A(_0400_),
    .X(_0412_));
 sky130_fd_sc_hd__o22ai_1 _0837_ (.A1(_0387_),
    .A2(_0406_),
    .B1(_0412_),
    .B2(_0366_),
    .Y(_0191_));
 sky130_fd_sc_hd__inv_2 _0838_ (.A(\byte_controller.core_cmd[1] ),
    .Y(_0413_));
 sky130_fd_sc_hd__o32a_1 _0839_ (.A1(_0413_),
    .A2(_0399_),
    .A3(_0409_),
    .B1(_0364_),
    .B2(_0394_),
    .X(_0414_));
 sky130_fd_sc_hd__inv_2 _0840_ (.A(_0414_),
    .Y(_0190_));
 sky130_fd_sc_hd__clkbuf_2 _0841_ (.A(_0393_),
    .X(_0415_));
 sky130_fd_sc_hd__o22ai_1 _0842_ (.A1(_0375_),
    .A2(_0415_),
    .B1(_0412_),
    .B2(_0369_),
    .Y(_0189_));
 sky130_fd_sc_hd__o22ai_1 _0843_ (.A1(_0368_),
    .A2(_0415_),
    .B1(_0412_),
    .B2(_0356_),
    .Y(_0188_));
 sky130_fd_sc_hd__a32o_1 _0844_ (.A1(_0329_),
    .A2(_0398_),
    .A3(\byte_controller.bit_controller.c_state[6] ),
    .B1(_0401_),
    .B2(_0341_),
    .X(_0187_));
 sky130_fd_sc_hd__inv_2 _0845_ (.A(\byte_controller.core_cmd[3] ),
    .Y(_0416_));
 sky130_fd_sc_hd__o32a_1 _0846_ (.A1(_0416_),
    .A2(_0399_),
    .A3(_0409_),
    .B1(_0335_),
    .B2(_0394_),
    .X(_0417_));
 sky130_fd_sc_hd__inv_2 _0847_ (.A(_0417_),
    .Y(_0186_));
 sky130_fd_sc_hd__o22ai_1 _0848_ (.A1(_0373_),
    .A2(_0415_),
    .B1(_0412_),
    .B2(_0351_),
    .Y(_0185_));
 sky130_fd_sc_hd__o22ai_1 _0849_ (.A1(_0349_),
    .A2(_0415_),
    .B1(_0412_),
    .B2(_0353_),
    .Y(_0184_));
 sky130_fd_sc_hd__o22ai_1 _0850_ (.A1(_0352_),
    .A2(_0415_),
    .B1(_0400_),
    .B2(_0347_),
    .Y(_0183_));
 sky130_fd_sc_hd__inv_2 _0851_ (.A(_0346_),
    .Y(_0418_));
 sky130_fd_sc_hd__a32o_1 _0852_ (.A1(_0329_),
    .A2(_0397_),
    .A3(\byte_controller.bit_controller.c_state[1] ),
    .B1(_0401_),
    .B2(_0418_),
    .X(_0182_));
 sky130_fd_sc_hd__inv_2 _0853_ (.A(\byte_controller.core_cmd[4] ),
    .Y(_0419_));
 sky130_fd_sc_hd__o32a_1 _0854_ (.A1(_0419_),
    .A2(_0399_),
    .A3(_0409_),
    .B1(_0342_),
    .B2(_0394_),
    .X(_0420_));
 sky130_fd_sc_hd__inv_2 _0855_ (.A(_0420_),
    .Y(_0181_));
 sky130_fd_sc_hd__inv_2 _0856_ (.A(_0348_),
    .Y(_0421_));
 sky130_fd_sc_hd__or2_1 _0857_ (.A(\byte_controller.bit_controller.c_state[13] ),
    .B(_0411_),
    .X(_0422_));
 sky130_fd_sc_hd__or4_4 _0858_ (.A(\byte_controller.bit_controller.c_state[15] ),
    .B(\byte_controller.bit_controller.c_state[14] ),
    .C(_0422_),
    .D(_0361_),
    .X(_0075_));
 sky130_fd_sc_hd__o211a_1 _0859_ (.A1(_0334_),
    .A2(_0075_),
    .B1(_0377_),
    .C1(_0366_),
    .X(_0423_));
 sky130_fd_sc_hd__inv_2 _0860_ (.A(\byte_controller.bit_controller.din ),
    .Y(_0424_));
 sky130_fd_sc_hd__a31o_1 _0861_ (.A1(_0372_),
    .A2(_0362_),
    .A3(_0072_),
    .B1(_0424_),
    .X(_0425_));
 sky130_fd_sc_hd__inv_2 _0862_ (.A(_0390_),
    .Y(_0426_));
 sky130_fd_sc_hd__inv_2 _0863_ (.A(net22),
    .Y(_0427_));
 sky130_fd_sc_hd__buf_1 _0864_ (.A(_0396_),
    .X(_0428_));
 sky130_fd_sc_hd__and3_1 _0865_ (.A(_0427_),
    .B(_0428_),
    .C(_0383_),
    .X(_0429_));
 sky130_fd_sc_hd__a41o_1 _0866_ (.A1(_0421_),
    .A2(_0423_),
    .A3(_0425_),
    .A4(_0426_),
    .B1(_0429_),
    .X(_0430_));
 sky130_fd_sc_hd__inv_2 _0867_ (.A(_0430_),
    .Y(_0180_));
 sky130_fd_sc_hd__or2_1 _0868_ (.A(_0383_),
    .B(_0418_),
    .X(_0431_));
 sky130_fd_sc_hd__nand2_1 _0869_ (.A(_0076_),
    .B(_0374_),
    .Y(_0432_));
 sky130_fd_sc_hd__nor4_2 _0870_ (.A(_0341_),
    .B(_0367_),
    .C(_0432_),
    .D(_0431_),
    .Y(_0433_));
 sky130_fd_sc_hd__a211o_1 _0871_ (.A1(net20),
    .A2(_0431_),
    .B1(_0392_),
    .C1(_0433_),
    .X(_0179_));
 sky130_fd_sc_hd__clkbuf_2 _0872_ (.A(_0252_),
    .X(_0434_));
 sky130_fd_sc_hd__or3_4 _0873_ (.A(_0238_),
    .B(\byte_controller.ld ),
    .C(\byte_controller.shift ),
    .X(_0435_));
 sky130_fd_sc_hd__clkbuf_2 _0874_ (.A(_0435_),
    .X(_0436_));
 sky130_fd_sc_hd__inv_2 _0875_ (.A(_0435_),
    .Y(_0437_));
 sky130_fd_sc_hd__buf_1 _0876_ (.A(_0437_),
    .X(_0438_));
 sky130_fd_sc_hd__a32o_1 _0877_ (.A1(_0434_),
    .A2(_0436_),
    .A3(_0135_),
    .B1(\byte_controller.dout[7] ),
    .B2(_0438_),
    .X(_0178_));
 sky130_fd_sc_hd__a32o_1 _0878_ (.A1(_0434_),
    .A2(_0436_),
    .A3(_0134_),
    .B1(\byte_controller.dout[6] ),
    .B2(_0438_),
    .X(_0177_));
 sky130_fd_sc_hd__clkbuf_2 _0879_ (.A(_0252_),
    .X(_0439_));
 sky130_fd_sc_hd__a32o_1 _0880_ (.A1(_0439_),
    .A2(_0436_),
    .A3(_0133_),
    .B1(\byte_controller.dout[5] ),
    .B2(_0438_),
    .X(_0176_));
 sky130_fd_sc_hd__a32o_1 _0881_ (.A1(_0439_),
    .A2(_0436_),
    .A3(_0132_),
    .B1(\byte_controller.dout[4] ),
    .B2(_0438_),
    .X(_0175_));
 sky130_fd_sc_hd__clkbuf_2 _0882_ (.A(_0435_),
    .X(_0440_));
 sky130_fd_sc_hd__clkbuf_2 _0883_ (.A(_0437_),
    .X(_0441_));
 sky130_fd_sc_hd__a32o_1 _0884_ (.A1(_0439_),
    .A2(_0440_),
    .A3(_0131_),
    .B1(\byte_controller.dout[3] ),
    .B2(_0441_),
    .X(_0174_));
 sky130_fd_sc_hd__a32o_1 _0885_ (.A1(_0439_),
    .A2(_0440_),
    .A3(_0130_),
    .B1(\byte_controller.dout[2] ),
    .B2(_0441_),
    .X(_0173_));
 sky130_fd_sc_hd__a32o_1 _0886_ (.A1(_0439_),
    .A2(_0440_),
    .A3(_0129_),
    .B1(\byte_controller.dout[1] ),
    .B2(_0441_),
    .X(_0172_));
 sky130_fd_sc_hd__a32o_1 _0887_ (.A1(_0330_),
    .A2(_0440_),
    .A3(_0128_),
    .B1(\byte_controller.dout[0] ),
    .B2(_0441_),
    .X(_0171_));
 sky130_fd_sc_hd__o21a_1 _0888_ (.A1(\byte_controller.dcnt[1] ),
    .A2(\byte_controller.dcnt[0] ),
    .B1(\byte_controller.dcnt[2] ),
    .X(_0442_));
 sky130_fd_sc_hd__or3_4 _0889_ (.A(\byte_controller.dcnt[1] ),
    .B(\byte_controller.dcnt[0] ),
    .C(\byte_controller.dcnt[2] ),
    .X(_0443_));
 sky130_fd_sc_hd__or3b_2 _0890_ (.A(\byte_controller.ld ),
    .B(_0442_),
    .C_N(_0443_),
    .X(_0444_));
 sky130_fd_sc_hd__a32o_1 _0891_ (.A1(_0330_),
    .A2(_0440_),
    .A3(_0444_),
    .B1(\byte_controller.dcnt[2] ),
    .B2(_0441_),
    .X(_0170_));
 sky130_fd_sc_hd__inv_2 _0892_ (.A(\byte_controller.dcnt[1] ),
    .Y(_0445_));
 sky130_fd_sc_hd__or2_1 _0893_ (.A(_0240_),
    .B(_0437_),
    .X(_0446_));
 sky130_fd_sc_hd__inv_2 _0894_ (.A(\byte_controller.dcnt[0] ),
    .Y(_0447_));
 sky130_fd_sc_hd__a221oi_2 _0895_ (.A1(_0445_),
    .A2(_0447_),
    .B1(\byte_controller.dcnt[1] ),
    .B2(\byte_controller.dcnt[0] ),
    .C1(\byte_controller.ld ),
    .Y(_0448_));
 sky130_fd_sc_hd__o22ai_1 _0896_ (.A1(_0445_),
    .A2(_0436_),
    .B1(_0446_),
    .B2(_0448_),
    .Y(_0169_));
 sky130_fd_sc_hd__nor2_1 _0897_ (.A(_0447_),
    .B(\byte_controller.ld ),
    .Y(_0449_));
 sky130_fd_sc_hd__a2bb2o_1 _0898_ (.A1_N(_0446_),
    .A2_N(_0449_),
    .B1(\byte_controller.dcnt[0] ),
    .B2(_0438_),
    .X(_0168_));
 sky130_fd_sc_hd__clkbuf_2 _0899_ (.A(\byte_controller.c_state[2] ),
    .X(_0450_));
 sky130_fd_sc_hd__buf_1 _0900_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .X(_0451_));
 sky130_fd_sc_hd__nand2_1 _0901_ (.A(_0450_),
    .B(_0451_),
    .Y(_0452_));
 sky130_fd_sc_hd__inv_2 _0902_ (.A(_0452_),
    .Y(_0453_));
 sky130_fd_sc_hd__clkbuf_2 _0903_ (.A(_0397_),
    .X(_0454_));
 sky130_fd_sc_hd__o221a_1 _0904_ (.A1(\byte_controller.ack_out ),
    .A2(_0453_),
    .B1(\byte_controller.bit_controller.dout ),
    .B2(_0452_),
    .C1(_0454_),
    .X(_0167_));
 sky130_fd_sc_hd__or3_4 _0905_ (.A(_0245_),
    .B(net4),
    .C(net6),
    .X(_0455_));
 sky130_fd_sc_hd__or2_2 _0906_ (.A(_0243_),
    .B(_0455_),
    .X(_0456_));
 sky130_fd_sc_hd__clkbuf_2 _0907_ (.A(_0456_),
    .X(_0457_));
 sky130_fd_sc_hd__inv_2 _0908_ (.A(_0456_),
    .Y(_0458_));
 sky130_fd_sc_hd__o32a_1 _0909_ (.A1(_0288_),
    .A2(_0266_),
    .A3(_0457_),
    .B1(_0294_),
    .B2(_0458_),
    .X(_0459_));
 sky130_fd_sc_hd__inv_2 _0910_ (.A(_0459_),
    .Y(_0166_));
 sky130_fd_sc_hd__inv_2 _0911_ (.A(\ctr[6] ),
    .Y(_0460_));
 sky130_fd_sc_hd__o32a_1 _0912_ (.A1(_0460_),
    .A2(_0240_),
    .A3(_0458_),
    .B1(_0270_),
    .B2(_0457_),
    .X(_0461_));
 sky130_fd_sc_hd__inv_2 _0913_ (.A(_0461_),
    .Y(_0165_));
 sky130_fd_sc_hd__inv_2 _0914_ (.A(\ctr[5] ),
    .Y(_0462_));
 sky130_fd_sc_hd__or2_1 _0915_ (.A(_0238_),
    .B(_0458_),
    .X(_0463_));
 sky130_fd_sc_hd__buf_1 _0916_ (.A(_0463_),
    .X(_0464_));
 sky130_fd_sc_hd__o32a_1 _0917_ (.A1(_0288_),
    .A2(_0274_),
    .A3(_0457_),
    .B1(_0462_),
    .B2(_0464_),
    .X(_0465_));
 sky130_fd_sc_hd__inv_2 _0918_ (.A(_0465_),
    .Y(_0164_));
 sky130_fd_sc_hd__inv_2 _0919_ (.A(\ctr[4] ),
    .Y(_0466_));
 sky130_fd_sc_hd__o32a_1 _0920_ (.A1(_0288_),
    .A2(_0277_),
    .A3(_0457_),
    .B1(_0466_),
    .B2(_0464_),
    .X(_0467_));
 sky130_fd_sc_hd__inv_2 _0921_ (.A(_0467_),
    .Y(_0163_));
 sky130_fd_sc_hd__inv_2 _0922_ (.A(net11),
    .Y(_0468_));
 sky130_fd_sc_hd__inv_2 _0923_ (.A(\ctr[3] ),
    .Y(_0469_));
 sky130_fd_sc_hd__o32a_1 _0924_ (.A1(_0288_),
    .A2(_0468_),
    .A3(_0457_),
    .B1(_0469_),
    .B2(_0464_),
    .X(_0470_));
 sky130_fd_sc_hd__inv_2 _0925_ (.A(_0470_),
    .Y(_0162_));
 sky130_fd_sc_hd__clkbuf_2 _0926_ (.A(_0239_),
    .X(_0471_));
 sky130_fd_sc_hd__inv_2 _0927_ (.A(\ctr[2] ),
    .Y(_0472_));
 sky130_fd_sc_hd__o32a_1 _0928_ (.A1(_0471_),
    .A2(_0280_),
    .A3(_0456_),
    .B1(_0472_),
    .B2(_0464_),
    .X(_0473_));
 sky130_fd_sc_hd__inv_2 _0929_ (.A(_0473_),
    .Y(_0161_));
 sky130_fd_sc_hd__inv_2 _0930_ (.A(\ctr[1] ),
    .Y(_0474_));
 sky130_fd_sc_hd__o32a_1 _0931_ (.A1(_0471_),
    .A2(_0285_),
    .A3(_0456_),
    .B1(_0474_),
    .B2(_0464_),
    .X(_0475_));
 sky130_fd_sc_hd__inv_2 _0932_ (.A(_0475_),
    .Y(_0160_));
 sky130_fd_sc_hd__inv_2 _0933_ (.A(\ctr[0] ),
    .Y(_0476_));
 sky130_fd_sc_hd__o32a_1 _0934_ (.A1(_0471_),
    .A2(_0289_),
    .A3(_0456_),
    .B1(_0476_),
    .B2(_0463_),
    .X(_0477_));
 sky130_fd_sc_hd__inv_2 _0935_ (.A(_0477_),
    .Y(_0159_));
 sky130_fd_sc_hd__or3_4 _0936_ (.A(net6),
    .B(_0245_),
    .C(_0246_),
    .X(_0478_));
 sky130_fd_sc_hd__or2_2 _0937_ (.A(_0243_),
    .B(_0478_),
    .X(_0479_));
 sky130_fd_sc_hd__clkbuf_2 _0938_ (.A(_0479_),
    .X(_0480_));
 sky130_fd_sc_hd__inv_2 _0939_ (.A(\byte_controller.din[7] ),
    .Y(_0481_));
 sky130_fd_sc_hd__nand2_1 _0940_ (.A(_0269_),
    .B(_0479_),
    .Y(_0482_));
 sky130_fd_sc_hd__clkbuf_2 _0941_ (.A(_0482_),
    .X(_0483_));
 sky130_fd_sc_hd__o32a_1 _0942_ (.A1(_0471_),
    .A2(_0266_),
    .A3(_0480_),
    .B1(_0481_),
    .B2(_0483_),
    .X(_0484_));
 sky130_fd_sc_hd__inv_2 _0943_ (.A(_0484_),
    .Y(_0158_));
 sky130_fd_sc_hd__inv_2 _0944_ (.A(\byte_controller.din[6] ),
    .Y(_0485_));
 sky130_fd_sc_hd__o22ai_1 _0945_ (.A1(_0485_),
    .A2(_0483_),
    .B1(_0270_),
    .B2(_0480_),
    .Y(_0157_));
 sky130_fd_sc_hd__inv_2 _0946_ (.A(\byte_controller.din[5] ),
    .Y(_0486_));
 sky130_fd_sc_hd__o32a_1 _0947_ (.A1(_0471_),
    .A2(_0274_),
    .A3(_0480_),
    .B1(_0486_),
    .B2(_0483_),
    .X(_0487_));
 sky130_fd_sc_hd__inv_2 _0948_ (.A(_0487_),
    .Y(_0156_));
 sky130_fd_sc_hd__buf_1 _0949_ (.A(_0239_),
    .X(_0488_));
 sky130_fd_sc_hd__inv_2 _0950_ (.A(\byte_controller.din[4] ),
    .Y(_0489_));
 sky130_fd_sc_hd__o32a_1 _0951_ (.A1(_0488_),
    .A2(_0277_),
    .A3(_0480_),
    .B1(_0489_),
    .B2(_0483_),
    .X(_0490_));
 sky130_fd_sc_hd__inv_2 _0952_ (.A(_0490_),
    .Y(_0155_));
 sky130_fd_sc_hd__inv_2 _0953_ (.A(\byte_controller.din[3] ),
    .Y(_0491_));
 sky130_fd_sc_hd__o32a_1 _0954_ (.A1(_0488_),
    .A2(_0468_),
    .A3(_0480_),
    .B1(_0491_),
    .B2(_0483_),
    .X(_0492_));
 sky130_fd_sc_hd__inv_2 _0955_ (.A(_0492_),
    .Y(_0154_));
 sky130_fd_sc_hd__inv_2 _0956_ (.A(\byte_controller.din[2] ),
    .Y(_0493_));
 sky130_fd_sc_hd__o32a_1 _0957_ (.A1(_0488_),
    .A2(_0280_),
    .A3(_0479_),
    .B1(_0493_),
    .B2(_0482_),
    .X(_0494_));
 sky130_fd_sc_hd__inv_2 _0958_ (.A(_0494_),
    .Y(_0153_));
 sky130_fd_sc_hd__inv_2 _0959_ (.A(\byte_controller.din[1] ),
    .Y(_0495_));
 sky130_fd_sc_hd__o32a_1 _0960_ (.A1(_0488_),
    .A2(_0285_),
    .A3(_0479_),
    .B1(_0495_),
    .B2(_0482_),
    .X(_0496_));
 sky130_fd_sc_hd__inv_2 _0961_ (.A(_0496_),
    .Y(_0152_));
 sky130_fd_sc_hd__inv_2 _0962_ (.A(\byte_controller.din[0] ),
    .Y(_0497_));
 sky130_fd_sc_hd__o32a_1 _0963_ (.A1(_0488_),
    .A2(_0289_),
    .A3(_0479_),
    .B1(_0497_),
    .B2(_0482_),
    .X(_0498_));
 sky130_fd_sc_hd__inv_2 _0964_ (.A(_0498_),
    .Y(_0151_));
 sky130_fd_sc_hd__or3_4 _0965_ (.A(net5),
    .B(_0246_),
    .C(net6),
    .X(_0499_));
 sky130_fd_sc_hd__or2_2 _0966_ (.A(_0267_),
    .B(_0499_),
    .X(_0500_));
 sky130_fd_sc_hd__clkbuf_2 _0967_ (.A(_0500_),
    .X(_0501_));
 sky130_fd_sc_hd__nand2_2 _0968_ (.A(_0269_),
    .B(_0500_),
    .Y(_0502_));
 sky130_fd_sc_hd__clkbuf_2 _0969_ (.A(_0502_),
    .X(_0503_));
 sky130_fd_sc_hd__o32a_1 _0970_ (.A1(_0255_),
    .A2(net15),
    .A3(_0501_),
    .B1(\byte_controller.bit_controller.clk_cnt[15] ),
    .B2(_0503_),
    .X(_0150_));
 sky130_fd_sc_hd__clkbuf_2 _0971_ (.A(_0265_),
    .X(_0504_));
 sky130_fd_sc_hd__o32a_1 _0972_ (.A1(_0504_),
    .A2(net14),
    .A3(_0501_),
    .B1(\byte_controller.bit_controller.clk_cnt[14] ),
    .B2(_0503_),
    .X(_0149_));
 sky130_fd_sc_hd__o32a_1 _0973_ (.A1(_0504_),
    .A2(net13),
    .A3(_0501_),
    .B1(\byte_controller.bit_controller.clk_cnt[13] ),
    .B2(_0503_),
    .X(_0148_));
 sky130_fd_sc_hd__o32a_1 _0974_ (.A1(_0504_),
    .A2(net12),
    .A3(_0501_),
    .B1(\byte_controller.bit_controller.clk_cnt[12] ),
    .B2(_0503_),
    .X(_0147_));
 sky130_fd_sc_hd__o32a_1 _0975_ (.A1(_0504_),
    .A2(net11),
    .A3(_0501_),
    .B1(\byte_controller.bit_controller.clk_cnt[11] ),
    .B2(_0503_),
    .X(_0146_));
 sky130_fd_sc_hd__o32a_1 _0976_ (.A1(_0504_),
    .A2(net10),
    .A3(_0500_),
    .B1(\byte_controller.bit_controller.clk_cnt[10] ),
    .B2(_0502_),
    .X(_0145_));
 sky130_fd_sc_hd__o32a_1 _0977_ (.A1(_0279_),
    .A2(net9),
    .A3(_0500_),
    .B1(\byte_controller.bit_controller.clk_cnt[9] ),
    .B2(_0502_),
    .X(_0144_));
 sky130_fd_sc_hd__o32a_1 _0978_ (.A1(_0279_),
    .A2(net8),
    .A3(_0500_),
    .B1(\byte_controller.bit_controller.clk_cnt[8] ),
    .B2(_0502_),
    .X(_0143_));
 sky130_fd_sc_hd__or2_1 _0979_ (.A(_0293_),
    .B(\byte_controller.bit_controller.dSCL ),
    .X(_0505_));
 sky130_fd_sc_hd__mux2_1 _0980_ (.A0(\byte_controller.bit_controller.sSDA ),
    .A1(\byte_controller.bit_controller.dout ),
    .S(_0505_),
    .X(_0142_));
 sky130_fd_sc_hd__inv_2 _0981_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .Y(_0506_));
 sky130_fd_sc_hd__clkbuf_2 _0982_ (.A(_0506_),
    .X(_0507_));
 sky130_fd_sc_hd__inv_2 _0983_ (.A(\byte_controller.cmd_ack ),
    .Y(_0508_));
 sky130_fd_sc_hd__o311a_1 _0984_ (.A1(\byte_controller.read ),
    .A2(\byte_controller.write ),
    .A3(\byte_controller.stop ),
    .B1(_0508_),
    .C1(\byte_controller.c_state[0] ),
    .X(_0509_));
 sky130_fd_sc_hd__and3_1 _0985_ (.A(\byte_controller.start ),
    .B(_0428_),
    .C(_0509_),
    .X(_0510_));
 sky130_fd_sc_hd__a31o_1 _0986_ (.A1(_0507_),
    .A2(\byte_controller.c_state[5] ),
    .A3(_0398_),
    .B1(_0510_),
    .X(_0011_));
 sky130_fd_sc_hd__and3_1 _0987_ (.A(_0273_),
    .B(_0276_),
    .C(_0256_),
    .X(_0511_));
 sky130_fd_sc_hd__and3_1 _0988_ (.A(_0508_),
    .B(\byte_controller.c_state[0] ),
    .C(_0511_),
    .X(_0512_));
 sky130_fd_sc_hd__o211a_1 _0989_ (.A1(_0453_),
    .A2(_0512_),
    .B1(\byte_controller.stop ),
    .C1(_0397_),
    .X(_0513_));
 sky130_fd_sc_hd__a31o_1 _0990_ (.A1(_0507_),
    .A2(\byte_controller.c_state[1] ),
    .A3(_0398_),
    .B1(_0513_),
    .X(_0007_));
 sky130_fd_sc_hd__or2_1 _0991_ (.A(\byte_controller.c_state[3] ),
    .B(\byte_controller.c_state[4] ),
    .X(_0514_));
 sky130_fd_sc_hd__or4_4 _0992_ (.A(\byte_controller.c_state[2] ),
    .B(\byte_controller.c_state[5] ),
    .C(\byte_controller.c_state[1] ),
    .D(_0514_),
    .X(_0515_));
 sky130_fd_sc_hd__nand2_1 _0993_ (.A(_0506_),
    .B(_0515_),
    .Y(_0516_));
 sky130_fd_sc_hd__inv_2 _0994_ (.A(\byte_controller.c_state[0] ),
    .Y(_0517_));
 sky130_fd_sc_hd__o31a_1 _0995_ (.A1(\byte_controller.read ),
    .A2(\byte_controller.write ),
    .A3(\byte_controller.stop ),
    .B1(_0508_),
    .X(_0518_));
 sky130_fd_sc_hd__o22a_1 _0996_ (.A1(_0517_),
    .A2(_0518_),
    .B1(\byte_controller.c_state[0] ),
    .B2(_0515_),
    .X(_0519_));
 sky130_fd_sc_hd__a21oi_4 _0997_ (.A1(_0516_),
    .A2(_0519_),
    .B1(_0392_),
    .Y(_0520_));
 sky130_fd_sc_hd__a21o_1 _0998_ (.A1(\byte_controller.core_cmd[4] ),
    .A2(_0520_),
    .B1(_0510_),
    .X(_0015_));
 sky130_fd_sc_hd__a21oi_2 _0999_ (.A1(_0271_),
    .A2(_0450_),
    .B1(\byte_controller.c_state[1] ),
    .Y(_0521_));
 sky130_fd_sc_hd__o221ai_2 _1000_ (.A1(_0507_),
    .A2(_0521_),
    .B1(_0517_),
    .B2(_0518_),
    .C1(_0454_),
    .Y(_0006_));
 sky130_fd_sc_hd__buf_1 _1001_ (.A(\byte_controller.c_state[4] ),
    .X(_0522_));
 sky130_fd_sc_hd__or2_1 _1002_ (.A(_0506_),
    .B(_0443_),
    .X(_0523_));
 sky130_fd_sc_hd__inv_2 _1003_ (.A(_0523_),
    .Y(_0524_));
 sky130_fd_sc_hd__and3_1 _1004_ (.A(_0522_),
    .B(_0428_),
    .C(_0524_),
    .X(_0525_));
 sky130_fd_sc_hd__and2_1 _1005_ (.A(\byte_controller.bit_controller.cmd_ack ),
    .B(\byte_controller.c_state[5] ),
    .X(_0526_));
 sky130_fd_sc_hd__a41o_1 _1006_ (.A1(_0508_),
    .A2(\byte_controller.c_state[0] ),
    .A3(_0257_),
    .A4(\byte_controller.write ),
    .B1(_0526_),
    .X(_0527_));
 sky130_fd_sc_hd__a32o_1 _1007_ (.A1(_0451_),
    .A2(_0443_),
    .A3(\byte_controller.c_state[3] ),
    .B1(_0273_),
    .B2(_0527_),
    .X(_0528_));
 sky130_fd_sc_hd__and2_1 _1008_ (.A(_0397_),
    .B(_0528_),
    .X(_0529_));
 sky130_fd_sc_hd__a211o_1 _1009_ (.A1(\byte_controller.core_cmd[2] ),
    .A2(_0520_),
    .B1(_0525_),
    .C1(_0529_),
    .X(_0013_));
 sky130_fd_sc_hd__o21a_1 _1010_ (.A1(_0509_),
    .A2(_0526_),
    .B1(_0396_),
    .X(_0019_));
 sky130_fd_sc_hd__o211a_1 _1011_ (.A1(_0257_),
    .A2(_0526_),
    .B1(\byte_controller.read ),
    .C1(_0019_),
    .X(_0530_));
 sky130_fd_sc_hd__a31o_1 _1012_ (.A1(_0522_),
    .A2(_0454_),
    .A3(_0523_),
    .B1(_0530_),
    .X(_0010_));
 sky130_fd_sc_hd__a31o_1 _1013_ (.A1(\byte_controller.c_state[3] ),
    .A2(_0454_),
    .A3(_0507_),
    .B1(_0529_),
    .X(_0009_));
 sky130_fd_sc_hd__a21o_1 _1014_ (.A1(\byte_controller.core_cmd[3] ),
    .A2(_0520_),
    .B1(_0513_),
    .X(_0014_));
 sky130_fd_sc_hd__and3_1 _1015_ (.A(\byte_controller.c_state[3] ),
    .B(_0428_),
    .C(_0524_),
    .X(_0531_));
 sky130_fd_sc_hd__and4_1 _1016_ (.A(\byte_controller.c_state[4] ),
    .B(_0428_),
    .C(_0451_),
    .D(_0443_),
    .X(_0532_));
 sky130_fd_sc_hd__a2111o_1 _1017_ (.A1(\byte_controller.core_cmd[1] ),
    .A2(_0520_),
    .B1(_0531_),
    .C1(_0532_),
    .D1(_0530_),
    .X(_0012_));
 sky130_fd_sc_hd__a22oi_1 _1018_ (.A1(_0450_),
    .A2(_0506_),
    .B1(_0514_),
    .B2(_0524_),
    .Y(_0533_));
 sky130_fd_sc_hd__nor2_1 _1019_ (.A(_0392_),
    .B(_0533_),
    .Y(_0008_));
 sky130_fd_sc_hd__buf_1 _1020_ (.A(_0252_),
    .X(_0534_));
 sky130_fd_sc_hd__and3_1 _1021_ (.A(\ctr[6] ),
    .B(_0534_),
    .C(irq_flag),
    .X(_0005_));
 sky130_fd_sc_hd__o311a_1 _1022_ (.A1(\byte_controller.bit_controller.al ),
    .A2(\byte_controller.cmd_ack ),
    .A3(irq_flag),
    .B1(_0290_),
    .C1(_0331_),
    .X(_0001_));
 sky130_fd_sc_hd__clkbuf_2 _1023_ (.A(_0330_),
    .X(_0535_));
 sky130_fd_sc_hd__o21a_1 _1024_ (.A1(\byte_controller.read ),
    .A2(\byte_controller.write ),
    .B1(_0535_),
    .X(_0003_));
 sky130_fd_sc_hd__and2_1 _1025_ (.A(\byte_controller.ack_out ),
    .B(_0331_),
    .X(_0002_));
 sky130_fd_sc_hd__a21oi_1 _1026_ (.A1(_0257_),
    .A2(al),
    .B1(\byte_controller.bit_controller.al ),
    .Y(_0536_));
 sky130_fd_sc_hd__nor2_1 _1027_ (.A(_0326_),
    .B(_0536_),
    .Y(_0000_));
 sky130_fd_sc_hd__nor2_1 _1028_ (.A(_0407_),
    .B(_0378_),
    .Y(_0027_));
 sky130_fd_sc_hd__inv_2 _1029_ (.A(\byte_controller.bit_controller.sto_condition ),
    .Y(_0537_));
 sky130_fd_sc_hd__or2_1 _1030_ (.A(\byte_controller.bit_controller.cmd_stop ),
    .B(_0537_),
    .X(_0538_));
 sky130_fd_sc_hd__o32a_1 _1031_ (.A1(_0391_),
    .A2(_0427_),
    .A3(\byte_controller.bit_controller.sSDA ),
    .B1(_0382_),
    .B2(_0538_),
    .X(_0539_));
 sky130_fd_sc_hd__nor2_1 _1032_ (.A(_0326_),
    .B(_0539_),
    .Y(_0021_));
 sky130_fd_sc_hd__o211a_1 _1033_ (.A1(\byte_controller.bit_controller.busy ),
    .A2(\byte_controller.bit_controller.sta_condition ),
    .B1(_0331_),
    .C1(_0537_),
    .X(_0022_));
 sky130_fd_sc_hd__inv_2 _1034_ (.A(\byte_controller.bit_controller.dSDA ),
    .Y(_0540_));
 sky130_fd_sc_hd__and4_1 _1035_ (.A(\byte_controller.bit_controller.sSDA ),
    .B(_0330_),
    .C(\byte_controller.bit_controller.sSCL ),
    .D(_0540_),
    .X(_0064_));
 sky130_fd_sc_hd__or2_1 _1036_ (.A(\byte_controller.bit_controller.sSDA ),
    .B(_0265_),
    .X(_0541_));
 sky130_fd_sc_hd__clkbuf_1 _1037_ (.A(_0541_),
    .X(_0045_));
 sky130_fd_sc_hd__nor3_1 _1038_ (.A(_0293_),
    .B(_0540_),
    .C(_0045_),
    .Y(_0063_));
 sky130_fd_sc_hd__inv_2 _1039_ (.A(\byte_controller.bit_controller.clk_cnt[2] ),
    .Y(_0078_));
 sky130_fd_sc_hd__clkbuf_2 _1040_ (.A(_0294_),
    .X(_0542_));
 sky130_fd_sc_hd__nor2_1 _1041_ (.A(_0079_),
    .B(_0542_),
    .Y(_0046_));
 sky130_fd_sc_hd__a21bo_1 _1042_ (.A1(\byte_controller.bit_controller.filter_cnt[1] ),
    .A2(\byte_controller.bit_controller.filter_cnt[0] ),
    .B1_N(_0315_),
    .X(_0080_));
 sky130_fd_sc_hd__buf_1 _1043_ (.A(\byte_controller.bit_controller.ena ),
    .X(_0543_));
 sky130_fd_sc_hd__and3_1 _1044_ (.A(_0543_),
    .B(_0534_),
    .C(_0081_),
    .X(_0051_));
 sky130_fd_sc_hd__a21bo_1 _1045_ (.A1(\byte_controller.bit_controller.filter_cnt[2] ),
    .A2(_0315_),
    .B1_N(_0316_),
    .X(_0082_));
 sky130_fd_sc_hd__and3_1 _1046_ (.A(_0543_),
    .B(_0534_),
    .C(_0083_),
    .X(_0052_));
 sky130_fd_sc_hd__a21bo_1 _1047_ (.A1(\byte_controller.bit_controller.filter_cnt[3] ),
    .A2(_0316_),
    .B1_N(_0317_),
    .X(_0084_));
 sky130_fd_sc_hd__and3_1 _1048_ (.A(_0543_),
    .B(_0534_),
    .C(_0085_),
    .X(_0053_));
 sky130_fd_sc_hd__or2_1 _1049_ (.A(\byte_controller.bit_controller.filter_cnt[4] ),
    .B(_0317_),
    .X(_0544_));
 sky130_fd_sc_hd__a21bo_1 _1050_ (.A1(\byte_controller.bit_controller.filter_cnt[4] ),
    .A2(_0317_),
    .B1_N(_0544_),
    .X(_0086_));
 sky130_fd_sc_hd__and3_1 _1051_ (.A(_0543_),
    .B(_0534_),
    .C(_0087_),
    .X(_0054_));
 sky130_fd_sc_hd__a21bo_1 _1052_ (.A1(\byte_controller.bit_controller.filter_cnt[5] ),
    .A2(_0544_),
    .B1_N(_0318_),
    .X(_0088_));
 sky130_fd_sc_hd__and3_1 _1053_ (.A(_0543_),
    .B(_0434_),
    .C(_0089_),
    .X(_0055_));
 sky130_fd_sc_hd__a21bo_1 _1054_ (.A1(\byte_controller.bit_controller.filter_cnt[6] ),
    .A2(_0318_),
    .B1_N(_0319_),
    .X(_0090_));
 sky130_fd_sc_hd__and3_1 _1055_ (.A(\byte_controller.bit_controller.ena ),
    .B(_0434_),
    .C(_0091_),
    .X(_0056_));
 sky130_fd_sc_hd__inv_2 _1056_ (.A(\byte_controller.bit_controller.clk_cnt[9] ),
    .Y(_0092_));
 sky130_fd_sc_hd__a21boi_1 _1057_ (.A1(\byte_controller.bit_controller.filter_cnt[7] ),
    .A2(_0319_),
    .B1_N(_0320_),
    .Y(_0093_));
 sky130_fd_sc_hd__nor2_1 _1058_ (.A(_0094_),
    .B(_0542_),
    .Y(_0057_));
 sky130_fd_sc_hd__nor2_1 _1059_ (.A(\byte_controller.bit_controller.filter_cnt[8] ),
    .B(_0320_),
    .Y(_0545_));
 sky130_fd_sc_hd__a21o_1 _1060_ (.A1(\byte_controller.bit_controller.filter_cnt[8] ),
    .A2(_0320_),
    .B1(_0545_),
    .X(_0095_));
 sky130_fd_sc_hd__and3_1 _1061_ (.A(\byte_controller.bit_controller.ena ),
    .B(_0434_),
    .C(_0096_),
    .X(_0058_));
 sky130_fd_sc_hd__inv_2 _1062_ (.A(\byte_controller.bit_controller.clk_cnt[11] ),
    .Y(_0097_));
 sky130_fd_sc_hd__inv_2 _1063_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .Y(_0546_));
 sky130_fd_sc_hd__or3_4 _1064_ (.A(\byte_controller.bit_controller.filter_cnt[9] ),
    .B(\byte_controller.bit_controller.filter_cnt[8] ),
    .C(_0320_),
    .X(_0547_));
 sky130_fd_sc_hd__o21a_1 _1065_ (.A1(_0546_),
    .A2(_0545_),
    .B1(_0547_),
    .X(_0098_));
 sky130_fd_sc_hd__nor2_1 _1066_ (.A(_0099_),
    .B(_0542_),
    .Y(_0059_));
 sky130_fd_sc_hd__inv_2 _1067_ (.A(\byte_controller.bit_controller.clk_cnt[12] ),
    .Y(_0100_));
 sky130_fd_sc_hd__a2bb2oi_1 _1068_ (.A1_N(\byte_controller.bit_controller.filter_cnt[10] ),
    .A2_N(_0547_),
    .B1(\byte_controller.bit_controller.filter_cnt[10] ),
    .B2(_0547_),
    .Y(_0101_));
 sky130_fd_sc_hd__nor2_1 _1069_ (.A(_0102_),
    .B(_0542_),
    .Y(_0047_));
 sky130_fd_sc_hd__inv_2 _1070_ (.A(\byte_controller.bit_controller.clk_cnt[13] ),
    .Y(_0103_));
 sky130_fd_sc_hd__o21a_1 _1071_ (.A1(\byte_controller.bit_controller.filter_cnt[10] ),
    .A2(_0547_),
    .B1(\byte_controller.bit_controller.filter_cnt[11] ),
    .X(_0548_));
 sky130_fd_sc_hd__nor2b_1 _1072_ (.A(_0548_),
    .B_N(_0321_),
    .Y(_0104_));
 sky130_fd_sc_hd__nor2_1 _1073_ (.A(_0105_),
    .B(_0542_),
    .Y(_0048_));
 sky130_fd_sc_hd__inv_2 _1074_ (.A(\byte_controller.bit_controller.clk_cnt[14] ),
    .Y(_0106_));
 sky130_fd_sc_hd__a21boi_1 _1075_ (.A1(\byte_controller.bit_controller.filter_cnt[12] ),
    .A2(_0321_),
    .B1_N(_0322_),
    .Y(_0107_));
 sky130_fd_sc_hd__nor2_1 _1076_ (.A(_0108_),
    .B(_0294_),
    .Y(_0049_));
 sky130_fd_sc_hd__inv_2 _1077_ (.A(\byte_controller.bit_controller.clk_cnt[15] ),
    .Y(_0109_));
 sky130_fd_sc_hd__a21oi_1 _1078_ (.A1(\byte_controller.bit_controller.filter_cnt[13] ),
    .A2(_0322_),
    .B1(_0074_),
    .Y(_0110_));
 sky130_fd_sc_hd__nor2_1 _1079_ (.A(_0111_),
    .B(_0294_),
    .Y(_0050_));
 sky130_fd_sc_hd__and2_1 _1080_ (.A(_0535_),
    .B(net3),
    .X(_0025_));
 sky130_fd_sc_hd__and2_1 _1081_ (.A(_0535_),
    .B(\byte_controller.bit_controller.cSDA[0] ),
    .X(_0026_));
 sky130_fd_sc_hd__and2_1 _1082_ (.A(_0535_),
    .B(net2),
    .X(_0023_));
 sky130_fd_sc_hd__and2_1 _1083_ (.A(_0535_),
    .B(\byte_controller.bit_controller.cSCL[0] ),
    .X(_0024_));
 sky130_fd_sc_hd__inv_2 _1084_ (.A(\byte_controller.bit_controller.cnt[0] ),
    .Y(_0112_));
 sky130_fd_sc_hd__a21bo_1 _1085_ (.A1(\byte_controller.bit_controller.cnt[1] ),
    .A2(\byte_controller.bit_controller.cnt[0] ),
    .B1_N(_0297_),
    .X(_0113_));
 sky130_fd_sc_hd__a21bo_1 _1086_ (.A1(\byte_controller.bit_controller.cnt[2] ),
    .A2(_0297_),
    .B1_N(_0298_),
    .X(_0114_));
 sky130_fd_sc_hd__a21bo_1 _1087_ (.A1(\byte_controller.bit_controller.cnt[3] ),
    .A2(_0298_),
    .B1_N(_0299_),
    .X(_0115_));
 sky130_fd_sc_hd__nor2_1 _1088_ (.A(\byte_controller.bit_controller.cnt[4] ),
    .B(_0299_),
    .Y(_0549_));
 sky130_fd_sc_hd__a21o_1 _1089_ (.A1(\byte_controller.bit_controller.cnt[4] ),
    .A2(_0299_),
    .B1(_0549_),
    .X(_0116_));
 sky130_fd_sc_hd__inv_2 _1090_ (.A(\byte_controller.bit_controller.cnt[5] ),
    .Y(_0550_));
 sky130_fd_sc_hd__o21ai_1 _1091_ (.A1(_0550_),
    .A2(_0549_),
    .B1(_0300_),
    .Y(_0117_));
 sky130_fd_sc_hd__a21bo_1 _1092_ (.A1(\byte_controller.bit_controller.cnt[6] ),
    .A2(_0300_),
    .B1_N(_0301_),
    .X(_0118_));
 sky130_fd_sc_hd__a21bo_1 _1093_ (.A1(\byte_controller.bit_controller.cnt[7] ),
    .A2(_0301_),
    .B1_N(_0302_),
    .X(_0119_));
 sky130_fd_sc_hd__or2_1 _1094_ (.A(\byte_controller.bit_controller.cnt[8] ),
    .B(_0302_),
    .X(_0551_));
 sky130_fd_sc_hd__a21bo_1 _1095_ (.A1(\byte_controller.bit_controller.cnt[8] ),
    .A2(_0302_),
    .B1_N(_0551_),
    .X(_0120_));
 sky130_fd_sc_hd__or2_1 _1096_ (.A(\byte_controller.bit_controller.cnt[9] ),
    .B(_0551_),
    .X(_0552_));
 sky130_fd_sc_hd__a21bo_1 _1097_ (.A1(\byte_controller.bit_controller.cnt[9] ),
    .A2(_0551_),
    .B1_N(_0552_),
    .X(_0121_));
 sky130_fd_sc_hd__nor2_1 _1098_ (.A(\byte_controller.bit_controller.cnt[10] ),
    .B(_0552_),
    .Y(_0553_));
 sky130_fd_sc_hd__a21o_1 _1099_ (.A1(\byte_controller.bit_controller.cnt[10] ),
    .A2(_0552_),
    .B1(_0553_),
    .X(_0122_));
 sky130_fd_sc_hd__inv_2 _1100_ (.A(\byte_controller.bit_controller.cnt[11] ),
    .Y(_0554_));
 sky130_fd_sc_hd__o21ai_1 _1101_ (.A1(_0554_),
    .A2(_0553_),
    .B1(_0303_),
    .Y(_0123_));
 sky130_fd_sc_hd__or2_1 _1102_ (.A(\byte_controller.bit_controller.cnt[12] ),
    .B(_0303_),
    .X(_0555_));
 sky130_fd_sc_hd__a21bo_1 _1103_ (.A1(\byte_controller.bit_controller.cnt[12] ),
    .A2(_0303_),
    .B1_N(_0555_),
    .X(_0124_));
 sky130_fd_sc_hd__or2_1 _1104_ (.A(\byte_controller.bit_controller.cnt[13] ),
    .B(_0555_),
    .X(_0556_));
 sky130_fd_sc_hd__a21bo_1 _1105_ (.A1(\byte_controller.bit_controller.cnt[13] ),
    .A2(_0555_),
    .B1_N(_0556_),
    .X(_0125_));
 sky130_fd_sc_hd__nor2_1 _1106_ (.A(\byte_controller.bit_controller.cnt[14] ),
    .B(_0556_),
    .Y(_0557_));
 sky130_fd_sc_hd__a21o_1 _1107_ (.A1(\byte_controller.bit_controller.cnt[14] ),
    .A2(_0556_),
    .B1(_0557_),
    .X(_0126_));
 sky130_fd_sc_hd__inv_2 _1108_ (.A(\byte_controller.bit_controller.cnt[15] ),
    .Y(_0558_));
 sky130_fd_sc_hd__o21ai_1 _1109_ (.A1(_0558_),
    .A2(_0557_),
    .B1(_0304_),
    .Y(_0127_));
 sky130_fd_sc_hd__nor2_1 _1110_ (.A(_0450_),
    .B(_0522_),
    .Y(_0136_));
 sky130_fd_sc_hd__or2_1 _1111_ (.A(_0451_),
    .B(\byte_controller.ack_in ),
    .X(_0559_));
 sky130_fd_sc_hd__a22o_1 _1112_ (.A1(_0522_),
    .A2(_0137_),
    .B1(_0450_),
    .B2(_0559_),
    .X(_0138_));
 sky130_fd_sc_hd__and2_1 _1113_ (.A(_0139_),
    .B(_0454_),
    .X(_0018_));
 sky130_fd_sc_hd__o2111a_1 _1114_ (.A1(_0522_),
    .A2(_0443_),
    .B1(_0451_),
    .C1(_0398_),
    .D1(_0514_),
    .X(_0020_));
 sky130_fd_sc_hd__nor3_1 _1115_ (.A(_0507_),
    .B(_0392_),
    .C(_0521_),
    .Y(_0017_));
 sky130_fd_sc_hd__or3_4 _1116_ (.A(net5),
    .B(_0246_),
    .C(_0247_),
    .X(_0560_));
 sky130_fd_sc_hd__clkbuf_4 _1117_ (.A(_0560_),
    .X(_0561_));
 sky130_fd_sc_hd__or3_4 _1118_ (.A(_0245_),
    .B(net4),
    .C(_0247_),
    .X(_0562_));
 sky130_fd_sc_hd__buf_2 _1119_ (.A(_0562_),
    .X(_0563_));
 sky130_fd_sc_hd__inv_2 _1120_ (.A(\byte_controller.bit_controller.clk_cnt[8] ),
    .Y(_0564_));
 sky130_fd_sc_hd__clkbuf_2 _1121_ (.A(_0499_),
    .X(_0565_));
 sky130_fd_sc_hd__clkbuf_2 _1122_ (.A(_0455_),
    .X(_0566_));
 sky130_fd_sc_hd__inv_2 _1123_ (.A(\byte_controller.dout[0] ),
    .Y(_0567_));
 sky130_fd_sc_hd__clkbuf_2 _1124_ (.A(_0478_),
    .X(_0568_));
 sky130_fd_sc_hd__inv_2 _1125_ (.A(irq_flag),
    .Y(_0569_));
 sky130_fd_sc_hd__o22a_1 _1126_ (.A1(_0567_),
    .A2(_0568_),
    .B1(_0569_),
    .B2(_0282_),
    .X(_0570_));
 sky130_fd_sc_hd__o221a_1 _1127_ (.A1(_0564_),
    .A2(_0565_),
    .B1(_0476_),
    .B2(_0566_),
    .C1(_0570_),
    .X(_0571_));
 sky130_fd_sc_hd__o221ai_4 _1128_ (.A1(_0497_),
    .A2(_0561_),
    .B1(_0290_),
    .B2(_0563_),
    .C1(_0571_),
    .Y(_0141_));
 sky130_fd_sc_hd__inv_2 _1129_ (.A(\byte_controller.dout[1] ),
    .Y(_0572_));
 sky130_fd_sc_hd__inv_2 _1130_ (.A(tip),
    .Y(_0573_));
 sky130_fd_sc_hd__o22a_1 _1131_ (.A1(_0573_),
    .A2(_0259_),
    .B1(_0474_),
    .B2(_0455_),
    .X(_0574_));
 sky130_fd_sc_hd__o221a_1 _1132_ (.A1(_0572_),
    .A2(_0568_),
    .B1(_0286_),
    .B2(_0562_),
    .C1(_0574_),
    .X(_0575_));
 sky130_fd_sc_hd__o221ai_2 _1133_ (.A1(_0495_),
    .A2(_0561_),
    .B1(_0092_),
    .B2(_0565_),
    .C1(_0575_),
    .Y(_0065_));
 sky130_fd_sc_hd__inv_2 _1134_ (.A(\byte_controller.dout[2] ),
    .Y(_0576_));
 sky130_fd_sc_hd__inv_2 _1135_ (.A(\byte_controller.bit_controller.clk_cnt[10] ),
    .Y(_0577_));
 sky130_fd_sc_hd__o22a_1 _1136_ (.A1(_0577_),
    .A2(_0565_),
    .B1(_0281_),
    .B2(_0563_),
    .X(_0578_));
 sky130_fd_sc_hd__o22a_1 _1137_ (.A1(_0493_),
    .A2(_0560_),
    .B1(_0472_),
    .B2(_0566_),
    .X(_0579_));
 sky130_fd_sc_hd__o211ai_1 _1138_ (.A1(_0576_),
    .A2(_0568_),
    .B1(_0578_),
    .C1(_0579_),
    .Y(_0066_));
 sky130_fd_sc_hd__inv_2 _1139_ (.A(\byte_controller.ack_in ),
    .Y(_0580_));
 sky130_fd_sc_hd__inv_2 _1140_ (.A(\byte_controller.dout[3] ),
    .Y(_0581_));
 sky130_fd_sc_hd__o22a_1 _1141_ (.A1(_0097_),
    .A2(_0565_),
    .B1(_0581_),
    .B2(_0568_),
    .X(_0582_));
 sky130_fd_sc_hd__o22a_1 _1142_ (.A1(_0491_),
    .A2(_0560_),
    .B1(_0469_),
    .B2(_0566_),
    .X(_0583_));
 sky130_fd_sc_hd__o211ai_1 _1143_ (.A1(_0580_),
    .A2(_0563_),
    .B1(_0582_),
    .C1(_0583_),
    .Y(_0067_));
 sky130_fd_sc_hd__inv_2 _1144_ (.A(\byte_controller.dout[4] ),
    .Y(_0584_));
 sky130_fd_sc_hd__or2_1 _1145_ (.A(_0466_),
    .B(_0455_),
    .X(_0585_));
 sky130_fd_sc_hd__o221a_1 _1146_ (.A1(_0584_),
    .A2(_0568_),
    .B1(_0276_),
    .B2(_0562_),
    .C1(_0585_),
    .X(_0586_));
 sky130_fd_sc_hd__o221ai_2 _1147_ (.A1(_0489_),
    .A2(_0561_),
    .B1(_0100_),
    .B2(_0565_),
    .C1(_0586_),
    .Y(_0068_));
 sky130_fd_sc_hd__inv_2 _1148_ (.A(\byte_controller.dout[5] ),
    .Y(_0587_));
 sky130_fd_sc_hd__inv_2 _1149_ (.A(al),
    .Y(_0588_));
 sky130_fd_sc_hd__o22a_1 _1150_ (.A1(_0587_),
    .A2(_0478_),
    .B1(_0588_),
    .B2(_0282_),
    .X(_0589_));
 sky130_fd_sc_hd__o221a_1 _1151_ (.A1(_0103_),
    .A2(_0499_),
    .B1(_0462_),
    .B2(_0566_),
    .C1(_0589_),
    .X(_0590_));
 sky130_fd_sc_hd__o221ai_2 _1152_ (.A1(_0486_),
    .A2(_0561_),
    .B1(_0273_),
    .B2(_0563_),
    .C1(_0590_),
    .Y(_0069_));
 sky130_fd_sc_hd__inv_2 _1153_ (.A(\byte_controller.dout[6] ),
    .Y(_0591_));
 sky130_fd_sc_hd__inv_2 _1154_ (.A(\byte_controller.bit_controller.busy ),
    .Y(_0592_));
 sky130_fd_sc_hd__o22a_1 _1155_ (.A1(_0591_),
    .A2(_0478_),
    .B1(_0592_),
    .B2(_0282_),
    .X(_0593_));
 sky130_fd_sc_hd__o221a_1 _1156_ (.A1(_0106_),
    .A2(_0499_),
    .B1(_0460_),
    .B2(_0455_),
    .C1(_0593_),
    .X(_0594_));
 sky130_fd_sc_hd__o221ai_4 _1157_ (.A1(_0485_),
    .A2(_0561_),
    .B1(_0271_),
    .B2(_0563_),
    .C1(_0594_),
    .Y(_0070_));
 sky130_fd_sc_hd__inv_2 _1158_ (.A(rxack),
    .Y(_0595_));
 sky130_fd_sc_hd__inv_2 _1159_ (.A(\byte_controller.dout[7] ),
    .Y(_0596_));
 sky130_fd_sc_hd__o22a_1 _1160_ (.A1(_0596_),
    .A2(_0478_),
    .B1(_0109_),
    .B2(_0499_),
    .X(_0597_));
 sky130_fd_sc_hd__o221a_1 _1161_ (.A1(_0595_),
    .A2(_0282_),
    .B1(_0257_),
    .B2(_0562_),
    .C1(_0597_),
    .X(_0598_));
 sky130_fd_sc_hd__o221ai_1 _1162_ (.A1(_0481_),
    .A2(_0560_),
    .B1(_0258_),
    .B2(_0566_),
    .C1(_0598_),
    .Y(_0071_));
 sky130_fd_sc_hd__and3b_1 _1163_ (.A_N(net23),
    .B(net17),
    .C(net7),
    .X(_0004_));
 sky130_fd_sc_hd__inv_2 _1164_ (.A(net20),
    .Y(_0599_));
 sky130_fd_sc_hd__o21a_1 _1165_ (.A1(_0599_),
    .A2(\byte_controller.bit_controller.dscl_oen ),
    .B1(_0292_),
    .X(_0600_));
 sky130_fd_sc_hd__nor2_1 _1166_ (.A(\byte_controller.bit_controller.sSCL ),
    .B(_0600_),
    .Y(_0062_));
 sky130_fd_sc_hd__or2_1 _1167_ (.A(_0326_),
    .B(\byte_controller.bit_controller.sSCL ),
    .X(_0044_));
 sky130_fd_sc_hd__or2_1 _1168_ (.A(\byte_controller.bit_controller.fSDA[2] ),
    .B(\byte_controller.bit_controller.fSDA[1] ),
    .X(_0601_));
 sky130_fd_sc_hd__a221o_1 _1169_ (.A1(\byte_controller.bit_controller.fSDA[2] ),
    .A2(\byte_controller.bit_controller.fSDA[1] ),
    .B1(\byte_controller.bit_controller.fSDA[0] ),
    .B2(_0601_),
    .C1(_0327_),
    .X(_0061_));
 sky130_fd_sc_hd__or2_1 _1170_ (.A(\byte_controller.bit_controller.fSCL[2] ),
    .B(\byte_controller.bit_controller.fSCL[1] ),
    .X(_0602_));
 sky130_fd_sc_hd__a221o_1 _1171_ (.A1(\byte_controller.bit_controller.fSCL[2] ),
    .A2(\byte_controller.bit_controller.fSCL[1] ),
    .B1(\byte_controller.bit_controller.fSCL[0] ),
    .B2(_0602_),
    .C1(_0241_),
    .X(_0060_));
 sky130_fd_sc_hd__and3_1 _1172_ (.A(_0252_),
    .B(_0260_),
    .C(\byte_controller.ack_in ),
    .X(_0603_));
 sky130_fd_sc_hd__a31o_1 _1173_ (.A1(_0331_),
    .A2(net11),
    .A3(_0261_),
    .B1(_0603_),
    .X(_0237_));
 sky130_fd_sc_hd__conb_1 _1174_ (.LO(net19));
 sky130_fd_sc_hd__conb_1 _1175_ (.LO(net21));
 sky130_fd_sc_hd__mux2_1 _1176_ (.A0(_0110_),
    .A1(_0109_),
    .S(_0074_),
    .X(_0111_));
 sky130_fd_sc_hd__mux2_1 _1177_ (.A0(\byte_controller.bit_controller.dout ),
    .A1(\byte_controller.din[0] ),
    .S(\byte_controller.ld ),
    .X(_0128_));
 sky130_fd_sc_hd__mux2_1 _1178_ (.A0(\byte_controller.dout[0] ),
    .A1(\byte_controller.din[1] ),
    .S(\byte_controller.ld ),
    .X(_0129_));
 sky130_fd_sc_hd__mux2_1 _1179_ (.A0(\byte_controller.dout[1] ),
    .A1(\byte_controller.din[2] ),
    .S(\byte_controller.ld ),
    .X(_0130_));
 sky130_fd_sc_hd__mux2_1 _1180_ (.A0(\byte_controller.dout[2] ),
    .A1(\byte_controller.din[3] ),
    .S(\byte_controller.ld ),
    .X(_0131_));
 sky130_fd_sc_hd__mux2_1 _1181_ (.A0(\byte_controller.dout[3] ),
    .A1(\byte_controller.din[4] ),
    .S(\byte_controller.ld ),
    .X(_0132_));
 sky130_fd_sc_hd__mux2_1 _1182_ (.A0(\byte_controller.dout[4] ),
    .A1(\byte_controller.din[5] ),
    .S(\byte_controller.ld ),
    .X(_0133_));
 sky130_fd_sc_hd__mux2_1 _1183_ (.A0(\byte_controller.dout[5] ),
    .A1(\byte_controller.din[6] ),
    .S(\byte_controller.ld ),
    .X(_0134_));
 sky130_fd_sc_hd__mux2_1 _1184_ (.A0(\byte_controller.dout[6] ),
    .A1(\byte_controller.din[7] ),
    .S(\byte_controller.ld ),
    .X(_0135_));
 sky130_fd_sc_hd__mux2_1 _1185_ (.A0(_0107_),
    .A1(_0106_),
    .S(_0074_),
    .X(_0108_));
 sky130_fd_sc_hd__mux2_1 _1186_ (.A0(\byte_controller.dout[7] ),
    .A1(\byte_controller.ack_in ),
    .S(\byte_controller.bit_controller.cmd_ack ),
    .X(_0137_));
 sky130_fd_sc_hd__mux2_1 _1187_ (.A0(_0138_),
    .A1(\byte_controller.dout[7] ),
    .S(_0136_),
    .X(_0139_));
 sky130_fd_sc_hd__mux2_1 _1188_ (.A0(_0077_),
    .A1(_0073_),
    .S(\byte_controller.bit_controller.c_state[16] ),
    .X(_0072_));
 sky130_fd_sc_hd__mux2_1 _1189_ (.A0(_0141_),
    .A1(\byte_controller.bit_controller.clk_cnt[0] ),
    .S(_0140_),
    .X(_0604_));
 sky130_fd_sc_hd__mux2_1 _1190_ (.A0(_0065_),
    .A1(\byte_controller.bit_controller.clk_cnt[1] ),
    .S(_0140_),
    .X(_0605_));
 sky130_fd_sc_hd__mux2_1 _1191_ (.A0(_0066_),
    .A1(\byte_controller.bit_controller.clk_cnt[2] ),
    .S(_0140_),
    .X(_0606_));
 sky130_fd_sc_hd__mux2_1 _1192_ (.A0(_0067_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0140_),
    .X(_0607_));
 sky130_fd_sc_hd__mux2_1 _1193_ (.A0(_0068_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0140_),
    .X(_0608_));
 sky130_fd_sc_hd__mux2_1 _1194_ (.A0(_0069_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0140_),
    .X(_0609_));
 sky130_fd_sc_hd__mux2_1 _1195_ (.A0(_0070_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0140_),
    .X(_0610_));
 sky130_fd_sc_hd__mux2_1 _1196_ (.A0(_0071_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0140_),
    .X(_0611_));
 sky130_fd_sc_hd__mux2_1 _1197_ (.A0(_0104_),
    .A1(_0103_),
    .S(_0074_),
    .X(_0105_));
 sky130_fd_sc_hd__mux2_1 _1198_ (.A0(_0101_),
    .A1(_0100_),
    .S(_0074_),
    .X(_0102_));
 sky130_fd_sc_hd__mux2_1 _1199_ (.A0(_0098_),
    .A1(_0097_),
    .S(_0074_),
    .X(_0099_));
 sky130_fd_sc_hd__mux2_1 _1200_ (.A0(_0084_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0074_),
    .X(_0085_));
 sky130_fd_sc_hd__mux2_1 _1201_ (.A0(_0082_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0074_),
    .X(_0083_));
 sky130_fd_sc_hd__mux2_1 _1202_ (.A0(_0086_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0074_),
    .X(_0087_));
 sky130_fd_sc_hd__mux2_1 _1203_ (.A0(_0090_),
    .A1(\byte_controller.bit_controller.clk_cnt[8] ),
    .S(_0074_),
    .X(_0091_));
 sky130_fd_sc_hd__mux2_1 _1204_ (.A0(_0093_),
    .A1(_0092_),
    .S(_0074_),
    .X(_0094_));
 sky130_fd_sc_hd__mux2_1 _1205_ (.A0(_0088_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0074_),
    .X(_0089_));
 sky130_fd_sc_hd__mux2_1 _1206_ (.A0(_0095_),
    .A1(\byte_controller.bit_controller.clk_cnt[10] ),
    .S(_0074_),
    .X(_0096_));
 sky130_fd_sc_hd__mux2_1 _1207_ (.A0(_0113_),
    .A1(\byte_controller.bit_controller.clk_cnt[1] ),
    .S(_0016_),
    .X(_0035_));
 sky130_fd_sc_hd__mux2_1 _1208_ (.A0(_0121_),
    .A1(\byte_controller.bit_controller.clk_cnt[9] ),
    .S(_0016_),
    .X(_0043_));
 sky130_fd_sc_hd__mux2_1 _1209_ (.A0(_0124_),
    .A1(\byte_controller.bit_controller.clk_cnt[12] ),
    .S(_0016_),
    .X(_0031_));
 sky130_fd_sc_hd__mux2_1 _1210_ (.A0(_0118_),
    .A1(\byte_controller.bit_controller.clk_cnt[6] ),
    .S(_0016_),
    .X(_0040_));
 sky130_fd_sc_hd__mux2_1 _1211_ (.A0(_0114_),
    .A1(\byte_controller.bit_controller.clk_cnt[2] ),
    .S(_0016_),
    .X(_0036_));
 sky130_fd_sc_hd__mux2_1 _1212_ (.A0(_0125_),
    .A1(\byte_controller.bit_controller.clk_cnt[13] ),
    .S(_0016_),
    .X(_0032_));
 sky130_fd_sc_hd__mux2_1 _1213_ (.A0(_0115_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0016_),
    .X(_0037_));
 sky130_fd_sc_hd__mux2_1 _1214_ (.A0(_0126_),
    .A1(\byte_controller.bit_controller.clk_cnt[14] ),
    .S(_0016_),
    .X(_0033_));
 sky130_fd_sc_hd__mux2_1 _1215_ (.A0(_0127_),
    .A1(\byte_controller.bit_controller.clk_cnt[15] ),
    .S(_0016_),
    .X(_0034_));
 sky130_fd_sc_hd__mux2_1 _1216_ (.A0(_0116_),
    .A1(\byte_controller.bit_controller.clk_cnt[4] ),
    .S(_0016_),
    .X(_0038_));
 sky130_fd_sc_hd__mux2_1 _1217_ (.A0(_0117_),
    .A1(\byte_controller.bit_controller.clk_cnt[5] ),
    .S(_0016_),
    .X(_0039_));
 sky130_fd_sc_hd__mux2_1 _1218_ (.A0(_0122_),
    .A1(\byte_controller.bit_controller.clk_cnt[10] ),
    .S(_0016_),
    .X(_0029_));
 sky130_fd_sc_hd__mux2_1 _1219_ (.A0(_0123_),
    .A1(\byte_controller.bit_controller.clk_cnt[11] ),
    .S(_0016_),
    .X(_0030_));
 sky130_fd_sc_hd__mux2_1 _1220_ (.A0(_0119_),
    .A1(\byte_controller.bit_controller.clk_cnt[7] ),
    .S(_0016_),
    .X(_0041_));
 sky130_fd_sc_hd__mux2_1 _1221_ (.A0(_0120_),
    .A1(\byte_controller.bit_controller.clk_cnt[8] ),
    .S(_0016_),
    .X(_0042_));
 sky130_fd_sc_hd__mux2_1 _1222_ (.A0(_0112_),
    .A1(\byte_controller.bit_controller.clk_cnt[0] ),
    .S(_0016_),
    .X(_0028_));
 sky130_fd_sc_hd__mux2_1 _1223_ (.A0(_0075_),
    .A1(_0073_),
    .S(\byte_controller.bit_controller.c_state[16] ),
    .X(_0076_));
 sky130_fd_sc_hd__mux2_1 _1224_ (.A0(_0080_),
    .A1(\byte_controller.bit_controller.clk_cnt[3] ),
    .S(_0074_),
    .X(_0081_));
 sky130_fd_sc_hd__mux2_1 _1225_ (.A0(\byte_controller.bit_controller.filter_cnt[0] ),
    .A1(_0078_),
    .S(_0074_),
    .X(_0079_));
 sky130_fd_sc_hd__dfxtp_1 _1226_ (.D(_0604_),
    .Q(net24),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1227_ (.D(_0605_),
    .Q(net25),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1228_ (.D(_0606_),
    .Q(net26),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1229_ (.D(_0607_),
    .Q(net27),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1230_ (.D(_0608_),
    .Q(net28),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1231_ (.D(_0609_),
    .Q(net29),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1232_ (.D(_0610_),
    .Q(net30),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1233_ (.D(_0611_),
    .Q(net31),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1234_ (.D(_0004_),
    .Q(net23),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1235_ (.D(net20),
    .Q(\byte_controller.bit_controller.dscl_oen ),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfxtp_1 _1236_ (.D(_0142_),
    .Q(\byte_controller.bit_controller.dout ),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1237_ (.D(_0005_),
    .Q(net32),
    .RESET_B(net39),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1238_ (.D(_0000_),
    .Q(al),
    .RESET_B(net37),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1239_ (.D(_0002_),
    .Q(rxack),
    .RESET_B(net37),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1240_ (.D(_0003_),
    .Q(tip),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1241_ (.D(_0001_),
    .Q(irq_flag),
    .RESET_B(net37),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1242_ (.D(_0012_),
    .Q(\byte_controller.core_cmd[1] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1243_ (.D(_0013_),
    .Q(\byte_controller.core_cmd[2] ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1244_ (.D(_0014_),
    .Q(\byte_controller.core_cmd[3] ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1245_ (.D(_0015_),
    .Q(\byte_controller.core_cmd[4] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1246_ (.D(_0006_),
    .Q(\byte_controller.c_state[0] ),
    .SET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1247_ (.D(_0007_),
    .Q(\byte_controller.c_state[1] ),
    .RESET_B(net36),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1248_ (.D(_0008_),
    .Q(\byte_controller.c_state[2] ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1249_ (.D(_0009_),
    .Q(\byte_controller.c_state[3] ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1250_ (.D(_0010_),
    .Q(\byte_controller.c_state[4] ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1251_ (.D(_0011_),
    .Q(\byte_controller.c_state[5] ),
    .RESET_B(net36),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1252_ (.D(_0027_),
    .Q(\byte_controller.bit_controller.cmd_ack ),
    .RESET_B(net37),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1253_ (.D(_0021_),
    .Q(\byte_controller.bit_controller.al ),
    .RESET_B(net37),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1254_ (.D(_0022_),
    .Q(\byte_controller.bit_controller.busy ),
    .RESET_B(net40),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1255_ (.D(_0063_),
    .Q(\byte_controller.bit_controller.sta_condition ),
    .RESET_B(net40),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1256_ (.D(_0064_),
    .Q(\byte_controller.bit_controller.sto_condition ),
    .RESET_B(net40),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1257_ (.D(_0060_),
    .Q(\byte_controller.bit_controller.sSCL ),
    .SET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1258_ (.D(_0061_),
    .Q(\byte_controller.bit_controller.sSDA ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1259_ (.D(_0044_),
    .Q(\byte_controller.bit_controller.dSCL ),
    .SET_B(net37),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1260_ (.D(_0045_),
    .Q(\byte_controller.bit_controller.dSDA ),
    .SET_B(net37),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1261_ (.D(_0046_),
    .Q(\byte_controller.bit_controller.filter_cnt[0] ),
    .RESET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1262_ (.D(_0051_),
    .Q(\byte_controller.bit_controller.filter_cnt[1] ),
    .RESET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1263_ (.D(_0052_),
    .Q(\byte_controller.bit_controller.filter_cnt[2] ),
    .RESET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1264_ (.D(_0053_),
    .Q(\byte_controller.bit_controller.filter_cnt[3] ),
    .RESET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1265_ (.D(_0054_),
    .Q(\byte_controller.bit_controller.filter_cnt[4] ),
    .RESET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1266_ (.D(_0055_),
    .Q(\byte_controller.bit_controller.filter_cnt[5] ),
    .RESET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1267_ (.D(_0056_),
    .Q(\byte_controller.bit_controller.filter_cnt[6] ),
    .RESET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1268_ (.D(_0057_),
    .Q(\byte_controller.bit_controller.filter_cnt[7] ),
    .RESET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1269_ (.D(_0058_),
    .Q(\byte_controller.bit_controller.filter_cnt[8] ),
    .RESET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1270_ (.D(_0059_),
    .Q(\byte_controller.bit_controller.filter_cnt[9] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1271_ (.D(_0047_),
    .Q(\byte_controller.bit_controller.filter_cnt[10] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1272_ (.D(_0048_),
    .Q(\byte_controller.bit_controller.filter_cnt[11] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1273_ (.D(_0049_),
    .Q(\byte_controller.bit_controller.filter_cnt[12] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1274_ (.D(_0050_),
    .Q(\byte_controller.bit_controller.filter_cnt[13] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1275_ (.D(_0023_),
    .Q(\byte_controller.bit_controller.cSCL[0] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1276_ (.D(_0024_),
    .Q(\byte_controller.bit_controller.cSCL[1] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1277_ (.D(_0025_),
    .Q(\byte_controller.bit_controller.cSDA[0] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1278_ (.D(_0026_),
    .Q(\byte_controller.bit_controller.cSDA[1] ),
    .RESET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1279_ (.D(_0016_),
    .Q(\byte_controller.bit_controller.clk_en ),
    .SET_B(net40),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1280_ (.D(_0062_),
    .Q(\byte_controller.bit_controller.slave_wait ),
    .RESET_B(net40),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _1281_ (.D(_0019_),
    .Q(\byte_controller.ld ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1282_ (.D(_0020_),
    .Q(\byte_controller.shift ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1283_ (.D(_0018_),
    .Q(\byte_controller.bit_controller.din ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1284_ (.D(_0017_),
    .Q(\byte_controller.cmd_ack ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1285_ (.D(_0143_),
    .Q(\byte_controller.bit_controller.clk_cnt[8] ),
    .SET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1286_ (.D(_0144_),
    .Q(\byte_controller.bit_controller.clk_cnt[9] ),
    .SET_B(net40),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_2 _1287_ (.D(_0145_),
    .Q(\byte_controller.bit_controller.clk_cnt[10] ),
    .SET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1288_ (.D(_0146_),
    .Q(\byte_controller.bit_controller.clk_cnt[11] ),
    .SET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1289_ (.D(_0147_),
    .Q(\byte_controller.bit_controller.clk_cnt[12] ),
    .SET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1290_ (.D(_0148_),
    .Q(\byte_controller.bit_controller.clk_cnt[13] ),
    .SET_B(net38),
    .CLK(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1291_ (.D(_0149_),
    .Q(\byte_controller.bit_controller.clk_cnt[14] ),
    .SET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1292_ (.D(_0150_),
    .Q(\byte_controller.bit_controller.clk_cnt[15] ),
    .SET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1293_ (.D(_0151_),
    .Q(\byte_controller.din[0] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1294_ (.D(_0152_),
    .Q(\byte_controller.din[1] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1295_ (.D(_0153_),
    .Q(\byte_controller.din[2] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1296_ (.D(_0154_),
    .Q(\byte_controller.din[3] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1297_ (.D(_0155_),
    .Q(\byte_controller.din[4] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1298_ (.D(_0156_),
    .Q(\byte_controller.din[5] ),
    .RESET_B(net35),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1299_ (.D(_0157_),
    .Q(\byte_controller.din[6] ),
    .RESET_B(net36),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1300_ (.D(_0158_),
    .Q(\byte_controller.din[7] ),
    .RESET_B(net36),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1301_ (.D(_0159_),
    .Q(\ctr[0] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1302_ (.D(_0160_),
    .Q(\ctr[1] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1303_ (.D(_0161_),
    .Q(\ctr[2] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1304_ (.D(_0162_),
    .Q(\ctr[3] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1305_ (.D(_0163_),
    .Q(\ctr[4] ),
    .RESET_B(net35),
    .CLK(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1306_ (.D(_0164_),
    .Q(\ctr[5] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1307_ (.D(_0165_),
    .Q(\ctr[6] ),
    .RESET_B(net37),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1308_ (.D(_0166_),
    .Q(\byte_controller.bit_controller.ena ),
    .RESET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1309_ (.D(_0167_),
    .Q(\byte_controller.ack_out ),
    .RESET_B(net37),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1310_ (.D(_0168_),
    .Q(\byte_controller.dcnt[0] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1311_ (.D(_0169_),
    .Q(\byte_controller.dcnt[1] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1312_ (.D(_0170_),
    .Q(\byte_controller.dcnt[2] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1313_ (.D(_0171_),
    .Q(\byte_controller.dout[0] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1314_ (.D(_0172_),
    .Q(\byte_controller.dout[1] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1315_ (.D(_0173_),
    .Q(\byte_controller.dout[2] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1316_ (.D(_0174_),
    .Q(\byte_controller.dout[3] ),
    .RESET_B(net35),
    .CLK(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1317_ (.D(_0175_),
    .Q(\byte_controller.dout[4] ),
    .RESET_B(net35),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1318_ (.D(_0176_),
    .Q(\byte_controller.dout[5] ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1319_ (.D(_0177_),
    .Q(\byte_controller.dout[6] ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1320_ (.D(_0178_),
    .Q(\byte_controller.dout[7] ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_2 _1321_ (.D(_0179_),
    .Q(net20),
    .SET_B(net40),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1322_ (.D(_0180_),
    .Q(net22),
    .SET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1323_ (.D(_0181_),
    .Q(\byte_controller.bit_controller.c_state[0] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1324_ (.D(_0182_),
    .Q(\byte_controller.bit_controller.c_state[1] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1325_ (.D(_0183_),
    .Q(\byte_controller.bit_controller.c_state[2] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1326_ (.D(_0184_),
    .Q(\byte_controller.bit_controller.c_state[3] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1327_ (.D(_0185_),
    .Q(\byte_controller.bit_controller.c_state[4] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1328_ (.D(_0186_),
    .Q(\byte_controller.bit_controller.c_state[5] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1329_ (.D(_0187_),
    .Q(\byte_controller.bit_controller.c_state[6] ),
    .RESET_B(net33),
    .CLK(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1330_ (.D(_0188_),
    .Q(\byte_controller.bit_controller.c_state[7] ),
    .RESET_B(net33),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1331_ (.D(_0189_),
    .Q(\byte_controller.bit_controller.c_state[8] ),
    .RESET_B(net1),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1332_ (.D(_0190_),
    .Q(\byte_controller.bit_controller.c_state[9] ),
    .RESET_B(net33),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1333_ (.D(_0191_),
    .Q(\byte_controller.bit_controller.c_state[10] ),
    .RESET_B(net1),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1334_ (.D(_0192_),
    .Q(\byte_controller.bit_controller.c_state[11] ),
    .RESET_B(net1),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1335_ (.D(_0193_),
    .Q(\byte_controller.bit_controller.c_state[12] ),
    .RESET_B(net1),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1336_ (.D(_0194_),
    .Q(\byte_controller.bit_controller.c_state[13] ),
    .RESET_B(net1),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1337_ (.D(_0195_),
    .Q(\byte_controller.bit_controller.c_state[14] ),
    .RESET_B(net1),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1338_ (.D(_0196_),
    .Q(\byte_controller.bit_controller.c_state[15] ),
    .RESET_B(net1),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _1339_ (.D(_0197_),
    .Q(\byte_controller.bit_controller.c_state[16] ),
    .RESET_B(net33),
    .CLK(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1340_ (.D(_0198_),
    .Q(\byte_controller.bit_controller.sda_chk ),
    .RESET_B(net33),
    .CLK(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1341_ (.D(_0199_),
    .Q(\byte_controller.bit_controller.cmd_stop ),
    .RESET_B(net40),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1342_ (.D(_0200_),
    .Q(\byte_controller.bit_controller.fSCL[0] ),
    .SET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1343_ (.D(_0201_),
    .Q(\byte_controller.bit_controller.fSCL[1] ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1344_ (.D(_0202_),
    .Q(\byte_controller.bit_controller.fSCL[2] ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1345_ (.D(_0203_),
    .Q(\byte_controller.bit_controller.fSDA[0] ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1346_ (.D(_0204_),
    .Q(\byte_controller.bit_controller.fSDA[1] ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1347_ (.D(_0205_),
    .Q(\byte_controller.bit_controller.fSDA[2] ),
    .SET_B(net34),
    .CLK(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1348_ (.D(_0206_),
    .Q(\byte_controller.bit_controller.cnt[0] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1349_ (.D(_0207_),
    .Q(\byte_controller.bit_controller.cnt[1] ),
    .RESET_B(net39),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1350_ (.D(_0208_),
    .Q(\byte_controller.bit_controller.cnt[2] ),
    .RESET_B(net39),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1351_ (.D(_0209_),
    .Q(\byte_controller.bit_controller.cnt[3] ),
    .RESET_B(net39),
    .CLK(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1352_ (.D(_0210_),
    .Q(\byte_controller.bit_controller.cnt[4] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1353_ (.D(_0211_),
    .Q(\byte_controller.bit_controller.cnt[5] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1354_ (.D(_0212_),
    .Q(\byte_controller.bit_controller.cnt[6] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1355_ (.D(_0213_),
    .Q(\byte_controller.bit_controller.cnt[7] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1356_ (.D(_0214_),
    .Q(\byte_controller.bit_controller.cnt[8] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1357_ (.D(_0215_),
    .Q(\byte_controller.bit_controller.cnt[9] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1358_ (.D(_0216_),
    .Q(\byte_controller.bit_controller.cnt[10] ),
    .RESET_B(net39),
    .CLK(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1359_ (.D(_0217_),
    .Q(\byte_controller.bit_controller.cnt[11] ),
    .RESET_B(net39),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1360_ (.D(_0218_),
    .Q(\byte_controller.bit_controller.cnt[12] ),
    .RESET_B(net39),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1361_ (.D(_0219_),
    .Q(\byte_controller.bit_controller.cnt[13] ),
    .RESET_B(net39),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1362_ (.D(_0220_),
    .Q(\byte_controller.bit_controller.cnt[14] ),
    .RESET_B(net39),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1363_ (.D(_0221_),
    .Q(\byte_controller.bit_controller.cnt[15] ),
    .RESET_B(net39),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1364_ (.D(_0222_),
    .Q(\cr[0] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1365_ (.D(_0223_),
    .Q(\cr[1] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1366_ (.D(_0224_),
    .Q(\cr[2] ),
    .RESET_B(net34),
    .CLK(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_2 _1367_ (.D(_0225_),
    .Q(\byte_controller.write ),
    .RESET_B(net36),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1368_ (.D(_0226_),
    .Q(\byte_controller.read ),
    .RESET_B(net36),
    .CLK(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1369_ (.D(_0227_),
    .Q(\byte_controller.stop ),
    .RESET_B(net36),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_1 _1370_ (.D(_0228_),
    .Q(\byte_controller.start ),
    .RESET_B(net36),
    .CLK(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1371_ (.D(_0229_),
    .Q(\byte_controller.bit_controller.clk_cnt[0] ),
    .SET_B(net40),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1372_ (.D(_0230_),
    .Q(\byte_controller.bit_controller.clk_cnt[1] ),
    .SET_B(net40),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1373_ (.D(_0231_),
    .Q(\byte_controller.bit_controller.clk_cnt[2] ),
    .SET_B(net40),
    .CLK(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1374_ (.D(_0232_),
    .Q(\byte_controller.bit_controller.clk_cnt[3] ),
    .SET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1375_ (.D(_0233_),
    .Q(\byte_controller.bit_controller.clk_cnt[4] ),
    .SET_B(net38),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1376_ (.D(_0234_),
    .Q(\byte_controller.bit_controller.clk_cnt[5] ),
    .SET_B(net40),
    .CLK(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_1 _1377_ (.D(_0235_),
    .Q(\byte_controller.bit_controller.clk_cnt[6] ),
    .SET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfstp_2 _1378_ (.D(_0236_),
    .Q(\byte_controller.bit_controller.clk_cnt[7] ),
    .SET_B(net38),
    .CLK(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__dfrtp_4 _1379_ (.D(_0237_),
    .Q(\byte_controller.ack_in ),
    .RESET_B(net37),
    .CLK(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__decap_3 PHY_82 ();
 sky130_fd_sc_hd__decap_3 PHY_83 ();
 sky130_fd_sc_hd__decap_3 PHY_84 ();
 sky130_fd_sc_hd__decap_3 PHY_85 ();
 sky130_fd_sc_hd__decap_3 PHY_86 ();
 sky130_fd_sc_hd__decap_3 PHY_87 ();
 sky130_fd_sc_hd__decap_3 PHY_88 ();
 sky130_fd_sc_hd__decap_3 PHY_89 ();
 sky130_fd_sc_hd__decap_3 PHY_90 ();
 sky130_fd_sc_hd__decap_3 PHY_91 ();
 sky130_fd_sc_hd__decap_3 PHY_92 ();
 sky130_fd_sc_hd__decap_3 PHY_93 ();
 sky130_fd_sc_hd__decap_3 PHY_94 ();
 sky130_fd_sc_hd__decap_3 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_320 ();
 sky130_fd_sc_hd__clkbuf_4 input1 (.A(arst_i),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(scl_pad_i),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(sda_pad_i),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_2 input4 (.A(wb_adr_i[0]),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_2 input5 (.A(wb_adr_i[1]),
    .X(net5));
 sky130_fd_sc_hd__clkbuf_2 input6 (.A(wb_adr_i[2]),
    .X(net6));
 sky130_fd_sc_hd__clkbuf_2 input7 (.A(wb_cyc_i),
    .X(net7));
 sky130_fd_sc_hd__buf_2 input8 (.A(wb_dat_i[0]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_2 input9 (.A(wb_dat_i[1]),
    .X(net9));
 sky130_fd_sc_hd__clkbuf_2 input10 (.A(wb_dat_i[2]),
    .X(net10));
 sky130_fd_sc_hd__buf_2 input11 (.A(wb_dat_i[3]),
    .X(net11));
 sky130_fd_sc_hd__buf_2 input12 (.A(wb_dat_i[4]),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_2 input13 (.A(wb_dat_i[5]),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_2 input14 (.A(wb_dat_i[6]),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_2 input15 (.A(wb_dat_i[7]),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_2 input16 (.A(wb_rst_i),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_1 input17 (.A(wb_stb_i),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_1 input18 (.A(wb_we_i),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_2 output19 (.A(net19),
    .X(scl_pad_o));
 sky130_fd_sc_hd__clkbuf_2 output20 (.A(net20),
    .X(scl_padoen_o));
 sky130_fd_sc_hd__clkbuf_2 output21 (.A(net21),
    .X(sda_pad_o));
 sky130_fd_sc_hd__clkbuf_2 output22 (.A(net22),
    .X(sda_padoen_o));
 sky130_fd_sc_hd__clkbuf_2 output23 (.A(net23),
    .X(wb_ack_o));
 sky130_fd_sc_hd__clkbuf_2 output24 (.A(net24),
    .X(wb_dat_o[0]));
 sky130_fd_sc_hd__clkbuf_2 output25 (.A(net25),
    .X(wb_dat_o[1]));
 sky130_fd_sc_hd__clkbuf_2 output26 (.A(net26),
    .X(wb_dat_o[2]));
 sky130_fd_sc_hd__clkbuf_2 output27 (.A(net27),
    .X(wb_dat_o[3]));
 sky130_fd_sc_hd__clkbuf_2 output28 (.A(net28),
    .X(wb_dat_o[4]));
 sky130_fd_sc_hd__clkbuf_2 output29 (.A(net29),
    .X(wb_dat_o[5]));
 sky130_fd_sc_hd__clkbuf_2 output30 (.A(net30),
    .X(wb_dat_o[6]));
 sky130_fd_sc_hd__clkbuf_2 output31 (.A(net31),
    .X(wb_dat_o[7]));
 sky130_fd_sc_hd__clkbuf_2 output32 (.A(net32),
    .X(wb_inta_o));
 sky130_fd_sc_hd__buf_8 repeater33 (.A(net37),
    .X(net33));
 sky130_fd_sc_hd__buf_8 repeater34 (.A(net35),
    .X(net34));
 sky130_fd_sc_hd__buf_8 repeater35 (.A(net36),
    .X(net35));
 sky130_fd_sc_hd__clkbuf_8 repeater36 (.A(net37),
    .X(net36));
 sky130_fd_sc_hd__buf_4 repeater37 (.A(net40),
    .X(net37));
 sky130_fd_sc_hd__buf_6 repeater38 (.A(net40),
    .X(net38));
 sky130_fd_sc_hd__buf_6 repeater39 (.A(net40),
    .X(net39));
 sky130_fd_sc_hd__buf_8 repeater40 (.A(net1),
    .X(net40));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_wb_clk_i (.A(wb_clk_i),
    .X(clknet_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_0_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_0_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_1_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_1_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_2_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_2_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_3_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_3_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_4_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_4_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_5_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_5_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_6_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_6_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_3_7_0_wb_clk_i (.A(clknet_0_wb_clk_i),
    .X(clknet_3_7_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_0_0_wb_clk_i (.A(clknet_3_0_0_wb_clk_i),
    .X(clknet_4_0_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_1_0_wb_clk_i (.A(clknet_3_0_0_wb_clk_i),
    .X(clknet_4_1_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_2_0_wb_clk_i (.A(clknet_3_1_0_wb_clk_i),
    .X(clknet_4_2_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_3_0_wb_clk_i (.A(clknet_3_1_0_wb_clk_i),
    .X(clknet_4_3_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_4_0_wb_clk_i (.A(clknet_3_2_0_wb_clk_i),
    .X(clknet_4_4_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_5_0_wb_clk_i (.A(clknet_3_2_0_wb_clk_i),
    .X(clknet_4_5_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_6_0_wb_clk_i (.A(clknet_3_3_0_wb_clk_i),
    .X(clknet_4_6_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_7_0_wb_clk_i (.A(clknet_3_3_0_wb_clk_i),
    .X(clknet_4_7_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_8_0_wb_clk_i (.A(clknet_3_4_0_wb_clk_i),
    .X(clknet_4_8_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_9_0_wb_clk_i (.A(clknet_3_4_0_wb_clk_i),
    .X(clknet_4_9_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_10_0_wb_clk_i (.A(clknet_3_5_0_wb_clk_i),
    .X(clknet_4_10_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_11_0_wb_clk_i (.A(clknet_3_5_0_wb_clk_i),
    .X(clknet_4_11_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_12_0_wb_clk_i (.A(clknet_3_6_0_wb_clk_i),
    .X(clknet_4_12_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_13_0_wb_clk_i (.A(clknet_3_6_0_wb_clk_i),
    .X(clknet_4_13_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_14_0_wb_clk_i (.A(clknet_3_7_0_wb_clk_i),
    .X(clknet_4_14_0_wb_clk_i));
 sky130_fd_sc_hd__clkbuf_1 clkbuf_4_15_0_wb_clk_i (.A(clknet_3_7_0_wb_clk_i),
    .X(clknet_4_15_0_wb_clk_i));
 sky130_fd_sc_hd__diode_2 ANTENNA_0 (.DIODE(_0535_));
 sky130_fd_sc_hd__decap_12 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_46 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_59 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_66 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_88 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_146 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_175 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_195 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_204 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_212 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_227 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_231 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_233 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_237 ();
 sky130_fd_sc_hd__decap_12 FILLER_0_242 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_254 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_260 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_277 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_149 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_156 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_167 ();
 sky130_fd_sc_hd__decap_6 FILLER_1_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_198 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_206 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_224 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_229 ();
 sky130_fd_sc_hd__decap_12 FILLER_1_241 ();
 sky130_fd_sc_hd__decap_8 FILLER_1_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_277 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_67 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_80 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_171 ();
 sky130_fd_sc_hd__decap_8 FILLER_2_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_225 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_232 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_239 ();
 sky130_fd_sc_hd__decap_6 FILLER_2_251 ();
 sky130_fd_sc_hd__decap_12 FILLER_2_258 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_277 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_88 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_143 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_152 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_169 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_172 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_202 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_206 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_238 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_3_252 ();
 sky130_fd_sc_hd__decap_12 FILLER_3_261 ();
 sky130_fd_sc_hd__decap_8 FILLER_3_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_23 ();
 sky130_fd_sc_hd__decap_8 FILLER_4_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_43 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_87 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_142 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_174 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_181 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_205 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_237 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_241 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_258 ();
 sky130_fd_sc_hd__decap_12 FILLER_4_267 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_279 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_5_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_39 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_154 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_5_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_179 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_206 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_227 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_229 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_235 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_5_268 ();
 sky130_fd_sc_hd__decap_6 FILLER_5_275 ();
 sky130_fd_sc_hd__decap_12 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_59 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_63 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_109 ();
 sky130_fd_sc_hd__decap_6 FILLER_6_121 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_127 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_157 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_166 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_173 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_195 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_210 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_223 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_231 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_239 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_249 ();
 sky130_fd_sc_hd__decap_4 FILLER_6_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_6_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_279 ();
 sky130_fd_sc_hd__decap_12 FILLER_7_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_37 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_70 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_89 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_128 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_7_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_198 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_210 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_227 ();
 sky130_fd_sc_hd__decap_8 FILLER_7_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_272 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_277 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_11 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_8_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_97 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_120 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_171 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_8_212 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_245 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_269 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_276 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_9_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_140 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_209 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_9_277 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_28 ();
 sky130_fd_sc_hd__decap_6 FILLER_10_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_99 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_130 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_154 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_171 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_179 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_217 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_10_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_10_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_279 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_31 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_86 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_157 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_172 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_179 ();
 sky130_fd_sc_hd__decap_6 FILLER_11_192 ();
 sky130_fd_sc_hd__decap_8 FILLER_11_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_11_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_52 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_12_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_117 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_124 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_131 ();
 sky130_fd_sc_hd__fill_1 FILLER_12_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_187 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_12_212 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_231 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_268 ();
 sky130_fd_sc_hd__decap_4 FILLER_12_277 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_45 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_72 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_83 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_92 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_140 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_147 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_179 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_205 ();
 sky130_fd_sc_hd__decap_8 FILLER_13_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_13_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_13_237 ();
 sky130_fd_sc_hd__fill_1 FILLER_13_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_13_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_14_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_51 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_14_134 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_168 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_188 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_14_212 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_14_267 ();
 sky130_fd_sc_hd__decap_6 FILLER_14_275 ();
 sky130_fd_sc_hd__decap_3 FILLER_15_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_36 ();
 sky130_fd_sc_hd__fill_2 FILLER_15_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_77 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_124 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_157 ();
 sky130_fd_sc_hd__decap_6 FILLER_15_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_196 ();
 sky130_fd_sc_hd__decap_8 FILLER_15_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_240 ();
 sky130_fd_sc_hd__fill_1 FILLER_15_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_15_277 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_30 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_41 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_71 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_103 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_127 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_144 ();
 sky130_fd_sc_hd__decap_6 FILLER_16_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_16_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_180 ();
 sky130_fd_sc_hd__decap_8 FILLER_16_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_16_198 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_16_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_38 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_74 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_98 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_106 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_167 ();
 sky130_fd_sc_hd__decap_6 FILLER_17_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_17_189 ();
 sky130_fd_sc_hd__decap_8 FILLER_17_198 ();
 sky130_fd_sc_hd__fill_2 FILLER_17_206 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_240 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_17_277 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_23 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_65 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_114 ();
 sky130_fd_sc_hd__fill_2 FILLER_18_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_170 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_174 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_18_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_226 ();
 sky130_fd_sc_hd__decap_8 FILLER_18_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_18_267 ();
 sky130_fd_sc_hd__decap_4 FILLER_18_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_33 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_43 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_81 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_211 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_19_236 ();
 sky130_fd_sc_hd__decap_6 FILLER_19_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_249 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_257 ();
 sky130_fd_sc_hd__fill_2 FILLER_19_265 ();
 sky130_fd_sc_hd__decap_8 FILLER_19_272 ();
 sky130_fd_sc_hd__fill_1 FILLER_19_280 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_47 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_56 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_67 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_20_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_125 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_133 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_141 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_20_155 ();
 sky130_fd_sc_hd__fill_2 FILLER_20_163 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_181 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_226 ();
 sky130_fd_sc_hd__decap_6 FILLER_20_233 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_20_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_21_55 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_21_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_94 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_101 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_21_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_133 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_142 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_197 ();
 sky130_fd_sc_hd__decap_6 FILLER_21_222 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_21_277 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_52 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_72 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_80 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_116 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_123 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_150 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_156 ();
 sky130_fd_sc_hd__fill_1 FILLER_22_162 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_184 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_196 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_226 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_239 ();
 sky130_fd_sc_hd__decap_6 FILLER_22_251 ();
 sky130_fd_sc_hd__decap_4 FILLER_22_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_22_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_22_279 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_24 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_40 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_51 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_67 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_75 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_82 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_123 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_152 ();
 sky130_fd_sc_hd__fill_2 FILLER_23_160 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_23_184 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_213 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_23_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_23_254 ();
 sky130_fd_sc_hd__decap_6 FILLER_23_275 ();
 sky130_fd_sc_hd__decap_12 FILLER_24_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_45 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_69 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_85 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_100 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_129 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_168 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_181 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_198 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_208 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_215 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_241 ();
 sky130_fd_sc_hd__decap_6 FILLER_24_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_24_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_24_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_24_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_24_279 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_28 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_48 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_56 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_109 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_151 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_158 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_176 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_185 ();
 sky130_fd_sc_hd__fill_1 FILLER_25_191 ();
 sky130_fd_sc_hd__decap_6 FILLER_25_213 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_242 ();
 sky130_fd_sc_hd__fill_2 FILLER_25_250 ();
 sky130_fd_sc_hd__decap_4 FILLER_25_261 ();
 sky130_fd_sc_hd__decap_8 FILLER_25_273 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_60 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_113 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_130 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_168 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_172 ();
 sky130_fd_sc_hd__decap_6 FILLER_26_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_213 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_221 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_243 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_26_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_26_262 ();
 sky130_fd_sc_hd__decap_8 FILLER_26_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_26_279 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_41 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_98 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_107 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_113 ();
 sky130_fd_sc_hd__decap_8 FILLER_27_115 ();
 sky130_fd_sc_hd__fill_2 FILLER_27_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_132 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_136 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_145 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_154 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_167 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_180 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_188 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_215 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_222 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_241 ();
 sky130_fd_sc_hd__decap_4 FILLER_27_250 ();
 sky130_fd_sc_hd__decap_6 FILLER_27_274 ();
 sky130_fd_sc_hd__fill_1 FILLER_27_280 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_28 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_71 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_87 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_111 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_124 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_137 ();
 sky130_fd_sc_hd__decap_6 FILLER_28_144 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_185 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_213 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_217 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_239 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_247 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_28_258 ();
 sky130_fd_sc_hd__fill_1 FILLER_28_262 ();
 sky130_fd_sc_hd__decap_8 FILLER_28_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_28_279 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_7 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_14 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_31 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_38 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_69 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_29_126 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_172 ();
 sky130_fd_sc_hd__fill_2 FILLER_29_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_203 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_211 ();
 sky130_fd_sc_hd__fill_1 FILLER_29_215 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_29_249 ();
 sky130_fd_sc_hd__decap_8 FILLER_29_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_30_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_63 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_96 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_100 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_132 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_139 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_150 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_168 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_178 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_182 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_191 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_30_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_218 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_230 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_238 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_30_252 ();
 sky130_fd_sc_hd__fill_1 FILLER_30_256 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_258 ();
 sky130_fd_sc_hd__fill_2 FILLER_30_266 ();
 sky130_fd_sc_hd__decap_8 FILLER_30_273 ();
 sky130_fd_sc_hd__decap_3 FILLER_31_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_71 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_98 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_135 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_148 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_161 ();
 sky130_fd_sc_hd__fill_2 FILLER_31_169 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_187 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_191 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_213 ();
 sky130_fd_sc_hd__decap_8 FILLER_31_220 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_236 ();
 sky130_fd_sc_hd__fill_1 FILLER_31_240 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_244 ();
 sky130_fd_sc_hd__decap_6 FILLER_31_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_262 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_269 ();
 sky130_fd_sc_hd__decap_4 FILLER_31_277 ();
 sky130_fd_sc_hd__fill_2 FILLER_32_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_109 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_122 ();
 sky130_fd_sc_hd__decap_8 FILLER_32_135 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_159 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_163 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_187 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_213 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_219 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_241 ();
 sky130_fd_sc_hd__decap_6 FILLER_32_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_32_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_268 ();
 sky130_fd_sc_hd__decap_4 FILLER_32_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_33_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_33_26 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_32 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_62 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_90 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_141 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_149 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_153 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_170 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_33_180 ();
 sky130_fd_sc_hd__decap_6 FILLER_33_202 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_211 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_224 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_236 ();
 sky130_fd_sc_hd__decap_4 FILLER_33_249 ();
 sky130_fd_sc_hd__decap_8 FILLER_33_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_20 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_28 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_38 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_59 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_72 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_123 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_136 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_142 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_144 ();
 sky130_fd_sc_hd__fill_2 FILLER_34_152 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_185 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_192 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_211 ();
 sky130_fd_sc_hd__decap_8 FILLER_34_235 ();
 sky130_fd_sc_hd__fill_1 FILLER_34_243 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_34_268 ();
 sky130_fd_sc_hd__decap_6 FILLER_34_275 ();
 sky130_fd_sc_hd__decap_3 FILLER_35_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_16 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_23 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_36 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_44 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_58 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_71 ();
 sky130_fd_sc_hd__fill_2 FILLER_35_79 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_92 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_100 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_104 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_115 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_128 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_136 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_149 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_179 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_186 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_193 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_200 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_213 ();
 sky130_fd_sc_hd__decap_6 FILLER_35_221 ();
 sky130_fd_sc_hd__fill_1 FILLER_35_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_35_242 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_35_277 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_3 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_11 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_45 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_54 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_80 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_91 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_96 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_105 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_129 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_166 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_172 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_176 ();
 sky130_fd_sc_hd__fill_1 FILLER_36_184 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_201 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_225 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_238 ();
 sky130_fd_sc_hd__decap_4 FILLER_36_253 ();
 sky130_fd_sc_hd__decap_6 FILLER_36_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_36_273 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_47 ();
 sky130_fd_sc_hd__fill_2 FILLER_37_55 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_84 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_108 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_125 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_133 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_155 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_165 ();
 sky130_fd_sc_hd__decap_6 FILLER_37_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_178 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_183 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_195 ();
 sky130_fd_sc_hd__decap_8 FILLER_37_219 ();
 sky130_fd_sc_hd__fill_1 FILLER_37_227 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_253 ();
 sky130_fd_sc_hd__decap_4 FILLER_37_277 ();
 sky130_fd_sc_hd__decap_3 FILLER_38_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_9 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_49 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_56 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_68 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_93 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_102 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_114 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_126 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_137 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_196 ();
 sky130_fd_sc_hd__decap_6 FILLER_38_201 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_207 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_214 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_227 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_248 ();
 sky130_fd_sc_hd__fill_1 FILLER_38_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_38_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_38_271 ();
 sky130_fd_sc_hd__fill_2 FILLER_38_279 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_26 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_65 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_89 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_101 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_105 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_125 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_129 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_138 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_150 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_170 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_178 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_200 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_209 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_216 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_223 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_227 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_240 ();
 sky130_fd_sc_hd__decap_8 FILLER_39_251 ();
 sky130_fd_sc_hd__fill_1 FILLER_39_259 ();
 sky130_fd_sc_hd__decap_4 FILLER_39_266 ();
 sky130_fd_sc_hd__decap_6 FILLER_39_275 ();
 sky130_fd_sc_hd__fill_2 FILLER_40_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_8 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_15 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_30 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_34 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_39 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_63 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_71 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_93 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_97 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_109 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_121 ();
 sky130_fd_sc_hd__fill_2 FILLER_40_129 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_139 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_148 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_169 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_183 ();
 sky130_fd_sc_hd__decap_8 FILLER_40_190 ();
 sky130_fd_sc_hd__fill_2 FILLER_40_198 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_212 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_221 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_227 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_231 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_240 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_250 ();
 sky130_fd_sc_hd__fill_1 FILLER_40_256 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_258 ();
 sky130_fd_sc_hd__decap_6 FILLER_40_267 ();
 sky130_fd_sc_hd__decap_4 FILLER_40_277 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_41 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_53 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_58 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_94 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_106 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_115 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_127 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_143 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_152 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_160 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_164 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_180 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_192 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_41_206 ();
 sky130_fd_sc_hd__decap_8 FILLER_41_218 ();
 sky130_fd_sc_hd__fill_2 FILLER_41_226 ();
 sky130_fd_sc_hd__decap_12 FILLER_41_229 ();
 sky130_fd_sc_hd__decap_6 FILLER_41_241 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_247 ();
 sky130_fd_sc_hd__decap_12 FILLER_41_268 ();
 sky130_fd_sc_hd__fill_1 FILLER_41_280 ();
 sky130_fd_sc_hd__decap_12 FILLER_42_3 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_21 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_25 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_82 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_87 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_95 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_123 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_142 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_151 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_155 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_159 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_166 ();
 sky130_fd_sc_hd__fill_2 FILLER_42_174 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_181 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_193 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_199 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_201 ();
 sky130_fd_sc_hd__decap_6 FILLER_42_208 ();
 sky130_fd_sc_hd__fill_1 FILLER_42_214 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_236 ();
 sky130_fd_sc_hd__fill_2 FILLER_42_244 ();
 sky130_fd_sc_hd__decap_4 FILLER_42_253 ();
 sky130_fd_sc_hd__decap_12 FILLER_42_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_42_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_42_278 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_43_11 ();
 sky130_fd_sc_hd__decap_8 FILLER_43_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_31 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_53 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_58 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_68 ();
 sky130_fd_sc_hd__decap_8 FILLER_43_92 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_110 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_115 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_121 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_134 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_158 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_165 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_172 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_197 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_210 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_222 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_229 ();
 sky130_fd_sc_hd__decap_4 FILLER_43_238 ();
 sky130_fd_sc_hd__decap_12 FILLER_43_262 ();
 sky130_fd_sc_hd__decap_6 FILLER_43_274 ();
 sky130_fd_sc_hd__fill_1 FILLER_43_280 ();
 sky130_fd_sc_hd__decap_12 FILLER_44_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_44_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_44_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_30 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_37 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_61 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_74 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_78 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_82 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_113 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_137 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_168 ();
 sky130_fd_sc_hd__fill_1 FILLER_44_172 ();
 sky130_fd_sc_hd__decap_6 FILLER_44_194 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_201 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_208 ();
 sky130_fd_sc_hd__decap_4 FILLER_44_233 ();
 sky130_fd_sc_hd__decap_12 FILLER_44_245 ();
 sky130_fd_sc_hd__decap_12 FILLER_44_258 ();
 sky130_fd_sc_hd__decap_8 FILLER_44_270 ();
 sky130_fd_sc_hd__decap_3 FILLER_44_278 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_25 ();
 sky130_fd_sc_hd__decap_8 FILLER_45_49 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_58 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_67 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_93 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_99 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_110 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_115 ();
 sky130_fd_sc_hd__decap_6 FILLER_45_122 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_131 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_155 ();
 sky130_fd_sc_hd__decap_8 FILLER_45_162 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_170 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_172 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_176 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_198 ();
 sky130_fd_sc_hd__fill_1 FILLER_45_202 ();
 sky130_fd_sc_hd__decap_4 FILLER_45_224 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_229 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_257 ();
 sky130_fd_sc_hd__decap_12 FILLER_45_269 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_3 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_46_27 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_30 ();
 sky130_fd_sc_hd__fill_2 FILLER_46_42 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_64 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_75 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_82 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_87 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_94 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_98 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_119 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_139 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_144 ();
 sky130_fd_sc_hd__fill_1 FILLER_46_152 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_173 ();
 sky130_fd_sc_hd__decap_3 FILLER_46_181 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_192 ();
 sky130_fd_sc_hd__decap_8 FILLER_46_201 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_230 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_242 ();
 sky130_fd_sc_hd__decap_3 FILLER_46_254 ();
 sky130_fd_sc_hd__decap_12 FILLER_46_258 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_46_277 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_47_19 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_25 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_30 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_42 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_54 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_59 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_67 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_83 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_88 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_96 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_103 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_112 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_117 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_125 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_133 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_138 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_144 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_146 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_154 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_161 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_173 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_175 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_189 ();
 sky130_fd_sc_hd__decap_6 FILLER_47_197 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_204 ();
 sky130_fd_sc_hd__fill_1 FILLER_47_212 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_217 ();
 sky130_fd_sc_hd__decap_3 FILLER_47_229 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_233 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_241 ();
 sky130_fd_sc_hd__decap_12 FILLER_47_247 ();
 sky130_fd_sc_hd__fill_2 FILLER_47_259 ();
 sky130_fd_sc_hd__decap_8 FILLER_47_262 ();
 sky130_fd_sc_hd__decap_3 FILLER_47_270 ();
 sky130_fd_sc_hd__decap_4 FILLER_47_277 ();
endmodule
