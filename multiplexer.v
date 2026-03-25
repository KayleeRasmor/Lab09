module multiplexer (

    input wire [7:0] A, B, C, D,
    input wire [1:0] select,
    output wire [7:0] Y

);

assign Y = (select == 2'b00) ? A : 
           (select == 2'b01) ? B :
           (select == 2'b10) ? C :
            D;
            
endmodule