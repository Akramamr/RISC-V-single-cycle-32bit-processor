module RV_tb;

bit clk ,reset;
bit MemWrite;
bit [31:0 ] ALUOut,WriteData;

top top(.*);


initial begin
    clk =0;
    forever begin
        #10ns clk =~clk;
    end
end

initial begin
    reset =1;
    #20ns;
    reset =0;

    // #400ns;
    // $stop;
end
always @ (negedge clk)
    begin
        if(MemWrite)begin
            if(ALUOut== 84 & WriteData ==7)begin
                $display("********************************");
                $display("---------Simulation succeeded------------");
                $display("********************************");
                $stop;
            end 
            else if(ALUOut != 80)begin
                $display("Simulation failed");
                $stop;
            end
        end
    end







endmodule