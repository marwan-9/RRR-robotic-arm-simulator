function[theta1,theta2,theta3]=IKPM_Function()
fprintf('IKPM Choosen\n');
                    l1=input('Enter first arm length:');
                    l2=input('Enter Second arm length:');
                    l3=input('Enter third arm length:');
                    x=input('Enter X coordinate of the final point:');
                    y=input('Enter Y coordinate of the final point:');
                    phi=input('Enter phi:')*pi/180;
                    wx = x- l3*cos(phi);
                    wy = y- l3*sin(phi);
                    theta2=acos(((wx^2)+(wy^2)-(l1^2)-(l2^2))/(2*l1*l2));
                    cth2=cos(theta2);
                    d=(l1^2)+(l2^2)+(2*l1*l2*cth2);
                    cth1=((l1*wx)+(l2*wx*cos(theta2))+(l2*wy*sin(theta2)))/d;
                    sth1=(((l1+l2*cos(theta2))*wy)-(l2*sin(theta2)*wx))/d;
                    if((cth1>0)&& (sth1>0))
                        theta1= atan(abs(sth1)/abs(cth1));
                    elseif((cth1>0)&& (sth1<0))
                        theta1 =2*pi - atan(abs(sth1)/abs(cth1));
                    elseif((cth1<0)&& (sth1>0))
                        theta1 =pi - atan(abs(sth1)/abs(cth1));
                    elseif((cth1<0)&& (sth1<0))
                        theta1 =pi + atan(abs(sth1)/abs(cth1));
                    end
                    theta3 = phi - theta1 - theta2;
                    fprintf('Theta 1 =%.5f\n',theta1*(180/pi));
                    fprintf('Theta 2 =%.5f\n',theta2*(180/pi));
                    fprintf('Theta 3 =%.5f\n',theta3*(180/pi));
end