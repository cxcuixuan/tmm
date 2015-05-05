n0 = 1.5; % incident index
nT = 1 ; % transmission index
eps=[-10-0.5*1i] ;miu=[1]; % epsilon and miu of each layer for n-i*k
thickness = [0.15]; % thickness of each layer
lambda = 1 ; % incident wavelength
% theta = 0;  % angle with z-axis
phi = 0;    % argument
pTE = 0;  % TE component
pTM = 1; % TM component
for count = 1:400;
    theta = count/5;
    tmm;
    r(count)=R;
end
% for m = 0:500
%     theta = m/10;
% tmm;
%  r(m+1)=R;
% end