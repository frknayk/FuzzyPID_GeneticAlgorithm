%% Plot and Save Graphs
clc;

out = sim('system_model_1');

% % Time Data
% t = out.t_out;

% Control Signal 
control_signal = out.consig;

% Reference
ref = out.Ref_out;

% Output
y_out = out.y_out;

t=0:0.001:50.009;
t=transpose(t);

figure(1);
plot(t,y_out);
hold on
plot(t,ref);
legend('Output','Reference');
title('Reference Tracking')
hold off

figure(2);
plot(t,control_signal);
title('Control Signal')

% Cost Value
cost_end = out.J3(end)