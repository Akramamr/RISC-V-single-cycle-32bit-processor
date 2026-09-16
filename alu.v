module alu(srca,srcb,ALUcontrol,ALUresult,ZeroFlag,SignFlag);

parameter WIDTH = 32;
    input [WIDTH-1:0] srca;
    input [WIDTH-1:0] srcb;
    input [2:0] ALUcontrol;
    output reg [WIDTH-1:0] ALUresult;
    output ZeroFlag,SignFlag;

    assign ZeroFlag = (ALUresult==0);
    assign SignFlag = ALUresult[31];

always @(*) begin
    case(ALUcontrol)
        3'b000: ALUresult = srca & srcb;                      // Bitwise AND
        3'b001: ALUresult = srca | srcb;                      // Bitwise OR
        3'b010: ALUresult = srca + srcb;                      // Addition
        3'b110: ALUresult = srca - srcb;                      // Subtraction
        3'b111: ALUresult = ($signed(srca) < $signed(srcb)) ? // Set on Less Than (signed comparison)
                            {{(WIDTH-1){1'b0}}, 1'b1} : {WIDTH{1'b0}};

        default: ALUresult = {WIDTH{1'b0}};
            
        
    endcase
end


endmodule