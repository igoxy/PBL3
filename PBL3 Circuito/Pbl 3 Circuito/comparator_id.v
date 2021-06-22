module comparator_id(id_typed, col, row, id_valid, val_product);

	input id_typed;
	input [1:0] col, row;
	output reg id_valid;
	output reg [3:0] val_product;
	
	parameter refri    = 4'b0000, 
				 salg     = 4'b0100,
				 amen     = 4'b0101,
				 agua     = 4'b1000,
				 suco     = 4'b1001,
				 agua_co  = 4'b1010,
				 cafe     = 4'b1011,
				 sandu_si = 4'b1100,
				 sandu_na = 4'b1101;
	
	initial begin	
		id_valid = 0;
		val_product = 0;
	end
	
	always@(posedge id_typed) begin
	
		case({row, col})
		
		refri: val_product = 4;
		salg: val_product = 8;
		amen: val_product = 2;
		agua: val_product = 2;
		suco: val_product = 5;
		agua_co: val_product = 7;
		cafe: val_product = 6;
		sandu_si : val_product = 4;
		sandu_na : val_product = 7;
		
		default: val_product = 0;
			
		endcase
		
		if(val_product == 0) id_valid = 0;
		else id_valid = 1;
	end
	
	
endmodule