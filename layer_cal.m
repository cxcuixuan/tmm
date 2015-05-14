% —È÷§ŒﬁŒÛ
layerNum = length(eps);
for n = 1:layerNum
    kZ = conj(sqrt(eps(n)*miu(n)-kX^2-kY^2));
    Q = (1/miu(n))*[kX*kY miu(n)*eps(n)-kX^2 ; kY^2-miu(n)*eps(n) -kX*kY]; W = eye(length(Q));
    Omega = 1i*kZ*W ; V = Q/Omega; 
    A = W+V\V_h ; B = W - V\V_h ;
    X = expm(-Omega*k0*thickness(n));
    S11_d = (A - X*B/A*X*B)\(X*B/A*X*A-B);
    S12_d = (A - X*B/A*X*B)\X*(A-B/A*B);
    S21_d = S12_d ; S22_d = S11_d ; 
    upd_smatrix;
%     sD = redcross(sD,[s11 s12 ; s21 s22]);
end