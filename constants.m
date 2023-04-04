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

Fm = [0; 0; m*g;0;0;0];

% mdlWks = get_param('HexaPID','ModelWorkspace');
% assignin(mdlWks, "Fm", Fm)
% assignin(mdlWks, "M", M)
% assignin(mdlWks, "m0_3x3", m0_3x3)

% %Body to inertial Rotation Matrix
% function [rotational_matrix] = Rot1(Theta)
% 
%     theta = Theta(1); phi = Theta(2); psi = Theta(3);
% 
%     rotational_matrix = [cos(psi)*cos(theta), -cos(phi)*sin(psi)+cos(psi)*sin(phi)*sin(theta), sin(phi)*sin(psi)+cos(phi)*cos(psi)*sin(theta);
%                          cos(theta)*sin(psi), cos(phi)*cos(psi)+sin(psi)*sin(theta)*sin(phi), -cos(psi)*sin(phi)+sin(psi)*sin(theta)*cos(phi);
%                         -sin(theta), cos(theta)*sin(phi), cos(theta)*cos(phi)];
% end
% 
% %Angular velocities to Euler angles Rotation Matrix
% function [rotational_matrix] = Rot2(Theta)
% 
%     theta = Theta(1); phi = Theta(2);
% 
%     rotational_matrix = [1, sin(phi)*tan(theta), cos(phi)*tan(theta);
%                          0, cos(phi), -sin(phi);
%                          0, sin(phi)/cos(theta), cos(phi)/cos(theta)];
% end
% 
% %6 Dimension Rotation Matrix
% function [rotational_matrix] = Rot6D(State)
% 
%     Theta = [State(1);
%              State(2);
%              State(3);];
% 
%     rotational_matrix = [Rot1(Theta), [0,0,0;0,0,0;0,0,0]
%                         [0,0,0;0,0,0;0,0,0], Rot2(Theta)];
% 
% end

