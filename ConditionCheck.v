// condition codes applied module
module condC(nzcv, cond_code, exec);

    input [3:0] nzcv, cond_code;
    output reg exec;

    always @(*) begin
        case (cond_code)
            0:begin
                if (nzcv[2] == 1) exec = 1;
                else exec = 0;
            end
            1:begin
                if (nzcv[2] == 0) exec = 1;
                else exec = 0;
            end
            2:begin
                if (nzcv[1] == 1) exec = 1;
                else exec = 0;
            end
            3:begin
                if (nzcv[1] == 0) exec = 1;
                else exec = 0;
            end
            4:begin
                if (nzcv[3] == 1) exec = 1;
                else exec = 0;
            end
            5:begin
                if (nzcv[3] == 0) exec = 1;
                else exec = 0;
            end
            6:begin
                if (nzcv[0] == 1) exec = 1;
                else exec = 0;
            end
            7:begin
                if (nzcv[0] == 0) exec = 1;
                else exec = 0;
            end
            8:begin
                if (nzcv[1] == 1 && nzcv[2] == 0) exec = 1;
                else exec = 0;
            end
            9:begin
                if (nzcv[1] == 0 && nzcv[2] == 1) exec = 1;
                else exec = 0;
            end
            10:begin
                if (nzcv[3] == nzcv[0]) exec = 1;
                else exec = 0;
            end
            11:begin
                if (nzcv[3] != nzcv[0]) exec = 1;
                else exec = 0;
            end
            12:begin
                if (nzcv[2] == 0 && nzcv[3] == nzcv[0]) exec = 1;
                else exec = 0;
            end
            13:begin
                if (nzcv[2] == 0 || nzcv[3] != nzcv[0]) exec = 1;
                else exec = 0;
            end
            14:begin
                exec = 1;
            end
            15:begin
                exec = 1;
            end
        endcase
    end

endmodule
