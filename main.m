n0 = 1.507; % incident index
nT = sqrt(1) ; % transmission index
eps=[-28-1i] ;miu=[1]; % epsilon and miu of each layer for n-i*k
thickness = [50/780]; % thickness of each layer
lambda = 1 ; % incident wavelength
% theta = 24;  % angle with z-axis
phi = 0;    % argument
pTE = 0;  % TE component
pTM = 1;  % TM component
% tmm;
for count = 1:1600;
    theta = count/20;
    tmm;
    r(count)=R;
end