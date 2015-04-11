function [q0,q1,q2]=robot3_inv(x,y,z)

%-- Geometria del robot
l1 = 16; %taille de bras
l2 = 20; %taille de avant-bras

Cq2 = (x^2 + y^2 + z^2 - l1^2 - l2^2)/(2*l1*l2);
q2 = -acos(Cq2);
q1 = atan(z/sqrt(x^2 + y^2)) - atan(-l2*sqrt(1-Cq2^2)/(l1+l2*Cq2) );
q0 = -atan(x/y);

%-- Changer de radians à degrees 

q2 = round((real(q2*180/pi))); % l_elbox_y
q1 = round(real(q1*180/pi));  % l_shoulder_x
q0 = round(real(q0*180/pi)); % l_shoulder_y