`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2020 21:12:27
// Design Name: 
// Module Name: control
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

module control(
    input [5:0] instruction,
    
    output reg RegDst,
    output reg Branch,
    output reg MemRead,
    output reg MemtoReg,
    output reg [1:0]ALUOp,
    output reg MemWrite,
    output reg ALUSrc,
    output reg RegWrite
    );
    
    always@(*)
    begin
        case(instruction)
            6'b000000: ALUOp=2'b10;      //R-Format
            6'b000010: ALUOp=2'b0;      //jmp
            6'b000100: ALUOp=2'b0;      //beq
            6'b100011: ALUOp=2'b0;      //lw
            6'b101011: ALUOp=2'b0;      //sw
            default: ALUOp= 2'b0;
        endcase
    end
endmodule
