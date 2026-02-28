
// Code your design here

//`include "cla_4bit.v"
//`include "rca_param.v"  // this syntax link all the files
//`include "full_adder.v"
`timescale 1ns/1ps
module top_adder #(
    parameter N = 4
)(
    input  [N-1:0] A,
    input  [N-1:0] B,
    input  Cin,
    output [N-1:0] Sum_rca,
    output Cout_rca,
    output [3:0] Sum_cla,
    output Cout_cla
);

  rca_param #(.N(N)) RCA (          // It connect the rca modules
        .A(A),
       .B(B),    
        .Cin(Cin),
        .Sum(Sum_rca),
        .Cout(Cout_rca)
    );

  cla_4bit CLA (                  //  It connect the cla module
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .Sum(Sum_cla),
        .Cout(Cout_cla)
    );

endmodule
