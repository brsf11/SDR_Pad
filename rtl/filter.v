module filter(
    input CLK,
    input RSTn,
    input [9:0] FIR_IN,
    output [18:0] FIR_OUT
    );

reg [9:0] delay_pipeline1 ;
reg [9:0] delay_pipeline2 ;
reg [9:0] delay_pipeline3 ;
reg [9:0] delay_pipeline4 ;
reg [9:0] delay_pipeline5 ;
reg [9:0] delay_pipeline6 ;
reg [9:0] delay_pipeline7 ;
reg [9:0] delay_pipeline8 ;
reg [9:0] delay_pipeline9 ;
reg [9:0] delay_pipeline10 ;
reg [9:0] delay_pipeline11 ;
reg [9:0] delay_pipeline12 ;
reg [9:0] delay_pipeline13 ;
reg [9:0] delay_pipeline14 ;
reg [9:0] delay_pipeline15 ;
reg [9:0] delay_pipeline16 ;
reg [9:0] delay_pipeline17 ;
reg [9:0] delay_pipeline18 ;
reg [9:0] delay_pipeline19 ;
reg [9:0] delay_pipeline20 ;
reg [9:0] delay_pipeline21 ;
reg [9:0] delay_pipeline22 ;
reg [9:0] delay_pipeline23 ;
reg [9:0] delay_pipeline24 ;
reg [9:0] delay_pipeline25 ;
reg [9:0] delay_pipeline26 ;
reg [9:0] delay_pipeline27 ;
reg [9:0] delay_pipeline28 ;
reg [9:0] delay_pipeline29 ;
reg [9:0] delay_pipeline30 ;
reg [9:0] delay_pipeline31 ;
reg [9:0] delay_pipeline32 ;
reg [9:0] delay_pipeline33 ;
 
always@(posedge CLK or negedge RSTn)

      if(!RSTn)

             begin

                  delay_pipeline1 <=  10'b0 ;
                  delay_pipeline2 <=  10'b0 ;
                  delay_pipeline3 <=  10'b0 ;
                  delay_pipeline4 <=  10'b0 ;
                  delay_pipeline5 <=  10'b0 ;
                  delay_pipeline6 <=  10'b0 ;
                  delay_pipeline7 <=  10'b0 ;
                  delay_pipeline8 <=  10'b0 ;
                  delay_pipeline9 <=  10'b0 ;
                  delay_pipeline10 <= 10'b0 ;
                  delay_pipeline11 <= 10'b0 ;
                  delay_pipeline12 <= 10'b0 ;
                  delay_pipeline13 <= 10'b0 ;
                  delay_pipeline14 <= 10'b0 ;
                  delay_pipeline15 <= 10'b0 ;
                  delay_pipeline16 <= 10'b0 ;
                  delay_pipeline17 <= 10'b0 ;
                  delay_pipeline18 <= 10'b0 ;
                  delay_pipeline19 <= 10'b0 ;
                  delay_pipeline20 <= 10'b0 ;
                  delay_pipeline21 <= 10'b0 ;
                  delay_pipeline22 <= 10'b0 ;
                  delay_pipeline23 <= 10'b0 ;
                  delay_pipeline24 <= 10'b0 ;
                  delay_pipeline25 <= 10'b0 ;
                  delay_pipeline26 <= 10'b0 ;
                  delay_pipeline27 <= 10'b0 ;
                  delay_pipeline28 <= 10'b0 ;
                  delay_pipeline29 <= 10'b0 ;
                  delay_pipeline30 <= 10'b0 ;
                  delay_pipeline31 <= 10'b0 ;
                  delay_pipeline32 <= 10'b0 ;
                  delay_pipeline33 <= 10'b0 ;

             end

       else

             begin

                  delay_pipeline1 <= FIR_IN     ;

                  delay_pipeline2 <= delay_pipeline1 ;

                  delay_pipeline3 <= delay_pipeline2 ;

                  delay_pipeline4 <= delay_pipeline3 ;

                  delay_pipeline5 <= delay_pipeline4 ;

                  delay_pipeline6 <= delay_pipeline5 ;

                  delay_pipeline7 <= delay_pipeline6 ;

                  delay_pipeline8 <= delay_pipeline7 ;

                  delay_pipeline9 <= delay_pipeline8 ;

                  delay_pipeline10 <=   delay_pipeline9;
                  delay_pipeline11 <=   delay_pipeline10 ;
                  delay_pipeline12 <=   delay_pipeline11 ;
                  delay_pipeline13 <=   delay_pipeline12 ;
                  delay_pipeline14 <=   delay_pipeline13 ;
                  delay_pipeline15 <=   delay_pipeline14 ;
                  delay_pipeline16 <=   delay_pipeline15 ;
                  delay_pipeline17 <=   delay_pipeline16 ;
                  delay_pipeline18 <=   delay_pipeline17 ;
                  delay_pipeline19 <=   delay_pipeline18 ;
                  delay_pipeline20 <=   delay_pipeline19 ;
                  delay_pipeline21 <=   delay_pipeline20 ;
                  delay_pipeline22 <=   delay_pipeline21 ;
                  delay_pipeline23 <=   delay_pipeline22 ;
                  delay_pipeline24 <=   delay_pipeline23 ;
                  delay_pipeline25 <=   delay_pipeline24 ;
                  delay_pipeline26 <=   delay_pipeline25 ;
                  delay_pipeline27 <=   delay_pipeline26 ;
                  delay_pipeline28 <=   delay_pipeline27 ;
                  delay_pipeline29 <=   delay_pipeline28 ;
                  delay_pipeline30 <=   delay_pipeline29 ;
                  delay_pipeline31 <=   delay_pipeline30 ;
                  delay_pipeline32 <=   delay_pipeline31 ;
                  delay_pipeline33 <=   delay_pipeline32 ;

             end





wire [7:0] coeff1  = 8'd110;
wire [7:0] coeff2  = 8'd55;
wire [7:0] coeff3  = 8'd68;
wire [7:0] coeff4  = 8'd82;
wire [7:0] coeff5  = 8'd96;
wire [7:0] coeff6  = 8'd110;
wire [7:0] coeff7  = 8'd125;
wire [7:0] coeff8  = 8'd139;
wire [7:0] coeff9  = 8'd153;
wire [7:0] coeff10 = 8'd167;
wire [7:0] coeff11 = 8'd179;
wire [7:0] coeff12 = 8'd190;
wire [7:0] coeff13 = 8'd199;
wire [7:0] coeff14 = 8'd206;
wire [7:0] coeff15 = 8'd212;
wire [7:0] coeff16 = 8'd215;
wire [7:0] coeff17 = 8'd216;
wire [7:0] coeff18 = 8'd215;
wire [7:0] coeff19 = 8'd212;
wire [7:0] coeff20 = 8'd206;
wire [7:0] coeff21 = 8'd199;
wire [7:0] coeff22 = 8'd190;
wire [7:0] coeff23 = 8'd179;
wire [7:0] coeff24 = 8'd167;
wire [7:0] coeff25 = 8'd153;
wire [7:0] coeff26 = 8'd139;
wire [7:0] coeff27 = 8'd125;
wire [7:0] coeff28 = 8'd110;
wire [7:0] coeff29 = 8'd96;
wire [7:0] coeff30 = 8'd82;
wire [7:0] coeff31 = 8'd68;
wire [7:0] coeff32 = 8'd55;
wire [7:0] coeff33 = 8'd110;


reg signed [18:0] multi_data1 ;//乘积结果
reg signed [18:0] multi_data2 ;
reg signed [18:0] multi_data3 ;
reg signed [18:0] multi_data4 ;
reg signed [18:0] multi_data5 ;
reg signed [18:0] multi_data6 ;
reg signed [18:0] multi_data7 ;
reg signed [18:0] multi_data8 ;
reg signed [18:0] multi_data9 ;
reg signed [18:0] multi_data10 ;
reg signed [18:0] multi_data11 ;//乘积结果
reg signed [18:0] multi_data12 ;
reg signed [18:0] multi_data13 ;
reg signed [18:0] multi_data14 ;
reg signed [18:0] multi_data15 ;
reg signed [18:0] multi_data16 ;
reg signed [18:0] multi_data17 ;
reg signed [18:0] multi_data18 ;
reg signed [18:0] multi_data19 ;
reg signed [18:0] multi_data20 ;
reg signed [18:0] multi_data21 ;//乘积结果
reg signed [18:0] multi_data22 ;
reg signed [18:0] multi_data23 ;
reg signed [18:0] multi_data24 ;
reg signed [18:0] multi_data25 ;
reg signed [18:0] multi_data26 ;
reg signed [18:0] multi_data27 ;
reg signed [18:0] multi_data28 ;
reg signed [18:0] multi_data29 ;
reg signed [18:0] multi_data30 ;
reg signed [18:0] multi_data31 ;//乘积结果
reg signed [18:0] multi_data32 ;
reg signed [18:0] multi_data33 ;

reg signed [18:0] FIR_OUT ;


always@(posedge CLK or negedge RSTn)
      if(!RSTn)   begin                               
        multi_data1  <= 19'b0; 
        multi_data2  <= 19'b0;
        multi_data3  <= 19'b0;
        multi_data4  <= 19'b0;
        multi_data5  <= 19'b0;
        multi_data6  <= 19'b0;
        multi_data7  <= 19'b0;
        multi_data8  <= 19'b0;
        multi_data9  <= 19'b0;
        multi_data10 <= 19'b0;
        multi_data11 <= 19'b0;
        multi_data12 <= 19'b0;
        multi_data13 <= 19'b0;
        multi_data14 <= 19'b0;
        multi_data15 <= 19'b0;
        multi_data16 <= 19'b0;
        multi_data17 <= 19'b0;
        multi_data18 <= 19'b0;
        multi_data19 <= 19'b0;
        multi_data20 <= 19'b0;
        multi_data21 <= 19'b0;
        multi_data22 <= 19'b0;
        multi_data23 <= 19'b0;
        multi_data24 <= 19'b0;
        multi_data25 <= 19'b0;
        multi_data26 <= 19'b0;
        multi_data27 <= 19'b0;
        multi_data28 <= 19'b0;
        multi_data29 <= 19'b0;
        multi_data30 <= 19'b0;
        multi_data31 <= 19'b0;
        multi_data32 <= 19'b0;
        multi_data33 <= 19'b0;
        end
       else begin
        multi_data1  <= delay_pipeline1  * coeff1  ;
        multi_data2  <= delay_pipeline2  * coeff2 ;
        multi_data3  <= delay_pipeline3  * coeff3 ;
        multi_data4  <= delay_pipeline4  * coeff4 ;
        multi_data5  <= delay_pipeline5  * coeff5 ;
        multi_data6  <= delay_pipeline6  * coeff6 ;
        multi_data7  <= delay_pipeline7  * coeff7 ;
        multi_data8  <= delay_pipeline8  * coeff8 ;
        multi_data9  <= delay_pipeline9  * coeff9 ;
        multi_data10 <= delay_pipeline10 * coeff10;
        multi_data11 <= delay_pipeline11 * coeff11;
        multi_data12 <= delay_pipeline12 * coeff12;
        multi_data13 <= delay_pipeline13 * coeff13;
        multi_data14 <= delay_pipeline14 * coeff14;
        multi_data15 <= delay_pipeline15 * coeff15;
        multi_data16 <= delay_pipeline16 * coeff16;
        multi_data17 <= delay_pipeline17 * coeff17;
        multi_data18 <= delay_pipeline18 * coeff18;
        multi_data19 <= delay_pipeline19 * coeff19;
        multi_data20 <= delay_pipeline20 * coeff20;
        multi_data21 <= delay_pipeline21 * coeff21;
        multi_data22 <= delay_pipeline22 * coeff22;
        multi_data23 <= delay_pipeline23 * coeff23;
        multi_data24 <= delay_pipeline24 * coeff24;
        multi_data25 <= delay_pipeline25 * coeff25;
        multi_data26 <= delay_pipeline26 * coeff26;
        multi_data27 <= delay_pipeline27 * coeff27;
        multi_data28 <= delay_pipeline28 * coeff28;
        multi_data29 <= delay_pipeline29 * coeff29;
        multi_data30 <= delay_pipeline30 * coeff30;
        multi_data31 <= delay_pipeline31 * coeff31;
        multi_data32 <= delay_pipeline32 * coeff32;
        multi_data33 <= delay_pipeline33 * coeff33;
       end
                      



always@(posedge CLK or negedge RSTn)
      if(!RSTn)                                  
          FIR_OUT <= 19'b0 ;
       else
       FIR_OUT <= multi_data1 + multi_data2 + multi_data3 + multi_data4 +multi_data5 + multi_data6 + multi_data7 + multi_data8 + multi_data9 + multi_data10+ multi_data11+ multi_data12+ multi_data13+ multi_data14+ multi_data15+ multi_data16+ multi_data17+ multi_data18+ multi_data19+ multi_data20+ multi_data21+ multi_data22+ multi_data23+ multi_data24+ multi_data25+ multi_data26+ multi_data27+ multi_data28+ multi_data29+ multi_data30+ multi_data31+ multi_data32+ multi_data33;

endmodule
