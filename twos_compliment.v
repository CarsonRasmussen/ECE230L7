module twos_compliment(
    input [7:0] A,
    output [7:0] Y
);

wire cout1;
wire cout2;
wire cout3;
wire cout4;
wire cout5;
wire cout6;

full_adder block1(
    .A(~A[0]),
    .B(1'b0),
    .Y(Y[0]),
    .Cin(1'b1),
    .Cout(cout1)
);

full_adder block2(
    .Cin(cout1),
    .A(~A[1]),
    .B(1'b0),
    .Y(Y[1]),
    .Cout(cout2)
);

full_adder block3(
    .Cin(cout2),
    .A(~A[2]),
    .B(1'b0),
    .Y(Y[2]),
    .Cout(cout3)
);

full_adder block4(
    .Cin(cout3),
    .A(~A[3]),
    .B(1'b0),
    .Y(Y[3]),
    .Cout(cout4)
);

full_adder block5(
    .Cin(cout4),
    .A(~A[4]),
    .B(1'b0),
    .Y(Y[4]),
    .Cout(cout5)
);

full_adder block6(
    .Cin(cout5),
    .A(~A[5]),
    .B(1'b0),
    .Y(Y[5]),
    .Cout(cout6)
);

full_adder block7(
    .Cin(cout6),
    .A(~A[6]),
    .B(1'b0),
    .Y(Y[6]),
    .Cout(cout7)
);

full_adder block8(
    .Cin(cout7),
    .A(~A[7]),
    .B(1'b0),
    .Y(Y[7])
);

endmodule