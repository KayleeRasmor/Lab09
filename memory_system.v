module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire demux0out;
    wire [7:0] demux1out0, demux1out1, demux1out2, demux1out3;
    wire [7:0] mux0in0, mux0in1, mux0in2, mux0in3;

    
    byte_memory mem0(
        .data(demux1out0),
        .store(demux0out),
        .memory(mux0in0)
    );
    byte_memory mem1(
        .data(demux1out1),
        .store(demux0out),
        .memory(mux0in1)
    );
    byte_memory mem2(
        .data(demux1out2),
        .store(demux0out),
        .memory(mux0in2)
    );
    byte_memory mem3(
        .data(demux1out3),
        .store(demux0out),
        .memory(mux0in3)
    );   
    demultiplexer_one_bit demux0(
        .data(store),
        .sel(addr),
        .A(demux0out),
        .B(demux0out),
        .C(demux0out),
        .D(demux0out)
    
    );
    demultiplexer_eight_bit demux1(
        .data(data),
        .sel(addr),
        .A(demux1out0),
        .B(demux1out1),
        .C(demux1out2),
        .D(demux1out3)
        
    );
    mux mux0(
        .sel(addr),
        .A(mux0in0),
        .B(mux0in0),
        .C(mux0in0),
        .D(mux0in0),
        .out(memory)
    );
    

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule