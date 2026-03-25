module d_latch(
    
    input wire D,
    input wire E,
    output reg Q,
    output notQ
);

always@(D, E) begin
    if (E)
        Q <= D;
    
    end
    
assign notQ = ~Q; 
    
endmodule
