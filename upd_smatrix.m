la = length(S11_d);
I = eye(la);
S11_g = S11_g+S12_g/((I-S11_d*S22_g))*S11_d*S21_g;
S12_g = S12_g/((I-S11_d*S22_g))*S12_d;
S21_g = S21_d/((I-S22_g*S11_d))*S21_g;
S22_g = S22_d+S21_d/((I-S22_g*S11_d))*S22_g*S12_d;