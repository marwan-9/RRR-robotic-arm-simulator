function[]= Animate()
a1=input('enter angle 1 in degrees : ');
b=input('enter angle 2 in degrees : ');
c=input('enter angle 3 in degrees : ');
L1=input('enter l1 : ');
L2=input('enter l2 : '); 
L3=input('enter l3 : ');
Z=[-20 20];
plot(Z,20);
grid ON;
hold on;
O=[0;0;0;1];
M=linspace(pi/2,pi/2+a1*pi/180,100);
N=linspace(-pi/2,b*pi/180,100);
K=linspace(-pi/2,c*pi/180,100);
i=1;
Cx=zeros(1,1);
Cy=zeros(1,1);
for a=1:100
    [A1,B1,C1]=auxAnimate(M(a),N(a),K(a),L1,L2,L3);
    x=[O(1) A1(1) B1(1) C1(1)];
    y=[ O(2) A1(2) B1(2) C1(2)];
    Cx(i)=C1(1);
    Cy(i)=C1(2);
    i=i+1;
    Plot=plot(x,y,'r','LineWidth',4);
    title(' animation ');
    plot(Cx,Cy,'--g','LineWidth',3);
    pause(0.075);
    delete(Plot);
end
plot(x,y,'r','LineWidth',5)
end






