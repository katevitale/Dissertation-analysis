i_IN=1;
i_PN=1;

for anum=1:15 %animals
    for daynum=17
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1     

                        if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=1;
                            NameIN_ExtRec{i_IN}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                            PhasicIN_ExtRec{i_IN}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            SustainedIN_ExtRec{i_IN}=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            LateFLAGIN_ExtRec{i_IN}=RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                            LongExFLAGIN_ExtRec{i_IN}=RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum};
                            EarlyIN_ExtRec{i_IN}=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            LateIN_ExtRec{i_IN}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            i_IN=i_IN+1;
                        else
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                        end

                    end
                end
            end
        end
    end
end
% clear i_IN PhasicIN_ExtRec NameIN_ExtRec PhasicIN_postMB SustainedIN_ExtRec SustainedIN_postMB