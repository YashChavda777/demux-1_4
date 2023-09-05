module demux_1_4(I,S,Y);

        input I;
        input [1:0] S;
        output reg [3:0] Y;
        
            always@(I or S)
            begin 
                case(S)
                    2'b00: begin
                           Y[0] = I;
                           Y[1] = 0;
                           Y[2] = 0;
                           Y[3] = 0;
                           end
                   
                    2'b01: begin
                           Y[0] = 0;
                           Y[1] = I;
                           Y[2] = 0;
                           Y[3] = 0;
                           end
                   
                   2'b10: begin
                           Y[0] = 0;
                           Y[1] = 0;
                           Y[2] = I;
                           Y[3] = 0;
                           end
                   
                   2'b11: begin
                           Y[0] = 0;
                           Y[1] = 0;
                           Y[2] = 0;
                           Y[3] = I;
                           end 
                           
               endcase
          end                            
endmodule
