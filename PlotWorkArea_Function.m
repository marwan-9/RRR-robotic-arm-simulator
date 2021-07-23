function[]=PlotWorkArea_Function()
fprintf('Plot Working Area Choosen\n');
l1=input('Enter first arm length:');
l2=input('Enter Second arm length:');
l3=input('Enter third arm length:');
theta1=input('Enter theta 1 minimum Value:');
theta2=input('Enter theta 2 minimum Value:');
theta3=input('Enter theta 3 minimum Value:');

theta1_Max=input('Enter theta 1 maximum Value:');
theta2_Max=input('Enter theta 2 maximum Value:');
theta3_Max=input('Enter theta 3 maximum Value:');



z=1;
for i=theta1:theta1_Max
    for j=theta2:theta2_Max
        for k=theta3:theta3_Max
            x(z)=( l1*cosd(i)+l2*cosd(i+j)+l3*cosd(i+j+k));
            y(z)=(l1*sind(i)+l2*sind(i+j)+l3*sind(i+j+k));
            z=z+1;
           
        end    
    end   
end

 plot(x,y,'.');
end