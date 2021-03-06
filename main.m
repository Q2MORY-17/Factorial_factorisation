% This program will take in variable from Variable_list_LAB_72.m
% that are imports from Excel/LAB_stat_chart
% and return:   a Pareto Chart
%               a Samspelgraph [THIS MUST BE ACTIVATED]
%               a Huvudeffect graph
%               a Normal plot

Variable_list_LAB_72;

figure; 
pareto(Effect);     %,Effectnames);
title('Pareto Chart');
grid on;

figure; %Adapted to larger config ABCDE
plot([1 2],A);
hold on;
plot([3 4],B);
plot([5 6],C);
plot([7 8],D);
plot([9 10],E);
title('Huvudeffekt chart');
legend('A^{-}\Rightarrow A^{+}','B^{-}\Rightarrow B^{+}',...
    'C^{-}\Rightarrow C^{+}','D^{-}\Rightarrow D^{+}',...
    'E^{-}\Rightarrow E^{+}');
xlim([0 11]);
xticks([1 2 3 4 5 6 7 8 9 10]);
xticklabels({'A^{-}','A^{+}','B^{-}','B^{+}','C^{-}','C^{+}',...
    'D^{-}','D^{+}','E^{-}','E^{+}'});
grid on;

% ADAPT TO ACTUAL SAMSPEL FOR GRAPH
% figure;
% plot([1 3],[AmCp ApCp],'k');
% hold on;
% plot([1 3],[AmCm ApCm],'g');
% grid on;
% title('Samspelgraf');
% legend('A^{-}C^{+}\Rightarrow A^{+}C^{+}',...
% 'A^{-}C^{-}\Rightarrow A^{+}C^{-}');
% xlim([0 4]);
% xticks([1 2 3]);
% xticklabels({'-','A','+'});
% grid on;

figure;
probplot(CleanEffect);
grid on;
