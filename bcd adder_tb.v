`timescale 1ns/1ps

module tb_bcd_adder;

    reg [3:0] a;
    reg [3:0] b;
    reg       cin;

    wire [3:0] sum;
    wire       cout;

    // Instantiate BCD Adder
    bcd_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin

        $dumpfile("bcd_adder.vcd");
        $dumpvars(0, tb_bcd_adder);

        $monitor(
            "Time=%0t | A=%d | B=%d | Cin=%d | Cout=%d | Sum=%d",
            $time, a, b, cin, cout, sum
        );

        // Test 1: 2 + 3 = 5
        a = 4'd2;
        b = 4'd3;
        cin = 1'b0;
        #10;

        // Test 2: 5 + 4 = 9
        a = 4'd5;
        b = 4'd4;
        cin = 1'b0;
        #10;

        // Test 3: 7 + 5 = 12
        a = 4'd7;
        b = 4'd5;
        cin = 1'b0;
        #10;

        // Test 4: 9 + 9 = 18
        a = 4'd9;
        b = 4'd9;
        cin = 1'b0;
        #10;

        // Test 5: 8 + 1 + 1 = 10
        a = 4'd8;
        b = 4'd1;
        cin = 1'b1;
        #10;

        // Test 6: 9 + 8 + 1 = 18
        a = 4'd9;
        b = 4'd8;
        cin = 1'b1;
        #10;

        $display("Simulation completed.");
        $finish;
    end

endmodule
