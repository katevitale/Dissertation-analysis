function Mnormal=normalize(M,Mbase,MD)



%MD is the type of normailzation. 
%   0 = Z-score  >>(X-mean)/SD
%   1 = normalized to response max
%   2 = Baseline substracted
%   3 = normalized by SD only >> X/SD

%%%CAUTION EDITED BY KATE TO USE GLOBAL MEAN AND STD %% November 6, 2014


if size(M,2)==1
    M=M'; Mbase=Mbase';
end

Mnormal=zeros(size(M));
for k=1:size(M,1)
   
    if MD==0
        Mnormal(k,:)=(M(k,:)-nanmean(Mbase(:)))/nanstd(Mbase(:)); % Zscore
    elseif MD==1
        Tmp=M(k,:)-nanmean(Mbase(k,:));
        Mnormal(k,:)=Tmp/max(abs(Tmp));% mean corrected normalized to RESPONSE MAX
    elseif MD==2
       Mnormal(k,:)=(M(k,:)-nanmean(Mbase(k,:)));
    elseif MD==3
            Mnormal(k,:)=M(k,:)/nanstd(Mbase(k,:)); % Zscore no demean
    end
end