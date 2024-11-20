`timescale 1ns / 1ps



module shift_reg(
input logic clk,
input logic reset_n,
input logic en,
input logic in,
output logic [7:0]q
);

        

always@(posedge clk , negedge reset_n)
 begin
 
 if (!reset_n) q<=8'b00000000;
 else if (en==1)
 q[7]<=in;
  q[6]<=q[7];
   q[5]<=q[6];
    q[4]<=q[5];
     q[3]<=q[4];
      q[2]<=q[3];
       q[1]<=q[2];
        q[0]<=q[1];
        
        end 
 
 

        
endmodule
