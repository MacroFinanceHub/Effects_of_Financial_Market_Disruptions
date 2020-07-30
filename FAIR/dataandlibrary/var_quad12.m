function [ VAR_match ] = var_quad12( params,setup,store_responses,j,k )
%objective function for VAR responses matching
[ MA_matrices ] = wrap_BM_var_opt_12( params, setup );
MA_h=MA_matrices(1,1,1:setup.horizon+1);
sr=store_responses(1,2,:);
% size(MA_h)
% size(store_responses)

VAR_match=(MA_h(:)-sr(:))'*(MA_h(:)-sr(:));
end

