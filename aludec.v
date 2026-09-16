module aludec(input [5:0] funct,
input [1:0] aluop,
output reg [2:0] ALUcontrol );


always@(*)
    case(aluop)
        2'b00: ALUcontrol = 3'b010; // add
        2'b01: ALUcontrol = 3'b110; // sub
        default: case(funct)        // RTYPE
                    6'b100000: ALUcontrol = 3'b010; // ADD
                    6'b100010: ALUcontrol = 3'b110; // SUB
                    6'b100100: ALUcontrol = 3'b000; // AND
                    6'b100101: ALUcontrol = 3'b001; // OR
                    6'b101010: ALUcontrol = 3'b111; // SLT
                    default:  ALUcontrol = 3'bxxx; // ???
                endcase
    endcase
endmodule