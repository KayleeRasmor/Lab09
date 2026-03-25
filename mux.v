module mux(
    input [1:0] sel,
    input [7:0] A, B, C, D,
    output [7:0] out
 );
assign out = (sel == 2'b00 ? A : 
 sel == 2'b01 ? B :
 sel == 2'b10 ? C : D );  
    
endmodule
