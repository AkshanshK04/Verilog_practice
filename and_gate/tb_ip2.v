`timescale 1ns / 1ps   // <-- YE LINE ADD KAR DE
module tb_andgate;
    reg a,b;
    wire y;

    and_gate dut (.a(a), .b(b), .y(y));
    
    initial begin
        $dumpfile("tb_and2.vcd");
        $dumpvars(0, tb_andgate);
    end
    initial begin
        $display("Time a b | y");
        $monitor("%0t  %b %b | %b" , $time, a, b, y);

        a=0; b=0; #5;
        a=0; b=1; #5;
        a=1; b=0; #5;
        a=1; b=1; #5;

        #10 $finish;
    end 
endmodule