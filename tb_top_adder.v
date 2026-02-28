// Code your testbench here
// or browse Examples

`timescale 1ns/1ps

module testbench;

    parameter N = 4;

    reg  [N-1:0] A, B;
    reg  Cin;
    wire [N-1:0] Sum_rca;
    wire Cout_rca;
    wire [3:0] Sum_cla;
    wire Cout_cla;

    top_adder #(.N(N)) uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum_rca(Sum_rca),
        .Cout_rca(Cout_rca),
        .Sum_cla(Sum_cla),
        .Cout_cla(Cout_cla)
    );

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);

        A=4'b0011; B=4'b0101; Cin=0; #10;
        A=4'b1111; B=4'b0001; Cin=0; #10;
        A=4'b1010; B=4'b0101; Cin=1; #10;

        $finish;
    end

endmodule