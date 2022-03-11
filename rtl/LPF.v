module LPF_Filter(  input wire        clk,
                    input wire        clk_enable,
                    input wire        reset_n,
                    input wire signed [9:0]  filter_din,
                    output wire signed [9:0] filter_dout);

wire signed [19:0] filter_in;
wire signed [19:0] filter_out;

assign filter_in = filter_din[9]?({10'b11111_11111,filter_din[9:0]}):({10'b0,filter_din[9:0]});

assign filter_dout = filter_out[18:9];

 



////////////////////////////////////////////////////////////////
//Module Architecture: filter
////////////////////////////////////////////////////////////////
// Local Functions
// Type Definitions
// Constants

parameter signed coeff1  = 6'd0;
parameter signed coeff2  = 6'd1;
parameter signed coeff3  = 6'd1;
parameter signed coeff4  = 6'd2;
parameter signed coeff5  = 6'd3;
parameter signed coeff6  = 6'd5;
parameter signed coeff7  = 6'd7;
parameter signed coeff8  = 6'd9;
parameter signed coeff9  = 6'd11;
parameter signed coeff10 = 6'd13;
parameter signed coeff11 = 6'd16;
parameter signed coeff12 = 6'd18;
parameter signed coeff13 = 6'd20;
parameter signed coeff14 = 6'd22;
parameter signed coeff15 = 6'd23;
parameter signed coeff16 = 6'd24;
parameter signed coeff17 = 6'd24;
parameter signed coeff18 = 6'd23;
parameter signed coeff19 = 6'd22;
parameter signed coeff20 = 6'd20;
parameter signed coeff21 = 6'd18;
parameter signed coeff22 = 6'd16;
parameter signed coeff23 = 6'd13;
parameter signed coeff24 = 6'd11;
parameter signed coeff25 = 6'd9;
parameter signed coeff26 = 6'd7;
parameter signed coeff27 = 6'd5;
parameter signed coeff28 = 6'd3;
parameter signed coeff29 = 6'd2;
parameter signed coeff30 = 6'd1;
parameter signed coeff31 = 6'd1;
parameter signed coeff32 = 6'd0;

 


// Signals
reg signed [19:0] delay_pipeline [0:31] ;
reg signed [19:0] product32; 
reg signed [19:0] product31; 
reg signed [19:0] product30; 
reg signed [19:0] product29; 
reg signed [19:0] product28; 
reg signed [19:0] product27;
reg signed [19:0] product26; 
reg signed [19:0] product25; 
reg signed [19:0] product24; 
reg signed [19:0] product23; 
reg signed [19:0] product22; 
reg signed [19:0] product21; 
reg signed [19:0] product20; 
reg signed [19:0] product19; 
reg signed [19:0] product18; 
reg signed [19:0] product17; 
reg signed [19:0] product16; 
reg signed [19:0] product15; 
reg signed [19:0] product14; 
reg signed [19:0] product13; 
reg signed [19:0] product12; 
reg signed [19:0] product11; 
reg signed [19:0] product10; 
reg signed [19:0] product9; 
reg signed [19:0] product8; 
reg signed [19:0] product7; 
reg signed [19:0] product6; 
reg signed [19:0] product5; 
reg signed [19:0] product4; 
reg signed [19:0] product3; 
reg signed [19:0] product2; 
reg signed [19:0] product1; 


// Block Statements
always @( posedge clk or negedge reset_n)
begin: Delay_Pipeline_process
if (reset_n == 0) begin
delay_pipeline[0]  <= 0;
delay_pipeline[1]  <= 0;
delay_pipeline[2]  <= 0;
delay_pipeline[3]  <= 0;
delay_pipeline[4]  <= 0;
delay_pipeline[5]  <= 0;
delay_pipeline[6]  <= 0;
delay_pipeline[7]  <= 0;
delay_pipeline[8]  <= 0;
delay_pipeline[9]  <= 0;
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
delay_pipeline[26] <= 0;
delay_pipeline[27] <= 0;
delay_pipeline[28] <= 0;
delay_pipeline[29] <= 0;
delay_pipeline[30] <= 0;
delay_pipeline[31] <= 0;
end
else begin
if (clk_enable == 1'b1) begin
delay_pipeline[0]  <= filter_in;
delay_pipeline[1]  <= delay_pipeline[0] ;
delay_pipeline[2]  <= delay_pipeline[1] ;
delay_pipeline[3]  <= delay_pipeline[2] ;
delay_pipeline[4]  <= delay_pipeline[3] ;
delay_pipeline[5]  <= delay_pipeline[4] ;
delay_pipeline[6]  <= delay_pipeline[5] ;
delay_pipeline[7]  <= delay_pipeline[6] ;
delay_pipeline[8]  <= delay_pipeline[7] ;
delay_pipeline[9]  <= delay_pipeline[8] ;
delay_pipeline[10] <= delay_pipeline[9] ;
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
delay_pipeline[26] <= delay_pipeline[25];
delay_pipeline[27] <= delay_pipeline[26];
delay_pipeline[28] <= delay_pipeline[27];
delay_pipeline[29] <= delay_pipeline[28];
delay_pipeline[30] <= delay_pipeline[29];
delay_pipeline[31] <= delay_pipeline[30];
end
end
end // Delay_Pipeline_process




always @* product32 <= delay_pipeline[31] * coeff32;
always @* product31 <= delay_pipeline[30] * coeff31;
always @* product30 <= delay_pipeline[29] * coeff30;
always @* product29 <= delay_pipeline[28] * coeff29;
always @* product28 <= delay_pipeline[27] * coeff28;
always @* product27 <= delay_pipeline[26] * coeff27;
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
always @* product10 <= delay_pipeline[9]  * coeff10;
always @* product9  <= delay_pipeline[8]  * coeff9;
always @* product8  <= delay_pipeline[7]  * coeff8;
always @* product7  <= delay_pipeline[6]  * coeff7;
always @* product6  <= delay_pipeline[5]  * coeff6;
always @* product5  <= delay_pipeline[4]  * coeff5;
always @* product4  <= delay_pipeline[3]  * coeff4;
always @* product3  <= delay_pipeline[2]  * coeff3;
always @* product2  <= delay_pipeline[1]  * coeff2;
always @* product1  <= delay_pipeline[0]  * coeff1;

 


 

wire signed [19:0] tmp0;
wire signed [19:0] tmp1;
wire signed [19:0] tmp2;
wire signed [19:0] tmp3;
wire signed [19:0] tmp4;
wire signed [19:0] tmp5;
wire signed [19:0] tmp;
assign tmp0 = product1 + product2 + product3 + product4 + product5;
assign tmp1 = product6 + product7 + product8 + product9 + product10;
assign tmp2 = product11 + product12 + product13 + product14 + product15;
assign tmp3 = product16 + product17 + product18 + product19 + product20;
assign tmp4 = product21 + product22 + product23 + product24 + product25;
assign tmp5 = product26 + product27 + product28 + product29 + product30;
assign tmp = tmp0 + tmp1 + tmp2 + tmp3 + tmp4 + tmp5 +product31 + product32;



assign filter_out = tmp;

endmodule