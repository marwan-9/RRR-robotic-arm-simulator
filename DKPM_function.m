function[x,y]=DKPM_function()
fprintf('DKPM Choosen\n');
                    l1=input('Enter first arm length:');
                    l2=input('Enter Second arm length:');
                    l3=input('Enter third arm length:');
                    theta1=input('Enter theta 1:')*pi/180;
                    theta2=input('Enter theta 2:')*pi/180;
                    theta3=input('Enter theta 3:')*pi/180;
                    x=l1*cos(theta1)+l2*cos(theta2+theta1)+l3*cos(theta3+theta2+theta1);
                    y=l1*sin(theta1)+l2*sin(theta2+theta1)+l3*sin(theta3+theta2+theta1);
                    fprintf('X coordinate =%.2f\n',x)
                    fprintf('Y coordinate =%.2f\n',y)
end