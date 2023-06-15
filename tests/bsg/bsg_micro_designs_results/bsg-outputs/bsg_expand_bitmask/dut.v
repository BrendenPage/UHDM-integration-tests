module bsg_expand_bitmask(i, o);
  input [15:0] i;
  wire [15:0] i;
  output [511:0] o;
  wire [511:0] o;
  assign o = { i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15], i[15:14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14], i[14:13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13], i[13:12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12], i[12:11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11], i[11:10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10], i[10:9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9], i[9:8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8], i[8:7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7], i[7:6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6], i[6:5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5], i[5:4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4], i[4:3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3], i[3:2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2], i[2:1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1], i[1:0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0], i[0] };
endmodule