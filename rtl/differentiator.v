module differentiator(
    input en,
    input clk,
    input rstn,
    input [2:0]channel,
    input [9:0] X,
    output wire [9:0] out
);
reg  [9:0] XI0,XI1,XQ0,XQ1,I,Q,TEMP1,TEMP2,TEMP3;
reg  [10:0] I_TEMP,Q_TEMP;

reg  [19:0] IQ,QI;
reg  [20:0] f;

always @(posedge clk or negedge rstn) begin
    if(!rstn)begin
        XI0 <= 10'b0;
        XQ0 <= 10'b0;
        XI1 <= 10'b0;
        XQ1 <= 10'b0;
    end 
    else if(en) begin
        TEMP3 <= TEMP2;
        TEMP2 <= TEMP1;
        TEMP1 <= X;
        if(channel==3'd4)
        begin
            XI1 <= XI0;
            I_TEMP <= TEMP1 + TEMP2;
            XI0 <= I_TEMP[10:1];
            XQ1 <= XQ0;
            XQ0 <= TEMP2;
        end
        else if(channel==3'd6)
        begin
            XQ1 <= XQ0;
            Q_TEMP <= TEMP1 + TEMP2;
            XQ0 <= Q_TEMP[10:1];
            XI1 <= XI0;
            XI0 <= TEMP2;
        end

        IQ <= XI0*XQ1;
        QI <= XQ0*XI1;
        f <= IQ - QI ;
    end
end


assign out = f[19:10];


LPF_Filter low1( 
    .clk(clk),
    .clk_enable(1),
    .reset(rstn),
    .filter_din(),
    .filter_dout()
);



endmodule