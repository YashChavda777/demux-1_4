module tb_demux;

        reg I;
        reg [1:0] S;
        wire [3:0] Y;
        
        demux_1_4 DUT (.I(I),.S(S),.Y(Y));
        
            initial begin
            
            I = 1;
                    
            S = 2'b00;
            #10;
                    
            S = 2'b01;
            #10;
                    
            S = 2'b10;
            #10;
                    
            S = 2'b11;
            #10;
                    
            I = 0;
            
            end     
endmodule
