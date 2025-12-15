`timescale 1ns/1ns

module not_gate_tb;
    reg a;
    wire y;

    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);

        $display("time \t a\t y");
        $display("-------------");

        a = 0 ;
        #10;
        $display("%0t \t %b\t %b", $time , a, y);

        a=1;
        #10;
        $display("%0t \t %b\t %b", $time,a,y);

        #10 $finish;

    
    end
endmodule 