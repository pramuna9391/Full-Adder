module fa_tb;
    reg A;
    reg B;
    reg Cin;
    wire Sum;
    wire Cout;

    fa uut (
        .A(A), 
        .B(B), 
        .Cin(Cin), 
        .Sum(Sum), 
        .Cout(Cout)
    );

    initial begin
       
        A = 0; B = 0; Cin = 0; #10; 
        A = 0; B = 0; Cin = 1; #10;  
        A = 0; B = 1; Cin = 0; #10;  
        A = 0; B = 1; Cin = 1; #10;  
        A = 1; B = 0; Cin = 0; #10;  
        A = 1; B = 0; Cin = 1; #10;  
        A = 1; B = 1; Cin = 0; #10;  
        A = 1; B = 1; Cin = 1; #10;  
      $finish();
    end

endmodule
