// ALU(block) design for ARM
// https://www.cc.gatech.edu/~hyesoon/spr10/lec_arm2.pdf
// instructions minimal for mux

`define AND 4'd0
`define XOR 4'd1
`define SUB 4'd2
`define RSB 4'd3
`define ADD 4'd4
`define ADC 4'd5
`define SBC 4'd6
`define RSC 4'd7
`define TST 4'd8
`define TEQ 4'd9
`define CMP 4'd10
`define CMN 4'd11
`define ORR 4'd12
`define MOV 4'd13
`define BIC 4'd14
`define MVN 4'd15

module ALU(opc, op1, op2, res, nzcv, c_shifter);

    parameter N = 32;

    input [N-1:0] op1, op2;
    input [3:0] opc;
    input c_shifter;

    output reg [N-1:0] res;
    output reg [3:0] nzcv;

    reg cin, cout;

    always @(*) begin
        case(opc)
        `AND: begin
            res = op1 & op2;
            nzcv[1] = c_shifter;
        end
        `XOR: begin
            res = op1 ^ op2;
            nzcv[1] = c_shifter;
        end
        `SUB: begin
            {cout, res} = op1 - op2 + cin;
            nzcv[1] = cout;
            nzcv[0] = cin^cout;
        end
        endcase
    end

endmodule
