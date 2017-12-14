% This script is only used by the script PMA12_all_29_GC.m
% Plots the data stored in the variables.


% Setting up constants
alpha=exp(C1_opt)
d=C2_opt
my=exp(C3_opt)
b=zeros(Len_y,1);
for n=1:Len_y
    b(n)=min(alpha*(n+1+C4_opt)^d,my^(n+C4_opt));
    
end
y_medel=sum(y)/Len_y;
y_std=sum((y-y_medel).^2);
yb_std=sum((y-b').^2);
R_square=1-yb_std/y_std
hh=figure('name','Test');

% Change default axes fonts.
set(0,'DefaultAxesFontName', 'cmr10')
set(0,'DefaultAxesFontSize', 15)

% Change default text fonts.
set(0,'DefaultTextFontname', 'cmr10')
set(0,'DefaultTextFontSize', 15)
set(0,'defaulttextinterpreter','latex')


semilogy(x+4,y,'-x','Color',[51/255,160/255,44/255],'LineWidth',2.2);
hold on
set(hh, 'Position', [100 100 750 750]);
semilogy(x+4,b,'Color',[31/255,120/255,180/255],'LineWidth',2.2);
xlabel('Age of branch')
ylabel('Number of tips')
legend({'~Empirical data','~Model prediction'},'Position',[0.51,0.15,0.25,0.1], 'FontSize', 15, 'Interpreter', 'Latex');
legend boxoff

ylim(gca,[1 1300]);
set(gca,'YTickLabel',['1   ';'10  ';'100 ';'1000'])
set(gca,'Box','on')
set(gcf, 'Color', 'w');

set(gcf, 'Position', [100, 100, 600, 600]);

pos = get(gcf,'Position')
set(gcf,'PaperPositionMode','Auto','PaperUnits','points','PaperSize',[pos(3), pos(4)])