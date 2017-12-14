function plotboth(logscale,all,nr_of_GC)
% Plots both the teoretical number of growth modules given by g(l,n) and
% simulations explained in the article Appendix A robustness of results  
%
alpha=0.5;%0.68;%0.5
mu=2;
dim=2;
% Theoretical values of growth modules
plot_g_kn(nr_of_GC,mu,alpha,dim,logscale)
hold all
green_yello=plotcolors(1,1);
hold all
% Simulated values of generated trees following a carrying capacity
h2=plotlarsfull(all,logscale,nr_of_GC);
hold all
h1=plot_g_kn(nr_of_GC,mu,alpha,dim,logscale);
set(0,'DefaultAxesFontName', 'cmr10')
xlabel('Distance to root in growth cycles');
ylabel('Number of growth modules');
lgd=legend([h1,h2(1),h2(2),green_yello(2),green_yello(1)],'Theoretical number of growth modules'...
    ,'Average growth modules from simulations','Individual-based simulation of trees'...
    ,'Exponential growth region','Self-thinning region'...
    ,'Location','NorthWest');
%set(lgd,'box','on','Xcolor',[1 1 1],'Ycolor',[1 1 1]);
set(lgd,'box','on');
end

