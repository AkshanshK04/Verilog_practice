`timescale 1ns/1ns

module xor_gate_tb;

    reg a, b;
    wire y;

    xor_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin 
        $dumpfile("xor_gate.vcd");
        $dumpvars(0, xor_gate_tb);
        $display("time \t a b \t y");
        $display("-----------------");

        a=0; b=0; #10;
        $display("%0t \t %b %b \t %b", $time, a, b, y);
        a=0; b=1; #10;
        $display("%0t \t %b %b \t %b", $time, a, b, y);
        a=1; b=0; #10;                                                  
        $display("%0t \t %b %b \t %b", $time, a, b, y);
        a=1; b=1; #10;
        $display("%0t \t %b %b \t %b", $time, a, b, y);

        #10 $finish;
    end
endmodule