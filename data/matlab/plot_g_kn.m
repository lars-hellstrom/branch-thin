function h=plot_g_kn(number_of_growth_cycles,my,alpha,dimension,log_scale)
%Plots g(l,n) for real values of all variables
%Obs, the number of growth_cycles must be greater than 1,
%If log_scale=1 a linlog-graph is plotted

% Set the vector l of growth cycles to be plotted
x = 1:.1:number_of_growth_cycles;
y=zeros(length(x),1);
y(1)=1;
for i=2:length(x)
    y(i) = g_kn_real(x(i),number_of_growth_cycles,my,alpha,dimension);
end
if (log_scale==1)
    h=semilogy(x,y,'--','Color',[0,0,1],'LineWidth',2);
else plot(x,y)
end
end

