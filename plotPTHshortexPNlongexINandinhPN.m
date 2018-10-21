global BSIZE_lat

clear INs_LongEx_PTHz Other_LongIn_PTHz Other_LongEx_PTHz Other_MultEI_PTHz
clear INs_LongEx_PTH Other_LongIn_PTH Other_LongEx_PTH Other_MultEI_PTH
i_IN_LongEx = 0;
i_other_LongIn = 0;
i_IN = 0;
i_other = 0;
i_other_LongEx = 0;
i_other_EI = 0;
i_other_Eoo = 0;
i_other_ShortIn = 0;
i_IN_FastEx = 0;
for anum=1:length(NDATA) %animals
    for daynum=1%:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        %if strcmp(treatment{anum}{daynum}{sessionnum}.name,'preMB') == 1
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && ...
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35 
                                i_IN=i_IN+1;
                                if RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                    i_IN_LongEx=i_IN_LongEx+1;
                                    INs_LongEx_PTHz(i_IN_LongEx,:)=RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    INs_LongEx_PTH(i_IN_LongEx,:)=RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1 ...
                                    && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} ~= -1 ...
                                    && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} ~= -1
                                    i_IN_FastEx = i_IN_FastEx + 1;   
                                     INs_FastEx_PTHz(i_IN_FastEx,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     INs_FastEx_PTH(i_IN_FastEx,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};     
                                end
                            else
                                if RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    i_other_LongIn=i_other_LongIn+1;
                                    Other_LongIn_PTHz(i_other_LongIn,:)=RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    Other_LongIn_PTH(i_other_LongIn,:)=RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                elseif RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}==1 
                                    i_other_LongEx=i_other_LongEx+1;
                                    Other_LongEx_PTHz(i_other_LongEx,:)=RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    Other_LongEx_PTH(i_other_LongEx,:)=RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                     i_other_EI = i_other_EI + 1;   
                                     Other_MultEI_PTHz(i_other_EI,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_MultEI_PTH(i_other_EI,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                     i_other_EI = i_other_EI + 1;   
                                     Other_MultEI_PTHz(i_other_EI,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_MultEI_PTH(i_other_EI,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                 elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                     i_other_EI = i_other_EI + 1;   
                                     Other_MultEI_PTHz(i_other_EI,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_MultEI_PTH(i_other_EI,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                 elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                     i_other_EI = i_other_EI + 1;   
                                     Other_MultEI_PTHz(i_other_EI,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_MultEI_PTH(i_other_EI,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}; 
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                     i_other_Eoo = i_other_Eoo + 1;   
                                     Other_Eoo_PTHz(i_other_Eoo,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_Eoo_PTH(i_other_Eoo,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}; 
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} ~= 1 ...
                                    && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 ...
                                    && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    i_other_ShortIn = i_other_ShortIn + 1;   
                                     Other_ShortIn_PTHz(i_other_ShortIn,:) = RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                     Other_ShortIn_PTH(i_other_ShortIn,:) = RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}; 
                                
                                end
                            end
                        %end
                    end
                end
            end
        end
    end
end

clear i_IN i_other anum daynum sessionnum enum neurnum

mean_INs_LongEx_PTHz=nanmean(INs_LongEx_PTHz);
sem_INs_LongEx_PTHz=nanstd(INs_LongEx_PTHz)/sqrt(size(INs_LongEx_PTHz,1));

mean_INs_LongEx_PTH=nanmean(INs_LongEx_PTH);
sem_INs_LongEx_PTH=nanstd(INs_LongEx_PTH)/sqrt(size(INs_LongEx_PTH,1));

mean_other_LongIn_PTHz=nanmean(Other_LongIn_PTHz);
sem_other_LongIn_PTHz=nanstd(Other_LongIn_PTHz)/sqrt(size(Other_LongIn_PTHz,1));

mean_other_LongIn_PTH=nanmean(Other_LongIn_PTH);
sem_other_LongIn_PTH=nanstd(Other_LongIn_PTH)/sqrt(size(Other_LongIn_PTH,1));

mean_other_LongEx_PTHz=nanmean(Other_LongEx_PTHz);
sem_other_LongEx_PTHz=nanstd(Other_LongEx_PTHz)/sqrt(size(Other_LongEx_PTHz,1));

mean_other_LongEx_PTH=nanmean(Other_LongEx_PTH);
sem_other_LongEx_PTH=nanstd(Other_LongEx_PTH)/sqrt(size(Other_LongEx_PTH,1));

mean_other_multEI_PTH=nanmean(Other_MultEI_PTH);
sem_other_multEI_PTH=nanstd(Other_MultEI_PTH)/sqrt(size(Other_MultEI_PTH,1));

mean_other_multEI_PTHz=nanmean(Other_MultEI_PTHz);
sem_other_multEI_PTHz=nanstd(Other_MultEI_PTHz)/sqrt(size(Other_MultEI_PTHz,1));

mean_other_Eoo_PTH=nanmean(Other_Eoo_PTH);
sem_other_Eoo_PTH=nanstd(Other_Eoo_PTH)/sqrt(size(Other_Eoo_PTH,1));

mean_other_Eoo_PTHz=nanmean(Other_Eoo_PTHz);
sem_other_Eoo_PTHz=nanstd(Other_Eoo_PTHz)/sqrt(size(Other_Eoo_PTHz,1));

mean_other_ShortIn_PTH=nanmean(Other_ShortIn_PTH);
sem_other_ShortIn_PTH=nanstd(Other_ShortIn_PTH)/sqrt(size(Other_ShortIn_PTH,1));

mean_other_ShortIn_PTHz=nanmean(Other_ShortIn_PTHz);
sem_other_ShortIn_PTHz=nanstd(Other_ShortIn_PTHz)/sqrt(size(Other_ShortIn_PTHz,1));

mean_INs_FastEx_PTH=nanmean(INs_FastEx_PTH);
sem_INs_FastEx_PTH=nanstd(INs_FastEx_PTH)/sqrt(size(INs_FastEx_PTH,1));

mean_INs_FastEx_PTHz=nanmean(INs_FastEx_PTHz);
sem_INs_FastEx_PTHz=nanstd(INs_FastEx_PTHz)/sqrt(size(INs_FastEx_PTHz,1));

Tlatplot=Tm(1):BSIZE_lat:Tm(end);


x=Tlatplot;
y1=mean_INs_LongEx_PTHz;
y11=mean_INs_LongEx_PTHz-sem_INs_LongEx_PTHz;
y12=mean_INs_LongEx_PTHz+sem_INs_LongEx_PTHz;
y2=mean_other_LongIn_PTHz;
y21=mean_other_LongIn_PTHz-sem_other_LongIn_PTHz;
y22=mean_other_LongIn_PTHz+sem_other_LongIn_PTHz(1991:3531);


figure
plotyy([x',x',x'],[y1',y11',y12'],[x',x',x'],[y2',y21',y22']);




y3=mean_other_ShortIn_PTH(1991:2031);
y31=mean_other_ShortIn_PTH(1991:2031)-sem_other_ShortIn_PTH(1991:2031);
y32=mean_other_ShortIn_PTH(1991:2031)+sem_other_ShortIn_PTH(1991:2031);
% y2=mean_other_LongIn_PTH(1991:3531);
% y21=mean_other_LongIn_PTH(1991:3531)-sem_other_LongIn_PTH(1991:3531);
% y22=mean_other_LongIn_PTH(1991:3531)+sem_other_LongIn_PTH(1991:3531);

% y3=mean_other_multEI_PTHz(1991:3531);
% y31=mean_other_multEI_PTHz(1991:3531)-sem_other_multEI_PTHz(1991:3531);
% y32=mean_other_multEI_PTHz(1991:3531)+sem_other_multEI_PTHz(1991:3531);

% y3=mean_other_Eoo_PTHz(1991:2031);
% y31=mean_other_Eoo_PTHz(1991:2031)-sem_other_Eoo_PTHz(1991:2031);
% y32=mean_other_Eoo_PTHz(1991:2031)+sem_other_Eoo_PTHz(1991:2031);

% figure
% plotyy([x',x',x'],[y1',y11',y12'],[x',x',x'],[y2',y21',y22']);
x=Tlatplot(1992:2032);
figure
plot([x',x',x'],[y3',y31',y32']);




                           