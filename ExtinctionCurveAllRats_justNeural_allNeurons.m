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
                        clear Onset Early Late
                        NameAll_EXT{i_neur}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                            if anum==9
                                Onset=[RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                       
                        OnsetAll_EXT_5tbin(i_neur,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                            nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                            if anum==9
                                Early=[RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                        
                        EarlyAll_EXT_5tbin(i_neur,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                            nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                            if anum==9
                                Late=[RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                            else
                                Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                            end
                        
                        LateAll_EXT_5tbin(i_neur,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                            nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                           
                        i_neur=i_neur+1;
                    end
                end
            end
        end
    end
end

% Compute mean onset of all neurons across trials and STD

Onset_EXT_All_5tbin_mean=nanmean(OnsetAll_EXT_5tbin); % mean onset of all neurons across trials
Onset_EXT_All_5tbin_sem=nanstd(OnsetAll_EXT_5tbin)/sqrt(size(OnsetAll_EXT_5tbin,1));

Early_EXT_All_5tbin_mean=nanmean(EarlyAll_EXT_5tbin); % mean early resp of all neurons across trials
Early_EXT_All_5tbin_sem=nanstd(EarlyAll_EXT_5tbin)/sqrt(size(EarlyAll_EXT_5tbin,1));

Late_EXT_All_5tbin_mean=nanmean(LateAll_EXT_5tbin); % mean late resp of all neurons across trials
Late_EXT_All_5tbin_sem=nanstd(LateAll_EXT_5tbin)/sqrt(size(LateAll_EXT_5tbin,1));

clear i_neur 

i_neur=1;
 
for anum=1:15;
    for daynum=16%extinction = day 16
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 
                        if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && ...
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                if RESP.CSplus.LongEx{anum}{7}{sessionnum}{enum}{neurnum}==1 %put INs with long Ex
                                    clear Onset Early Late
                                    NameExcINs_EXT{i_IN}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                    if anum==9
                                        Onset=[RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                    else
                                        Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    end

                                    OnsetExcINs_EXT_5tbin(i_IN,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                                        nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                                    if anum==9
                                        Early=[RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                    else
                                        Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    end
                                    %EarlyINs_EXT(i_IN,:)=Early;
                                    EarlyExcINs_EXT_5tbin(i_IN,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                                        nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                                    if anum==9
                                        Late=[RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                    else
                                        Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                    end
                                    %LateINs_EXT(i_IN,:)=Late;
                                    LateExcINs_EXT_5tbin(i_IN,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                                        nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                                    i_IN=i_IN+1;
                                end
                        elseif RESP.CSplus.LongIn{anum}{7}{sessionnum}{enum}{neurnum}==1 %Other neurons with long inh
                                clear Onset Early Late
                                NameInhOther_EXT{i_other}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                if anum==9
                                    Onset=[RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                else
                                    Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                end
                                %OnsetOther_EXT(i_other,:)=Onset;
                                OnsetInhOther_EXT_5tbin(i_other,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                                    nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                                if anum==9
                                    Early=[RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                else
                                    Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                end
                                %EarlyOther_EXT(i_other,:)=Early;
                                EarlyInhOther_EXT_5tbin(i_other,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                                    nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                                if anum==9
                                    Late=[RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum},NaN,NaN,NaN];
                                else
                                    Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                end
                                %LateOther_EXT(i_other,:)=Late;
                                LateInhOther_EXT_5tbin(i_other,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                                    nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                                i_other=i_other+1;
                        end
                    end
                end
            end
        end
    end
end

% Compute mean onset of all neurons across trials and SEM

OnsetExcINs_EXT_5tbin_mean=nanmean(OnsetExcINs_EXT_5tbin); % mean onset of all neurons across trials
OnsetExcINs_EXT_5tbin_sem=nanstd(OnsetExcINs_EXT_5tbin)/sqrt(size(OnsetExcINs_EXT_5tbin,1));

EarlyExcINs_EXT_5tbin_mean=nanmean(EarlyExcINs_EXT_5tbin); % mean early resp of all neurons across trials
EarlyExcINs_EXT_5tbin_sem=nanstd(EarlyExcINs_EXT_5tbin)/sqrt(size(EarlyExcINs_EXT_5tbin,1));

LateExcINs_EXT_5tbin_mean=nanmean(LateExcINs_EXT_5tbin); % mean late resp of all neurons across trials
LateExcINs_EXT_5tbin_sem=nanstd(LateExcINs_EXT_5tbin)/sqrt(size(LateExcINs_EXT_5tbin,1));

OnsetInhOther_EXT_5tbin_mean=nanmean(OnsetInhOther_EXT_5tbin); % mean onset of all neurons across trials
OnsetInhOther_EXT_5tbin_sem=nanstd(OnsetInhOther_EXT_5tbin)/sqrt(size(OnsetInhOther_EXT_5tbin,1));

EarlyInhOther_EXT_5tbin_mean=nanmean(EarlyInhOther_EXT_5tbin); % mean early resp of all neurons across trials
EarlyInhOther_EXT_5tbin_sem=nanstd(EarlyInhOther_EXT_5tbin)/sqrt(size(EarlyInhOther_EXT_5tbin,1));

LateInhOther_EXT_5tbin_mean=nanmean(LateInhOther_EXT_5tbin); % mean late resp of all neurons across trials
LateInhOther_EXT_5tbin_sem=nanstd(LateInhOther_EXT_5tbin)/sqrt(size(LateInhOther_EXT_5tbin,1));


% clear i_neur i_IN i_other
% clear anum daynum sessionnum enum neurnum Onset Early Late
% 
% clear NameAll_EXT PutINFLAG OnsetAll_EXT OnsetAll_EXT_5tbin Early...
%     EarlyAll_EXT EarlyAll_EXT_5tbin LateAll_EXT LateAll_EXT_5tbin...
% Onset_EXT_All_5tbin_mean Onset_EXT_All_5tbin_sem Early_EXT_All_5tbin_mean ...
% Early_EXT_All_5tbin_sem Late_EXT_All_5tbin_mean Late_EXT_All_5tbin_sem 
% 
% clear NameOther_EXT OnsetOther_EXT OnsetOther_EXT_5tbin Early EarlyOther_EXT ...
%     EarlyOther_EXT_5tbin LateOther_EXT LateOther_EXT_5tbin...
% OnsetOther_EXT_5tbin_mean OnsetOther_EXT_5tbin_sem EarlyOther_EXT_5tbin_mean ...
% EarlyOther_EXT_5tbin_sem LateOther_EXT_5tbin_mean LateOther_EXT_5tbin_sem
% 
% clear NameINs_EXT OnsetINs_EXT OnsetINs_EXT_5tbin EarlyINs_EXT ...
%     EarlyINs_EXT_5tbin LateINs_EXT LateINs_EXT_5tbin...
% OnsetINs_EXT_5tbin_mean OnsetINs_EXT_5tbin_sem EarlyINs_EXT_5tbin_mean ...
% EarlyINs_EXT_5tbin_sem LateINs_EXT_5tbin_mean LateINs_EXT_5tbin_sem  
     
