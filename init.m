k0 = 2*pi/lambda; kX = n0*sin(theta); kY = 0 ;
miuH = 1 ; epsH = 1 + kX^2 ;
Q_h = [kX*kY 1+kY^2 ; -(1+kX^2) -kX*kY]; W = eye(length(Q_h));
V_h = -1i*Q_h;
s11 = zeros(length(Q_h)) ; s12 = eye(length(Q_h)); 
s21 = s12 ; s22 = s11 ;
sD = [s11 s12 ; s21 s22] ;