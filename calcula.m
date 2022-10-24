function FX= calcula(s0)
    [n, m]=size(s0); %n=1 e m=8
    FX=zeros(n,1);
    for k=1:n %k=1
        temp=s0(k,:); %temp s0
        for i=1:m-1 %i=1:7
            for j=i+1:m %j=2:8
                if(abs(temp(i)-temp(j)) == abs(i-j))
                    FX(k)=FX(k)+1;
                end
            end
        end
    end

end

% p=(1:8);
% z=[p;s0]
% [~,numVar]=size(s0);
% pen=0;
%      for i= 1:numVar-1 %de um a 8         
%          A=(numVar-i); %quantidade na coluna que desce
%          B=numVar-s0(i); %quantidade na coluna que sobe
%          c=1;
%          d=1;
%          for j=1:A %j vai te 6 a 8
%            if s0(i)==(s0(i+c)+c)
%                pen=pen+1;
%            end
%            c=c+1;
%          end
%          
%         if s0(i) < 8
%          for k=1:B %diagonal subindo
% 
%            if s0(i)==(s0(i+d)-d)
%                pen=pen+1;
%            end
%            d=d+1;
%          end
%         end
%      end  
%      FX= pen;

%        if p(i)==s0(i)
%              rep=rep+1;
%              if rep>1
%                  pen=rep;
%              end
%          else 
%              for j=i+1:numVar-1