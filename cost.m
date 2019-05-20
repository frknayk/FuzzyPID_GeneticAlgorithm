function [CostValue] = cost(x)
global alpha beta Kde Ke
    alpha = x(1);
    beta = x(2);
    Kde = x(3);
    Ke = x(4);
    sim('system_model_1');


%% J3 Part

CostValue=ans.J3(end,:);   


end


