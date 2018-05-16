`timescale 1ns / 1ps

module Decoder( OP, Reg_WE, DM_WE, ALU_OP, ALU_src,MEM_to_REG,REG_Dst,funct);
	input [5:0] OP;
	input [5:0] funct;
	output Reg_WE, DM_WE, ALU_src,MEM_to_REG,REG_Dst;
	output [1:0] ALU_OP;
	

   /* add your design */   	
	
	reg Reg_WE;
	reg DM_WE;
	reg ALU_src;
	reg MEM_to_REG;
	reg REG_Dst;
	reg [1:0] ALU_OP;
	
	//read reg var
	always@(*)begin
		Reg_WE = 0;
		DM_WE = 0;
		ALU_src = 0;
		MEM_to_REG = 0;
		REG_Dst = 0;
		
		case(OP)
		6'b00_0000 :begin //R-type
			case(funct)
				6'b10_0000 : begin  //add(32)
			
					Reg_WE = 1;
					DM_WE = 0;
					ALU_src = 0;
					REG_Dst = 1;
					MEM_to_REG = 0;
					ALU_OP = 2'b10;
				end
				6'b10_0010 : begin  //sub(34)
				
					Reg_WE = 1;
					DM_WE = 0;
					ALU_src = 0;
					REG_Dst = 1;
					MEM_to_REG = 0;
					ALU_OP = 2'b10;
				end
				6'b10_1010 : begin  //slt(42)
				
					Reg_WE = 1;
					DM_WE = 0;
					ALU_src = 0;
					REG_Dst = 1;
					MEM_to_REG = 0;
					ALU_OP = 2'b10;
				end
			endcase
			end
		endcase
	end
			 
		
	
	
	
endmodule
