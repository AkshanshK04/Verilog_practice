`timescale 1ns/1ps

module or_user_nbit_tb ;
integer N;

reg [31:0] a, b;
wire [31:0] y;

or_n_bit  dut (
    .a(a) ,
    .b(b) ,
    .y(y) 
);

initial begin 
    if ( !$value$plusargs("N=%d" , N)) begin 
        $display(" just drop N value negga , usign default N=8");
        N = 8;
    end

    $display("I will use N= %0d" , N);
    
    a = 32'd0;
    b = 32'd0;
    #10
    a =32'h000000F0;
    b =32'h0000000F;

    #10 
    a =32'h000000AA;
    b =32'h00000055;

    #10 $finish;
end

always @(*) begin 
    $display("Time=%0t | a=%b | b=%b | y=%b ", $time, a & ((1<<N)-1), b & ((1<<N)-1) , y & ((1<<N)-1));
    
end
endmodule

