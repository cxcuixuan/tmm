init; 
layer_cal;
sD = [S11_g S12_g ; S21_g S22_g] ;
sG = redcross(sR,sD) ;
    kZT = conj(sqrt(epsT*miuT-kX^2-kY^2));
    Q = (1/miuT)*[kX*kY miuT*epsT-kX^2 ; kY^2-miuT*epsT -kX*kY];
    Omega = 1i*kZT*W ; V = Q/Omega; 
    A = W+V_h\V ; B = W - V_h\V ;
sT = [B/A 0.5*(A-B/A*B) ;  2*inv(A) -A\B];
sG = redcross(sG,sT);

eRel = get_s(sG,11)*cInc ;
eTrn = get_s(sG,21)*cInc ; 
eZR = (-kX*eRel(1)-kY*eRel(2))/kZR;
eZT = (-kX*eTrn(1)-kY*eTrn(2))/kZT;
R = abs(eRel(1))^2+abs(eRel(2))^2+abs(eZR)^2 ;
T = (abs(eTrn(1))^2+abs(eTrn(2))^2+abs(eZT)^2)*real(miuR*kZT/(miuT*kZR)) ;