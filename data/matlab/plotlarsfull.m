function h=plotlarsfull(all,linscale,nr_of_GC)
%Plots the simulated trees, explained in appendix, Robustness of results.
% The tree simulations are stored in the file 'treedata.csv'
M = csvread('treedata.csv');
x=1:1:nr_of_GC;
number_of_trees= length(M(:,1));
medel=zeros(1,nr_of_GC);
for i=1:number_of_trees
   y=M(i,:);
   medel=y+medel;
   if all==1

       if linscale==1
        b=semilogy(x,y,'Color',[0.9,0.9,0.7]);
    else
        plot(x,y)
    end
    hold all
   end
end
medel=medel./number_of_trees;
if linscale==1
        a=semilogy(x,medel,'Color',[0,0,0],'LineWidth',2)
    else
        plot(x,medel)
end
    h=[a b];
end

