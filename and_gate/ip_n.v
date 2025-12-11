module and_n_bit #(
    parameter N = 8
) (
    input [N-1:0] a,
    output y
);

assign y = &a;

endmodule