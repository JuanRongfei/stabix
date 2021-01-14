% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function rbv_norm = ...
    residual_Burgers_vector(rotated_b_in, rotated_b_out, varargin)
%% Function used to calculate the norm of the residual Burgers vector
% from Marcinkowski et al. ==> Metallurgical Transactions 1,12 (1970) pp 3397-3401
% DOI ==> DOI 10.1007/BF03037870

% from Lee T.C. et al. - Scripta Metall. 23,799 (1989).
% DOI ==> 10.1080/01418619008244340
%
% and de Koning et al. - Journal of Nuclear Materials 323 (2003) pp 281�289
% DOI ==> 10.1016/j.jnucmat.2003.08.008
%
% b1 = Burgers vector of first slip system in grain 1
% b2 = Burgers vector of 2nd slip system in grain 2
%
%     br = b_in - R.b_out
% with
%     b_in  = the Burgers vector of the incident slip dislocation
%     b_out = Burgers vector of the transmitted slip dislocation
%     R = rotation matrix that characterizes the misorientation across the GB
%
% Modified equation to be in the labs coordinate system :
%
%     rbv = R_in'*b_in' - R_out'*b_out'
%
% with
%     b_in  = Burgers vector of the incident slip dislocation
%     b_out = Burgers vector of the transmitted slip dislocation
%     R_in  = rotation matrix to set the incident slip dislocation
%     R_out = rotation matrix to set the transmitted slip dislocation
%
% author: d.mercier@mpie.de

if nargin == 0
    b_in  = rand(3,1)';
    b_out = rand(3,1)';
    eul_in = randBunges;
    eul_out = randBunges;
    R_in  = eulers2g(eul_in);
    R_out = eulers2g(eul_out);
    rotated_b_in = R_in'*b_in';
    rotated_b_out = R_out'*b_out';
    disp(b_in);
    disp(b_out);
    disp(eul_in);
    disp(eul_in);
    
elseif nargin < 2
    disp('Not enough inputs');
    return
end

try
    if cosFromVectors(rotated_b_in,rotated_b_out) > 0
        rbv = rotated_b_in - rotated_b_out;
    else
        rbv = rotated_b_in + rotated_b_out;
    end
    rbv_norm = norm(rbv);
catch err
    commandwindow;
    disp(strcat(err.message, ' Or missing function eulers2g...'));
end

end