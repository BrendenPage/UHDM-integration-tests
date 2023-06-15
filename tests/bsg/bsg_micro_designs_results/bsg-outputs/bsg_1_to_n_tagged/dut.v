module bsg_1_to_n_tagged(clk_i, reset_i, v_i, tag_i, yumi_o, v_o, ready_i);
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
  input clk_i;
  wire clk_i;
  wire [4:0] \many.bdv.bd.i ;
  wire [4:0] \many.bdv.i ;
  wire [31:0] \many.bdv.o ;
  wire \many.bdv.v_i ;
  input [31:0] ready_i;
  wire [31:0] ready_i;
  input reset_i;
  wire reset_i;
  input [4:0] tag_i;
  wire [4:0] tag_i;
  wire unused0;
  wire unused1;
  input v_i;
  wire v_i;
  output [31:0] v_o;
  wire [31:0] v_o;
  output yumi_o;
  wire yumi_o;
  assign _067_ = ~tag_i[4];
  assign _068_ = ~tag_i[3];
  assign _069_ = ~tag_i[2];
  assign _070_ = tag_i[0] ? ready_i[1] : ready_i[0];
  assign _071_ = tag_i[0] ? ready_i[3] : ready_i[2];
  assign _072_ = tag_i[1] ? _071_ : _070_;
  assign _073_ = tag_i[0] ? ready_i[5] : ready_i[4];
  assign _074_ = tag_i[0] ? ready_i[7] : ready_i[6];
  assign _075_ = tag_i[1] ? _074_ : _073_;
  assign _076_ = tag_i[2] ? _075_ : _072_;
  assign _077_ = tag_i[0] ? ready_i[9] : ready_i[8];
  assign _078_ = tag_i[0] ? ready_i[11] : ready_i[10];
  assign _079_ = tag_i[1] ? _078_ : _077_;
  assign _080_ = tag_i[0] ? ready_i[13] : ready_i[12];
  assign _081_ = tag_i[0] ? ready_i[15] : ready_i[14];
  assign _082_ = tag_i[1] ? _081_ : _080_;
  assign _083_ = tag_i[2] ? _082_ : _079_;
  assign _084_ = tag_i[3] ? _083_ : _076_;
  assign _085_ = tag_i[0] ? ready_i[17] : ready_i[16];
  assign _086_ = tag_i[0] ? ready_i[19] : ready_i[18];
  assign _087_ = tag_i[1] ? _086_ : _085_;
  assign _088_ = tag_i[0] ? ready_i[21] : ready_i[20];
  assign _089_ = tag_i[0] ? ready_i[23] : ready_i[22];
  assign _090_ = tag_i[1] ? _089_ : _088_;
  assign _091_ = tag_i[2] ? _090_ : _087_;
  assign _092_ = tag_i[0] ? ready_i[25] : ready_i[24];
  assign _093_ = tag_i[0] ? ready_i[27] : ready_i[26];
  assign _000_ = tag_i[1] ? _093_ : _092_;
  assign _001_ = tag_i[0] ? ready_i[29] : ready_i[28];
  assign _002_ = tag_i[0] ? ready_i[31] : ready_i[30];
  assign _003_ = tag_i[1] ? _002_ : _001_;
  assign _004_ = tag_i[2] ? _003_ : _000_;
  assign _005_ = tag_i[3] ? _004_ : _091_;
  assign _006_ = tag_i[4] ? _005_ : _084_;
  assign yumi_o = _006_ & v_i;
  assign _007_ = tag_i[1] | tag_i[0];
  assign _008_ = _007_ | tag_i[2];
  assign _009_ = _008_ | tag_i[3];
  assign _010_ = _009_ | tag_i[4];
  assign v_o[0] = v_i & ~(_010_);
  assign _011_ = tag_i[1] | ~(tag_i[0]);
  assign _012_ = _011_ | tag_i[2];
  assign _013_ = _012_ | tag_i[3];
  assign _014_ = _013_ | tag_i[4];
  assign v_o[1] = v_i & ~(_014_);
  assign _015_ = tag_i[0] | ~(tag_i[1]);
  assign _016_ = _015_ | tag_i[2];
  assign _017_ = _016_ | tag_i[3];
  assign _018_ = _017_ | tag_i[4];
  assign v_o[2] = v_i & ~(_018_);
  assign _019_ = ~(tag_i[1] & tag_i[0]);
  assign _020_ = _019_ | tag_i[2];
  assign _021_ = _020_ | tag_i[3];
  assign _022_ = _021_ | tag_i[4];
  assign v_o[3] = v_i & ~(_022_);
  assign _023_ = _007_ | _069_;
  assign _024_ = _023_ | tag_i[3];
  assign _025_ = _024_ | tag_i[4];
  assign v_o[4] = v_i & ~(_025_);
  assign _026_ = _011_ | _069_;
  assign _027_ = _026_ | tag_i[3];
  assign _028_ = _027_ | tag_i[4];
  assign v_o[5] = v_i & ~(_028_);
  assign _029_ = _015_ | _069_;
  assign _030_ = _029_ | tag_i[3];
  assign _031_ = _030_ | tag_i[4];
  assign v_o[6] = v_i & ~(_031_);
  assign _032_ = _019_ | _069_;
  assign _033_ = _032_ | tag_i[3];
  assign _034_ = _033_ | tag_i[4];
  assign v_o[7] = v_i & ~(_034_);
  assign _035_ = _008_ | _068_;
  assign _036_ = _035_ | tag_i[4];
  assign v_o[8] = v_i & ~(_036_);
  assign _037_ = _012_ | _068_;
  assign _038_ = _037_ | tag_i[4];
  assign v_o[9] = v_i & ~(_038_);
  assign _039_ = _016_ | _068_;
  assign _040_ = _039_ | tag_i[4];
  assign v_o[10] = v_i & ~(_040_);
  assign _041_ = _020_ | _068_;
  assign _042_ = _041_ | tag_i[4];
  assign v_o[11] = v_i & ~(_042_);
  assign _043_ = _023_ | _068_;
  assign _044_ = _043_ | tag_i[4];
  assign v_o[12] = v_i & ~(_044_);
  assign _045_ = _026_ | _068_;
  assign _046_ = _045_ | tag_i[4];
  assign v_o[13] = v_i & ~(_046_);
  assign _047_ = _029_ | _068_;
  assign _048_ = _047_ | tag_i[4];
  assign v_o[14] = v_i & ~(_048_);
  assign _049_ = _032_ | _068_;
  assign _050_ = _049_ | tag_i[4];
  assign v_o[15] = v_i & ~(_050_);
  assign _051_ = _009_ | _067_;
  assign v_o[16] = v_i & ~(_051_);
  assign _052_ = _013_ | _067_;
  assign v_o[17] = v_i & ~(_052_);
  assign _053_ = _017_ | _067_;
  assign v_o[18] = v_i & ~(_053_);
  assign _054_ = _021_ | _067_;
  assign v_o[19] = v_i & ~(_054_);
  assign _055_ = _024_ | _067_;
  assign v_o[20] = v_i & ~(_055_);
  assign _056_ = _027_ | _067_;
  assign v_o[21] = v_i & ~(_056_);
  assign _057_ = _030_ | _067_;
  assign v_o[22] = v_i & ~(_057_);
  assign _058_ = _033_ | _067_;
  assign v_o[23] = v_i & ~(_058_);
  assign _059_ = _035_ | _067_;
  assign v_o[24] = v_i & ~(_059_);
  assign _060_ = _037_ | _067_;
  assign v_o[25] = v_i & ~(_060_);
  assign _061_ = _039_ | _067_;
  assign v_o[26] = v_i & ~(_061_);
  assign _062_ = _041_ | _067_;
  assign v_o[27] = v_i & ~(_062_);
  assign _063_ = _043_ | _067_;
  assign v_o[28] = v_i & ~(_063_);
  assign _064_ = _045_ | _067_;
  assign v_o[29] = v_i & ~(_064_);
  assign _065_ = _047_ | _067_;
  assign v_o[30] = v_i & ~(_065_);
  assign _066_ = _049_ | _067_;
  assign v_o[31] = v_i & ~(_066_);
  assign \many.bdv.bd.i  = tag_i;
  assign \many.bdv.i  = tag_i;
  assign \many.bdv.o  = v_o;
  assign \many.bdv.v_i  = v_i;
  assign unused0 = clk_i;
  assign unused1 = reset_i;
endmodule
