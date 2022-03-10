module LPF_Filter( input wire clk,
input wire clk_enable,
input wire reset,

input wire[31:0] DinTick,
output wire[31:0] OutTick,

input wire [9:0] filter_din,
output wire [9:0] filter_dout);
wire [31:0] filter_in;
wire [31:0] filter_out;

assign filter_in = filter_din[9]?({filter_din[9],22'b11_11111_11111_11111_11111,filter_din[8:0]}):({filter_din[9],22'd0,filter_din[8:0]});

assign filter_dout = filter_out[31]?({filter_out[31],filter_out[24:16]}):({filter_out[31],filter_out[24:16]});

 



////////////////////////////////////////////////////////////////
//Module Architecture: filter
////////////////////////////////////////////////////////////////
// Local Functions
// Type Definitions
// Constants

parameter coeff1 = 32'd530; // 0.00808453 8.0845306443242445E-003; //double
parameter coeff2 = 32'd1418; // 0.02164117 2.1641173173083540E-002; //double
parameter coeff3 = -32'd210; //-0.00320142 -3.2014226698098332E-003; //double
parameter coeff4 = -32'd677; //-0.01032774 -1.0327740008324267E-002; //double
parameter coeff5 = 32'd1386; // 0.02114663 2.1146841746630163E-002; //double
parameter coeff6 = -32'd1453; //-0.02217336 -2.2173359666555145E-002; //double
parameter coeff7 = 32'd427;// 0.00651070 6.5107025473657917E-003; //double
parameter coeff8 = 32'd1617;//0.0246716864 2.4671686418581144E-002; //double
parameter coeff9 = -32'd3849;//-0.05873706263 -5.8373706263461472E-002; //double
parameter coeff10 = 32'd4683;//0.071458229149 7.1458229149308564E-002; //double
parameter coeff11 = -32'd2339;//-0.035685782197 -3.5685782197239432E-002; //double
parameter coeff12 = -32'd5937;//-0.0905934127344 -9.0593412734435275E-002; //double
parameter coeff13 = 32'd38766;//0.591529450517 5.9152945051788575E-001; //double
parameter coeff14 = 32'd38766;//0.591529450517 5.9152945051788575E-001; //double
parameter coeff15 = -32'd5937;//-0.090593412733 -9.0593412734435275E-002; //double
parameter coeff16 = -32'd2339;//-0.035685782197 -3.5685782197239432E-002; //double
parameter coeff17 = 32'd4683;//0.0714582291493 7.1458229149308564E-002; //double
parameter coeff18 = -32'd3849;//-0.05873706263 -5.8373706263461472E-002; //double
parameter coeff19 = 32'd1617;//0.02467168641858 2.4671686418581144E-002; //double
parameter coeff20 = 32'd427;//0.006510702547 6.5107025473657917E-003; //double
parameter coeff21 = -32'd1453;//-0.022173359666 -2.2173359666555145E-002; //double
parameter coeff22 = 32'd1386;//0.0211468417466 2.1146841746630163E-002; //double
parameter coeff23 = -32'd677;//-0.01032774 -1.0327740008324267E-002; //double
parameter coeff24 = -32'd210;//-0.0032014226698 -3.2014226698098332E-003; //double
parameter coeff25 = 32'd1418;//0.021641173173 2.1641173173083540E-002; //double
parameter coeff26 = 32'd530;//0.0080084530644 8.0845306443242445E-003; //double

 


// Signals
reg[31:0] delay_pipeline [0:25] ; // double
reg[31:0] product26; // double
reg[31:0] product25; // double
reg[31:0] product24; // double
reg[31:0] product23; // double
reg[31:0] product22; // double
reg[31:0] product21; // double
reg[31:0] product20; // double
reg[31:0] product19; // double
reg[31:0] product18; // double
reg[31:0] product17; // double
reg[31:0] product16; // double
reg[31:0] product15; // double
reg[31:0] product14; // double
reg[31:0] product13; // double
reg[31:0] product12; // double
reg[31:0] product11; // double
reg[31:0] product10; // double
reg[31:0] product9; // double
reg[31:0] product8; // double
reg[31:0] product7; // double
reg[31:0] product6; // double
reg[31:0] product5; // double
reg[31:0] product4; // double
reg[31:0] product3; // double
reg[31:0] product2; // double
reg[31:0] product1_cast; // double
reg[31:0] product1; // double
reg[31:0] sum1; // double
reg[31:0] sum2; // double
reg[31:0] sum3; // double
reg[31:0] sum4; // double
reg[31:0] sum5; // double
reg[31:0] sum6; // double
reg[31:0] sum7; // double
reg[31:0] sum8; // double
reg[31:0] sum9; // double
reg[31:0] sum10; // double
reg[31:0] sum11; // double
reg[31:0] sum12; // double
reg[31:0] sum13; // double
reg[31:0] sum14; // double
reg[31:0] sum15; // double
reg[31:0] sum16; // double
reg[31:0] sum17; // double
reg[31:0] sum18; // double
reg[31:0] sum19; // double
reg[31:0] sum20; // double
reg[31:0] sum21; // double
reg[31:0] sum22; // double
reg[31:0] sum23; // double
reg[31:0] sum24; // double
reg[31:0] sum25; // double
reg[31:0] output_typeconvert; // double
reg[31:0] output_register; // double

// Block Statements
always @( posedge clk or posedge reset)
begin: Delay_Pipeline_process
if (reset == 1'b1) begin
delay_pipeline[0] <= 0;
delay_pipeline[1] <= 0;
delay_pipeline[2] <= 0;
delay_pipeline[3] <= 0;
delay_pipeline[4] <= 0;
delay_pipeline[5] <= 0;
delay_pipeline[6] <= 0;
delay_pipeline[7] <= 0;
delay_pipeline[8] <= 0;
delay_pipeline[9] <= 0;
delay_pipeline[10] <= 0;
delay_pipeline[11] <= 0;
delay_pipeline[12] <= 0;
delay_pipeline[13] <= 0;
delay_pipeline[14] <= 0;
delay_pipeline[15] <= 0;
delay_pipeline[16] <= 0;
delay_pipeline[17] <= 0;
delay_pipeline[18] <= 0;
delay_pipeline[19] <= 0;
delay_pipeline[20] <= 0;
delay_pipeline[21] <= 0;
delay_pipeline[22] <= 0;
delay_pipeline[23] <= 0;
delay_pipeline[24] <= 0;
delay_pipeline[25] <= 0;
end
else begin
if (clk_enable == 1'b1) begin
delay_pipeline[0] <= filter_in;
delay_pipeline[1] <= delay_pipeline[0];
delay_pipeline[2] <= delay_pipeline[1];
delay_pipeline[3] <= delay_pipeline[2];
delay_pipeline[4] <= delay_pipeline[3];
delay_pipeline[5] <= delay_pipeline[4];
delay_pipeline[6] <= delay_pipeline[5];
delay_pipeline[7] <= delay_pipeline[6];
delay_pipeline[8] <= delay_pipeline[7];
delay_pipeline[9] <= delay_pipeline[8];
delay_pipeline[10] <= delay_pipeline[9];
delay_pipeline[11] <= delay_pipeline[10];
delay_pipeline[12] <= delay_pipeline[11];
delay_pipeline[13] <= delay_pipeline[12];
delay_pipeline[14] <= delay_pipeline[13];
delay_pipeline[15] <= delay_pipeline[14];
delay_pipeline[16] <= delay_pipeline[15];
delay_pipeline[17] <= delay_pipeline[16];
delay_pipeline[18] <= delay_pipeline[17];
delay_pipeline[19] <= delay_pipeline[18];
delay_pipeline[20] <= delay_pipeline[19];
delay_pipeline[21] <= delay_pipeline[20];
delay_pipeline[22] <= delay_pipeline[21];
delay_pipeline[23] <= delay_pipeline[22];
delay_pipeline[24] <= delay_pipeline[23];
delay_pipeline[25] <= delay_pipeline[24];
end
end
end // Delay_Pipeline_process





always @* product26 <= delay_pipeline[25] * coeff26;

always @* product25 <= delay_pipeline[24] * coeff25;

always @* product24 <= delay_pipeline[23] * coeff24;

always @* product23 <= delay_pipeline[22] * coeff23;

always @* product22 <= delay_pipeline[21] * coeff22;

always @* product21 <= delay_pipeline[20] * coeff21;

always @* product20 <= delay_pipeline[19] * coeff20;

always @* product19 <= delay_pipeline[18] * coeff19;

always @* product18 <= delay_pipeline[17] * coeff18;

always @* product17 <= delay_pipeline[16] * coeff17;

always @* product16 <= delay_pipeline[15] * coeff16;

always @* product15 <= delay_pipeline[14] * coeff15;

always @* product14 <= delay_pipeline[13] * coeff14;

always @* product13 <= delay_pipeline[12] * coeff13;

always @* product12 <= delay_pipeline[11] * coeff12;

always @* product11 <= delay_pipeline[10] * coeff11;

always @* product10 <= delay_pipeline[9] * coeff10;

always @* product9 <= delay_pipeline[8] * coeff9;

always @* product8 <= delay_pipeline[7] * coeff8;

always @* product7 <= delay_pipeline[6] * coeff7;

always @* product6 <= delay_pipeline[5] * coeff6;

always @* product5 <= delay_pipeline[4] * coeff5;

always @* product4 <= delay_pipeline[3] * coeff4;

always @* product3 <= delay_pipeline[2] * coeff3;

always @* product2 <= delay_pipeline[1] * coeff2;

always @* product1_cast <= product1;

always @* product1 <= delay_pipeline[0] * coeff1;

 



always @* sum1 <= product1_cast + product2;

always @* sum2 <= sum1 + product3;

always @* sum3 <= sum2 + product4;

always @* sum4 <= sum3 + product5;

always @* sum5 <= sum4 + product6;

always @* sum6 <= sum5 + product7;

always @* sum7 <= sum6 + product8;

always @* sum8 <= sum7 + product9;

always @* sum9 <= sum8 + product10;

always @* sum10 <= sum9 + product11;

always @* sum11 <= sum10 + product12;

always @* sum12 <= sum11 + product13;

always @* sum13 <= sum12 + product14;

always @* sum14 <= sum13 + product15;

always @* sum15 <= sum14 + product16;

always @* sum16 <= sum15 + product17;

always @* sum17 <= sum16 + product18;

always @* sum18 <= sum17 + product19;

always @* sum19 <= sum18 + product20;

always @* sum20 <= sum19 + product21;

always @* sum21 <= sum20 + product22;

always @* sum22 <= sum21 + product23;

always @* sum23 <= sum22 + product24;

always @* sum24 <= sum23 + product25;

always @* sum25 <= sum24 + product26;

always @* output_typeconvert <= sum25;

 

wire [31:0] tmp0;
wire [31:0] tmp1;
wire [31:0] tmp2;
wire [31:0] tmp3;
wire [31:0] tmp4;
wire [31:0] tmp;
assign tmp0 = product1 + product2 + product3 + product4 + product5;
assign tmp1 = product6 + product7 + product8 + product9 + product10;
assign tmp2 = product11 + product12 + product13 + product14 + product15;
assign tmp3 = product16 + product17 + product18 + product19 + product20;
assign tmp4 = product21 + product22 + product23 + product24 + product25;
assign tmp = tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + product26;
assign OutTick = tmp;



assign filter_out = tmp;
//assign filter_out = output_typeconvert;

endmodule