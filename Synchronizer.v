
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2022 16:29:10
// Design Name: 
// Module Name: Synchronizer
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


module Synchronizer(
    input [3:0] Row,
    input clock,
    input reset,
    output reg S_Row
    );
    reg A_Row;
    
    always @ (negedge clock or posedge reset)
    begin
    if (reset) 
    begin 
    A_Row <= 0;
    S_Row <= 0;
    end
    else 
    begin 
    A_Row <= (Row[0] || Row[1] || Row[2] || Row[3]);
    S_Row <= A_Row;
    end 
    end
        
endmodule