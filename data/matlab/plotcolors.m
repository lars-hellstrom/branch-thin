function h=plotcolors(all,linscale)
%This just fills the graph with a color from bright yellow to green
x=1:1:100;
Col=[1,1,0.85];
a=line([10,10],[100,100],'Color',Col,'LineWidth',12);
Col=[0.6,1,0.6];
b=line([96,96],[100,100],'Color',Col,'LineWidth',12);

for i=1:1000
    hold all
    if i/10<90
        Col=[1,1,0.85];
        line([i/10,i/10],[1,100000],'Color',Col,'LineWidth',2);
    else
        if (i/10>=90) && (i/10<=96)
            Col=[1-(i/10-90)*0.06,1,0.85-(i/10-90)*0.030];
            line([i/10,i/10],[1,100000],'Color',Col,'LineWidth',2);
        else
            Col=[0.6,1,0.6];
            line([i/10,i/10],[1,100000],'Color',Col,'LineWidth',2);
        end
    end
end
h=[a b];
end
