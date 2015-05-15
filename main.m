clear;
n0 = 2; % incident index
nT = 2; % transmission index
eps=[] ;miu=[]; % epsilon and miu of each layer for n-i*k
thickness1 = []; % thickness of each layer
thickness2 = []; thickness = [];
eps_temp = [5,1]; miu_temp=[1, 1];
lambda = 1 ; % incident wavelength
theta = 60;  % angle with z-axis
phi = 0;    % argument
pTE = 1;  % TE component
pTM = 0;  % TM component
for count = 1:500
    eps=[eps,eps_temp] ; miu = [miu, miu_temp];
    thickness=[thickness1,0.02,0.02]; thickness1=thickness;
    tmm;
    t1(count)=T;
    r1(count)=R;
    thickness=[thickness2,9/500,9/500]; thickness2=thickness;
    tmm;
    t2(count)=T;
    r2(count)=R;
end
% tmm;
% for count = 1:1800;
%     theta = count/20;
%     tmm;
%     r(count)=R;
%     t(count)=T;
% end