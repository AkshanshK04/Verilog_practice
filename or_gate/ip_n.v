module or_n_bit # ( parameter N = 8 )( 
    input wire [N-1:0] a,
    input wire [N-1:0] b,
    output wire [N-1:0] y
);

assign y = a | b ;

endmodule