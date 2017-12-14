function g_kn_real = g_kn_real(k_input,n_input,my,alpha,dimension)
%Input variables
%*k_input - The real value of k in g(k,n)
%n_input - The real value of n in g(k,n)
%my - The number of splittings at every growth cycle
%alpha - The leaf-factor
%dimension- The dimension of the branches
%
%This function returns a gc*gc-matrix of the values of g(k,n)
%Calculate g(n_input,n_input)
g_n_n=min(my.^n_input,alpha*(n_input+1).^dimension);
%Calculate g(n_input-k_input,n_input-k_input)
if n_input-k_input-0.4<0
    g_kn_kn=my.^(n_input-k_input);
else
    g_kn_kn=min(my.^(n_input-k_input),alpha*(n_input-k_input+1).^dimension);
end
%Calculate g(k,n)
g_kn_real=g_n_n/g_kn_kn;
end

