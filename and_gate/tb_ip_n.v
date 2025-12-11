`timescale 1ns / 1ps
module and_n_bit_tb ;
    parameter N = 8;

    reg [N-1:0] a ;
    wire y ;
    
    and_n_bit #(N) dut (
        .a(a),
        .y(y)
    );

    initial begin
        $display("N = %0d" , N);
        $display("Time\tTnput\t\tOutput");
        $monitor("%0t\t%b\t%b" , $time, a, y);
        
        repeat (20) begin
            a = $random;
            #10;
        end
        
        #10 a = 8'b1111_1111;
        #10 a = 8'b1111_1110;
        #10 a = 8'b0000_0000;
        #10 a = 8'b1010_1010;

        #20 $finish;
    end

    initial begin 
        $dumpfile("tb_ip_n.vcd");
        $dumpvars(0, and_n_bit_tb);

    end
        
endmodule
