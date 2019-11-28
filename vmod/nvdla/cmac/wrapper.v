//File Name: wrapper.v
//CMAC_ATOMC==64
//CMAC_ATOMK==32
//CMAC_ATOMK_HALF==32/2
//
module wrapper(
	//===================same to NV_NVDLA_cmac.v========================
	 csb2cmac_a_req_pd		//|< i
	,csb2cmac_a_req_pvld	//|< i
	,dla_clk_ovr_on_sync	//|< i
	,global_clk_ovr_on_sync	//|< i
	,nvdla_core_clk			//|< i
	,nvdla_core_rstn		//|< i
	//generate	sc2mac_dat_data	[CMAC_ATOMC-1:0]
	,sc2mac_dat_data0       //|< i 
	,sc2mac_dat_data1       //|< i 
	,sc2mac_dat_data2       //|< i 
	,sc2mac_dat_data3       //|< i 
	,sc2mac_dat_data4       //|< i 
	,sc2mac_dat_data5       //|< i 
	,sc2mac_dat_data6       //|< i 
	,sc2mac_dat_data7       //|< i 
	,sc2mac_dat_data8       //|< i 
	,sc2mac_dat_data9       //|< i 
	,sc2mac_dat_data10       //|< i 
	,sc2mac_dat_data11		 //|< i 
	,sc2mac_dat_data12       //|< i 
	,sc2mac_dat_data13       //|< i 
	,sc2mac_dat_data14       //|< i 
	,sc2mac_dat_data15       //|< i 
	,sc2mac_dat_data16       //|< i 
	,sc2mac_dat_data17       //|< i 
	,sc2mac_dat_data18       //|< i 
	,sc2mac_dat_data19       //|< i 
	,sc2mac_dat_data20       //|< i 
	,sc2mac_dat_data21       //|< i 
	,sc2mac_dat_data22       //|< i 
	,sc2mac_dat_data23       //|< i 
	,sc2mac_dat_data24       //|< i 
	,sc2mac_dat_data25       //|< i 
	,sc2mac_dat_data26       //|< i 
	,sc2mac_dat_data27       //|< i 
	,sc2mac_dat_data28       //|< i 
	,sc2mac_dat_data29       //|< i 
	,sc2mac_dat_data30       //|< i 
	,sc2mac_dat_data31       //|< i 
	,sc2mac_dat_data32       //|< i 
	,sc2mac_dat_data33       //|< i 
	,sc2mac_dat_data34       //|< i 
	,sc2mac_dat_data35       //|< i 
	,sc2mac_dat_data36       //|< i 
	,sc2mac_dat_data37       //|< i 
	,sc2mac_dat_data38       //|< i 
	,sc2mac_dat_data39       //|< i 
	,sc2mac_dat_data40       //|< i 
	,sc2mac_dat_data41       //|< i 
	,sc2mac_dat_data42       //|< i 
	,sc2mac_dat_data43       //|< i 
	,sc2mac_dat_data44       //|< i 
	,sc2mac_dat_data45       //|< i 
	,sc2mac_dat_data46       //|< i 
	,sc2mac_dat_data47       //|< i 
	,sc2mac_dat_data48       //|< i 
	,sc2mac_dat_data49       //|< i 
	,sc2mac_dat_data50       //|< i 
	,sc2mac_dat_data51       //|< i 
	,sc2mac_dat_data52       //|< i 
	,sc2mac_dat_data53       //|< i 
	,sc2mac_dat_data54       //|< i 
	,sc2mac_dat_data55       //|< i 
	,sc2mac_dat_data56       //|< i 
	,sc2mac_dat_data57       //|< i 
	,sc2mac_dat_data58       //|< i 
	,sc2mac_dat_data59       //|< i 
	,sc2mac_dat_data60       //|< i 
	,sc2mac_dat_data61       //|< i 
	,sc2mac_dat_data62       //|< i 
	,sc2mac_dat_data63       //|< i 
	//generate end
	,sc2mac_dat_mask		//|< i
	,sc2mac_dat_pd			//|< i
	,sc2mac_dat_pvld		//|< i
	//generate	sc2mac_wt_data	[CMAC_ATOMC-1:0]
	,sc2mac_wt_data0		//|< i 
	,sc2mac_wt_data1		//|< i 
	,sc2mac_wt_data2		//|< i 
	,sc2mac_wt_data3		//|< i 
	,sc2mac_wt_data4		//|< i 
	,sc2mac_wt_data5		//|< i 
	,sc2mac_wt_data6		//|< i 
	,sc2mac_wt_data7		//|< i 
	,sc2mac_wt_data8		//|< i 
	,sc2mac_wt_data9		//|< i 
	,sc2mac_wt_data10		//|< i 
	,sc2mac_wt_data11		//|< i 
	,sc2mac_wt_data12		//|< i 
	,sc2mac_wt_data13		//|< i 
	,sc2mac_wt_data14		//|< i 
	,sc2mac_wt_data15		//|< i 
	,sc2mac_wt_data16		//|< i 
	,sc2mac_wt_data17		//|< i 
	,sc2mac_wt_data18		//|< i 
	,sc2mac_wt_data19		//|< i 
	,sc2mac_wt_data20		//|< i 
	,sc2mac_wt_data21		//|< i 
	,sc2mac_wt_data22		//|< i 
	,sc2mac_wt_data23		//|< i 
	,sc2mac_wt_data24		//|< i 
	,sc2mac_wt_data25		//|< i 
	,sc2mac_wt_data26		//|< i 
	,sc2mac_wt_data27		//|< i 
	,sc2mac_wt_data28		//|< i 
	,sc2mac_wt_data29		//|< i 
	,sc2mac_wt_data30		//|< i 
	,sc2mac_wt_data31		//|< i 
	,sc2mac_wt_data32		//|< i 
	,sc2mac_wt_data33		//|< i 
	,sc2mac_wt_data34		//|< i 
	,sc2mac_wt_data35		//|< i 
	,sc2mac_wt_data36		//|< i 
	,sc2mac_wt_data37		//|< i 
	,sc2mac_wt_data38		//|< i 
	,sc2mac_wt_data39		//|< i 
	,sc2mac_wt_data40		//|< i 
	,sc2mac_wt_data41		//|< i 
	,sc2mac_wt_data42		//|< i 
	,sc2mac_wt_data43		//|< i 
	,sc2mac_wt_data44		//|< i 
	,sc2mac_wt_data45		//|< i 
	,sc2mac_wt_data46		//|< i 
	,sc2mac_wt_data47		//|< i 
	,sc2mac_wt_data48		//|< i 
	,sc2mac_wt_data49		//|< i 
	,sc2mac_wt_data50		//|< i 
	,sc2mac_wt_data51		//|< i 
	,sc2mac_wt_data52		//|< i 
	,sc2mac_wt_data53		//|< i 
	,sc2mac_wt_data54		//|< i 
	,sc2mac_wt_data55		//|< i 
	,sc2mac_wt_data56		//|< i 
	,sc2mac_wt_data57		//|< i 
	,sc2mac_wt_data58		//|< i 
	,sc2mac_wt_data59		//|< i 
	,sc2mac_wt_data60		//|< i 
	,sc2mac_wt_data61		//|< i 
	,sc2mac_wt_data62		//|< i 
	,sc2mac_wt_data63		//|< i 
	//generate	end
	,sc2mac_wt_mask			//|< i
	,sc2mac_wt_pvld			//|< i
	,sc2mac_wt_sel			//|< i
	,tmc2slcg_disable_clock_gating	//|< i
	,cmac_a2csb_resp_pd		//|> o
	,cmac_a2csb_resp_valid	//|> o
	,csb2cmac_a_req_prdy	//|> o
	//generate	mac2accu_data	[CMAC_ATOMK_HALF-1:0]
	,mac2accu_data0			//|> o 
	,mac2accu_data1			//|> o 
	,mac2accu_data2			//|> o 
	,mac2accu_data3			//|> o 
	,mac2accu_data4			//|> o 
	,mac2accu_data5			//|> o 
	,mac2accu_data6			//|> o 
	,mac2accu_data7			//|> o 
	,mac2accu_data8			//|> o 
	,mac2accu_data9			//|> o 
	,mac2accu_data10		//|> o 
	,mac2accu_data11		//|> o 
	,mac2accu_data12		//|> o 
	,mac2accu_data13		//|> o 
	,mac2accu_data14		//|> o 
	,mac2accu_data15		//|> o 
	//generate	end
	,mac2accu_mask			//|> o
	,mac2accu_mode			//|> o
	,mac2accu_pd			//|> o
	,mac2accu_pvld			//|> o
);

	//======================nvdla part============================
	input			nvdla_core_clk;
	input			nvdla_core_rstn;
	
	output			cmac_a2csb_resp_valid;
	output	[33:0]	cmac_a2csb_resp_pd;
	
	input			csb2cmac_a_req_pvld;
	output			csb2cmac_a_req_prdy;
	input	[62:0]	csb2cmac_a_req_pd;

	output			mac2accu_pvld;
	output	[15:0]	mac2accu_mask;
	output			mac2accu_mode;	
	output	[21:0]	mac2accu_data0;                //|> o 
	output	[21:0]	mac2accu_data1;                //|> o 
	output	[21:0]	mac2accu_data2;                //|> o 
	output	[21:0]	mac2accu_data3;                //|> o 
	output	[21:0]	mac2accu_data4;                //|> o 
	output	[21:0]	mac2accu_data5;                //|> o 
	output	[21:0]	mac2accu_data6;                //|> o 
	output	[21:0]	mac2accu_data7;                //|> o 
	output	[21:0]	mac2accu_data8;                //|> o 
	output	[21:0]	mac2accu_data9;                //|> o 
	output	[21:0]	mac2accu_data10;                //|> o 
	output	[21:0]	mac2accu_data11;                //|> o 
	output	[21:0]	mac2accu_data12;                //|> o 
	output	[21:0]	mac2accu_data13;                //|> o 
	output	[21:0]	mac2accu_data14;                //|> o 
	output	[21:0]	mac2accu_data15;                //|> o 
	output	[8:0]	mac2accu_pd;

	input			sc2mac_dat_pvld;
	input	[63:0]	sc2mac_dat_mask;
	input	[7:0]	sc2mac_dat_data0;       //|< i 
	input	[7:0]	sc2mac_dat_data1;       //|< i 
	input	[7:0]	sc2mac_dat_data2;       //|< i 
	input	[7:0]	sc2mac_dat_data3;       //|< i 
	input	[7:0]	sc2mac_dat_data4;       //|< i 
	input	[7:0]	sc2mac_dat_data5;       //|< i 
	input	[7:0]	sc2mac_dat_data6;       //|< i 
	input	[7:0]	sc2mac_dat_data7;       //|< i 
	input	[7:0]	sc2mac_dat_data8;       //|< i 
	input	[7:0]	sc2mac_dat_data9;       //|< i 
	input	[7:0]	sc2mac_dat_data10;       //|< i 
	input	[7:0]	sc2mac_dat_data11;       //|< i 
	input	[7:0]	sc2mac_dat_data12;       //|< i 
	input	[7:0]	sc2mac_dat_data13;       //|< i 
	input	[7:0]	sc2mac_dat_data14;       //|< i 
	input	[7:0]	sc2mac_dat_data15;       //|< i 
	input	[7:0]	sc2mac_dat_data16;       //|< i 
	input	[7:0]	sc2mac_dat_data17;       //|< i 
	input	[7:0]	sc2mac_dat_data18;       //|< i 
	input	[7:0]	sc2mac_dat_data19;       //|< i 
	input	[7:0]	sc2mac_dat_data20;       //|< i 
	input	[7:0]	sc2mac_dat_data21;       //|< i 
	input	[7:0]	sc2mac_dat_data22;       //|< i 
	input	[7:0]	sc2mac_dat_data23;       //|< i 
	input	[7:0]	sc2mac_dat_data24;       //|< i 
	input	[7:0]	sc2mac_dat_data25;       //|< i 
	input	[7:0]	sc2mac_dat_data26;       //|< i 
	input	[7:0]	sc2mac_dat_data27;       //|< i 
	input	[7:0]	sc2mac_dat_data28;       //|< i 
	input	[7:0]	sc2mac_dat_data29;       //|< i 
	input	[7:0]	sc2mac_dat_data30;       //|< i 
	input	[7:0]	sc2mac_dat_data31;       //|< i 
	input	[7:0]	sc2mac_dat_data32;       //|< i 
	input	[7:0]	sc2mac_dat_data33;       //|< i 
	input	[7:0]	sc2mac_dat_data34;       //|< i 
	input	[7:0]	sc2mac_dat_data35;       //|< i 
	input	[7:0]	sc2mac_dat_data36;       //|< i 
	input	[7:0]	sc2mac_dat_data37;       //|< i 
	input	[7:0]	sc2mac_dat_data38;       //|< i 
	input	[7:0]	sc2mac_dat_data39;       //|< i 
	input	[7:0]	sc2mac_dat_data40;       //|< i 
	input	[7:0]	sc2mac_dat_data41;       //|< i 
	input	[7:0]	sc2mac_dat_data42;       //|< i 
	input	[7:0]	sc2mac_dat_data43;       //|< i 
	input	[7:0]	sc2mac_dat_data44;       //|< i 
	input	[7:0]	sc2mac_dat_data45;       //|< i 
	input	[7:0]	sc2mac_dat_data46;       //|< i 
	input	[7:0]	sc2mac_dat_data47;       //|< i 
	input	[7:0]	sc2mac_dat_data48;       //|< i 
	input	[7:0]	sc2mac_dat_data49;       //|< i 
	input	[7:0]	sc2mac_dat_data50;       //|< i 
	input	[7:0]	sc2mac_dat_data51;       //|< i 
	input	[7:0]	sc2mac_dat_data52;       //|< i 
	input	[7:0]	sc2mac_dat_data53;       //|< i 
	input	[7:0]	sc2mac_dat_data54;       //|< i 
	input	[7:0]	sc2mac_dat_data55;       //|< i 
	input	[7:0]	sc2mac_dat_data56;       //|< i 
	input	[7:0]	sc2mac_dat_data57;       //|< i 
	input	[7:0]	sc2mac_dat_data58;       //|< i 
	input	[7:0]	sc2mac_dat_data59;       //|< i 
	input	[7:0]	sc2mac_dat_data60;       //|< i 
	input	[7:0]	sc2mac_dat_data61;       //|< i 
	input	[7:0]	sc2mac_dat_data62;       //|< i 
	input	[7:0]	sc2mac_dat_data63;       //|< i 
	input	[8:0]	sc2mac_dat_pd;

	input			sc2mac_wt_pvld;
	input	[63:0]	sc2mac_wt_mask;
	input	[7:0]	sc2mac_wt_data0;       //|< i
	input	[7:0]	sc2mac_wt_data1;       //|< i
	input	[7:0]	sc2mac_wt_data2;       //|< i
	input	[7:0]	sc2mac_wt_data3;       //|< i
	input	[7:0]	sc2mac_wt_data4;       //|< i
	input	[7:0]	sc2mac_wt_data5;       //|< i
	input	[7:0]	sc2mac_wt_data6;       //|< i
	input	[7:0]	sc2mac_wt_data7;       //|< i
	input	[7:0]	sc2mac_wt_data8;       //|< i
	input	[7:0]	sc2mac_wt_data9;       //|< i
	input	[7:0]	sc2mac_wt_data10;       //|< i
	input	[7:0]	sc2mac_wt_data11;       //|< i
	input	[7:0]	sc2mac_wt_data12;       //|< i
	input	[7:0]	sc2mac_wt_data13;       //|< i
	input	[7:0]	sc2mac_wt_data14;       //|< i
	input	[7:0]	sc2mac_wt_data15;       //|< i
	input	[7:0]	sc2mac_wt_data16;       //|< i
	input	[7:0]	sc2mac_wt_data17;       //|< i
	input	[7:0]	sc2mac_wt_data18;       //|< i
	input	[7:0]	sc2mac_wt_data19;       //|< i
	input	[7:0]	sc2mac_wt_data20;       //|< i
	input	[7:0]	sc2mac_wt_data21;       //|< i
	input	[7:0]	sc2mac_wt_data22;       //|< i
	input	[7:0]	sc2mac_wt_data23;       //|< i
	input	[7:0]	sc2mac_wt_data24;       //|< i
	input	[7:0]	sc2mac_wt_data25;       //|< i
	input	[7:0]	sc2mac_wt_data26;       //|< i
	input	[7:0]	sc2mac_wt_data27;       //|< i
	input	[7:0]	sc2mac_wt_data28;       //|< i
	input	[7:0]	sc2mac_wt_data29;       //|< i
	input	[7:0]	sc2mac_wt_data30;       //|< i
	input	[7:0]	sc2mac_wt_data31;       //|< i
	input	[7:0]	sc2mac_wt_data32;       //|< i
	input	[7:0]	sc2mac_wt_data33;       //|< i
	input	[7:0]	sc2mac_wt_data34;       //|< i
	input	[7:0]	sc2mac_wt_data35;       //|< i
	input	[7:0]	sc2mac_wt_data36;       //|< i
	input	[7:0]	sc2mac_wt_data37;       //|< i
	input	[7:0]	sc2mac_wt_data38;       //|< i
	input	[7:0]	sc2mac_wt_data39;       //|< i
	input	[7:0]	sc2mac_wt_data40;       //|< i
	input	[7:0]	sc2mac_wt_data41;       //|< i
	input	[7:0]	sc2mac_wt_data42;       //|< i
	input	[7:0]	sc2mac_wt_data43;       //|< i
	input	[7:0]	sc2mac_wt_data44;       //|< i
	input	[7:0]	sc2mac_wt_data45;       //|< i
	input	[7:0]	sc2mac_wt_data46;       //|< i
	input	[7:0]	sc2mac_wt_data47;       //|< i
	input	[7:0]	sc2mac_wt_data48;       //|< i
	input	[7:0]	sc2mac_wt_data49;       //|< i
	input	[7:0]	sc2mac_wt_data50;       //|< i
	input	[7:0]	sc2mac_wt_data51;       //|< i
	input	[7:0]	sc2mac_wt_data52;       //|< i
	input	[7:0]	sc2mac_wt_data53;       //|< i
	input	[7:0]	sc2mac_wt_data54;       //|< i
	input	[7:0]	sc2mac_wt_data55;       //|< i
	input	[7:0]	sc2mac_wt_data56;       //|< i
	input	[7:0]	sc2mac_wt_data57;       //|< i
	input	[7:0]	sc2mac_wt_data58;       //|< i
	input	[7:0]	sc2mac_wt_data59;       //|< i
	input	[7:0]	sc2mac_wt_data60;       //|< i
	input	[7:0]	sc2mac_wt_data61;       //|< i
	input	[7:0]	sc2mac_wt_data62;       //|< i
	input	[7:0]	sc2mac_wt_data63;       //|< i
	input	[15:0]	sc2mac_wt_sel;
	input			dla_clk_ovr_on_sync;
	input			global_clk_ovr_on_sync;
	input			tmc2slcg_disable_clock_gating;
	//======================nvdla part end========================

	//======================sodla part============================
	//wire			clock;
	//wire			reset;
	wire			io_nvdla_clock_nvdla_core_clk;
	wire			io_nvdla_clock_dla_clk_ovr_on_sync;
	wire			io_nvdla_clock_global_clk_ovr_on_sync;
	wire			io_nvdla_clock_tmc2slcg_disable_clock_gating;
	wire			io_nvlda_core_rstn;
	wire			io_csb2cmac_a_req_ready;
	wire			io_csb2cmac_a_req_valid;
	wire	[62:0]	io_csb2cmac_a_req_bits;
	wire			io_csb2cmac_a_resp_valid;
	wire	[33:0]	io_csb2cmac_a_resp_bits;
	wire			io_mac2accu_valid;	
	wire			io_mac2accu_bits_mask_0;       //|> o 
	wire			io_mac2accu_bits_mask_1;       //|> o 
	wire			io_mac2accu_bits_mask_2;       //|> o 
	wire			io_mac2accu_bits_mask_3;       //|> o 
	wire			io_mac2accu_bits_mask_4;       //|> o 
	wire			io_mac2accu_bits_mask_5;       //|> o 
	wire			io_mac2accu_bits_mask_6;       //|> o 
	wire			io_mac2accu_bits_mask_7;       //|> o 
	wire			io_mac2accu_bits_mask_8;       //|> o 
	wire			io_mac2accu_bits_mask_9;       //|> o 
	wire			io_mac2accu_bits_mask_10;       //|> o 
	wire			io_mac2accu_bits_mask_11;       //|> o 
	wire			io_mac2accu_bits_mask_12;       //|> o 
	wire			io_mac2accu_bits_mask_13;       //|> o 
	wire			io_mac2accu_bits_mask_14;       //|> o 
	wire			io_mac2accu_bits_mask_15;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_0;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_1;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_2;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_3;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_4;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_5;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_6;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_7;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_8;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_9;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_10;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_11;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_12;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_13;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_14;       //|> o 
	wire	[21:0]	io_mac2accu_bits_data_15;       //|> o 
	wire	[8:0]	io_mac2accu_bits_pd;
	wire			io_sc2mac_dat_valid;
	wire			io_sc2mac_dat_bits_mask_0;       //|< i
	wire			io_sc2mac_dat_bits_mask_1;       //|< i
	wire			io_sc2mac_dat_bits_mask_2;       //|< i
	wire			io_sc2mac_dat_bits_mask_3;       //|< i
	wire			io_sc2mac_dat_bits_mask_4;       //|< i
	wire			io_sc2mac_dat_bits_mask_5;       //|< i
	wire			io_sc2mac_dat_bits_mask_6;       //|< i
	wire			io_sc2mac_dat_bits_mask_7;       //|< i
	wire			io_sc2mac_dat_bits_mask_8;       //|< i
	wire			io_sc2mac_dat_bits_mask_9;       //|< i
	wire			io_sc2mac_dat_bits_mask_10;       //|< i
	wire			io_sc2mac_dat_bits_mask_11;       //|< i
	wire			io_sc2mac_dat_bits_mask_12;       //|< i
	wire			io_sc2mac_dat_bits_mask_13;       //|< i
	wire			io_sc2mac_dat_bits_mask_14;       //|< i
	wire			io_sc2mac_dat_bits_mask_15;       //|< i
	wire			io_sc2mac_dat_bits_mask_16;       //|< i
	wire			io_sc2mac_dat_bits_mask_17;       //|< i
	wire			io_sc2mac_dat_bits_mask_18;       //|< i
	wire			io_sc2mac_dat_bits_mask_19;       //|< i
	wire			io_sc2mac_dat_bits_mask_20;       //|< i
	wire			io_sc2mac_dat_bits_mask_21;       //|< i
	wire			io_sc2mac_dat_bits_mask_22;       //|< i
	wire			io_sc2mac_dat_bits_mask_23;       //|< i
	wire			io_sc2mac_dat_bits_mask_24;       //|< i
	wire			io_sc2mac_dat_bits_mask_25;       //|< i
	wire			io_sc2mac_dat_bits_mask_26;       //|< i
	wire			io_sc2mac_dat_bits_mask_27;       //|< i
	wire			io_sc2mac_dat_bits_mask_28;       //|< i
	wire			io_sc2mac_dat_bits_mask_29;       //|< i
	wire			io_sc2mac_dat_bits_mask_30;       //|< i
	wire			io_sc2mac_dat_bits_mask_31;       //|< i
	wire			io_sc2mac_dat_bits_mask_32;       //|< i
	wire			io_sc2mac_dat_bits_mask_33;       //|< i
	wire			io_sc2mac_dat_bits_mask_34;       //|< i
	wire			io_sc2mac_dat_bits_mask_35;       //|< i
	wire			io_sc2mac_dat_bits_mask_36;       //|< i
	wire			io_sc2mac_dat_bits_mask_37;       //|< i
	wire			io_sc2mac_dat_bits_mask_38;       //|< i
	wire			io_sc2mac_dat_bits_mask_39;       //|< i
	wire			io_sc2mac_dat_bits_mask_40;       //|< i
	wire			io_sc2mac_dat_bits_mask_41;       //|< i
	wire			io_sc2mac_dat_bits_mask_42;       //|< i
	wire			io_sc2mac_dat_bits_mask_43;       //|< i
	wire			io_sc2mac_dat_bits_mask_44;       //|< i
	wire			io_sc2mac_dat_bits_mask_45;       //|< i
	wire			io_sc2mac_dat_bits_mask_46;       //|< i
	wire			io_sc2mac_dat_bits_mask_47;       //|< i
	wire			io_sc2mac_dat_bits_mask_48;       //|< i
	wire			io_sc2mac_dat_bits_mask_49;       //|< i
	wire			io_sc2mac_dat_bits_mask_50;       //|< i
	wire			io_sc2mac_dat_bits_mask_51;       //|< i
	wire			io_sc2mac_dat_bits_mask_52;       //|< i
	wire			io_sc2mac_dat_bits_mask_53;       //|< i
	wire			io_sc2mac_dat_bits_mask_54;       //|< i
	wire			io_sc2mac_dat_bits_mask_55;       //|< i
	wire			io_sc2mac_dat_bits_mask_56;       //|< i
	wire			io_sc2mac_dat_bits_mask_57;       //|< i
	wire			io_sc2mac_dat_bits_mask_58;       //|< i
	wire			io_sc2mac_dat_bits_mask_59;       //|< i
	wire			io_sc2mac_dat_bits_mask_60;       //|< i
	wire			io_sc2mac_dat_bits_mask_61;       //|< i
	wire			io_sc2mac_dat_bits_mask_62;       //|< i
	wire			io_sc2mac_dat_bits_mask_63;       //|< i
	wire	[7:0]	io_sc2mac_dat_bits_data_0;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_1;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_2;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_3;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_4;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_5;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_6;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_7;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_8;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_9;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_10;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_11;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_12;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_13;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_14;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_15;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_16;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_17;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_18;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_19;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_20;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_21;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_22;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_23;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_24;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_25;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_26;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_27;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_28;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_29;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_30;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_31;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_32;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_33;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_34;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_35;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_36;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_37;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_38;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_39;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_40;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_41;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_42;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_43;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_44;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_45;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_46;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_47;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_48;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_49;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_50;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_51;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_52;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_53;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_54;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_55;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_56;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_57;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_58;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_59;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_60;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_61;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_62;       //|< i 
	wire	[7:0]	io_sc2mac_dat_bits_data_63;       //|< i 
	wire	[8:0]	io_sc2mac_dat_bits_pd;
	wire			io_sc2mac_wt_valid;
	wire			io_sc2mac_wt_bits_sel_0;       //|< i 
	wire			io_sc2mac_wt_bits_sel_1;       //|< i 
	wire			io_sc2mac_wt_bits_sel_2;       //|< i 
	wire			io_sc2mac_wt_bits_sel_3;       //|< i 
	wire			io_sc2mac_wt_bits_sel_4;       //|< i 
	wire			io_sc2mac_wt_bits_sel_5;       //|< i 
	wire			io_sc2mac_wt_bits_sel_6;       //|< i 
	wire			io_sc2mac_wt_bits_sel_7;       //|< i 
	wire			io_sc2mac_wt_bits_sel_8;       //|< i 
	wire			io_sc2mac_wt_bits_sel_9;       //|< i 
	wire			io_sc2mac_wt_bits_sel_10;       //|< i 
	wire			io_sc2mac_wt_bits_sel_11;       //|< i 
	wire			io_sc2mac_wt_bits_sel_12;       //|< i 
	wire			io_sc2mac_wt_bits_sel_13;       //|< i 
	wire			io_sc2mac_wt_bits_sel_14;       //|< i 
	wire			io_sc2mac_wt_bits_sel_15;       //|< i 	
	wire			io_sc2mac_wt_bits_mask_0;       //|< i 
	wire			io_sc2mac_wt_bits_mask_1;       //|< i 
	wire			io_sc2mac_wt_bits_mask_2;       //|< i 
	wire			io_sc2mac_wt_bits_mask_3;       //|< i 
	wire			io_sc2mac_wt_bits_mask_4;       //|< i 
	wire			io_sc2mac_wt_bits_mask_5;       //|< i 
	wire			io_sc2mac_wt_bits_mask_6;       //|< i 
	wire			io_sc2mac_wt_bits_mask_7;       //|< i 
	wire			io_sc2mac_wt_bits_mask_8;       //|< i 
	wire			io_sc2mac_wt_bits_mask_9;       //|< i 
	wire			io_sc2mac_wt_bits_mask_10;       //|< i 
	wire			io_sc2mac_wt_bits_mask_11;       //|< i 
	wire			io_sc2mac_wt_bits_mask_12;       //|< i 
	wire			io_sc2mac_wt_bits_mask_13;       //|< i 
	wire			io_sc2mac_wt_bits_mask_14;       //|< i 
	wire			io_sc2mac_wt_bits_mask_15;       //|< i 
	wire			io_sc2mac_wt_bits_mask_16;       //|< i 
	wire			io_sc2mac_wt_bits_mask_17;       //|< i 
	wire			io_sc2mac_wt_bits_mask_18;       //|< i 
	wire			io_sc2mac_wt_bits_mask_19;       //|< i 
	wire			io_sc2mac_wt_bits_mask_20;       //|< i 
	wire			io_sc2mac_wt_bits_mask_21;       //|< i 
	wire			io_sc2mac_wt_bits_mask_22;       //|< i 
	wire			io_sc2mac_wt_bits_mask_23;       //|< i 
	wire			io_sc2mac_wt_bits_mask_24;       //|< i 
	wire			io_sc2mac_wt_bits_mask_25;       //|< i 
	wire			io_sc2mac_wt_bits_mask_26;       //|< i 
	wire			io_sc2mac_wt_bits_mask_27;       //|< i 
	wire			io_sc2mac_wt_bits_mask_28;       //|< i 
	wire			io_sc2mac_wt_bits_mask_29;       //|< i 
	wire			io_sc2mac_wt_bits_mask_30;       //|< i 
	wire			io_sc2mac_wt_bits_mask_31;       //|< i 
	wire			io_sc2mac_wt_bits_mask_32;       //|< i 
	wire			io_sc2mac_wt_bits_mask_33;       //|< i 
	wire			io_sc2mac_wt_bits_mask_34;       //|< i 
	wire			io_sc2mac_wt_bits_mask_35;       //|< i 
	wire			io_sc2mac_wt_bits_mask_36;       //|< i 
	wire			io_sc2mac_wt_bits_mask_37;       //|< i 
	wire			io_sc2mac_wt_bits_mask_38;       //|< i 
	wire			io_sc2mac_wt_bits_mask_39;       //|< i 
	wire			io_sc2mac_wt_bits_mask_40;       //|< i 
	wire			io_sc2mac_wt_bits_mask_41;       //|< i 
	wire			io_sc2mac_wt_bits_mask_42;       //|< i 
	wire			io_sc2mac_wt_bits_mask_43;       //|< i 
	wire			io_sc2mac_wt_bits_mask_44;       //|< i 
	wire			io_sc2mac_wt_bits_mask_45;       //|< i 
	wire			io_sc2mac_wt_bits_mask_46;       //|< i 
	wire			io_sc2mac_wt_bits_mask_47;       //|< i 
	wire			io_sc2mac_wt_bits_mask_48;       //|< i 
	wire			io_sc2mac_wt_bits_mask_49;       //|< i 
	wire			io_sc2mac_wt_bits_mask_50;       //|< i 
	wire			io_sc2mac_wt_bits_mask_51;       //|< i 
	wire			io_sc2mac_wt_bits_mask_52;       //|< i 
	wire			io_sc2mac_wt_bits_mask_53;       //|< i 
	wire			io_sc2mac_wt_bits_mask_54;       //|< i 
	wire			io_sc2mac_wt_bits_mask_55;       //|< i 
	wire			io_sc2mac_wt_bits_mask_56;       //|< i 
	wire			io_sc2mac_wt_bits_mask_57;       //|< i 
	wire			io_sc2mac_wt_bits_mask_58;       //|< i 
	wire			io_sc2mac_wt_bits_mask_59;       //|< i 
	wire			io_sc2mac_wt_bits_mask_60;       //|< i 
	wire			io_sc2mac_wt_bits_mask_61;       //|< i 
	wire			io_sc2mac_wt_bits_mask_62;       //|< i 
	wire			io_sc2mac_wt_bits_mask_63;       //|< i 	
	wire	[7:0]	io_sc2mac_wt_bits_data_0;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_1;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_2;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_3;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_4;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_5;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_6;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_7;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_8;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_9;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_10;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_11;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_12;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_13;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_14;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_15;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_16;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_17;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_18;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_19;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_20;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_21;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_22;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_23;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_24;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_25;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_26;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_27;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_28;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_29;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_30;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_31;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_32;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_33;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_34;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_35;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_36;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_37;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_38;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_39;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_40;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_41;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_42;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_43;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_44;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_45;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_46;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_47;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_48;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_49;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_50;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_51;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_52;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_53;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_54;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_55;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_56;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_57;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_58;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_59;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_60;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_61;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_62;       //|< i 
	wire	[7:0]	io_sc2mac_wt_bits_data_63;       //|< i 
	//=====================sodla part end=========================
	//
	//===========connect nvdla_cmac to sodla_cmac=================
	assign	io_nvdla_clock_nvdla_core_clk=nvdla_core_clk;
	assign	io_nvdla_core_rstn=nvdla_core_rstn;
	assign	io_csb2cmac_a_resp_valid=cmac_a2csb_resp_valid;
	assign	io_csb2cmac_a_resp_bits=cmac_a2csb_resp_pd;
	assign	io_csb2cmac_a_req_valid=csb2cmac_a_req_pvld;
	assign	io_csb2cmac_a_req_ready=csb2cmac_a_req_prdy;
	assign	io_csb2cmac_a_req_bits=csb2cmac_a_req_pd;
	assign	io_mac2accu_valid=mac2accu_pvld;
	assign  io_mac2accu_bits_mask_0=mac2accu_mask[0];
	assign  io_mac2accu_bits_mask_1=mac2accu_mask[1];
	assign  io_mac2accu_bits_mask_2=mac2accu_mask[2];
	assign  io_mac2accu_bits_mask_3=mac2accu_mask[3];
	assign  io_mac2accu_bits_mask_4=mac2accu_mask[4];
	assign  io_mac2accu_bits_mask_5=mac2accu_mask[5];
	assign  io_mac2accu_bits_mask_6=mac2accu_mask[6];
	assign  io_mac2accu_bits_mask_7=mac2accu_mask[7];
	assign  io_mac2accu_bits_mask_8=mac2accu_mask[8];
	assign  io_mac2accu_bits_mask_9=mac2accu_mask[9];
	assign  io_mac2accu_bits_mask_10=mac2accu_mask[10];
	assign  io_mac2accu_bits_mask_11=mac2accu_mask[11];
	assign  io_mac2accu_bits_mask_12=mac2accu_mask[12];
	assign  io_mac2accu_bits_mask_13=mac2accu_mask[13];
	assign  io_mac2accu_bits_mask_14=mac2accu_mask[14];
	assign  io_mac2accu_bits_mask_15=mac2accu_mask[15];
	assign	mac2accu_mode=1'b0;
	assign  io_mac2accu_bits_data_0=mac2accu_data0;
	assign  io_mac2accu_bits_data_1=mac2accu_data1;
	assign  io_mac2accu_bits_data_2=mac2accu_data2;
	assign  io_mac2accu_bits_data_3=mac2accu_data3;
	assign  io_mac2accu_bits_data_4=mac2accu_data4;
	assign  io_mac2accu_bits_data_5=mac2accu_data5;
	assign  io_mac2accu_bits_data_6=mac2accu_data6;
	assign  io_mac2accu_bits_data_7=mac2accu_data7;
	assign  io_mac2accu_bits_data_8=mac2accu_data8;
	assign  io_mac2accu_bits_data_9=mac2accu_data9;
	assign  io_mac2accu_bits_data_10=mac2accu_data10;
	assign  io_mac2accu_bits_data_11=mac2accu_data11;
	assign  io_mac2accu_bits_data_12=mac2accu_data12;
	assign  io_mac2accu_bits_data_13=mac2accu_data13;
	assign  io_mac2accu_bits_data_14=mac2accu_data14;
	assign  io_mac2accu_bits_data_15=mac2accu_data15;
	assign	io_mac2accu_bits_pd=mac2accu_pd;
	
	assign	io_sc2mac_dat_valid=sc2mac_dat_pvld;
	assign  io_sc2mac_dat_bits_mask_0=sc2mac_dat_mask[0];
	assign  io_sc2mac_dat_bits_mask_1=sc2mac_dat_mask[1];
	assign  io_sc2mac_dat_bits_mask_2=sc2mac_dat_mask[2];
	assign  io_sc2mac_dat_bits_mask_3=sc2mac_dat_mask[3];
	assign  io_sc2mac_dat_bits_mask_4=sc2mac_dat_mask[4];
	assign  io_sc2mac_dat_bits_mask_5=sc2mac_dat_mask[5];
	assign  io_sc2mac_dat_bits_mask_6=sc2mac_dat_mask[6];
	assign  io_sc2mac_dat_bits_mask_7=sc2mac_dat_mask[7];
	assign  io_sc2mac_dat_bits_mask_8=sc2mac_dat_mask[8];
	assign  io_sc2mac_dat_bits_mask_9=sc2mac_dat_mask[9];
	assign  io_sc2mac_dat_bits_mask_10=sc2mac_dat_mask[10];
	assign  io_sc2mac_dat_bits_mask_11=sc2mac_dat_mask[11];
	assign  io_sc2mac_dat_bits_mask_12=sc2mac_dat_mask[12];
	assign  io_sc2mac_dat_bits_mask_13=sc2mac_dat_mask[13];
	assign  io_sc2mac_dat_bits_mask_14=sc2mac_dat_mask[14];
	assign  io_sc2mac_dat_bits_mask_15=sc2mac_dat_mask[15];
	assign  io_sc2mac_dat_bits_mask_16=sc2mac_dat_mask[16];
	assign  io_sc2mac_dat_bits_mask_17=sc2mac_dat_mask[17];
	assign  io_sc2mac_dat_bits_mask_18=sc2mac_dat_mask[18];
	assign  io_sc2mac_dat_bits_mask_19=sc2mac_dat_mask[19];
	assign  io_sc2mac_dat_bits_mask_20=sc2mac_dat_mask[20];
	assign  io_sc2mac_dat_bits_mask_21=sc2mac_dat_mask[21];
	assign  io_sc2mac_dat_bits_mask_22=sc2mac_dat_mask[22];
	assign  io_sc2mac_dat_bits_mask_23=sc2mac_dat_mask[23];
	assign  io_sc2mac_dat_bits_mask_24=sc2mac_dat_mask[24];
	assign  io_sc2mac_dat_bits_mask_25=sc2mac_dat_mask[25];
	assign  io_sc2mac_dat_bits_mask_26=sc2mac_dat_mask[26];
	assign  io_sc2mac_dat_bits_mask_27=sc2mac_dat_mask[27];
	assign  io_sc2mac_dat_bits_mask_28=sc2mac_dat_mask[28];
	assign  io_sc2mac_dat_bits_mask_29=sc2mac_dat_mask[29];
	assign  io_sc2mac_dat_bits_mask_30=sc2mac_dat_mask[30];
	assign  io_sc2mac_dat_bits_mask_31=sc2mac_dat_mask[31];
	assign  io_sc2mac_dat_bits_mask_32=sc2mac_dat_mask[32];
	assign  io_sc2mac_dat_bits_mask_33=sc2mac_dat_mask[33];
	assign  io_sc2mac_dat_bits_mask_34=sc2mac_dat_mask[34];
	assign  io_sc2mac_dat_bits_mask_35=sc2mac_dat_mask[35];
	assign  io_sc2mac_dat_bits_mask_36=sc2mac_dat_mask[36];
	assign  io_sc2mac_dat_bits_mask_37=sc2mac_dat_mask[37];
	assign  io_sc2mac_dat_bits_mask_38=sc2mac_dat_mask[38];
	assign  io_sc2mac_dat_bits_mask_39=sc2mac_dat_mask[39];
	assign  io_sc2mac_dat_bits_mask_40=sc2mac_dat_mask[40];
	assign  io_sc2mac_dat_bits_mask_41=sc2mac_dat_mask[41];
	assign  io_sc2mac_dat_bits_mask_42=sc2mac_dat_mask[42];
	assign  io_sc2mac_dat_bits_mask_43=sc2mac_dat_mask[43];
	assign  io_sc2mac_dat_bits_mask_44=sc2mac_dat_mask[44];
	assign  io_sc2mac_dat_bits_mask_45=sc2mac_dat_mask[45];
	assign  io_sc2mac_dat_bits_mask_46=sc2mac_dat_mask[46];
	assign  io_sc2mac_dat_bits_mask_47=sc2mac_dat_mask[47];
	assign  io_sc2mac_dat_bits_mask_48=sc2mac_dat_mask[48];
	assign  io_sc2mac_dat_bits_mask_49=sc2mac_dat_mask[49];
	assign  io_sc2mac_dat_bits_mask_50=sc2mac_dat_mask[50];
	assign  io_sc2mac_dat_bits_mask_51=sc2mac_dat_mask[51];
	assign  io_sc2mac_dat_bits_mask_52=sc2mac_dat_mask[52];
	assign  io_sc2mac_dat_bits_mask_53=sc2mac_dat_mask[53];
	assign  io_sc2mac_dat_bits_mask_54=sc2mac_dat_mask[54];
	assign  io_sc2mac_dat_bits_mask_55=sc2mac_dat_mask[55];
	assign  io_sc2mac_dat_bits_mask_56=sc2mac_dat_mask[56];
	assign  io_sc2mac_dat_bits_mask_57=sc2mac_dat_mask[57];
	assign  io_sc2mac_dat_bits_mask_58=sc2mac_dat_mask[58];
	assign  io_sc2mac_dat_bits_mask_59=sc2mac_dat_mask[59];
	assign  io_sc2mac_dat_bits_mask_60=sc2mac_dat_mask[60];
	assign  io_sc2mac_dat_bits_mask_61=sc2mac_dat_mask[61];
	assign  io_sc2mac_dat_bits_mask_62=sc2mac_dat_mask[62];
	assign  io_sc2mac_dat_bits_mask_63=sc2mac_dat_mask[63];
	assign  io_sc2mac_dat_bits_data_0=sc2mac_dat_data0;
	assign  io_sc2mac_dat_bits_data_1=sc2mac_dat_data1;
	assign  io_sc2mac_dat_bits_data_2=sc2mac_dat_data2;
	assign  io_sc2mac_dat_bits_data_3=sc2mac_dat_data3;
	assign  io_sc2mac_dat_bits_data_4=sc2mac_dat_data4;
	assign  io_sc2mac_dat_bits_data_5=sc2mac_dat_data5;
	assign  io_sc2mac_dat_bits_data_6=sc2mac_dat_data6;
	assign  io_sc2mac_dat_bits_data_7=sc2mac_dat_data7;
	assign  io_sc2mac_dat_bits_data_8=sc2mac_dat_data8;
	assign  io_sc2mac_dat_bits_data_9=sc2mac_dat_data9;
	assign  io_sc2mac_dat_bits_data_10=sc2mac_dat_data10;
	assign  io_sc2mac_dat_bits_data_11=sc2mac_dat_data11;
	assign  io_sc2mac_dat_bits_data_12=sc2mac_dat_data12;
	assign  io_sc2mac_dat_bits_data_13=sc2mac_dat_data13;
	assign  io_sc2mac_dat_bits_data_14=sc2mac_dat_data14;
	assign  io_sc2mac_dat_bits_data_15=sc2mac_dat_data15;
	assign  io_sc2mac_dat_bits_data_16=sc2mac_dat_data16;
	assign  io_sc2mac_dat_bits_data_17=sc2mac_dat_data17;
	assign  io_sc2mac_dat_bits_data_18=sc2mac_dat_data18;
	assign  io_sc2mac_dat_bits_data_19=sc2mac_dat_data19;
	assign  io_sc2mac_dat_bits_data_20=sc2mac_dat_data20;
	assign  io_sc2mac_dat_bits_data_21=sc2mac_dat_data21;
	assign  io_sc2mac_dat_bits_data_22=sc2mac_dat_data22;
	assign  io_sc2mac_dat_bits_data_23=sc2mac_dat_data23;
	assign  io_sc2mac_dat_bits_data_24=sc2mac_dat_data24;
	assign  io_sc2mac_dat_bits_data_25=sc2mac_dat_data25;
	assign  io_sc2mac_dat_bits_data_26=sc2mac_dat_data26;
	assign  io_sc2mac_dat_bits_data_27=sc2mac_dat_data27;
	assign  io_sc2mac_dat_bits_data_28=sc2mac_dat_data28;
	assign  io_sc2mac_dat_bits_data_29=sc2mac_dat_data29;
	assign  io_sc2mac_dat_bits_data_30=sc2mac_dat_data30;
	assign  io_sc2mac_dat_bits_data_31=sc2mac_dat_data31;
	assign  io_sc2mac_dat_bits_data_32=sc2mac_dat_data32;
	assign  io_sc2mac_dat_bits_data_33=sc2mac_dat_data33;
	assign  io_sc2mac_dat_bits_data_34=sc2mac_dat_data34;
	assign  io_sc2mac_dat_bits_data_35=sc2mac_dat_data35;
	assign  io_sc2mac_dat_bits_data_36=sc2mac_dat_data36;
	assign  io_sc2mac_dat_bits_data_37=sc2mac_dat_data37;
	assign  io_sc2mac_dat_bits_data_38=sc2mac_dat_data38;
	assign  io_sc2mac_dat_bits_data_39=sc2mac_dat_data39;
	assign  io_sc2mac_dat_bits_data_40=sc2mac_dat_data40;
	assign  io_sc2mac_dat_bits_data_41=sc2mac_dat_data41;
	assign  io_sc2mac_dat_bits_data_42=sc2mac_dat_data42;
	assign  io_sc2mac_dat_bits_data_43=sc2mac_dat_data43;
	assign  io_sc2mac_dat_bits_data_44=sc2mac_dat_data44;
	assign  io_sc2mac_dat_bits_data_45=sc2mac_dat_data45;
	assign  io_sc2mac_dat_bits_data_46=sc2mac_dat_data46;
	assign  io_sc2mac_dat_bits_data_47=sc2mac_dat_data47;
	assign  io_sc2mac_dat_bits_data_48=sc2mac_dat_data48;
	assign  io_sc2mac_dat_bits_data_49=sc2mac_dat_data49;
	assign  io_sc2mac_dat_bits_data_50=sc2mac_dat_data50;
	assign  io_sc2mac_dat_bits_data_51=sc2mac_dat_data51;
	assign  io_sc2mac_dat_bits_data_52=sc2mac_dat_data52;
	assign  io_sc2mac_dat_bits_data_53=sc2mac_dat_data53;
	assign  io_sc2mac_dat_bits_data_54=sc2mac_dat_data54;
	assign  io_sc2mac_dat_bits_data_55=sc2mac_dat_data55;
	assign  io_sc2mac_dat_bits_data_56=sc2mac_dat_data56;
	assign  io_sc2mac_dat_bits_data_57=sc2mac_dat_data57;
	assign  io_sc2mac_dat_bits_data_58=sc2mac_dat_data58;
	assign  io_sc2mac_dat_bits_data_59=sc2mac_dat_data59;
	assign  io_sc2mac_dat_bits_data_60=sc2mac_dat_data60;
	assign  io_sc2mac_dat_bits_data_61=sc2mac_dat_data61;
	assign  io_sc2mac_dat_bits_data_62=sc2mac_dat_data62;
	assign  io_sc2mac_dat_bits_data_63=sc2mac_dat_data63;
	assign	io_sc2mac_dat_bits_pd=sc2mac_dat_pd;
	
	assign	io_sc2mac_wt_valid=sc2mac_wt_pvld;
	assign  io_sc2mac_wt_bits_mask_0=sc2mac_wt_mask[0];
	assign  io_sc2mac_wt_bits_mask_1=sc2mac_wt_mask[1];
	assign  io_sc2mac_wt_bits_mask_2=sc2mac_wt_mask[2];
	assign  io_sc2mac_wt_bits_mask_3=sc2mac_wt_mask[3];
	assign  io_sc2mac_wt_bits_mask_4=sc2mac_wt_mask[4];
	assign  io_sc2mac_wt_bits_mask_5=sc2mac_wt_mask[5];
	assign  io_sc2mac_wt_bits_mask_6=sc2mac_wt_mask[6];
	assign  io_sc2mac_wt_bits_mask_7=sc2mac_wt_mask[7];
	assign  io_sc2mac_wt_bits_mask_8=sc2mac_wt_mask[8];
	assign  io_sc2mac_wt_bits_mask_9=sc2mac_wt_mask[9];
	assign  io_sc2mac_wt_bits_mask_10=sc2mac_wt_mask[10];
	assign  io_sc2mac_wt_bits_mask_11=sc2mac_wt_mask[11];
	assign  io_sc2mac_wt_bits_mask_12=sc2mac_wt_mask[12];
	assign  io_sc2mac_wt_bits_mask_13=sc2mac_wt_mask[13];
	assign  io_sc2mac_wt_bits_mask_14=sc2mac_wt_mask[14];
	assign  io_sc2mac_wt_bits_mask_15=sc2mac_wt_mask[15];
	assign  io_sc2mac_wt_bits_mask_16=sc2mac_wt_mask[16];
	assign  io_sc2mac_wt_bits_mask_17=sc2mac_wt_mask[17];
	assign  io_sc2mac_wt_bits_mask_18=sc2mac_wt_mask[18];
	assign  io_sc2mac_wt_bits_mask_19=sc2mac_wt_mask[19];
	assign  io_sc2mac_wt_bits_mask_20=sc2mac_wt_mask[20];
	assign  io_sc2mac_wt_bits_mask_21=sc2mac_wt_mask[21];
	assign  io_sc2mac_wt_bits_mask_22=sc2mac_wt_mask[22];
	assign  io_sc2mac_wt_bits_mask_23=sc2mac_wt_mask[23];
	assign  io_sc2mac_wt_bits_mask_24=sc2mac_wt_mask[24];
	assign  io_sc2mac_wt_bits_mask_25=sc2mac_wt_mask[25];
	assign  io_sc2mac_wt_bits_mask_26=sc2mac_wt_mask[26];
	assign  io_sc2mac_wt_bits_mask_27=sc2mac_wt_mask[27];
	assign  io_sc2mac_wt_bits_mask_28=sc2mac_wt_mask[28];
	assign  io_sc2mac_wt_bits_mask_29=sc2mac_wt_mask[29];
	assign  io_sc2mac_wt_bits_mask_30=sc2mac_wt_mask[30];
	assign  io_sc2mac_wt_bits_mask_31=sc2mac_wt_mask[31];
	assign  io_sc2mac_wt_bits_mask_32=sc2mac_wt_mask[32];
	assign  io_sc2mac_wt_bits_mask_33=sc2mac_wt_mask[33];
	assign  io_sc2mac_wt_bits_mask_34=sc2mac_wt_mask[34];
	assign  io_sc2mac_wt_bits_mask_35=sc2mac_wt_mask[35];
	assign  io_sc2mac_wt_bits_mask_36=sc2mac_wt_mask[36];
	assign  io_sc2mac_wt_bits_mask_37=sc2mac_wt_mask[37];
	assign  io_sc2mac_wt_bits_mask_38=sc2mac_wt_mask[38];
	assign  io_sc2mac_wt_bits_mask_39=sc2mac_wt_mask[39];
	assign  io_sc2mac_wt_bits_mask_40=sc2mac_wt_mask[40];
	assign  io_sc2mac_wt_bits_mask_41=sc2mac_wt_mask[41];
	assign  io_sc2mac_wt_bits_mask_42=sc2mac_wt_mask[42];
	assign  io_sc2mac_wt_bits_mask_43=sc2mac_wt_mask[43];
	assign  io_sc2mac_wt_bits_mask_44=sc2mac_wt_mask[44];
	assign  io_sc2mac_wt_bits_mask_45=sc2mac_wt_mask[45];
	assign  io_sc2mac_wt_bits_mask_46=sc2mac_wt_mask[46];
	assign  io_sc2mac_wt_bits_mask_47=sc2mac_wt_mask[47];
	assign  io_sc2mac_wt_bits_mask_48=sc2mac_wt_mask[48];
	assign  io_sc2mac_wt_bits_mask_49=sc2mac_wt_mask[49];
	assign  io_sc2mac_wt_bits_mask_50=sc2mac_wt_mask[50];
	assign  io_sc2mac_wt_bits_mask_51=sc2mac_wt_mask[51];
	assign  io_sc2mac_wt_bits_mask_52=sc2mac_wt_mask[52];
	assign  io_sc2mac_wt_bits_mask_53=sc2mac_wt_mask[53];
	assign  io_sc2mac_wt_bits_mask_54=sc2mac_wt_mask[54];
	assign  io_sc2mac_wt_bits_mask_55=sc2mac_wt_mask[55];
	assign  io_sc2mac_wt_bits_mask_56=sc2mac_wt_mask[56];
	assign  io_sc2mac_wt_bits_mask_57=sc2mac_wt_mask[57];
	assign  io_sc2mac_wt_bits_mask_58=sc2mac_wt_mask[58];
	assign  io_sc2mac_wt_bits_mask_59=sc2mac_wt_mask[59];
	assign  io_sc2mac_wt_bits_mask_60=sc2mac_wt_mask[60];
	assign  io_sc2mac_wt_bits_mask_61=sc2mac_wt_mask[61];
	assign  io_sc2mac_wt_bits_mask_62=sc2mac_wt_mask[62];
	assign  io_sc2mac_wt_bits_mask_63=sc2mac_wt_mask[63];
	assign  io_sc2mac_wt_bits_data_0=sc2mac_wt_data0;
	assign  io_sc2mac_wt_bits_data_1=sc2mac_wt_data1;
	assign  io_sc2mac_wt_bits_data_2=sc2mac_wt_data2;
	assign  io_sc2mac_wt_bits_data_3=sc2mac_wt_data3;
	assign  io_sc2mac_wt_bits_data_4=sc2mac_wt_data4;
	assign  io_sc2mac_wt_bits_data_5=sc2mac_wt_data5;
	assign  io_sc2mac_wt_bits_data_6=sc2mac_wt_data6;
	assign  io_sc2mac_wt_bits_data_7=sc2mac_wt_data7;
	assign  io_sc2mac_wt_bits_data_8=sc2mac_wt_data8;
	assign  io_sc2mac_wt_bits_data_9=sc2mac_wt_data9;
	assign  io_sc2mac_wt_bits_data_10=sc2mac_wt_data10;
	assign  io_sc2mac_wt_bits_data_11=sc2mac_wt_data11;
	assign  io_sc2mac_wt_bits_data_12=sc2mac_wt_data12;
	assign  io_sc2mac_wt_bits_data_13=sc2mac_wt_data13;
	assign  io_sc2mac_wt_bits_data_14=sc2mac_wt_data14;
	assign  io_sc2mac_wt_bits_data_15=sc2mac_wt_data15;
	assign  io_sc2mac_wt_bits_data_16=sc2mac_wt_data16;
	assign  io_sc2mac_wt_bits_data_17=sc2mac_wt_data17;
	assign  io_sc2mac_wt_bits_data_18=sc2mac_wt_data18;
	assign  io_sc2mac_wt_bits_data_19=sc2mac_wt_data19;
	assign  io_sc2mac_wt_bits_data_20=sc2mac_wt_data20;
	assign  io_sc2mac_wt_bits_data_21=sc2mac_wt_data21;
	assign  io_sc2mac_wt_bits_data_22=sc2mac_wt_data22;
	assign  io_sc2mac_wt_bits_data_23=sc2mac_wt_data23;
	assign  io_sc2mac_wt_bits_data_24=sc2mac_wt_data24;
	assign  io_sc2mac_wt_bits_data_25=sc2mac_wt_data25;
	assign  io_sc2mac_wt_bits_data_26=sc2mac_wt_data26;
	assign  io_sc2mac_wt_bits_data_27=sc2mac_wt_data27;
	assign  io_sc2mac_wt_bits_data_28=sc2mac_wt_data28;
	assign  io_sc2mac_wt_bits_data_29=sc2mac_wt_data29;
	assign  io_sc2mac_wt_bits_data_30=sc2mac_wt_data30;
	assign  io_sc2mac_wt_bits_data_31=sc2mac_wt_data31;
	assign  io_sc2mac_wt_bits_data_32=sc2mac_wt_data32;
	assign  io_sc2mac_wt_bits_data_33=sc2mac_wt_data33;
	assign  io_sc2mac_wt_bits_data_34=sc2mac_wt_data34;
	assign  io_sc2mac_wt_bits_data_35=sc2mac_wt_data35;
	assign  io_sc2mac_wt_bits_data_36=sc2mac_wt_data36;
	assign  io_sc2mac_wt_bits_data_37=sc2mac_wt_data37;
	assign  io_sc2mac_wt_bits_data_38=sc2mac_wt_data38;
	assign  io_sc2mac_wt_bits_data_39=sc2mac_wt_data39;
	assign  io_sc2mac_wt_bits_data_40=sc2mac_wt_data40;
	assign  io_sc2mac_wt_bits_data_41=sc2mac_wt_data41;
	assign  io_sc2mac_wt_bits_data_42=sc2mac_wt_data42;
	assign  io_sc2mac_wt_bits_data_43=sc2mac_wt_data43;
	assign  io_sc2mac_wt_bits_data_44=sc2mac_wt_data44;
	assign  io_sc2mac_wt_bits_data_45=sc2mac_wt_data45;
	assign  io_sc2mac_wt_bits_data_46=sc2mac_wt_data46;
	assign  io_sc2mac_wt_bits_data_47=sc2mac_wt_data47;
	assign  io_sc2mac_wt_bits_data_48=sc2mac_wt_data48;
	assign  io_sc2mac_wt_bits_data_49=sc2mac_wt_data49;
	assign  io_sc2mac_wt_bits_data_50=sc2mac_wt_data50;
	assign  io_sc2mac_wt_bits_data_51=sc2mac_wt_data51;
	assign  io_sc2mac_wt_bits_data_52=sc2mac_wt_data52;
	assign  io_sc2mac_wt_bits_data_53=sc2mac_wt_data53;
	assign  io_sc2mac_wt_bits_data_54=sc2mac_wt_data54;
	assign  io_sc2mac_wt_bits_data_55=sc2mac_wt_data55;
	assign  io_sc2mac_wt_bits_data_56=sc2mac_wt_data56;
	assign  io_sc2mac_wt_bits_data_57=sc2mac_wt_data57;
	assign  io_sc2mac_wt_bits_data_58=sc2mac_wt_data58;
	assign  io_sc2mac_wt_bits_data_59=sc2mac_wt_data59;
	assign  io_sc2mac_wt_bits_data_60=sc2mac_wt_data60;
	assign  io_sc2mac_wt_bits_data_61=sc2mac_wt_data61;
	assign  io_sc2mac_wt_bits_data_62=sc2mac_wt_data62;
	assign  io_sc2mac_wt_bits_data_63=sc2mac_wt_data63;
	assign  io_sc2mac_wt_bits_sel_0=sc2mac_wt_sel[0];
	assign  io_sc2mac_wt_bits_sel_1=sc2mac_wt_sel[1];
	assign  io_sc2mac_wt_bits_sel_2=sc2mac_wt_sel[2];
	assign  io_sc2mac_wt_bits_sel_3=sc2mac_wt_sel[3];
	assign  io_sc2mac_wt_bits_sel_4=sc2mac_wt_sel[4];
	assign  io_sc2mac_wt_bits_sel_5=sc2mac_wt_sel[5];
	assign  io_sc2mac_wt_bits_sel_6=sc2mac_wt_sel[6];
	assign  io_sc2mac_wt_bits_sel_7=sc2mac_wt_sel[7];
	assign  io_sc2mac_wt_bits_sel_8=sc2mac_wt_sel[8];
	assign  io_sc2mac_wt_bits_sel_9=sc2mac_wt_sel[9];
	assign  io_sc2mac_wt_bits_sel_10=sc2mac_wt_sel[10];
	assign  io_sc2mac_wt_bits_sel_11=sc2mac_wt_sel[11];
	assign  io_sc2mac_wt_bits_sel_12=sc2mac_wt_sel[12];
	assign  io_sc2mac_wt_bits_sel_13=sc2mac_wt_sel[13];
	assign  io_sc2mac_wt_bits_sel_14=sc2mac_wt_sel[14];
	assign  io_sc2mac_wt_bits_sel_15=sc2mac_wt_sel[15];
	assign	io_nvdla_clock_dla_clk_ovr_on_sync=dla_clk_ovr_on_sync;
	assign	io_nvdla_clock_global_clk_ovr_on_sync=global_clk_ovr_on_sync;
	assign	io_nvdla_clock_tmc2slcg_disable_clock_gating=tmc2slcg_disable_clock_gating;

	

	

	

	

NV_soDLA_cmac	NV_soDLA_cmac(
		//.clock(clock),
		//.reset(reset),
		.io_nvdla_clock_nvdla_core_clk(io_nvdla_clock_nvdla_core_clk),
		.io_nvdla_clock_dla_clk_ovr_on_sync(io_nvdla_clock_dla_clk_ovr_on_sync),
		.io_nvdla_clock_global_clk_ovr_on_sync(io_nvdla_clock_global_clk_ovr_on_sync),
		.io_nvdla_clock_tmc2slcg_disable_clock_gating(io_nvdla_clock_tmc2slcg_disable_clock_gating),
		.io_nvdla_core_rstn(io_nvdla_core_rstn),
		.io_csb2cmac_a_req_ready(io_csb2cmac_a_req_ready),
		.io_csb2cmac_a_req_valid(io_csb2cmac_a_req_valid),
		.io_csb2cmac_a_req_bits(io_csb2cmac_a_req_bits),
		.io_csb2cmac_a_resp_valid(io_csb2cmac_a_resp_valid),
		.io_csb2cmac_a_resp_bits(io_csb2cmac_a_resp_bits),
		.io_mac2accu_valid(io_mac2accu_valid),
		.io_mac2accu_bits_mask_0(io_mac2accu_bits_mask_0),
		.io_mac2accu_bits_mask_1(io_mac2accu_bits_mask_1),
		.io_mac2accu_bits_mask_2(io_mac2accu_bits_mask_2),
		.io_mac2accu_bits_mask_3(io_mac2accu_bits_mask_3),
		.io_mac2accu_bits_mask_4(io_mac2accu_bits_mask_4),
		.io_mac2accu_bits_mask_5(io_mac2accu_bits_mask_5),
		.io_mac2accu_bits_mask_6(io_mac2accu_bits_mask_6),
		.io_mac2accu_bits_mask_7(io_mac2accu_bits_mask_7),
		.io_mac2accu_bits_mask_8(io_mac2accu_bits_mask_8),
		.io_mac2accu_bits_mask_9(io_mac2accu_bits_mask_9),
		.io_mac2accu_bits_mask_10(io_mac2accu_bits_mask_10),
		.io_mac2accu_bits_mask_11(io_mac2accu_bits_mask_11),
		.io_mac2accu_bits_mask_12(io_mac2accu_bits_mask_12),
		.io_mac2accu_bits_mask_13(io_mac2accu_bits_mask_13),
		.io_mac2accu_bits_mask_14(io_mac2accu_bits_mask_14),
		.io_mac2accu_bits_mask_15(io_mac2accu_bits_mask_15),
		.io_mac2accu_bits_data_0(io_mac2accu_bits_data_0),
		.io_mac2accu_bits_data_1(io_mac2accu_bits_data_1),
		.io_mac2accu_bits_data_2(io_mac2accu_bits_data_2),
		.io_mac2accu_bits_data_3(io_mac2accu_bits_data_3),
		.io_mac2accu_bits_data_4(io_mac2accu_bits_data_4),
		.io_mac2accu_bits_data_5(io_mac2accu_bits_data_5),
		.io_mac2accu_bits_data_6(io_mac2accu_bits_data_6),
		.io_mac2accu_bits_data_7(io_mac2accu_bits_data_7),
		.io_mac2accu_bits_data_8(io_mac2accu_bits_data_8),
		.io_mac2accu_bits_data_9(io_mac2accu_bits_data_9),
		.io_mac2accu_bits_data_10(io_mac2accu_bits_data_10),
		.io_mac2accu_bits_data_11(io_mac2accu_bits_data_11),
		.io_mac2accu_bits_data_12(io_mac2accu_bits_data_12),
		.io_mac2accu_bits_data_13(io_mac2accu_bits_data_13),
		.io_mac2accu_bits_data_14(io_mac2accu_bits_data_14),
		.io_mac2accu_bits_data_15(io_mac2accu_bits_data_15),
		.io_mac2accu_bits_pd(io_mac2accu_bits_pd),
		.io_sc2mac_dat_valid(io_sc2mac_dat_valid),
		.io_sc2mac_dat_bits_mask_0(io_sc2mac_dat_bits_mask_0),
		.io_sc2mac_dat_bits_mask_1(io_sc2mac_dat_bits_mask_1),
		.io_sc2mac_dat_bits_mask_2(io_sc2mac_dat_bits_mask_2),
		.io_sc2mac_dat_bits_mask_3(io_sc2mac_dat_bits_mask_3),
		.io_sc2mac_dat_bits_mask_4(io_sc2mac_dat_bits_mask_4),
		.io_sc2mac_dat_bits_mask_5(io_sc2mac_dat_bits_mask_5),
		.io_sc2mac_dat_bits_mask_6(io_sc2mac_dat_bits_mask_6),
		.io_sc2mac_dat_bits_mask_7(io_sc2mac_dat_bits_mask_7),
		.io_sc2mac_dat_bits_mask_8(io_sc2mac_dat_bits_mask_8),
		.io_sc2mac_dat_bits_mask_9(io_sc2mac_dat_bits_mask_9),
		.io_sc2mac_dat_bits_mask_10(io_sc2mac_dat_bits_mask_10),
		.io_sc2mac_dat_bits_mask_11(io_sc2mac_dat_bits_mask_11),
		.io_sc2mac_dat_bits_mask_12(io_sc2mac_dat_bits_mask_12),
		.io_sc2mac_dat_bits_mask_13(io_sc2mac_dat_bits_mask_13),
		.io_sc2mac_dat_bits_mask_14(io_sc2mac_dat_bits_mask_14),
		.io_sc2mac_dat_bits_mask_15(io_sc2mac_dat_bits_mask_15),
		.io_sc2mac_dat_bits_mask_16(io_sc2mac_dat_bits_mask_16),
		.io_sc2mac_dat_bits_mask_17(io_sc2mac_dat_bits_mask_17),
		.io_sc2mac_dat_bits_mask_18(io_sc2mac_dat_bits_mask_18),
		.io_sc2mac_dat_bits_mask_19(io_sc2mac_dat_bits_mask_19),
		.io_sc2mac_dat_bits_mask_20(io_sc2mac_dat_bits_mask_20),
		.io_sc2mac_dat_bits_mask_21(io_sc2mac_dat_bits_mask_21),
		.io_sc2mac_dat_bits_mask_22(io_sc2mac_dat_bits_mask_22),
		.io_sc2mac_dat_bits_mask_23(io_sc2mac_dat_bits_mask_23),
		.io_sc2mac_dat_bits_mask_24(io_sc2mac_dat_bits_mask_24),
		.io_sc2mac_dat_bits_mask_25(io_sc2mac_dat_bits_mask_25),
		.io_sc2mac_dat_bits_mask_26(io_sc2mac_dat_bits_mask_26),
		.io_sc2mac_dat_bits_mask_27(io_sc2mac_dat_bits_mask_27),
		.io_sc2mac_dat_bits_mask_28(io_sc2mac_dat_bits_mask_28),
		.io_sc2mac_dat_bits_mask_29(io_sc2mac_dat_bits_mask_29),
		.io_sc2mac_dat_bits_mask_30(io_sc2mac_dat_bits_mask_30),
		.io_sc2mac_dat_bits_mask_31(io_sc2mac_dat_bits_mask_31),
		.io_sc2mac_dat_bits_mask_32(io_sc2mac_dat_bits_mask_32),
		.io_sc2mac_dat_bits_mask_33(io_sc2mac_dat_bits_mask_33),
		.io_sc2mac_dat_bits_mask_34(io_sc2mac_dat_bits_mask_34),
		.io_sc2mac_dat_bits_mask_35(io_sc2mac_dat_bits_mask_35),
		.io_sc2mac_dat_bits_mask_36(io_sc2mac_dat_bits_mask_36),
		.io_sc2mac_dat_bits_mask_37(io_sc2mac_dat_bits_mask_37),
		.io_sc2mac_dat_bits_mask_38(io_sc2mac_dat_bits_mask_38),
		.io_sc2mac_dat_bits_mask_39(io_sc2mac_dat_bits_mask_39),
		.io_sc2mac_dat_bits_mask_40(io_sc2mac_dat_bits_mask_40),
		.io_sc2mac_dat_bits_mask_41(io_sc2mac_dat_bits_mask_41),
		.io_sc2mac_dat_bits_mask_42(io_sc2mac_dat_bits_mask_42),
		.io_sc2mac_dat_bits_mask_43(io_sc2mac_dat_bits_mask_43),
		.io_sc2mac_dat_bits_mask_44(io_sc2mac_dat_bits_mask_44),
		.io_sc2mac_dat_bits_mask_45(io_sc2mac_dat_bits_mask_45),
		.io_sc2mac_dat_bits_mask_46(io_sc2mac_dat_bits_mask_46),
		.io_sc2mac_dat_bits_mask_47(io_sc2mac_dat_bits_mask_47),
		.io_sc2mac_dat_bits_mask_48(io_sc2mac_dat_bits_mask_48),
		.io_sc2mac_dat_bits_mask_49(io_sc2mac_dat_bits_mask_49),
		.io_sc2mac_dat_bits_mask_50(io_sc2mac_dat_bits_mask_50),
		.io_sc2mac_dat_bits_mask_51(io_sc2mac_dat_bits_mask_51),
		.io_sc2mac_dat_bits_mask_52(io_sc2mac_dat_bits_mask_52),
		.io_sc2mac_dat_bits_mask_53(io_sc2mac_dat_bits_mask_53),
		.io_sc2mac_dat_bits_mask_54(io_sc2mac_dat_bits_mask_54),
		.io_sc2mac_dat_bits_mask_55(io_sc2mac_dat_bits_mask_55),
		.io_sc2mac_dat_bits_mask_56(io_sc2mac_dat_bits_mask_56),
		.io_sc2mac_dat_bits_mask_57(io_sc2mac_dat_bits_mask_57),
		.io_sc2mac_dat_bits_mask_58(io_sc2mac_dat_bits_mask_58),
		.io_sc2mac_dat_bits_mask_59(io_sc2mac_dat_bits_mask_59),
		.io_sc2mac_dat_bits_mask_60(io_sc2mac_dat_bits_mask_60),
		.io_sc2mac_dat_bits_mask_61(io_sc2mac_dat_bits_mask_61),
		.io_sc2mac_dat_bits_mask_62(io_sc2mac_dat_bits_mask_62),
		.io_sc2mac_dat_bits_mask_63(io_sc2mac_dat_bits_mask_63),
		.io_sc2mac_dat_bits_data_0(io_sc2mac_dat_bits_data_0),
		.io_sc2mac_dat_bits_data_1(io_sc2mac_dat_bits_data_1),
		.io_sc2mac_dat_bits_data_2(io_sc2mac_dat_bits_data_2),
		.io_sc2mac_dat_bits_data_3(io_sc2mac_dat_bits_data_3),
		.io_sc2mac_dat_bits_data_4(io_sc2mac_dat_bits_data_4),
		.io_sc2mac_dat_bits_data_5(io_sc2mac_dat_bits_data_5),
		.io_sc2mac_dat_bits_data_6(io_sc2mac_dat_bits_data_6),
		.io_sc2mac_dat_bits_data_7(io_sc2mac_dat_bits_data_7),
		.io_sc2mac_dat_bits_data_8(io_sc2mac_dat_bits_data_8),
		.io_sc2mac_dat_bits_data_9(io_sc2mac_dat_bits_data_9),
		.io_sc2mac_dat_bits_data_10(io_sc2mac_dat_bits_data_10),
		.io_sc2mac_dat_bits_data_11(io_sc2mac_dat_bits_data_11),
		.io_sc2mac_dat_bits_data_12(io_sc2mac_dat_bits_data_12),
		.io_sc2mac_dat_bits_data_13(io_sc2mac_dat_bits_data_13),
		.io_sc2mac_dat_bits_data_14(io_sc2mac_dat_bits_data_14),
		.io_sc2mac_dat_bits_data_15(io_sc2mac_dat_bits_data_15),
		.io_sc2mac_dat_bits_data_16(io_sc2mac_dat_bits_data_16),
		.io_sc2mac_dat_bits_data_17(io_sc2mac_dat_bits_data_17),
		.io_sc2mac_dat_bits_data_18(io_sc2mac_dat_bits_data_18),
		.io_sc2mac_dat_bits_data_19(io_sc2mac_dat_bits_data_19),
		.io_sc2mac_dat_bits_data_20(io_sc2mac_dat_bits_data_20),
		.io_sc2mac_dat_bits_data_21(io_sc2mac_dat_bits_data_21),
		.io_sc2mac_dat_bits_data_22(io_sc2mac_dat_bits_data_22),
		.io_sc2mac_dat_bits_data_23(io_sc2mac_dat_bits_data_23),
		.io_sc2mac_dat_bits_data_24(io_sc2mac_dat_bits_data_24),
		.io_sc2mac_dat_bits_data_25(io_sc2mac_dat_bits_data_25),
		.io_sc2mac_dat_bits_data_26(io_sc2mac_dat_bits_data_26),
		.io_sc2mac_dat_bits_data_27(io_sc2mac_dat_bits_data_27),
		.io_sc2mac_dat_bits_data_28(io_sc2mac_dat_bits_data_28),
		.io_sc2mac_dat_bits_data_29(io_sc2mac_dat_bits_data_29),
		.io_sc2mac_dat_bits_data_30(io_sc2mac_dat_bits_data_30),
		.io_sc2mac_dat_bits_data_31(io_sc2mac_dat_bits_data_31),
		.io_sc2mac_dat_bits_data_32(io_sc2mac_dat_bits_data_32),
		.io_sc2mac_dat_bits_data_33(io_sc2mac_dat_bits_data_33),
		.io_sc2mac_dat_bits_data_34(io_sc2mac_dat_bits_data_34),
		.io_sc2mac_dat_bits_data_35(io_sc2mac_dat_bits_data_35),
		.io_sc2mac_dat_bits_data_36(io_sc2mac_dat_bits_data_36),
		.io_sc2mac_dat_bits_data_37(io_sc2mac_dat_bits_data_37),
		.io_sc2mac_dat_bits_data_38(io_sc2mac_dat_bits_data_38),
		.io_sc2mac_dat_bits_data_39(io_sc2mac_dat_bits_data_39),
		.io_sc2mac_dat_bits_data_40(io_sc2mac_dat_bits_data_40),
		.io_sc2mac_dat_bits_data_41(io_sc2mac_dat_bits_data_41),
		.io_sc2mac_dat_bits_data_42(io_sc2mac_dat_bits_data_42),
		.io_sc2mac_dat_bits_data_43(io_sc2mac_dat_bits_data_43),
		.io_sc2mac_dat_bits_data_44(io_sc2mac_dat_bits_data_44),
		.io_sc2mac_dat_bits_data_45(io_sc2mac_dat_bits_data_45),
		.io_sc2mac_dat_bits_data_46(io_sc2mac_dat_bits_data_46),
		.io_sc2mac_dat_bits_data_47(io_sc2mac_dat_bits_data_47),
		.io_sc2mac_dat_bits_data_48(io_sc2mac_dat_bits_data_48),
		.io_sc2mac_dat_bits_data_49(io_sc2mac_dat_bits_data_49),
		.io_sc2mac_dat_bits_data_50(io_sc2mac_dat_bits_data_50),
		.io_sc2mac_dat_bits_data_51(io_sc2mac_dat_bits_data_51),
		.io_sc2mac_dat_bits_data_52(io_sc2mac_dat_bits_data_52),
		.io_sc2mac_dat_bits_data_53(io_sc2mac_dat_bits_data_53),
		.io_sc2mac_dat_bits_data_54(io_sc2mac_dat_bits_data_54),
		.io_sc2mac_dat_bits_data_55(io_sc2mac_dat_bits_data_55),
		.io_sc2mac_dat_bits_data_56(io_sc2mac_dat_bits_data_56),
		.io_sc2mac_dat_bits_data_57(io_sc2mac_dat_bits_data_57),
		.io_sc2mac_dat_bits_data_58(io_sc2mac_dat_bits_data_58),
		.io_sc2mac_dat_bits_data_59(io_sc2mac_dat_bits_data_59),
		.io_sc2mac_dat_bits_data_60(io_sc2mac_dat_bits_data_60),
		.io_sc2mac_dat_bits_data_61(io_sc2mac_dat_bits_data_61),
		.io_sc2mac_dat_bits_data_62(io_sc2mac_dat_bits_data_62),
		.io_sc2mac_dat_bits_data_63(io_sc2mac_dat_bits_data_63),
		.io_sc2mac_dat_bits_pd(io_sc2mac_dat_bits_pd),
		.io_sc2mac_wt_valid(io_sc2mac_wt_valid),
		.io_sc2mac_wt_bits_sel_0(io_sc2mac_wt_bits_sel_0),
		.io_sc2mac_wt_bits_sel_1(io_sc2mac_wt_bits_sel_1),
		.io_sc2mac_wt_bits_sel_2(io_sc2mac_wt_bits_sel_2),
		.io_sc2mac_wt_bits_sel_3(io_sc2mac_wt_bits_sel_3),
		.io_sc2mac_wt_bits_sel_4(io_sc2mac_wt_bits_sel_4),
		.io_sc2mac_wt_bits_sel_5(io_sc2mac_wt_bits_sel_5),
		.io_sc2mac_wt_bits_sel_6(io_sc2mac_wt_bits_sel_6),
		.io_sc2mac_wt_bits_sel_7(io_sc2mac_wt_bits_sel_7),
		.io_sc2mac_wt_bits_sel_8(io_sc2mac_wt_bits_sel_8),
		.io_sc2mac_wt_bits_sel_9(io_sc2mac_wt_bits_sel_9),
		.io_sc2mac_wt_bits_sel_10(io_sc2mac_wt_bits_sel_10),
		.io_sc2mac_wt_bits_sel_11(io_sc2mac_wt_bits_sel_11),
		.io_sc2mac_wt_bits_sel_12(io_sc2mac_wt_bits_sel_12),
		.io_sc2mac_wt_bits_sel_13(io_sc2mac_wt_bits_sel_13),
		.io_sc2mac_wt_bits_sel_14(io_sc2mac_wt_bits_sel_14),
		.io_sc2mac_wt_bits_sel_15(io_sc2mac_wt_bits_sel_15),
		.io_sc2mac_wt_bits_mask_0(io_sc2mac_wt_bits_mask_0),
		.io_sc2mac_wt_bits_mask_1(io_sc2mac_wt_bits_mask_1),
		.io_sc2mac_wt_bits_mask_2(io_sc2mac_wt_bits_mask_2),
		.io_sc2mac_wt_bits_mask_3(io_sc2mac_wt_bits_mask_3),
		.io_sc2mac_wt_bits_mask_4(io_sc2mac_wt_bits_mask_4),
		.io_sc2mac_wt_bits_mask_5(io_sc2mac_wt_bits_mask_5),
		.io_sc2mac_wt_bits_mask_6(io_sc2mac_wt_bits_mask_6),
		.io_sc2mac_wt_bits_mask_7(io_sc2mac_wt_bits_mask_7),
		.io_sc2mac_wt_bits_mask_8(io_sc2mac_wt_bits_mask_8),
		.io_sc2mac_wt_bits_mask_9(io_sc2mac_wt_bits_mask_9),
		.io_sc2mac_wt_bits_mask_10(io_sc2mac_wt_bits_mask_10),
		.io_sc2mac_wt_bits_mask_11(io_sc2mac_wt_bits_mask_11),
		.io_sc2mac_wt_bits_mask_12(io_sc2mac_wt_bits_mask_12),
		.io_sc2mac_wt_bits_mask_13(io_sc2mac_wt_bits_mask_13),
		.io_sc2mac_wt_bits_mask_14(io_sc2mac_wt_bits_mask_14),
		.io_sc2mac_wt_bits_mask_15(io_sc2mac_wt_bits_mask_15),
		.io_sc2mac_wt_bits_mask_16(io_sc2mac_wt_bits_mask_16),
		.io_sc2mac_wt_bits_mask_17(io_sc2mac_wt_bits_mask_17),
		.io_sc2mac_wt_bits_mask_18(io_sc2mac_wt_bits_mask_18),
		.io_sc2mac_wt_bits_mask_19(io_sc2mac_wt_bits_mask_19),
		.io_sc2mac_wt_bits_mask_20(io_sc2mac_wt_bits_mask_20),
		.io_sc2mac_wt_bits_mask_21(io_sc2mac_wt_bits_mask_21),
		.io_sc2mac_wt_bits_mask_22(io_sc2mac_wt_bits_mask_22),
		.io_sc2mac_wt_bits_mask_23(io_sc2mac_wt_bits_mask_23),
		.io_sc2mac_wt_bits_mask_24(io_sc2mac_wt_bits_mask_24),
		.io_sc2mac_wt_bits_mask_25(io_sc2mac_wt_bits_mask_25),
		.io_sc2mac_wt_bits_mask_26(io_sc2mac_wt_bits_mask_26),
		.io_sc2mac_wt_bits_mask_27(io_sc2mac_wt_bits_mask_27),
		.io_sc2mac_wt_bits_mask_28(io_sc2mac_wt_bits_mask_28),
		.io_sc2mac_wt_bits_mask_29(io_sc2mac_wt_bits_mask_29),
		.io_sc2mac_wt_bits_mask_30(io_sc2mac_wt_bits_mask_30),
		.io_sc2mac_wt_bits_mask_31(io_sc2mac_wt_bits_mask_31),
		.io_sc2mac_wt_bits_mask_32(io_sc2mac_wt_bits_mask_32),
		.io_sc2mac_wt_bits_mask_33(io_sc2mac_wt_bits_mask_33),
		.io_sc2mac_wt_bits_mask_34(io_sc2mac_wt_bits_mask_34),
		.io_sc2mac_wt_bits_mask_35(io_sc2mac_wt_bits_mask_35),
		.io_sc2mac_wt_bits_mask_36(io_sc2mac_wt_bits_mask_36),
		.io_sc2mac_wt_bits_mask_37(io_sc2mac_wt_bits_mask_37),
		.io_sc2mac_wt_bits_mask_38(io_sc2mac_wt_bits_mask_38),
		.io_sc2mac_wt_bits_mask_39(io_sc2mac_wt_bits_mask_39),
		.io_sc2mac_wt_bits_mask_40(io_sc2mac_wt_bits_mask_40),
		.io_sc2mac_wt_bits_mask_41(io_sc2mac_wt_bits_mask_41),
		.io_sc2mac_wt_bits_mask_42(io_sc2mac_wt_bits_mask_42),
		.io_sc2mac_wt_bits_mask_43(io_sc2mac_wt_bits_mask_43),
		.io_sc2mac_wt_bits_mask_44(io_sc2mac_wt_bits_mask_44),
		.io_sc2mac_wt_bits_mask_45(io_sc2mac_wt_bits_mask_45),
		.io_sc2mac_wt_bits_mask_46(io_sc2mac_wt_bits_mask_46),
		.io_sc2mac_wt_bits_mask_47(io_sc2mac_wt_bits_mask_47),
		.io_sc2mac_wt_bits_mask_48(io_sc2mac_wt_bits_mask_48),
		.io_sc2mac_wt_bits_mask_49(io_sc2mac_wt_bits_mask_49),
		.io_sc2mac_wt_bits_mask_50(io_sc2mac_wt_bits_mask_50),
		.io_sc2mac_wt_bits_mask_51(io_sc2mac_wt_bits_mask_51),
		.io_sc2mac_wt_bits_mask_52(io_sc2mac_wt_bits_mask_52),
		.io_sc2mac_wt_bits_mask_53(io_sc2mac_wt_bits_mask_53),
		.io_sc2mac_wt_bits_mask_54(io_sc2mac_wt_bits_mask_54),
		.io_sc2mac_wt_bits_mask_55(io_sc2mac_wt_bits_mask_55),
		.io_sc2mac_wt_bits_mask_56(io_sc2mac_wt_bits_mask_56),
		.io_sc2mac_wt_bits_mask_57(io_sc2mac_wt_bits_mask_57),
		.io_sc2mac_wt_bits_mask_58(io_sc2mac_wt_bits_mask_58),
		.io_sc2mac_wt_bits_mask_59(io_sc2mac_wt_bits_mask_59),
		.io_sc2mac_wt_bits_mask_60(io_sc2mac_wt_bits_mask_60),
		.io_sc2mac_wt_bits_mask_61(io_sc2mac_wt_bits_mask_61),
		.io_sc2mac_wt_bits_mask_62(io_sc2mac_wt_bits_mask_62),
		.io_sc2mac_wt_bits_mask_63(io_sc2mac_wt_bits_mask_63),
		.io_sc2mac_wt_bits_data_0(io_sc2mac_wt_bits_data_0),
		.io_sc2mac_wt_bits_data_1(io_sc2mac_wt_bits_data_1),
		.io_sc2mac_wt_bits_data_2(io_sc2mac_wt_bits_data_2),
		.io_sc2mac_wt_bits_data_3(io_sc2mac_wt_bits_data_3),
		.io_sc2mac_wt_bits_data_4(io_sc2mac_wt_bits_data_4),
		.io_sc2mac_wt_bits_data_5(io_sc2mac_wt_bits_data_5),
		.io_sc2mac_wt_bits_data_6(io_sc2mac_wt_bits_data_6),
		.io_sc2mac_wt_bits_data_7(io_sc2mac_wt_bits_data_7),
		.io_sc2mac_wt_bits_data_8(io_sc2mac_wt_bits_data_8),
		.io_sc2mac_wt_bits_data_9(io_sc2mac_wt_bits_data_9),
		.io_sc2mac_wt_bits_data_10(io_sc2mac_wt_bits_data_10),
		.io_sc2mac_wt_bits_data_11(io_sc2mac_wt_bits_data_11),
		.io_sc2mac_wt_bits_data_12(io_sc2mac_wt_bits_data_12),
		.io_sc2mac_wt_bits_data_13(io_sc2mac_wt_bits_data_13),
		.io_sc2mac_wt_bits_data_14(io_sc2mac_wt_bits_data_14),
		.io_sc2mac_wt_bits_data_15(io_sc2mac_wt_bits_data_15),
		.io_sc2mac_wt_bits_data_16(io_sc2mac_wt_bits_data_16),
		.io_sc2mac_wt_bits_data_17(io_sc2mac_wt_bits_data_17),
		.io_sc2mac_wt_bits_data_18(io_sc2mac_wt_bits_data_18),
		.io_sc2mac_wt_bits_data_19(io_sc2mac_wt_bits_data_19),
		.io_sc2mac_wt_bits_data_20(io_sc2mac_wt_bits_data_20),
		.io_sc2mac_wt_bits_data_21(io_sc2mac_wt_bits_data_21),
		.io_sc2mac_wt_bits_data_22(io_sc2mac_wt_bits_data_22),
		.io_sc2mac_wt_bits_data_23(io_sc2mac_wt_bits_data_23),
		.io_sc2mac_wt_bits_data_24(io_sc2mac_wt_bits_data_24),
		.io_sc2mac_wt_bits_data_25(io_sc2mac_wt_bits_data_25),
		.io_sc2mac_wt_bits_data_26(io_sc2mac_wt_bits_data_26),
		.io_sc2mac_wt_bits_data_27(io_sc2mac_wt_bits_data_27),
		.io_sc2mac_wt_bits_data_28(io_sc2mac_wt_bits_data_28),
		.io_sc2mac_wt_bits_data_29(io_sc2mac_wt_bits_data_29),
		.io_sc2mac_wt_bits_data_30(io_sc2mac_wt_bits_data_30),
		.io_sc2mac_wt_bits_data_31(io_sc2mac_wt_bits_data_31),
		.io_sc2mac_wt_bits_data_32(io_sc2mac_wt_bits_data_32),
		.io_sc2mac_wt_bits_data_33(io_sc2mac_wt_bits_data_33),
		.io_sc2mac_wt_bits_data_34(io_sc2mac_wt_bits_data_34),
		.io_sc2mac_wt_bits_data_35(io_sc2mac_wt_bits_data_35),
		.io_sc2mac_wt_bits_data_36(io_sc2mac_wt_bits_data_36),
		.io_sc2mac_wt_bits_data_37(io_sc2mac_wt_bits_data_37),
		.io_sc2mac_wt_bits_data_38(io_sc2mac_wt_bits_data_38),
		.io_sc2mac_wt_bits_data_39(io_sc2mac_wt_bits_data_39),
		.io_sc2mac_wt_bits_data_40(io_sc2mac_wt_bits_data_40),
		.io_sc2mac_wt_bits_data_41(io_sc2mac_wt_bits_data_41),
		.io_sc2mac_wt_bits_data_42(io_sc2mac_wt_bits_data_42),
		.io_sc2mac_wt_bits_data_43(io_sc2mac_wt_bits_data_43),
		.io_sc2mac_wt_bits_data_44(io_sc2mac_wt_bits_data_44),
		.io_sc2mac_wt_bits_data_45(io_sc2mac_wt_bits_data_45),
		.io_sc2mac_wt_bits_data_46(io_sc2mac_wt_bits_data_46),
		.io_sc2mac_wt_bits_data_47(io_sc2mac_wt_bits_data_47),
		.io_sc2mac_wt_bits_data_48(io_sc2mac_wt_bits_data_48),
		.io_sc2mac_wt_bits_data_49(io_sc2mac_wt_bits_data_49),
		.io_sc2mac_wt_bits_data_50(io_sc2mac_wt_bits_data_50),
		.io_sc2mac_wt_bits_data_51(io_sc2mac_wt_bits_data_51),
		.io_sc2mac_wt_bits_data_52(io_sc2mac_wt_bits_data_52),
		.io_sc2mac_wt_bits_data_53(io_sc2mac_wt_bits_data_53),
		.io_sc2mac_wt_bits_data_54(io_sc2mac_wt_bits_data_54),
		.io_sc2mac_wt_bits_data_55(io_sc2mac_wt_bits_data_55),
		.io_sc2mac_wt_bits_data_56(io_sc2mac_wt_bits_data_56),
		.io_sc2mac_wt_bits_data_57(io_sc2mac_wt_bits_data_57),
		.io_sc2mac_wt_bits_data_58(io_sc2mac_wt_bits_data_58),
		.io_sc2mac_wt_bits_data_59(io_sc2mac_wt_bits_data_59),
		.io_sc2mac_wt_bits_data_60(io_sc2mac_wt_bits_data_60),
		.io_sc2mac_wt_bits_data_61(io_sc2mac_wt_bits_data_61),
		.io_sc2mac_wt_bits_data_62(io_sc2mac_wt_bits_data_62),
		.io_sc2mac_wt_bits_data_63(io_sc2mac_wt_bits_data_63)
	);

endmodule