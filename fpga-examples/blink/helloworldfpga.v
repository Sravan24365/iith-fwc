module helloworldfpga(
	input A,
	input B,
	input C,
	output wire r,
	output wire g,
	output wire b,
);
reg r,g,b;
always@(A,B,C)
begin
	r=A&&(B||C);
	g= (A||B)&&(A||C);
	b= (r&&g)||(!r&&!g);
end
endmodule
