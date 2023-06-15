module bsg_thermometer_count(i, o);
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
  wire _29_;
  wire [191:0] \big.encode_one_hot.addr ;
  wire [4:0] \big.encode_one_hot.addr_o ;
  wire [16:0] \big.encode_one_hot.i ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[0].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[10].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[11].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[12].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[13].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[14].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[15].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[1].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[2].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[3].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[4].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[5].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[6].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[7].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[8].vs ;
  wire [1:0] \big.encode_one_hot.rof[1].rof1[9].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[0].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[1].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[2].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[3].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[4].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[5].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[6].vs ;
  wire [1:0] \big.encode_one_hot.rof[2].rof1[7].vs ;
  wire [1:0] \big.encode_one_hot.rof[3].rof1[0].vs ;
  wire [1:0] \big.encode_one_hot.rof[3].rof1[1].vs ;
  wire [1:0] \big.encode_one_hot.rof[3].rof1[2].vs ;
  wire [1:0] \big.encode_one_hot.rof[3].rof1[3].vs ;
  wire [1:0] \big.encode_one_hot.rof[4].rof1[0].vs ;
  wire [1:0] \big.encode_one_hot.rof[4].rof1[1].vs ;
  wire [1:0] \big.encode_one_hot.rof[5].rof1[0].vs ;
  wire [191:0] \big.encode_one_hot.v ;
  wire \big.encode_one_hot.v_o ;
  wire [16:0] \big.one_hot ;
  input [15:0] i;
  wire [15:0] i;
  output [4:0] o;
  wire [4:0] o;
  assign _00_ = ~i[7];
  assign _01_ = i[8] ? i[9] : _00_;
  assign _02_ = ~i[11];
  assign _03_ = i[10] ? _02_ : i[9];
  assign _04_ = _03_ | ~(_01_);
  assign _05_ = i[12] ? i[13] : _02_;
  assign _06_ = ~i[15];
  assign _07_ = i[14] ? _06_ : i[13];
  assign _08_ = _07_ | ~(_05_);
  assign o[3] = _08_ | _04_;
  assign _09_ = i[0] & ~(i[1]);
  assign _10_ = i[2] & ~(i[3]);
  assign _11_ = _10_ | _09_;
  assign _12_ = i[4] & ~(i[5]);
  assign _13_ = i[6] & ~(i[7]);
  assign _14_ = _13_ | _12_;
  assign _15_ = _14_ | _11_;
  assign _16_ = i[8] & ~(i[9]);
  assign _17_ = i[10] & ~(i[11]);
  assign _18_ = _17_ | _16_;
  assign _19_ = i[12] & ~(i[13]);
  assign _20_ = i[14] & ~(i[15]);
  assign _21_ = _20_ | _19_;
  assign _22_ = _21_ | _18_;
  assign o[0] = _22_ | _15_;
  assign _23_ = ~i[3];
  assign _24_ = i[2] ? _23_ : i[1];
  assign _25_ = i[6] ? _00_ : i[5];
  assign _26_ = _25_ | _24_;
  assign _27_ = _07_ | _03_;
  assign o[1] = _27_ | _26_;
  assign _28_ = i[4] ? i[5] : _23_;
  assign _29_ = _25_ | ~(_28_);
  assign o[2] = _29_ | _08_;
  assign { \big.encode_one_hot.addr [191:107], \big.encode_one_hot.addr [103:99], \big.encode_one_hot.addr [95:78], \big.encode_one_hot.addr [75:74], \big.encode_one_hot.addr [71:70], \big.encode_one_hot.addr [67:66], \big.encode_one_hot.addr [63:47], \big.encode_one_hot.addr [45], \big.encode_one_hot.addr [43], \big.encode_one_hot.addr [41], \big.encode_one_hot.addr [39], \big.encode_one_hot.addr [37], \big.encode_one_hot.addr [35], \big.encode_one_hot.addr [33], \big.encode_one_hot.addr [31:0] } = { 27'hxxxxxxx, i[15], o[3:0], 28'hxxx0xxx, o[3:0], 106'bxxxxx000xxxxx000xxxxxxxxxxxx00xx00xx00xx00xxxxxxxxx0x0x0x0x0x0x0x0xxxxxxxx00000000000000000000000000000000 };
  assign \big.encode_one_hot.addr_o  = { i[15], o[3:0] };
  assign { \big.encode_one_hot.i [16:15], \big.encode_one_hot.i [13], \big.encode_one_hot.i [11], \big.encode_one_hot.i [9], \big.encode_one_hot.i [7], \big.encode_one_hot.i [5], \big.encode_one_hot.i [3], \big.encode_one_hot.i [1] } = { i[15], \big.encode_one_hot.addr [46], \big.encode_one_hot.addr [44], \big.encode_one_hot.addr [42], \big.encode_one_hot.addr [40], \big.encode_one_hot.addr [38], \big.encode_one_hot.addr [36], \big.encode_one_hot.addr [34], \big.encode_one_hot.addr [32] };
  assign \big.encode_one_hot.rof[1].rof1[0].vs  = { \big.encode_one_hot.addr [32], \big.encode_one_hot.i [0] };
  assign \big.encode_one_hot.rof[1].rof1[10].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[11].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[12].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[13].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[14].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[15].vs  = 2'h0;
  assign \big.encode_one_hot.rof[1].rof1[1].vs  = { \big.encode_one_hot.addr [34], \big.encode_one_hot.i [2] };
  assign \big.encode_one_hot.rof[1].rof1[2].vs  = { \big.encode_one_hot.addr [36], \big.encode_one_hot.i [4] };
  assign \big.encode_one_hot.rof[1].rof1[3].vs  = { \big.encode_one_hot.addr [38], \big.encode_one_hot.i [6] };
  assign \big.encode_one_hot.rof[1].rof1[4].vs  = { \big.encode_one_hot.addr [40], \big.encode_one_hot.i [8] };
  assign \big.encode_one_hot.rof[1].rof1[5].vs  = { \big.encode_one_hot.addr [42], \big.encode_one_hot.i [10] };
  assign \big.encode_one_hot.rof[1].rof1[6].vs  = { \big.encode_one_hot.addr [44], \big.encode_one_hot.i [12] };
  assign \big.encode_one_hot.rof[1].rof1[7].vs  = { \big.encode_one_hot.addr [46], \big.encode_one_hot.i [14] };
  assign \big.encode_one_hot.rof[1].rof1[8].vs  = { 1'h0, i[15] };
  assign \big.encode_one_hot.rof[1].rof1[9].vs  = 2'h0;
  assign \big.encode_one_hot.rof[2].rof1[0].vs  = { \big.encode_one_hot.addr [65], 1'hx };
  assign \big.encode_one_hot.rof[2].rof1[1].vs  = { \big.encode_one_hot.addr [69], 1'hx };
  assign \big.encode_one_hot.rof[2].rof1[2].vs  = { \big.encode_one_hot.addr [73], 1'hx };
  assign \big.encode_one_hot.rof[2].rof1[3].vs  = { \big.encode_one_hot.addr [77], 1'hx };
  assign \big.encode_one_hot.rof[2].rof1[4].vs  = { 1'h0, i[15] };
  assign \big.encode_one_hot.rof[2].rof1[5].vs  = 2'h0;
  assign \big.encode_one_hot.rof[2].rof1[6].vs  = 2'h0;
  assign \big.encode_one_hot.rof[2].rof1[7].vs  = 2'h0;
  assign \big.encode_one_hot.rof[3].rof1[0].vs  = { \big.encode_one_hot.addr [98], 1'hx };
  assign \big.encode_one_hot.rof[3].rof1[1].vs  = { \big.encode_one_hot.addr [106], 1'hx };
  assign \big.encode_one_hot.rof[3].rof1[2].vs  = { 1'h0, i[15] };
  assign \big.encode_one_hot.rof[3].rof1[3].vs  = 2'h0;
  assign \big.encode_one_hot.rof[4].rof1[0].vs  = { o[3], 1'hx };
  assign \big.encode_one_hot.rof[4].rof1[1].vs  = { 1'h0, i[15] };
  assign \big.encode_one_hot.rof[5].rof1[0].vs  = { i[15], 1'hx };
  assign \big.encode_one_hot.v  = { 47'hxxxxxxxxxxxx, i[15], 31'bxxxxxxxxxxxxxxxxxxxxxxx0xxxxxxx, i[15], 7'hxx, o[3], 23'bxxxxxxxxxxx0xxx0xxx0xxx, i[15], 3'hx, \big.encode_one_hot.addr [106], 7'hxx, \big.encode_one_hot.addr [98], 19'bxxxxx0x0x0x0x0x0x0x, i[15], 1'hx, \big.encode_one_hot.addr [77], 3'hx, \big.encode_one_hot.addr [73], 3'hx, \big.encode_one_hot.addr [69], 3'hx, \big.encode_one_hot.addr [65], 17'bxx000000000000000, i[15], \big.encode_one_hot.addr [46], \big.encode_one_hot.i [14], \big.encode_one_hot.addr [44], \big.encode_one_hot.i [12], \big.encode_one_hot.addr [42], \big.encode_one_hot.i [10], \big.encode_one_hot.addr [40], \big.encode_one_hot.i [8], \big.encode_one_hot.addr [38], \big.encode_one_hot.i [6], \big.encode_one_hot.addr [36], \big.encode_one_hot.i [4], \big.encode_one_hot.addr [34], \big.encode_one_hot.i [2], \big.encode_one_hot.addr [32], \big.encode_one_hot.i [0] };
  assign \big.encode_one_hot.v_o  = 1'hx;
  assign \big.one_hot  = { i[15], \big.encode_one_hot.addr [46], \big.encode_one_hot.i [14], \big.encode_one_hot.addr [44], \big.encode_one_hot.i [12], \big.encode_one_hot.addr [42], \big.encode_one_hot.i [10], \big.encode_one_hot.addr [40], \big.encode_one_hot.i [8], \big.encode_one_hot.addr [38], \big.encode_one_hot.i [6], \big.encode_one_hot.addr [36], \big.encode_one_hot.i [4], \big.encode_one_hot.addr [34], \big.encode_one_hot.i [2], \big.encode_one_hot.addr [32], \big.encode_one_hot.i [0] };
  assign o[4] = i[15];
endmodule