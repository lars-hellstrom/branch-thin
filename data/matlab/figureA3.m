function figureA3

%This script show the age of discarded branches from trees with age 10, 50,
%and 100 years.

%Initializing constants for the function g(l,n)
u = 2.5; % mu
a = 100; % alpha
d = 2; % dimension

k10 = [2:10];
k50 = [2:50];
k100 = [2:100];

% Calculate the discarded number of branches of specific ages using the
% function discard (see below)
d100 = discard(k100, 100)
d10 = discard(k10, 10);
d50 = discard(k50, 50);

clf
%Plots the result in a bar-graph
set(gcf, 'Color', 'w');

hold on;
bar(k100, d100,'baseValue',0.01);
bar(k50, d50,'baseValue',0.01);
bar(k10, d10,'baseValue',0.01);

h = findobj(gca,'Type','patch');
display(h);

set(h(1), 'FaceColor', 'g', 'FaceAlpha', 0.5, 'EdgeColor', 'k');
set(h(2), 'FaceColor', 'c', 'FaceAlpha', 0.5, 'EdgeColor', 'k');
set(h(2), 'FaceColor', 'b', 'FaceAlpha', 0.5, 'EdgeColor', 'k');

axis([0 40 0.01 30])

hl = legend(h, 'Tree aged 10 growth cycles', 'Tree aged 50 growth cycles', 'Tree aged 100 growth cycles');

set(hl, 'Box', 'off');

xlabel('Age of discarded branch', 'Interpreter', 'Latex');
ylabel('Number of discarded branches', 'Interpreter', 'Latex');

    function y = discard(k,n)
        % Switch to age of discarded branch
        k = n - k;
        y = (g(k,n) - g(k,n+1)) - (g(k-1,n)-g(k-1,n+1)).*g(k,n)./g(k-1,n);
    end

    function y = g(k,n)
        % Calling on g_kn_realslat which is a function calculating
        % the values of the function g(l,n) with the max replaced by a 
        % smoother function for a more realistic approach to 
        % simulate the transition from exponential to polynomial growth 
        y = g_kn_realslat(k,n,u,a,d);
    end

    function y = b(k)
        y = g(k,k);
    end
end
