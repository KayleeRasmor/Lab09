module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
    );
    
d_latch d_inst (
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .notQ(led[1])
);


memory_block inst_0(
    .data(sw[15:8]),
    .addr(sw[7:6]),
    .store(btnC),
    .Q(led[15:8])
);

endmodule
