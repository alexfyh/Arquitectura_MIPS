`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2020 05:14:37
// Design Name: 
// Module Name: tb_reg_file
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


module tb_reg_file;
    reg habilitado, clock;
    reg [31:0] entrada;
    reg [3:0] direccion_lectura,direccion_escritura;
    wire [31:0] salida;
    
    reg_file #(.W(4))
        instruction_memory(
        .clk(clock),
        .wr_en(habilitado),
        .w_addr(direccion_escritura),
        .r_addr(direccion_lectura),
        .w_data(entrada),
        
        .r_data(salida)
        );
        
    initial
    begin
        clock=0;
        habilitado=1;
        entrada=2;
        direccion_escritura=4;
        direccion_lectura=0;
        #1
        direccion_lectura=4;
    end
    
    always
    begin
    #1
    clock=~clock;
    end
endmodule
