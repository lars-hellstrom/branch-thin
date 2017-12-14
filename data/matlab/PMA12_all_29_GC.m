% Plots the data from Wilson (1966) figure 10 page 11 together with the 
% model prediction. The constants used in the model has been determined by
% a least square method
clear all
% Data grabbed from figure 10 page 11, Wilson, B. F. 1966. 
% Development of the shoot system of Acer rubrum L.
% Harvard University, Harvard Forest.
% DataThief III was used.
y=[ 2.3334580622810046
 7.516228940182053
 16.749428760264383
 26.061535499988963
 38.37072454922788
 52.966344389165776
 65.46361740672751
 80.90958991783826
 99.08319448927676
 121.33888504649774
 158.48931924611142
 275.4228703338166
 340.4081897010009
 428.54852039743923
 501.18723362727195
 559.7576014951098
 608.1350012787176
 625.1726927756855
 654.6361740672747
 685.4882264526614
 731.1390834834173
 772.6805850957021
 816.5823713585922
 847.2274141405964
 879.0225168308842
 928.9663867799363
 1047.1285480508996
 1137.627285823431
 1294.195841449985
]';
Len_y=length(y);
x=1:Len_y;
g=log(y);
C1_opt=0;
C2_opt=0;
C3_opt=0;
C4_opt=0;
sum_opt=10^10;
for C1=0:0.1:3 
    for C2=1.3:0.02:1.44 
        for C3=0.2:0.03:0.6
            for C4=1.9:0.1:9
                tempsum=0;
                %sum of square differences using the parameters above.
                for n=1:Len_y
                    tempsum=tempsum+abs((min(C1+C2*log(n+1+C4),C3*(n+C4)))-log(y(n)))^2;
                    end
                if tempsum<sum_opt
                    sum_opt=tempsum;
                    C1_opt=C1;
                    C2_opt=C2;
                    C3_opt=C3;
                    C4_opt=C4;
                end
            end
        end
    end
end

%plots the graphs
PMA12_output_Len_y;
clear C1
clear C2
clear C3
clear C4
