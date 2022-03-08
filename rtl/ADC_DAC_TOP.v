module adc_dac_top(
    input rst_n,
    input clk,
    input start,
    output wire pwm_out,
    output wire eoc
);

wire soc;

wire [11:0] data;
wire val_req;

reg [2:0] channel;
 
wire CW_clk; //synthesis keep;
wire ADC_clk;
wire clk_lock;

PLL PLL(
    .refclk(clk),
    .reset(1'b0),
    .stdby(1'b0),
    .extlock(clk_lock),
    .clk0_out(CW_clk),
    .clk1_out(ADC_clk)
);

pwm pwm(
        .clk(clk),
        .rst_n(rst_n),
        .dac_val(data),
        .val_req(val_req),
        .pwm_out(pwm_out)
    );

ADC ADC(
    .eoc(eoc),
    .dout(data),
    .clk(ADC_clk),
    .pd(1'b0),
    .s(3'b001),
    .soc(start)
);

endmodule