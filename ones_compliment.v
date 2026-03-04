module ones_compliment(
input [3:0] A,
input [3:0] B,
output [3:0] FY
);

wire cout1;
wire cout2;
wire cout3;
wire cout4;
wire cout5;
wire cout6;
wire carryaround;
wire [3:0] Y;

full_adder block1(
    .A(A[0]),
    .B(B[0]),
    .Y(Y[0]),
    .Cin(1'b0),
    .Cout(cout1)
);

full_adder block2(
    .Cin(cout1),
    .A(A[1]),
    .B(B[1]),
    .Y(Y[1]),
    .Cout(cout2)
);

full_adder block3(
    .Cin(cout2),
    .A(A[2]),
    .B(B[2]),
    .Y(Y[2]),
    .Cout(cout3)
);

full_adder block4(
    .Cin(cout3),
    .A(A[3]),
    .B(B[3]),
    .Y(Y[3]),
    .Cout(carryaround)
);

full_adder block5(
    .Cin(carryaround),
    .A(Y[0]),
    .B(1'b0),
    .Y(FY[0]),
    .Cout(cout4)
);

full_adder block6(
    .Cin(cout4),
    .A(Y[1]),
    .B(1'b0),
    .Y(FY[1]),
    .Cout(cout5)
);

full_adder block7(
    .Cin(cout5),
    .A(Y[2]),
    .B(1'b0),
    .Y(FY[2]),
    .Cout(cout6)
);

full_adder block8(
    .Cin(cout6),
    .A(Y[3]),
    .B(1'b0),
    .Y(FY[3])
);



endmodule