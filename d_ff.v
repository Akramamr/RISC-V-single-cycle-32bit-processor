module d_ff(d,clk,rst,q);

input wire d,clk,rst;
output reg q;



always @(posedge clk or posedge rst) begin
    if(rst) begin
        q<=0;
       
    end 
    else q<=d;
end




endmodule