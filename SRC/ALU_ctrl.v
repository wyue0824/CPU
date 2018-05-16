`timescale 1ns / 1ps

module ALU_ctrl( funct, ALU_OP,ALU_CTRL );

    input [5:0] funct;
	input [1:0] ALU_OP;
    output [3:0]ALU_CTRL;
   
	
	
	
	   /* add your design */   
	
	reg [3:0]ALU_CTRL;


	//ALU comput
	parameter //Math

		op_add = 4'b0010,
		op_sub = 4'b0110,
		op_slt = 4'b0111;

	//controller

	always@(*)begin
		ALU_CTRL = 0;

		
		case(ALU_OP)
		2'b10 : begin
				case(funct)
					6'b10_0000 : begin //add(32)
						ALU_CTRL = op_add;
						end
					6'b10_0010 : begin //sub(34)
						ALU_CTRL = op_sub;
						end
					6'b10_1010 : begin //slt(42)
						ALU_CTRL = op_slt;
						end
				endcase
			end
		endcase
	end

endmodule
