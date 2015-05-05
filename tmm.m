% cInt 还有问题
init; 
layer_cal;
sG = redcross(sR,sD) ;
    kZT = sqrt(epsT*miuT-kX^2-kY^2);
    Q = (1/miuT)*[kX*kY miuT*epsT-kX^2 ; kY^2-miuT*epsT -kX*kY];
    Omega = 1i*kZT*W ; V = Q/Omega; 
    A = W+V_h\V ; B = W - V_h\V ;
sT = [B/A 0.5*(A-B/A*B) ;  2*inv(A) -A\B];
sG = redcross(sG,sT);

cInt = [0;1];

eRel = get_s(sG,11)*cInt ;
eTrn = get_s(sG,21)*cInt ; 
eZR = (-kX*eRel(1)-kY*eRel(2))/kZR;
eZT = (-kX*eTrn(1)-kY*eTrn(2))/kZT;
R = abs(eRel(1))^2+abs(eRel(2))^2+abs(eZR)^2 ;
T = (abs(eTrn(1))^2+abs(eTrn(2))^2+abs(eZT)^2)*real(miuR*kZT/(miuT*kZR)) ;