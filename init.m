miuR = 1 ; miuT = 1;
epsR = n0^2 ; epsT = nT^2;
k0 = 2*pi/lambda;
kX = n0*sin(theta*pi/180)*cos(phi*pi/180) ;
kY = n0*sin(theta*pi/180)*sin(phi*pi/180) ;
miuH = 1 ; epsH = 1 + kX^2 ;

kZR = conj(sqrt(epsR*miuR-kX^2-kY^2));
Q = (1/miuR)*[kX*kY miuR*epsR-kX^2 ; kY^2-miuR*epsR -kX*kY]; W = eye(length(Q));
Omega = 1i*kZR*W ; V = Q/Omega; 

Q_h = [kX*kY 1+kY^2 ; -(1+kX^2) -kX*kY];
V_h = -1i*Q_h;
% Q_h=Q; V_h=V;

A = W+V_h\V ; B = W - V_h\V ;
sR = [-A\B 2*inv(A) ; 0.5*(A-B/A*B) B/A];


S11_g = zeros(length(Q_h)) ; S12_g = eye(length(Q_h)); 
S21_g = S12_g ; S22_g = S11_g ;
% sD = [s11 s12 ; s21 s22] ;

k=[kX;kY;kZR];
% k=k/sqrt((k'*k));
if theta == 0
    aTE = [0;1;0];
else
  aTE = cross(k,[0;0;-1]);
  aTE = aTE/sqrt(aTE'*aTE);
end
aTM = cross(aTE,k);
aTM = aTM/sqrt(aTM'*aTM);
eInc = pTE*aTE + pTM*aTM;
eInc = eInc/sqrt(eInc'*eInc);
cInc = [eInc(1);eInc(2)];