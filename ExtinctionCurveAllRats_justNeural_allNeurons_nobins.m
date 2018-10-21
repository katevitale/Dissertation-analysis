i_neur=1;
i_IN=1;
i_other=1;

clear anum daynum sessionnum enum neurnum Onset Early Late

clear NameAll_EXT PutINFLAG OnsetAll_EXT OnsetAll_EXT_5tbin Early...
    EarlyAll_EXT EarlyAll_EXT_5tbin LateAll_EXT LateAll_EXT_5tbin...
Onset_EXT_All_5tbin_mean Onset_EXT_All_5tbin_sem Early_EXT_All_5tbin_mean ...
Early_EXT_All_5tbin_sem Late_EXT_All_5tbin_mean Late_EXT_All_5tbin_sem 

clear NameOther_EXT OnsetOther_EXT OnsetOther_EXT_5tbin Early EarlyOther_EXT ...
    EarlyOther_EXT_5tbin LateOther_EXT LateOther_EXT_5tbin...
OnsetOther_EXT_5tbin_mean OnsetOther_EXT_5tbin_sem EarlyOther_EXT_5tbin_mean ...
EarlyOther_EXT_5tbin_sem LateOther_EXT_5tbin_mean LateOther_EXT_5tbin_sem

clear NameINs_EXT OnsetINs_EXT OnsetINs_EXT_5tbin EarlyINs_EXT ...
    EarlyINs_EXT_5tbin LateINs_EXT LateINs_EXT_5tbin...
OnsetINs_EXT_5tbin_mean OnsetINs_EXT_5tbin_sem EarlyINs_EXT_5tbin_mean ...
EarlyINs_EXT_5tbin_sem LateINs_EXT_5tbin_mean LateINs_EXT_5tbin_sem  
 
for anum=1:15;
    for daynum=16%extinction = day 16
        for sessionnum=length(NDATA{anum}{daynum})
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 && RESP.CSplus.LongIn{anum}{7}{sessionnum}{enum}{neurnum}==1 % All neurons with Long Inh in day 7
                        
                        NameAll_EXT{i_neur}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                            if anum==9
                                Onset(i_neur,:)=[RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Onset(i_neur,:)=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                       
                        
                            if anum==9
                                Early(i_neur,:)=[RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Early(i_neur,:)=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                        
                        
                            if anum==9
                                Late(i_neur,:)=[RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Late(i_neur,:)=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                        
                        
                           
                        i_neur=i_neur+1;
                    end
                end
            end
        end
    end
end



