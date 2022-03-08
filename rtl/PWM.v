module pwm #(
    parameter PWM_BITS = 10
)(
    input wire clk,
    input wire rst_n,
    input wire [PWM_BITS-1:0] dac_val, 

    output reg val_req,
    output reg pwm_out
);

localparam N = (1<<PWM_BITS);
//localparam dac_val = 12'd128;

initial begin 
    val_req = 1'b0;
    pwm_out = 1'b0;
end

reg [PWM_BITS-1:0] cnt = 0, cntr = 0, pwm_valr = 0, idx = 0;

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        cnt = 0;
        val_req = 1'b0;
    end
    else begin
        cnt = cnt + 1;
        val_req = (cnt==0);
    end
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        cntr = 0;
        pwm_valr = 0;
    end
    else begin
        cntr = cnt;
        if(val_req) begin
            pwm_valr = dac_val;
        end
    end
end

always @(posedge clk or negedge rst_n) begin
    if(~rst_n) begin
        idx = 0;
        pwm_out = 1'b0;
    end
    else begin
        if(cntr==0) begin
            idx = 1;
            pwm_out = (pwm_valr>0);
        end
        else begin
            if(pwm_valr==0) begin
                pwm_out = 1'b0;
            end
            else if(cntr >= (idx*N/pwm_valr)) begin
                idx = idx+1;
                pwm_out = 1'b1;
            end else begin
                pwm_out = 1'b0;
            end
        end
    end
end
endmodule