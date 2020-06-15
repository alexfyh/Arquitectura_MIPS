`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2020 19:46:18
// Design Name: 
// Module Name: tb_alu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_alu;
    reg [31:0] primer_argumento;
    reg [31:0] segundo_argumento;
    reg [3:0] operador;
    
    wire [31:0] resultado;
    wire cero;
    
    alu alu(
        .first_arg(primer_argumento),
        .second_arg(segundo_argumento),
        .operator(operador),
        
        .result(resultado),
        .zero(cero)
    );
    
    initial
    begin
        primer_argumento = 10;
        segundo_argumento= 10;
        operador = 2;
    #1
        primer_argumento = 1;
        segundo_argumento= 3;
        operador = 0;
    #1
        primer_argumento = 3;
        segundo_argumento= 3;
        operador = 6;
            
    end
endmodule
