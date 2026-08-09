`timescale 1ns/1ps

module bcd_adder (
    input  [3:0] a,
    input  [3:0] b,
    input        cin,
    output reg [3:0] sum,
    output reg       cout
);

    reg [4:0] temp;

    always @(*) begin
        // Binary addition
        temp = a + b + cin;

        // BCD correction
        if (temp > 5'd9)
            temp = temp + 5'd6;

        // Final BCD result
        sum  = temp[3:0];
        cout = temp[4];
    end

endmodule
