module bsg_counter_dynamic_limit(clk_i, reset_i, limit_i, counter_o);
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
  wire [15:0] _054_;
  wire [15:0] _055_;
  input clk_i;
  wire clk_i;
  output [15:0] counter_o;
  reg [15:0] counter_o;
  input [15:0] limit_i;
  wire [15:0] limit_i;
  input reset_i;
  wire reset_i;
  assign _014_ = ~(limit_i[0] ^ counter_o[0]);
  assign _015_ = limit_i[1] ^ counter_o[1];
  assign _016_ = _014_ & ~(_015_);
  assign _017_ = limit_i[2] ^ counter_o[2];
  assign _018_ = limit_i[3] ^ counter_o[3];
  assign _019_ = _018_ | _017_;
  assign _020_ = _016_ & ~(_019_);
  assign _021_ = limit_i[4] ^ counter_o[4];
  assign _022_ = limit_i[5] ^ counter_o[5];
  assign _023_ = _022_ | _021_;
  assign _024_ = limit_i[6] ^ counter_o[6];
  assign _025_ = limit_i[7] ^ counter_o[7];
  assign _026_ = _025_ | _024_;
  assign _027_ = _026_ | _023_;
  assign _028_ = _020_ & ~(_027_);
  assign _029_ = limit_i[8] ^ counter_o[8];
  assign _030_ = limit_i[9] ^ counter_o[9];
  assign _031_ = _030_ | _029_;
  assign _032_ = limit_i[10] ^ counter_o[10];
  assign _033_ = limit_i[11] ^ counter_o[11];
  assign _034_ = _033_ | _032_;
  assign _035_ = _034_ | _031_;
  assign _036_ = limit_i[12] ^ counter_o[12];
  assign _037_ = limit_i[13] ^ counter_o[13];
  assign _038_ = _037_ | _036_;
  assign _039_ = limit_i[14] ^ counter_o[14];
  assign _040_ = limit_i[15] ^ counter_o[15];
  assign _041_ = _040_ | _039_;
  assign _042_ = _041_ | _038_;
  assign _043_ = _042_ | _035_;
  assign _044_ = _028_ & ~(_043_);
  assign _000_ = _044_ | reset_i;
  assign _054_[0] = ~counter_o[0];
  assign _055_[1] = counter_o[1] ^ counter_o[0];
  assign _045_ = ~(counter_o[1] & counter_o[0]);
  assign _055_[2] = ~(_045_ ^ counter_o[2]);
  assign _046_ = counter_o[2] & ~(_045_);
  assign _055_[3] = _046_ ^ counter_o[3];
  assign _047_ = ~(counter_o[3] & counter_o[2]);
  assign _048_ = _047_ | _045_;
  assign _055_[4] = ~(_048_ ^ counter_o[4]);
  assign _049_ = counter_o[4] & ~(_048_);
  assign _055_[5] = _049_ ^ counter_o[5];
  assign _050_ = ~(counter_o[5] & counter_o[4]);
  assign _051_ = _050_ | _048_;
  assign _055_[6] = ~(_051_ ^ counter_o[6]);
  assign _052_ = counter_o[6] & ~(_051_);
  assign _055_[7] = _052_ ^ counter_o[7];
  assign _053_ = ~(counter_o[7] & counter_o[6]);
  assign _001_ = _053_ | _050_;
  assign _002_ = _001_ | _048_;
  assign _055_[8] = ~(_002_ ^ counter_o[8]);
  assign _003_ = counter_o[8] & ~(_002_);
  assign _055_[9] = _003_ ^ counter_o[9];
  assign _004_ = ~(counter_o[9] & counter_o[8]);
  assign _005_ = _004_ | _002_;
  assign _055_[10] = ~(_005_ ^ counter_o[10]);
  assign _006_ = counter_o[10] & ~(_005_);
  assign _055_[11] = _006_ ^ counter_o[11];
  assign _007_ = ~(counter_o[11] & counter_o[10]);
  assign _008_ = _007_ | _004_;
  assign _009_ = _008_ | _002_;
  assign _055_[12] = ~(_009_ ^ counter_o[12]);
  assign _010_ = counter_o[12] & ~(_009_);
  assign _055_[13] = _010_ ^ counter_o[13];
  assign _011_ = ~(counter_o[13] & counter_o[12]);
  assign _012_ = _011_ | _009_;
  assign _055_[14] = ~(_012_ ^ counter_o[14]);
  assign _013_ = counter_o[14] & ~(_012_);
  assign _055_[15] = _013_ ^ counter_o[15];
  always @(posedge clk_i)
    if (_000_) counter_o[0] <= 1'h0;
    else counter_o[0] <= _054_[0];
  always @(posedge clk_i)
    if (_000_) counter_o[1] <= 1'h0;
    else counter_o[1] <= _055_[1];
  always @(posedge clk_i)
    if (_000_) counter_o[2] <= 1'h0;
    else counter_o[2] <= _055_[2];
  always @(posedge clk_i)
    if (_000_) counter_o[3] <= 1'h0;
    else counter_o[3] <= _055_[3];
  always @(posedge clk_i)
    if (_000_) counter_o[4] <= 1'h0;
    else counter_o[4] <= _055_[4];
  always @(posedge clk_i)
    if (_000_) counter_o[5] <= 1'h0;
    else counter_o[5] <= _055_[5];
  always @(posedge clk_i)
    if (_000_) counter_o[6] <= 1'h0;
    else counter_o[6] <= _055_[6];
  always @(posedge clk_i)
    if (_000_) counter_o[7] <= 1'h0;
    else counter_o[7] <= _055_[7];
  always @(posedge clk_i)
    if (_000_) counter_o[8] <= 1'h0;
    else counter_o[8] <= _055_[8];
  always @(posedge clk_i)
    if (_000_) counter_o[9] <= 1'h0;
    else counter_o[9] <= _055_[9];
  always @(posedge clk_i)
    if (_000_) counter_o[10] <= 1'h0;
    else counter_o[10] <= _055_[10];
  always @(posedge clk_i)
    if (_000_) counter_o[11] <= 1'h0;
    else counter_o[11] <= _055_[11];
  always @(posedge clk_i)
    if (_000_) counter_o[12] <= 1'h0;
    else counter_o[12] <= _055_[12];
  always @(posedge clk_i)
    if (_000_) counter_o[13] <= 1'h0;
    else counter_o[13] <= _055_[13];
  always @(posedge clk_i)
    if (_000_) counter_o[14] <= 1'h0;
    else counter_o[14] <= _055_[14];
  always @(posedge clk_i)
    if (_000_) counter_o[15] <= 1'h0;
    else counter_o[15] <= _055_[15];
  assign _054_[15:1] = counter_o[15:1];
  assign _055_[0] = _054_[0];
endmodule
