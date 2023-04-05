%Workspace constants

m0_3x3 = [0,0,0; 0,0,0; 0,0,0];

%Identity Matrix
I = [1 0 0;
     0 1 0;
     0 0 1];

%Mass in Kilograms
m = 2;

%Gravity in Newtons
g = 9.81;

%Inertial Parameters in Kilograms / meter squared
Jxx = 24778420.82/(1000*1000000);
Jyy = 42217933.96/(1000*1000000);
Jzz = 23948304.24/(1000*1000000);

%Inertial Tensor
Jcg = [Jxx  0   0;
        0  Jyy  0;
        0   0  Jzz];

M = [  m*I,   m0_3x3;
      m0_3x3,   Jcg ];
