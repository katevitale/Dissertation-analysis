i_IN=1;
i_PN=1;

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1     
                        if daynum>7 && daynum<16
                            switch(treatment{anum}{daynum}{sessionnum}.name)  
                                case{'preSAL'}
                                    if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35                                        
                                        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=1;
                                        NameIN_preSAL{i_IN}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                        PhasicIN_preSAL{i_IN}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        PhasicIN_postSAL{i_IN}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        SustainedIN_preSAL{i_IN}=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        SustainedIN_postSAL{i_IN}=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateFLAGIN_preSAL{i_IN}=RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LongExFLAGIN_preSAL{i_IN}=RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateFLAGIN_postSAL{i_IN}=RESP.CSplus.Late.FLAG{anum}{daynum}{2}{enum}{neurnum}; 
                                        LongExFLAGIN_postSAL{i_IN}=RESP.CSplus.LongEx{anum}{daynum}{2}{enum}{neurnum};
                                        EarlyIN_preSAL{i_IN}=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        EarlyIN_postSAL{i_IN}=RESP.CSplus.Early.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateIN_preSAL{i_IN}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateIN_postSAL{i_IN}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
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
    end
end

% clear i_IN PhasicIN_preSAL NameIN_preSAL PhasicIN_postSAL SustainedIN_preSAL SustainedIN_postSAL