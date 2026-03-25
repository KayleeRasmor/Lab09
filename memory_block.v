module memory_block(
    
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] Q    

);

//wire [7:0] d0, d1, d2, d3;
wire e0, e1, e2, e3;
wire [7:0] q0, q1, q2, q3;

byte_memory inst_0 (
    .data(data),
    .store(e0),
    .memory(q0)
);
    
byte_memory inst_1 (
    .data(data),
    .store(e1),
    .memory(q1)
);
    
byte_memory inst_2 (
    .data(data),
    .store(e2),
    .memory(q2)
);
    
byte_memory inst_3 (
    .data(data),
    .store(e3),
    .memory(q3)
);

//demultiplexer demux_data (
//        .data(data),
//        .sel(addr),
//        .A(d0),
//        .B(d1),
//        .C(d2),
//        .D(d3)
//);

//demux_onebit demux_store (
//        .data(store),
//        .sel(addr),
//        .A(e0),
//        .B(e1),
//        .C(e2),
//        .D(e3)
//);


assign e0 = (addr == 0) ? store : 0;
assign e1 = (addr == 1) ? store : 0;
assign e2 = (addr == 2) ? store : 0;
assign e3 = (addr == 3) ? store : 0;

assign Q = (addr == 0) ? q0 : 
           (addr == 1) ? q1 :
           (addr == 2) ? q2 :
            q3;


//multiplexer mux_output (
//    .A(q0),
//    .B(q1),
//    .C(q2),
//    .D(q3),
//    .select(addr),
//    .Y(Q)
//);

endmodule
