i_IN_1 = 1;i_other_1 = 1;i_IN_2 = 1;i_other_2 = 1;i_IN_3 = 1;i_other_3 = 1;
i_IN_4 = 1;i_other_4 = 1;i_IN_5 = 1;i_other_5 = 1;i_IN_6 = 1;i_other_6 = 1;
i_IN_7 = 1;i_other_7 = 1;i_IN_erec = 1;i_other_erec = 1;i_IN_ext = 1;
i_other_ext = 1;i_IN_MB=1;i_IN_SAL=1;i_other_MB=1;i_other_SAL=1;

outputfilename = '/Users/Kate/Dropbox/Matlab scripts/Cohorts E F and OFE4/xls output files/ouput.xls';

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        
                        if daynum == 1
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_1{i_IN_1} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_1{i_IN_1}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_1{i_IN_1} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_1{i_IN_1} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_1{i_IN_1} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_1{i_IN_1} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_1{i_IN_1} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_1 = i_IN_1 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_1{i_other_1} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_1{i_other_1}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_1{i_other_1} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_1{i_other_1} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_1{i_other_1} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_1{i_other_1} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_1{i_other_1} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_1 = i_other_1 + 1; 
                            end
                        end
                            
                        if daynum ==2
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_2{i_IN_2} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_2{i_IN_2}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_2{i_IN_2} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_2{i_IN_2} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_2{i_IN_2} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_2{i_IN_2} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_2{i_IN_2} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_2 = i_IN_2 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_2{i_other_2} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_2{i_other_2}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_2{i_other_2} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_2{i_other_2} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_2{i_other_2} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_2{i_other_2} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_2{i_other_2} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_2 = i_other_2 + 1; 
                            end
                        end
                        
                        if daynum == 3
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_3{i_IN_3} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_3{i_IN_3}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_3{i_IN_3} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_3{i_IN_3} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_3{i_IN_3} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_3{i_IN_3} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_3{i_IN_3} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_3 = i_IN_3 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_3{i_other_3} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_3{i_other_3}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_3{i_other_3} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_3{i_other_3} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_3{i_other_3} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_3{i_other_3} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_3{i_other_3} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_3 = i_other_3 + 1; 
                            end
                        end
                        
                            
                         if daynum == 4
                             if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_4{i_IN_4} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_4{i_IN_4}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_4{i_IN_4} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_4{i_IN_4} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_4{i_IN_4} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_4{i_IN_4} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_4{i_IN_4} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_4 = i_IN_4 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_4{i_other_4} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_4{i_other_4}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_4{i_other_4} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_4{i_other_4} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_4{i_other_4} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_4{i_other_4} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_4{i_other_4} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_4 = i_other_4 + 1; 
                             end
                         end
                         
                            
                        if daynum == 5
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_5{i_IN_5} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_5{i_IN_5}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_5{i_IN_5} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_5{i_IN_5} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_5{i_IN_5} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_5{i_IN_5} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_5{i_IN_5} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_5 = i_IN_5 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_5{i_other_5} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_5{i_other_5}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_5{i_other_5} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_5{i_other_5} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_5{i_other_5} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_5{i_other_5} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_5{i_other_5} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_5 = i_other_5 + 1; 
                            end
                        end
                        
                            
                        if daynum == 6
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_6{i_IN_6} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_6{i_IN_6}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_6{i_IN_6} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_6{i_IN_6} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_6{i_IN_6} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_6{i_IN_6} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_6{i_IN_6} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_6 = i_IN_6 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_6{i_other_6} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_6{i_other_6}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_6{i_other_6} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_6{i_other_6} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_6{i_other_6} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_6{i_other_6} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_6{i_other_6} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_6 = i_other_6 + 1; 
                            end
                        end
                            
                        if daynum == 7
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_7{i_IN_7} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_7{i_IN_7}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_7{i_IN_7} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_7{i_IN_7} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_7{i_IN_7} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_7{i_IN_7} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_7{i_IN_7} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_7 = i_IN_7 + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_7{i_other_7} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_7{i_other_7}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_7{i_other_7} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_7{i_other_7} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_7{i_other_7} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_7{i_other_7} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_7{i_other_7} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_7 = i_other_7 + 1; 
                            end
                        end

                        if daynum>7 && daynum<16
                            switch(treatment{anum}{daynum}{sessionnum}.name)  
                                case{'preMB'}
                                    if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=1;
                                        NameIN_preMB{i_IN_MB}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                        BaselineIN_preMB{i_IN_MB}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        BaselineIN_postMB{i_IN_MB}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        PhasicIN_preMB{i_IN_MB}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        PhasicIN_postMB{i_IN_MB}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateIN_preMB{i_IN_MB}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateIN_postMB{i_IN_MB}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGIN_preMB{i_IN_MB}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_postMB{i_IN_MB}=RESP.CSplus.FLAG{anum}{daynum}{2}{enum}{neurnum}; 
                                        FLAGIN_late_preMB{i_IN_MB} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_late_postMB{i_IN_MB} = RESP.CSplus.Late.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGIN_phasic_preMB{i_IN_MB} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_phasic_postMB{i_IN_MB} = RESP.CSplus.Onset.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        i_IN_MB=i_IN_MB+1;
                                    else
                                        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                        NameOther_preMB{i_other_MB} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                        BaselineOther_preMB{i_other_MB}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        BaselineOther_postMB{i_other_MB}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        PhasicOther_preMB{i_other_MB}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        PhasicOther_postMB{i_other_MB} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateOther_preMB{i_other_MB}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateOther_postMB{i_other_MB}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_preMB{i_other_MB}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_postMB{i_other_MB}=RESP.CSplus.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_late_preMB{i_other_MB} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_late_postMB{i_other_MB} = RESP.CSplus.Late.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_phasic_preMB{i_other_MB} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_phasic_postMB{i_other_MB} = RESP.CSplus.Onset.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        i_other_MB=i_other_MB+1; 
                                    end
                                case{'preSAL'}
                                    if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=1;
                                        NameIN_preSAL{i_IN_SAL}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                        BaselineIN_preSAL{i_IN_SAL}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        BaselineIN_postSAL{i_IN_SAL}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        PhasicIN_preSAL{i_IN_SAL}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        PhasicIN_postSAL{i_IN_SAL}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateIN_preSAL{i_IN_SAL}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateIN_postSAL{i_IN_SAL}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGIN_preSAL{i_IN_SAL}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_postSAL{i_IN_SAL}=RESP.CSplus.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGIN_late_preSAL{i_IN_SAL} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_late_postSAL{i_IN_SAL} = RESP.CSplus.Late.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGIN_phasic_preSAL{i_IN_SAL} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGIN_phasic_postSAL{i_IN_SAL} = RESP.CSplus.Onset.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        i_IN_SAL=i_IN_SAL+1;
                                    else
                                        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                        NameOther_preSAL{i_other_SAL} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                        BaselineOther_preSAL{i_other_SAL}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        BaselineOther_postSAL{i_other_SAL}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        PhasicOther_preSAL{i_other_SAL}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        PhasicOther_postSAL{i_other_SAL} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        LateOther_preSAL{i_other_SAL}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        LateOther_postSAL{i_other_SAL}=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_preSAL{i_other_SAL}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_postSAL{i_other_SAL}=RESP.CSplus.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_late_preSAL{i_other_SAL} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_late_postSAL{i_other_SAL} = RESP.CSplus.Late.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        FLAGOther_phasic_preSAL{i_other_SAL} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        FLAGOther_phasic_postSAL{i_other_SAL} = RESP.CSplus.Onset.FLAG{anum}{daynum}{2}{enum}{neurnum};
                                        i_other_SAL=i_other_SAL+1; 
                                    end                                    
                                end
                        end
                        
                        if daynum == 16
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                NameIN_ext{i_IN_ext} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineIN_ext{i_IN_ext}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_ext{i_IN_ext} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateIN_ext{i_IN_ext} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_ext{i_IN_ext} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_late_ext{i_IN_ext} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGIN_phas_ext{i_IN_ext} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN_ext = i_IN_ext + 1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_ext{i_other_ext} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                BaselineOther_ext{i_other_ext}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_ext{i_other_ext} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LateOther_ext{i_other_ext} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_ext{i_other_ext} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_late_ext{i_other_ext} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                FLAGOther_phas_ext{i_other_ext} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other_ext = i_other_ext + 1; 
                            end
                        end
                        
                        if daynum == 17
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                    NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN = 1;
                                    NameIN_erec{i_IN_erec} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                    BaselineIN_erec{i_IN_erec}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    PhasicIN_erec{i_IN_erec} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    LateIN_erec{i_IN_erec} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGIN_erec{i_IN_erec} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGIN_late_erec{i_IN_erec} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGIN_phas_erec{i_IN_erec} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    i_IN_erec = i_IN_erec + 1;
                                else
                                    NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                    NameOther_erec{i_other_erec} = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                    BaselineOther_erec{i_other_erec}=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    PhasicOther_erec{i_other_erec} = RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    LateOther_erec{i_other_erec} = RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGOther_erec{i_other_erec} = RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGOther_late_erec{i_other_erec} = RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    FLAGOther_phas_erec{i_other_erec} = RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    i_other_erec = i_other_erec + 1; 
                            end 
                        end
                    end
                end
            end
        end
    end
end

T_1 = table(NameIN_1',BaselineIN_1',PhasicIN_1',LateIN_1',FLAGIN_1',FLAGIN_late_1',FLAGIN_phas_1');

% writetable(T_1,outputfilename)

                        

 clear i_IN_MB  i_IN_SAL i_other_MB i_other_SAL anum daynum sessionnum enum neurnum
 
 
 clear i_IN_1 i_IN_2 i_IN_3 i_IN_4 i_IN_5 ...
     i_IN_6 i_IN_7 i_IN_erec i_IN_ext i_IN_postMB ...
     i_IN_postSAL i_IN_preMB i_IN_preSAL
 
  clear i_other_1 i_other_2 i_other_3 i_other_4 i_other_5 ...
     i_other_6 i_other_7 i_other_erec i_other_ext i_other_postMB ...
     i_other_postSAL i_other_preMB i_other_preSAL
 
 clear BaselineIN_1 BaselineIN_2 BaselineIN_3 BaselineIN_4 BaselineIN_5 ...
     BaselineIN_6 BaselineIN_7 BaselineIN_erec BaselineIN_ext BaselineIN_postMB ...
     BaselineIN_postSAL BaselineIN_preMB BaselineIN_preSAL
 
 clear BaselineOther_1 BaselineOther_2 BaselineOther_3 BaselineOther_4 BaselineOther_5 ...
     BaselineOther_6 BaselineOther_7 BaselineOther_erec BaselineOther_ext BaselineOther_postMB ...
     BaselineOther_postSAL BaselineOther_preMB BaselineOther_preSAL
 
 clear FLAGIN_1 FLAGIN_2 FLAGIN_3 FLAGIN_4 FLAGIN_5 ...
     FLAGIN_6 FLAGIN_7 FLAGIN_erec FLAGIN_ext FLAGIN_postMB ...
     FLAGIN_postSAL FLAGIN_preMB FLAGIN_preSAL
 
 clear FLAGIN_late_1 FLAGIN_late_2 FLAGIN_late_3 FLAGIN_late_4 FLAGIN_late_5 ...
     FLAGIN_late_6 FLAGIN_late_7 FLAGIN_late_erec FLAGIN_late_ext FLAGIN_late_postMB ...
     FLAGIN_late_postSAL FLAGIN_late_preMB FLAGIN_late_preSAL
 
 clear FLAGIN_phas_1 FLAGIN_phas_2 FLAGIN_phas_3 FLAGIN_phas_4 FLAGIN_phas_5 ...
     FLAGIN_phas_6 FLAGIN_phas_7 FLAGIN_phas_erec FLAGIN_phas_ext FLAGIN_phasic_postMB ...
     FLAGIN_phasic_postSAL FLAGIN_phasic_preMB FLAGIN_phasic_preSAL 
 
  clear FLAGOther_1 FLAGOther_2 FLAGOther_3 FLAGOther_4 FLAGOther_5 ...
     FLAGOther_6 FLAGOther_7 FLAGOther_erec FLAGOther_ext FLAGOther_postMB ...
     FLAGOther_postSAL FLAGOther_preMB FLAGOther_preSAL
 
  clear FLAGOther_late_1 FLAGOther_late_2 FLAGOther_late_3 FLAGOther_late_4 FLAGOther_late_5 ...
     FLAGOther_late_6 FLAGOther_late_7 FLAGOther_late_erec FLAGOther_late_ext FLAGOther_late_postMB ...
     FLAGOther_late_postSAL FLAGOther_late_preMB FLAGOther_late_preSAL
 
  clear FLAGOther_phas_1 FLAGOther_phas_2 FLAGOther_phas_3 FLAGOther_phas_4 FLAGOther_phas_5 ...
     FLAGOther_phas_6 FLAGOther_phas_7 FLAGOther_phas_erec FLAGOther_phas_ext FLAGOther_phasic_postMB ...
     FLAGOther_phasic_postSAL FLAGOther_phasic_preMB FLAGOther_phasic_preSAL
 
  clear LateIN_1 LateIN_2 LateIN_3 LateIN_4 LateIN_5 ...
     LateIN_6 LateIN_7 LateIN_erec LateIN_ext LateIN_postMB ...
     LateIN_postSAL LateIN_preMB LateIN_preSAL 
 
 clear LateOther_1 LateOther_2 LateOther_3 LateOther_4 LateOther_5 ...
     LateOther_6 LateOther_7 LateOther_erec LateOther_ext LateOther_postMB ...
     LateOther_postSAL LateOther_preMB LateOther_preSAL


  clear NameIN_2 NameIN_3 NameIN_4 NameIN_5 ...
     NameIN_6 NameIN_7 NameIN_erec NameIN_ext NameIN_postMB ...
     NameIN_postSAL NameIN_preMB NameIN_preSAL
 
 clear NameOther_1 NameOther_2 NameOther_3 NameOther_4 NameOther_5 ...
     NameOther_6 NameOther_7 NameOther_erec NameOther_ext NameOther_postMB ...
     NameOther_postSAL NameOther_preMB NameOther_preSAL
 
  clear PhasicIN_1 PhasicIN_2 PhasicIN_3 PhasicIN_4 PhasicIN_5 ...
     PhasicIN_6 PhasicIN_7 PhasicIN_erec PhasicIN_ext PhasicIN_postMB ...
     PhasicIN_postSAL PhasicIN_preMB PhasicIN_preSAL 
 
 clear PhasicOther_1 PhasicOther_2 PhasicOther_3 PhasicOther_4 PhasicOther_5 ...
     PhasicOther_6 PhasicOther_7 PhasicOther_erec PhasicOther_ext PhasicOther_postMB ...
     PhasicOther_postSAL PhasicOther_preMB PhasicOther_preSAL
 