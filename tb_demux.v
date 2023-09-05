module tb_demux;

        reg I;
        reg [1:0] S;
        wire [3:0] Y;
        
        demux_1_4 DUT (.I(I),.S(S),.Y(Y));
        
            initial begin
            
            I = 1;
            S = 2'b00;
            #100;
            S = 2'b01;
            #100;
            S = 2'b10;
            #100;
            S = 2'b11;
            #100;
            I = 0;
            
            end     
endmodule
