clear INs_PTHz Other_PTHz
i_IN_longEX = 0;
i_other_longIN = 0;
i_IN = 0;
i_other = 0;
i_other_shortEX = 0;
for anum=1:length(NDATA) %animals
    for daynum=7%:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && ...
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35 
                                i_IN=i_IN+1;
                                if RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                    i_IN_longEX=i_IN_longEX+1;
                                    INs_PTHz(i_IN_longEX,:)=RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    
                                end
                            else
                                if RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    i_other_longIN=i_other_longIN+1;
                                    Other_PTHz(i_other_longIN,:)=RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum};
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 ...
                                        && RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} ~ -1 ...
                                        && RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} ~ -1
                            end
                    end
                end
            end
        end
    end
end

clear i_IN i_other anum daynum sessionnum enum neurnum

mean_INs_PTHz=nanmean(INs_PTHz);
sem_INs_PTHz=nanstd(INs_PTHz)/sqrt(size(INs_PTHz,1));

mean_other_PTHz=nanmean(Other_PTHz);
sem_other_PTHz=nanstd(Other_PTHz)/sqrt(size(Other_PTHz,1));

Tlatplot=Tm(1)+0.005:0.01:Tm(end);


x=Tlatplot(996:1020);
y1=mean_INs_PTHz(996:1020);
y11=mean_INs_PTHz(996:1020)-sem_INs_PTHz(996:1020);
y12=mean_INs_PTHz(996:1020)+sem_INs_PTHz(996:1020);
y2=mean_other_PTHz(996:1020);
y21=mean_other_PTHz(996:1020)-sem_other_PTHz(996:1020);
y22=mean_other_PTHz(996:1020)+sem_other_PTHz(996:1020);

figure
plotyy([x',x',x'],[y1',y11',y12'],[x',x',x'],[y2',y21',y22']);   




                           