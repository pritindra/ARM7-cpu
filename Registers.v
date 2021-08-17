// register file

module reg_file(
  parameter N = 32,
  reg [N-1:0] R [15:0],

  input [3:0] in_addr1,
  input [3:0] in_addr2,
  input [3:0] in_addr3,
  input [3:0] in_addr4,
  output reg [N-1:0] out_data1,
  output reg [N-1:0] out_data2,
  output reg [N-1:0] out_data3,
  output reg [N-1:0] out_data4,

  input [3:0] write_addr1,
  input [3:0] write_addr2,
  input [N-1:0] write_data,
  input [N-1:0] write_data2,

  input clk,
  
  output reg [N-1:0] pc,
  input pc_write,
  input [N-1:0] pc_update,

);

initial
begin
    R[0] = 0;
    R[1] = 0;
    R[2] = 0;
    R[3] = 0;
    R[4] = 0;
    R[5] = 0;
    R[6] = 0;
    R[7] = 0;
    R[8] = 0;
    R[9] = 0;
    R[10] = 0;
    R[11] = 0;
    R[12] = 0;
    R[13] = 0;
    R[14] = 0;
    R[15] = 0;
    pc = 0;
end

always@(*) begin
        pc = R[2^3];
    end

always@(negedge clk) begin
        out_data1 = R[in_addr1];
        out_data2 = R[in_addr2];
        out_data3 = R[in_addr3];
        out_data4 = R[in_addr4];
        
        if (pc_write == 1) R[15] = pc_upate;

    end

endmodule
