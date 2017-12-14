function g = g_kn_integer(number_of_growth_cycles,my,alpha,dimension)
%Input variables 
%number_of_growth_cycles - The number of growth cycles,an integer 
%my - The number of splittings at every growth cycle
%alpha - The leaf-factor
%dimension- The dimension of the branches
%
%This function returns a gc*gc-matrix of the values of g(k,n)


g=zeros(number_of_growth_cycles);
%beräkna g(n,n)
for n = 1:number_of_growth_cycles
        g(n,n)=min(my.^n,alpha*(n+1).^dimension);
end
%beräkna g(k,n)
for m=2:number_of_growth_cycles
    for k=1:m-1
        g(k,m)=g(m,m)/g(m-k,m-k);
    end
end


end

