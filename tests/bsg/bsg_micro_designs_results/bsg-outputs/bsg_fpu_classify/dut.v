module bsg_fpu_classify(a_i, class_o);
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
  input [15:0] a_i;
  wire [15:0] a_i;
  output [15:0] class_o;
  wire [15:0] class_o;
  wire denormal;
  wire infty;
  wire nan;
  wire [15:0] \prep.a_i ;
  wire \prep.denormal_o ;
  wire [4:0] \prep.exp_o ;
  wire \prep.infty_o ;
  wire [9:0] \prep.man_o ;
  wire \prep.nan_o ;
  wire \prep.sig_nan_o ;
  wire \prep.sign_o ;
  wire sig_nan;
  wire sign;
  assign _00_ = ~(a_i[11] & a_i[10]);
  assign _01_ = ~(a_i[13] & a_i[12]);
  assign _02_ = _01_ | _00_;
  assign _03_ = _02_ | ~(a_i[14]);
  assign _04_ = ~(a_i[1] | a_i[0]);
  assign _05_ = a_i[3] | a_i[2];
  assign _06_ = _04_ & ~(_05_);
  assign _07_ = a_i[5] | a_i[4];
  assign _08_ = a_i[7] | a_i[6];
  assign _09_ = _08_ | _07_;
  assign _10_ = _06_ & ~(_09_);
  assign _11_ = a_i[9] | a_i[8];
  assign _12_ = _10_ & ~(_11_);
  assign _13_ = _12_ | _03_;
  assign \prep.sig_nan_o  = ~(_13_ | a_i[9]);
  assign _14_ = ~a_i[15];
  assign _15_ = _12_ & ~(_03_);
  assign class_o[0] = _15_ & ~(_14_);
  assign _16_ = _15_ | _14_;
  assign _17_ = _11_ | ~(_10_);
  assign _18_ = a_i[11] | a_i[10];
  assign _19_ = a_i[13] | a_i[12];
  assign _20_ = _19_ | _18_;
  assign _21_ = _20_ | a_i[14];
  assign _22_ = _17_ & ~(_21_);
  assign _23_ = _22_ | _16_;
  assign _24_ = _13_ & ~(_23_);
  assign _25_ = _21_ | _17_;
  assign class_o[1] = _25_ & _24_;
  assign class_o[2] = _22_ & ~(_14_);
  assign class_o[3] = a_i[15] & ~(_25_);
  assign class_o[4] = _14_ & ~(_25_);
  assign class_o[5] = _22_ & ~(a_i[15]);
  assign _26_ = _15_ | a_i[15];
  assign _27_ = _26_ | _22_;
  assign _28_ = _27_ | ~(_13_);
  assign class_o[6] = _25_ & ~(_28_);
  assign class_o[7] = _15_ & ~(a_i[15]);
  assign class_o[9] = a_i[9] & ~(_13_);
  assign { class_o[15:10], class_o[8] } = { 6'h00, \prep.sig_nan_o  };
  assign denormal = \prep.denormal_o ;
  assign infty = \prep.infty_o ;
  assign nan = \prep.nan_o ;
  assign \prep.a_i  = a_i;
  assign \prep.exp_o  = a_i[14:10];
  assign \prep.man_o  = a_i[9:0];
  assign \prep.sign_o  = a_i[15];
  assign sig_nan = \prep.sig_nan_o ;
  assign sign = a_i[15];
endmodule