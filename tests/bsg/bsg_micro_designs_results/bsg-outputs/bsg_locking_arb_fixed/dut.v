module bsg_locking_arb_fixed(clk_i, ready_i, unlock_i, reqs_i, grants_o);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  input clk_i;
  wire clk_i;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[0].fill ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[0].shifted ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[1].fill ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[1].shifted ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[2].fill ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[2].shifted ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[3].fill ;
  wire [15:0] \fixed_arb.enc.nw1.scan.scanN.row[3].shifted ;
  wire [79:0] \fixed_arb.enc.nw1.scan.t ;
  wire [15:0] \fixed_arb.grants_o ;
  wire \fixed_arb.ready_i ;
  output [15:0] grants_o;
  wire [15:0] grants_o;
  wire [15:0] not_req_mask_r;
  input ready_i;
  wire ready_i;
  wire \req_words_reg.clk_i ;
  wire [15:0] \req_words_reg.data_i ;
  wire [15:0] \req_words_reg.data_o ;
  reg [15:0] \req_words_reg.data_r ;
  wire \req_words_reg.en_i ;
  wire \req_words_reg.reset_i ;
  input [15:0] reqs_i;
  wire [15:0] reqs_i;
  input unlock_i;
  wire unlock_i;
  assign _078_ = ~ready_i;
  assign _079_ = \req_words_reg.data_r [0] | ~(reqs_i[0]);
  assign _080_ = reqs_i[1] & ~(\req_words_reg.data_r [1]);
  assign _081_ = _079_ & ~(_080_);
  assign _082_ = reqs_i[2] & ~(\req_words_reg.data_r [2]);
  assign _083_ = reqs_i[3] & ~(\req_words_reg.data_r [3]);
  assign _084_ = _083_ | _082_;
  assign _085_ = _081_ & ~(_084_);
  assign _086_ = reqs_i[4] & ~(\req_words_reg.data_r [4]);
  assign _087_ = reqs_i[5] & ~(\req_words_reg.data_r [5]);
  assign _088_ = _087_ | _086_;
  assign _089_ = reqs_i[6] & ~(\req_words_reg.data_r [6]);
  assign _090_ = reqs_i[7] & ~(\req_words_reg.data_r [7]);
  assign _091_ = _090_ | _089_;
  assign _092_ = _091_ | _088_;
  assign _093_ = _085_ & ~(_092_);
  assign _094_ = reqs_i[8] & ~(\req_words_reg.data_r [8]);
  assign _095_ = reqs_i[9] & ~(\req_words_reg.data_r [9]);
  assign _096_ = _095_ | _094_;
  assign _097_ = reqs_i[10] & ~(\req_words_reg.data_r [10]);
  assign _098_ = reqs_i[11] & ~(\req_words_reg.data_r [11]);
  assign _099_ = _098_ | _097_;
  assign _100_ = _099_ | _096_;
  assign _101_ = reqs_i[12] & ~(\req_words_reg.data_r [12]);
  assign _102_ = reqs_i[13] & ~(\req_words_reg.data_r [13]);
  assign _103_ = _102_ | _101_;
  assign _104_ = reqs_i[14] & ~(\req_words_reg.data_r [14]);
  assign _105_ = reqs_i[15] & ~(\req_words_reg.data_r [15]);
  assign _106_ = _105_ | _104_;
  assign _107_ = _106_ | _103_;
  assign _108_ = _107_ | _100_;
  assign _109_ = _108_ | ~(_093_);
  assign _110_ = ~(_082_ | _080_);
  assign _000_ = _086_ | _083_;
  assign _001_ = _110_ & ~(_000_);
  assign _002_ = _089_ | _087_;
  assign _003_ = _094_ | _090_;
  assign _004_ = _003_ | _002_;
  assign _005_ = _001_ & ~(_004_);
  assign _006_ = _097_ | _095_;
  assign _007_ = _101_ | _098_;
  assign _008_ = _007_ | _006_;
  assign _009_ = _104_ | _102_;
  assign _010_ = _009_ | _105_;
  assign _011_ = _010_ | _008_;
  assign _012_ = _005_ & ~(_011_);
  assign _013_ = ~(_012_ & _109_);
  assign \req_words_reg.data_i [0] = _013_ | _078_;
  assign grants_o[0] = ~\req_words_reg.data_i [0];
  assign _014_ = ~(_088_ | _084_);
  assign _015_ = _096_ | _091_;
  assign _016_ = _014_ & ~(_015_);
  assign _017_ = _103_ | _099_;
  assign _018_ = _017_ | _106_;
  assign _019_ = _016_ & ~(_018_);
  assign _020_ = _012_ | ~(_019_);
  assign grants_o[1] = ready_i & ~(_020_);
  assign _021_ = ~(_002_ | _000_);
  assign _022_ = _006_ | _003_;
  assign _023_ = _021_ & ~(_022_);
  assign _024_ = _009_ | _007_;
  assign _025_ = _024_ | _105_;
  assign _026_ = _023_ & ~(_025_);
  assign _027_ = _019_ | ~(_026_);
  assign grants_o[2] = ready_i & ~(_027_);
  assign _028_ = _100_ | _092_;
  assign _029_ = ~(_028_ | _107_);
  assign _030_ = _026_ | ~(_029_);
  assign grants_o[3] = ready_i & ~(_030_);
  assign _031_ = _008_ | _004_;
  assign _032_ = ~(_031_ | _010_);
  assign _033_ = _029_ | ~(_032_);
  assign grants_o[4] = ready_i & ~(_033_);
  assign _034_ = _017_ | _015_;
  assign _035_ = ~(_034_ | _106_);
  assign _036_ = _032_ | ~(_035_);
  assign grants_o[5] = ready_i & ~(_036_);
  assign _037_ = _024_ | _022_;
  assign _038_ = ~(_037_ | _105_);
  assign _039_ = _035_ | ~(_038_);
  assign grants_o[6] = ready_i & ~(_039_);
  assign _040_ = _038_ | _108_;
  assign grants_o[7] = ready_i & ~(_040_);
  assign _041_ = _011_ | ~(_108_);
  assign grants_o[8] = ready_i & ~(_041_);
  assign _042_ = _018_ | ~(_011_);
  assign grants_o[9] = ready_i & ~(_042_);
  assign _043_ = _025_ | ~(_018_);
  assign grants_o[10] = ready_i & ~(_043_);
  assign _044_ = _107_ | ~(_025_);
  assign grants_o[11] = ready_i & ~(_044_);
  assign _045_ = _010_ | ~(_107_);
  assign grants_o[12] = ready_i & ~(_045_);
  assign _046_ = _106_ | ~(_010_);
  assign grants_o[13] = ready_i & ~(_046_);
  assign _047_ = _105_ | ~(_104_);
  assign grants_o[14] = ready_i & ~(_047_);
  assign grants_o[15] = _105_ & ~(_078_);
  assign \req_words_reg.data_i [1] = ~grants_o[1];
  assign \req_words_reg.data_i [2] = ~grants_o[2];
  assign \req_words_reg.data_i [3] = ~grants_o[3];
  assign \req_words_reg.data_i [4] = ~grants_o[4];
  assign \req_words_reg.data_i [5] = ~grants_o[5];
  assign \req_words_reg.data_i [6] = ~grants_o[6];
  assign \req_words_reg.data_i [7] = ~grants_o[7];
  assign \req_words_reg.data_i [8] = ~grants_o[8];
  assign \req_words_reg.data_i [9] = ~grants_o[9];
  assign \req_words_reg.data_i [10] = ~grants_o[10];
  assign \req_words_reg.data_i [11] = ~grants_o[11];
  assign \req_words_reg.data_i [12] = ~grants_o[12];
  assign \req_words_reg.data_i [13] = ~grants_o[13];
  assign \req_words_reg.data_i [14] = ~grants_o[14];
  assign \req_words_reg.data_i [15] = ~grants_o[15];
  assign _048_ = ~(\req_words_reg.data_r [1] | \req_words_reg.data_r [0]);
  assign _049_ = \req_words_reg.data_r [3] | \req_words_reg.data_r [2];
  assign _050_ = _048_ & ~(_049_);
  assign _051_ = \req_words_reg.data_r [5] | \req_words_reg.data_r [4];
  assign _052_ = \req_words_reg.data_r [7] | \req_words_reg.data_r [6];
  assign _053_ = _052_ | _051_;
  assign _054_ = _050_ & ~(_053_);
  assign _055_ = \req_words_reg.data_r [9] | \req_words_reg.data_r [8];
  assign _056_ = \req_words_reg.data_r [11] | \req_words_reg.data_r [10];
  assign _057_ = _056_ | _055_;
  assign _058_ = \req_words_reg.data_r [13] | \req_words_reg.data_r [12];
  assign _059_ = \req_words_reg.data_r [15] | \req_words_reg.data_r [14];
  assign _060_ = _059_ | _058_;
  assign _061_ = _060_ | _057_;
  assign _062_ = _054_ & ~(_061_);
  assign _063_ = \req_words_reg.data_i [0] & ~(grants_o[1]);
  assign _064_ = grants_o[3] | grants_o[2];
  assign _065_ = _063_ & ~(_064_);
  assign _066_ = grants_o[5] | grants_o[4];
  assign _067_ = grants_o[7] | grants_o[6];
  assign _068_ = _067_ | _066_;
  assign _069_ = _065_ & ~(_068_);
  assign _070_ = grants_o[9] | grants_o[8];
  assign _071_ = grants_o[11] | grants_o[10];
  assign _072_ = _071_ | _070_;
  assign _073_ = grants_o[13] | grants_o[12];
  assign _074_ = grants_o[15] | grants_o[14];
  assign _075_ = _074_ | _073_;
  assign _076_ = _075_ | _072_;
  assign _077_ = _069_ & ~(_076_);
  assign \req_words_reg.en_i  = _062_ & ~(_077_);
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [0] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [0] <= \req_words_reg.data_i [0];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [1] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [1] <= \req_words_reg.data_i [1];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [2] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [2] <= \req_words_reg.data_i [2];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [3] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [3] <= \req_words_reg.data_i [3];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [4] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [4] <= \req_words_reg.data_i [4];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [5] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [5] <= \req_words_reg.data_i [5];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [6] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [6] <= \req_words_reg.data_i [6];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [7] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [7] <= \req_words_reg.data_i [7];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [8] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [8] <= \req_words_reg.data_i [8];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [9] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [9] <= \req_words_reg.data_i [9];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [10] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [10] <= \req_words_reg.data_i [10];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [11] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [11] <= \req_words_reg.data_i [11];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [12] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [12] <= \req_words_reg.data_i [12];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [13] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [13] <= \req_words_reg.data_i [13];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [14] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [14] <= \req_words_reg.data_i [14];
  always @(posedge clk_i)
    if (unlock_i) \req_words_reg.data_r [15] <= 1'h0;
    else if (\req_words_reg.en_i ) \req_words_reg.data_r [15] <= \req_words_reg.data_i [15];
  assign \fixed_arb.enc.nw1.scan.scanN.row[0].fill  = 16'h0000;
  assign \fixed_arb.enc.nw1.scan.scanN.row[0].shifted [15] = 1'h0;
  assign \fixed_arb.enc.nw1.scan.scanN.row[1].fill  = 16'h0000;
  assign \fixed_arb.enc.nw1.scan.scanN.row[1].shifted [15:14] = 2'h0;
  assign \fixed_arb.enc.nw1.scan.scanN.row[2].fill  = 16'h0000;
  assign \fixed_arb.enc.nw1.scan.scanN.row[2].shifted [15:12] = 4'h0;
  assign \fixed_arb.enc.nw1.scan.scanN.row[3].fill  = 16'h0000;
  assign \fixed_arb.enc.nw1.scan.scanN.row[3].shifted [15:8] = 8'h00;
  assign { \fixed_arb.enc.nw1.scan.t [43:36], \fixed_arb.enc.nw1.scan.t [29:18] } = { \fixed_arb.enc.nw1.scan.scanN.row[2].shifted [7:0], \fixed_arb.enc.nw1.scan.scanN.row[1].shifted [11:0] };
  assign \fixed_arb.grants_o  = grants_o;
  assign \fixed_arb.ready_i  = ready_i;
  assign not_req_mask_r = \req_words_reg.data_r ;
  assign \req_words_reg.clk_i  = clk_i;
  assign \req_words_reg.data_o  = \req_words_reg.data_r ;
  assign \req_words_reg.reset_i  = unlock_i;
endmodule