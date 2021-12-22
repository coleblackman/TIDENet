module binvert(output ib,input b);
	assign ib = ~b;
endmodule

module band2 (input wire i0, i1, output wire o);
  assign o = i0 & i1;
endmodule

module bor2 (input wire i0, i1, output wire o);
  assign o = i0 | i1;
endmodule

module bxor2 (input wire i0, i1, output wire o);
  assign o = i0 ^ i1;
endmodule

module bnand2 (input wire i0, i1, output wire o);
   wire t;
   band2 and2_0 (i0, i1, t);
   binvert invert_0 (t, o);
endmodule

module bnor2 (input wire i0, i1, output wire o);
   wire t;
   bor2 or2_0 (i0, i1, t);
   binvert invert_0 (t, o);
endmodule

module bxnor2 (input wire i0, i1, output wire o);
   wire t;
   bxor2 xor2_0 (i0, i1, t);
   binvert invert_0 (t, o);
endmodule

module band3 (input wire i0, i1, i2, output wire o);
   wire t;
   band2 and2_0 (i0, i1, t);
   band2 and2_1 (i2, t, o);
endmodule

module bor3 (input wire i0, i1, i2, output wire o);
   wire t;
   bor2 or2_0 (i0, i1, t);
   bor2 or2_1 (i2, t, o);
endmodule

module bnor3 (input wire i0, i1, i2, output wire o);
   wire t;
   bor2 or2_0 (i0, i1, t);
   bnor2 nor2_0 (i2, t, o);
endmodule

module bnand3 (input wire i0, i1, i2, output wire o);
   wire t;
   band2 and2_0 (i0, i1, t);
   bnand2 nand2_1 (i2, t, o);
endmodule

module bxor3 (input wire i0, i1, i2, output wire o);
   wire t;
   bxor2 xor2_0 (i0, i1, t);
   bxor2 xor2_1 (i2, t, o);
endmodule

module bxnor3 (input wire i0, i1, i2, output wire o);
   wire t;
   bxor2 xor2_0 (i0, i1, t);
   bxnor2 xnor2_0 (i2, t, o);
endmodule

module bfa (input wire i0, i1, cin, output wire sum, cout);
   wire t0, t1, t2;
   bxor3 _i0 (i0, i1, cin, sum);
   band2 _i1 (i0, i1, t0);
   band2 _i2 (i1, cin, t1);
   band2 _i3 (cin, i0, t2);
   bor3 _i4 (t0, t1, t2, cout);
endmodule


module Adder(a,b,sum);
	input [15:0] a,b;
	output [15:0]sum;
	wire cout;
	wire [15:0] q;
	bfa fa1(a[0],b[0],1'b0,sum[0],q[0]);
	bfa fa2(a[1],b[1],q[0],sum[1],q[1]);
	bfa fa3(a[2],b[2],q[1],sum[2],q[2]);
	bfa fa4(a[3],b[3],q[2],sum[3],q[3]);
	bfa fa5(a[4],b[4],q[3],sum[4],q[4]);
	bfa fa6(a[5],b[5],q[4],sum[5],q[5]);
	bfa fa7(a[6],b[6],q[5],sum[6],q[6]);
	bfa fa8(a[7],b[7],q[6],sum[7],q[7]);
	bfa fa9(a[8],b[8],q[7],sum[8],q[8]);
	bfa fa10(a[9],b[9],q[8],sum[9],q[9]);
	bfa fa11(a[10],b[10],q[9],sum[10],q[10]);
	bfa fa12(a[11],b[11],q[10],sum[11],q[11]);
	bfa fa13(a[12],b[12],q[11],sum[12],q[12]);
	bfa fa14(a[13],b[13],q[12],sum[13],q[13]);
	bfa fa15(a[14],b[14],q[13],sum[14],q[14]);
	bfa fa16(a[15],b[15],q[14],sum[15],cout);	
endmodule

module subtractor(a,b,sum);
	input [15:0] a,b;
	output [15:0]sum;
	wire [15:0] ib;
	wire cout;
	binvert b1(ib[0],b[0]);
	binvert b2(ib[1],b[1]);
	binvert b3(ib[2],b[2]);
	binvert b4(ib[3],b[3]);
	binvert b5(ib[4],b[4]);
	binvert b6(ib[5],b[5]);
	binvert b7(ib[6],b[6]);
	binvert b8(ib[7],b[7]);
	binvert b9(ib[8],b[8]);
	binvert b10(ib[9],b[9]);
	binvert b11(ib[10],b[10]);
	binvert b12(ib[11],b[11]);
	binvert b13(ib[12],b[12]);
	binvert b14(ib[13],b[13]);
	binvert b15(ib[14],b[14]);
	binvert b16(ib[15],b[15]);


	wire [15:0] q;
	bfa fa1(a[0],ib[0],1'b1,sum[0],q[0]);
	bfa fa2(a[1],ib[1],q[0],sum[1],q[1]);
	bfa fa3(a[2],ib[2],q[1],sum[2],q[2]);
	bfa fa4(a[3],ib[3],q[2],sum[3],q[3]);
	bfa fa5(a[4],ib[4],q[3],sum[4],q[4]);
	bfa fa6(a[5],ib[5],q[4],sum[5],q[5]);
	bfa fa7(a[6],ib[6],q[5],sum[6],q[6]);
	bfa fa8(a[7],ib[7],q[6],sum[7],q[7]);
	bfa fa9(a[8],ib[8],q[7],sum[8],q[8]);
	bfa fa10(a[9],ib[9],q[8],sum[9],q[9]);
	bfa fa11(a[10],ib[10],q[9],sum[10],q[10]);
	bfa fa12(a[11],ib[11],q[10],sum[11],q[11]);
	bfa fa13(a[12],ib[12],q[11],sum[12],q[12]);
	bfa fa14(a[13],ib[13],q[12],sum[13],q[13]);
	bfa fa15(a[14],ib[14],q[13],sum[14],q[14]);
	bfa fa16(a[15],ib[15],q[14],sum[15],cout);

endmodule



module booth_substep(input wire signed [15:0]a,Q,input wire signed q0,input wire signed [15:0] m,output reg signed [15:0] f8,output reg signed [15:0] l8,output reg cq0);
	wire [15:0] addam,subam;
	Adder myadd(a,m,addam);
	subtractor mysub(a,m,subam);
	// Still need to fix this part
		always @(*) begin	
		if(Q[0] == q0) begin
			 cq0 = Q[0];
			l8 = Q>>1;
			l8[15] = a[0];
			 f8 = a>>1;
			if (a[15] == 1)
			f8[15] = 1;
		end

		else if(Q[0] == 1 && q0 ==0) begin
			 cq0 = Q[0];
				l8 = Q>>1;
			 l8[15] = subam[0];
			 f8 = subam>>1;
			if (subam[15] == 1)
			f8[15] = 1;
		end

		else begin
			 cq0 = Q[0];
				l8 = Q>>1;
			 l8[15] = addam[0];
			 f8 = addam>>1;
			if (addam[15] == 1)
			f8[15] = 1;
		end
						
			
			
			 	
		
	
end	
endmodule 
	


 
module mul16x16_signed(input CLK,input signed[15:0]A,B,output reg signed [31:0] P);
	wire signed [15:0]Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;
	wire signed [15:0] m;

	//The next two lines may need to be changed
	wire signed [15:0] A1,A0,A3,A2,A8,A9,A10,A11;
	wire signed [15:0] A4,A5,A6,A7,A12,A13,A14,A15;
	wire signed[15:0] q0;
	wire signed[31:0] c;
	wire qout;
	//These need to be changed and added to
	booth_substep step1(16'b0000000000000000,a,1'b0,b,A1,Q1,q0[1]);
	booth_substep step2(A1,Q1,q0[1],b,A2,Q2,q0[2]);
	booth_substep step3(A2,Q2,q0[2],b,A3,Q3,q0[3]);
	booth_substep step4(A3,Q3,q0[3],b,A4,Q4,q0[4]);
	booth_substep step5(A4,Q4,q0[4],b,A5,Q5,q0[5]);
	booth_substep step6(A5,Q5,q0[5],b,A6,Q6,q0[6]);
	booth_substep step7(A6,Q6,q0[6],b,A7,Q7,q0[7]);
	booth_substep step8(A7,Q7,q0[7],b,A8,Q8,q0[8]);
	booth_substep step9(A8,Q8,q0[8],b,A9,Q9,q0[9]);
	booth_substep step10(A9,Q9,q0[9],b,A10,Q10,q0[10]);
	booth_substep step11(A10,Q10,q0[10],b,A11,Q11,q0[11]);
	booth_substep step12(A11,Q11,q0[11],b,A12,Q12,q0[12]);
	booth_substep step13(A12,Q12,q0[12],b,A13,Q13,q0[13]);
	booth_substep step14(A13,Q13,q0[13],b,A14,Q14,q0[14]);
	booth_substep step15(A14,Q14,q0[14],b,A15,Q15,q0[15]);
	booth_substep step16(A15,Q15,q0[15],b,c[31:16],c[15:0],qout);
	
	always@(posedge CLK)	P <= c;
	
	 
endmodule

module mul16_unsigned(input CLK, input signed[15:0]A,B,output signed [31:0] P);
	mul16x16_signed(CLK, A, B, P);
endmodule
