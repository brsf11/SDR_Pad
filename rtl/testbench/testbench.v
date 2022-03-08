`timescale 1ps/1ps

module testbench();
    reg clk,RXD,rst_n;

    SDR_Pad u_sdr_pad(
        .clk(clk),
        .RSTn(rst_n),
        .RXD(RXD)
    );

    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        RXD = 1;
        rst_n = 0;
        #10;
        rst_n = 1;
    end
endmodule