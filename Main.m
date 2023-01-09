clc
clear
 fprintf('-------------------------------------Welcome To Our Robotics Project Main Menu -------------------------------------\n\n');
 fprintf('Please Choose an Option From The Menu \n');
 cin =1;
 while cin==1
 fprintf('[1]-Calculate DKPM\n');
 fprintf('[2]-Calculate IKPM\n')
 fprintf('[3]-Plotting Working Area\n')
 fprintf('[4]-Robot Animation\n')
 
 option=input('Please Enter The Number Of The Option: ');
 if option == 1
     DKPM_function();
 elseif option == 2
      IKPM_Function();
 elseif option == 3
     PlotWorkArea_Function();
 elseif option == 4
     Animate();
 else
     fprintf('You hvae enterd a wrong number \n');
 end
 cont=input('To Continue please enter 1, to Exit enter 0 \n');
 if cont==0
     cin=0;
 elseif cont==1
     cin=1;
 else
     fprintf('You hvae enterd a wrong number \n');
 end    
     
end


