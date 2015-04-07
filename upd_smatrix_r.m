S22_g = S22_g+S12_d/((eye(length(S11_d))-S22_d*S11_g))*S22_d*S12_g;
S21_g = S21_g/((eye(length(S11_d))-S22_d*S11_g))*S21_d;
S12_g = S12_d/((eye(length(S11_d))-S11_g*S22_d))*S12_g;
S11_g = S11_d+S12_d/((eye(length(S11_d))-S11_g*S22_d))*S11_g*S21_d;
