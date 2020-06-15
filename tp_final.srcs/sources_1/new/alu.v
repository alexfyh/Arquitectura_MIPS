`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2020 17:45:25
// Design Name: 
// Module Name: alu
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
`define ARGUMENT_LENGTH 32
`define OPERATOR_LENGTH 4
module alu(
    input [`ARGUMENT_LENGTH-1:0] first_arg,
    input [`ARGUMENT_LENGTH-1 :0] second_arg,
    input [`OPERATOR_LENGTH-1:0] operator,
    
    output reg [`ARGUMENT_LENGTH-1:0] result,
    output reg zero
    );
    
    
    always@(*)
    begin
        case(operator)
            `OPERATOR_LENGTH'b0000: result = first_arg & second_arg;
            `OPERATOR_LENGTH'b0001: result = first_arg | second_arg;
            `OPERATOR_LENGTH'b0010: result = first_arg + second_arg;
            `OPERATOR_LENGTH'b0110: result = first_arg - second_arg;
            default: result = {`ARGUMENT_LENGTH{1'b0}};
        endcase
    end
    
    always@(*)
    begin
        if(operator==`OPERATOR_LENGTH'b0110 && first_arg==second_arg)
            zero = 1'b1;
        else
            zero = 1'b0;
    end
endmodule
