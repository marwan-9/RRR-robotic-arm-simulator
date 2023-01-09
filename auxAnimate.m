function [A,B,C]= auxAnimate(m,n,p,l1,l2,l3)
E=[0; 0 ; 0 ; 1];
T1=[cos(m) -sin(m) 0 0;sin(m) cos(m) 0 0; 0 0 1 0; 0 0 0 1];
T2=[cos(n) -sin(n) 0 l1;sin(n) cos(n) 0 0; 0 0 1 0; 0 0 0 1];
T3=[cos(p) -sin(p) 0 l2;sin(p) cos(p) 0 0; 0 0 1 0; 0 0 0 1];
T4=[l1 0 0 l3;0 1 0 0; 0 0 1 0; 0 0 0 1];
A=T1*T2*E;
B=T1*T2*T3*E;
C=T1*T2*T3*T4*E;
end