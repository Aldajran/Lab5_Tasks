`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 05:02:09 PM
// Design Name: 
// Module Name: tp_data_memory
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
//  واقرأ ثلاث قيم من مواقع مختلفة في الذاكرة
//////////////////////////////////////////////////////////////////////////////////

module tb_data_memory;

    logic clk;                     
    logic reset_n;                  
    logic [2:0] address;           
    logic [7:0] Data_in;           
    logic Wen;                     
    logic [7:0] Data_out;  

    Data_Memory #(     // Call  Data_Memory
        .WIDTH(8),   
        .DEPTH(8)    
    ) dut (
        .clk(clk),
        .reset_n(reset_n),
        .address(address),
        .Data_in(Data_in),
        .Wen(Wen),
        .Data_out(Data_out)
    );
  initial begin
    clk = 0; // Start clock 0
    forever #5 clk = ~clk; // Each 5 units Revarse
end

initial begin
    $display(" Address | Data_in  | Data_out ");
    $display("-----------------------------");
   reset_n = 0; #10;
   reset_n = 1; #10;
   
   //Data_out = 8'b0; // 
 
 // Write
    Wen = 1;
    address = 3'b000; Data_in = 8'b10101010; #10;
    address = 3'b001; Data_in = 8'b11001100; #10;
    address = 3'b011; Data_in = 8'b11110000; #10;
     
$display("----------------------------------------");
$display("| Address  |   Data_in    |   Data_out |");
$display("----------------------------------------");

Wen = 0; // Reads the Data from Meomry
address = 3'b000; #10; 
$display("|   %b    |   %b    |   %b     |", address, Data_in, Data_out);
address = 3'b001; #10; 
$display("|   %b    |   %b    |   %b     |", address, Data_in, Data_out);
address = 3'b011; #10; 
$display("|   %b    |   %b    |   %b     |", address, Data_in, Data_out);

$display("------------------------------------------");
    $finish;

    end
endmodule






