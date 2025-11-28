//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 18:51:29
// Design Name: 
// Module Name: tb
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


module tb();
    reg clk,rst;
    wire  [7:0] seven_seg_en,seven_seg_out;
    
    digital_clk dut(.clk(clk),.rst(rst),.seven_seg_en(seven_seg_en),.seven_seg_out(seven_seg_out));
    
    initial begin
        clk=0;
        forever #5 clk=~clk;
    end
    
    
    initial begin
        rst=1;
        #20;
        rst=0;
        $display("reset done");
    end
    
    initial begin 
        #1000;
        $display("simulation finished");
        $finish();
    end
    
endmodule
