clear all; %limpa todas as variaveis
close all; %fecha todas as figuras
clc; %limpa a tela

tempo = cputime;

alfa=0.9; %fator de redução da temperatura
avaliacao=0;
xmax=8;
nVar=8;
nInd=1;

histfitness=[];
histfitnessm=[]; %serie de fitness
iteracao=30;
acumulado=[];
tacumulado=0;
histavaliacao=[];
acumuladof=[];
acumuladoa=[];
critParada=1000;
for l= 1:iteracao
    
    T=30000;
    s0=randperm(nVar,xmax);

while avaliacao<=critParada        
        s1=pertuba(s0);
        FXi = calcula(s0);
        FXj = calcula(s1);
        avaliacao=avaliacao+2;
        if FXj <= FXi
            s0=s1;
            FXi=FXj;
        else
            z=exp((FXi-FXj)/T);
            if z>rand
                s0=s1;
                FXi=FXj;
            end
        end    
       T=T*alfa;
       histfitness(end+1)=FXi;
       histavaliacao(end+1)=avaliacao;
end
     acumuladof=[acumuladof;histfitness]; 
     acumuladoa=[acumuladoa;histavaliacao];
     avaliacao=0;
     histfitness=[];
     histavaliacao=[];

end
    mediafx=mean(acumuladof);
    mediaa=mean(acumuladoa);
    figure(2);
    plot(mediaa,mediafx);
    
   tempo = cputime - tempo;
   tacumulado=tacumulado+tempo;
       
