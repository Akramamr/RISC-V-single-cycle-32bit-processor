add wave sim:/RV_tb/top/clk sim:/RV_tb/top/reset sim:/RV_tb/top/MemWrite sim:/RV_tb/top/ALUOut sim:/RV_tb/top/WriteData sim:/RV_tb/top/PC sim:/RV_tb/top/ReadData sim:/RV_tb/top/instr sim:/RV_tb/top/mips/ALUControl sim:/RV_tb/top/mips/RegWrite sim:/RV_tb/top/mips/RegDst sim:/RV_tb/top/mips/ALUSrc sim:/RV_tb/top/mips/MemtoReg sim:/RV_tb/top/mips/Zero sim:/RV_tb/top/mips/PCSrc sim:/RV_tb/top/mips/jump sim:/RV_tb/top/mips/cntrl/funct sim:/RV_tb/top/mips/cntrl/op sim:/RV_tb/top/mips/cntrl/ALUOp sim:/RV_tb/top/mips/cntrl/md/controls sim:/RV_tb/top/mips/cntrl/md/branch


add wave -position insertpoint  \
sim:/RV_tb/top/mips/dp/alu/srca \
sim:/RV_tb/top/mips/dp/alu/srcb


add wave -position insertpoint  \
sim:/RV_tb/top/mips/dp/rf/we3 \
sim:/RV_tb/top/mips/dp/rf/ra1 \
sim:/RV_tb/top/mips/dp/rf/ra2 \
sim:/RV_tb/top/mips/dp/rf/wa3 \
sim:/RV_tb/top/mips/dp/rf/wd3 \
sim:/RV_tb/top/mips/dp/rf/rd1 \
sim:/RV_tb/top/mips/dp/rf/rd2 \
sim:/RV_tb/top/mips/dp/rf/mem


add wave -position insertpoint  \
sim:/RV_tb/top/mips/dp/muxWrReg/in0 \
sim:/RV_tb/top/mips/dp/muxWrReg/in1 \
sim:/RV_tb/top/mips/dp/muxWrReg/s \
sim:/RV_tb/top/mips/dp/muxWrReg/out

add wave -position insertpoint  \
sim:/RV_tb/top/mips/dp/alu/ALUresult \
sim:/RV_tb/top/mips/dp/alu/ZeroFlag