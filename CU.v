// pipelining 

module Pipeline(input clk);

wire[31:0] out_data_1;
wire[31:0] out_data_2;
wire[31:0] out_data_3;
wire[31:0] out_data_4;
wire[31:0] operand_2;
wire[3:0] type;
wire[31:0] cspr;

reg[3:0] read_address;

reg[3:0] write_address;
reg[31:0] write_data;
reg write_enable;
reg[3:0] write_address_2;
reg[31:0] write_data_2;
reg write_enable_2;
reg[31:0] pc_update;
reg pc_write;
reg cspr_write;
reg[31:0] cspr_update;

reg_file RegisterFile(
    
); 

endmodule
