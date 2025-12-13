`timescale 1ns/1ps 

module or_n_bit_tb ;

parameter N = 8;

reg [N-1:0] a;
reg [N-1:0] b;
wire [N-1:0] y;

or_n_bit # (.N(N)) dut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin 
    $display("Time\t a\t\t b\t\t y");
    $monitor("%0t\t %b\t %b\t %b" , $time, a, b, y);

    a = 8'b00000000; b=8'b00000000; #10;
    a = 8'b00001111; b=8'b11110000; #10;
    a = 8'b11111111; b=8'b00000000; #10;
    a = 8'b00110011; b=8'b01010101; #10;

    $finish;
end
endmodule 