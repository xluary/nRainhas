function s1=pertuba (s0)
[~,numVAR]=size(s0);

    f=randperm(numVAR,2); %gera um número aleatório de 1 ao tamanho da populacao        
    s0([f(1), f(2)])= s0([f(2),f(1)]); 
    s1=s0;   
    end