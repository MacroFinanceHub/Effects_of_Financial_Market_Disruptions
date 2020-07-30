function [ VAR_match ] = var_quad_free_2_gaussian( params,setup,store_responses,j,k )
%objective function for VAR responses matching
[ MA_matrices ] = wrap_BM_var_opt_11_2_gaussian( params, setup );
MA_h=MA_matrices(1,1,1:setup.horizon+1);
sr=store_responses(j,k,:);
% size(MA_h)
% size(store_responses)

VAR_match=(MA_h(:)-sr(:))'*(MA_h(:)-sr(:));
end

