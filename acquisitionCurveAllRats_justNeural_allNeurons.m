i_neur=1;
i_IN=1;
i_other=1;


clear anum daynum sessionnum enum neurnum Onset Early Late

clear NameAll_Day1 PutINFLAG Onset OnsetAll_Day1 OnsetAll_Day1_5tbin Early...
    EarlyAll_Day1 EarlyAll_Day1_5tbin LateAll_Day1 LateAll_Day1_5tbin...
Onset_Day1_All_5tbin_mean Onset_Day1_All_5tbin_sem Early_Day1_All_5tbin_mean ...
Early_Day1_All_5tbin_sem Late_Day1_All_5tbin_mean Late_Day1_All_5tbin_sem 

clear NameOther_Day1 OnsetOther_Day1 OnsetOther_Day1_5tbin Early EarlyOther_Day1 ...
    EarlyOther_Day1_5tbin Late LateOther_Day1 LateOther_Day1_5tbin...
OnsetOther_Day1_5tbin_mean OnsetOther_Day1_5tbin_sem EarlyOther_Day1_5tbin_mean ...
EarlyOther_Day1_5tbin_sem LateOther_Day1_5tbin_mean LateOther_Day1_5tbin_sem

clear NameINs_Day1 OnsetINs_Day1 OnsetINs_Day1_5tbin EarlyINs_Day1 ...
    EarlyINs_Day1_5tbin LateINs_Day1 LateINs_Day1_5tbin...
OnsetINs_Day1_5tbin_mean OnsetINs_Day1_5tbin_sem EarlyINs_Day1_5tbin_mean ...
EarlyINs_Day1_5tbin_sem LateINs_Day1_5tbin_mean LateINs_Day1_5tbin_sem  

for anum=1:length(NDATA);
    for daynum=1%days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 
                        clear Onset Early Late
                        NameAll_Day1{i_neur}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                        PutINFLAG(i_neur)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN;
                        Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                        %OnsetAll_Day1(i_neur,:)=Onset;
                        OnsetAll_Day1_5tbin(i_neur,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                            nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                        Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                        %EarlyAll_Day1(i_neur,:)=Early;
                        EarlyAll_Day1_5tbin(i_neur,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                            nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                        Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                        %LateAll_Day1(i_neur,:)=Late;
                        LateAll_Day1_5tbin(i_neur,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                            nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                        i_neur=i_neur+1;
                    end
                end
            end
        end
    end
end

% Compute mean onset of all neurons across trials and STD

Onset_Day1_All_5tbin_mean=nanmean(OnsetAll_Day1_5tbin); % mean onset of all neurons across trials
Onset_Day1_All_5tbin_sem=nanstd(OnsetAll_Day1_5tbin)/sqrt(size(OnsetAll_Day1_5tbin,1));

Early_Day1_All_5tbin_mean=nanmean(EarlyAll_Day1_5tbin); % mean early resp of all neurons across trials
Early_Day1_All_5tbin_sem=nanstd(EarlyAll_Day1_5tbin)/sqrt(size(EarlyAll_Day1_5tbin,1));

Late_Day1_All_5tbin_mean=nanmean(LateAll_Day1_5tbin); % mean late resp of all neurons across trials
Late_Day1_All_5tbin_sem=nanstd(LateAll_Day1_5tbin)/sqrt(size(LateAll_Day1_5tbin,1));


 
for anum=1:length(NDATA);
    for daynum=1%days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 
                        if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && ...
                            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                clear Onset Early Late
                                NameINs_Day1{i_IN}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %OnsetINs_Day1(i_IN,:)=Onset;
                                OnsetINs_Day1_5tbin(i_IN,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                                    nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                                Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EarlyINs_Day1(i_IN,:)=Early;
                                EarlyINs_Day1_5tbin(i_IN,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                                    nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                                Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %LateINs_Day1(i_IN,:)=Late;
                                LateINs_Day1_5tbin(i_IN,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                                    nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                                i_IN=i_IN+1;
                        else 
                                clear Onset Early Late
                                NameOther_Day1{i_other}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                Onset=RESP.CSplus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %OnsetOther_Day1(i_other,:)=Onset;
                                OnsetOther_Day1_5tbin(i_other,:)=[nanmean(Onset(1:5)),nanmean(Onset(6:10)),nanmean(Onset(11:15)),...
                                    nanmean(Onset(16:20)),nanmean(Onset(21:25)),nanmean(Onset(26:end))];
                                Early=RESP.CSplus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EarlyOther_Day1(i_other,:)=Early;
                                EarlyOther_Day1_5tbin(i_other,:)=[nanmean(Early(1:5)),nanmean(Early(6:10)),nanmean(Early(11:15)),...
                                    nanmean(Early(16:20)),nanmean(Early(21:25)),nanmean(Early(26:end))];
                                Late=RESP.CSplus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %LateOther_Day1(i_other,:)=Late;
                                LateOther_Day1_5tbin(i_neur,:)=[nanmean(Late(1:5)),nanmean(Late(6:10)),nanmean(Late(11:15)),...
                                    nanmean(Late(16:20)),nanmean(Late(21:25)),nanmean(Late(26:end))];
                                i_other=i_other+1;
                        end
                    end
                end
            end
        end
    end
end



% Compute mean onset of all neurons across trials and STD

OnsetINs_Day1_5tbin_mean=nanmean(OnsetINs_Day1_5tbin); % mean onset of all neurons across trials
OnsetINs_Day1_5tbin_sem=nanstd(OnsetINs_Day1_5tbin)/sqrt(size(OnsetINs_Day1_5tbin,1));

EarlyINs_Day1_5tbin_mean=nanmean(EarlyINs_Day1_5tbin); % mean early resp of all neurons across trials
EarlyINs_Day1_5tbin_sem=nanstd(EarlyINs_Day1_5tbin)/sqrt(size(EarlyINs_Day1_5tbin,1));

LateINs_Day1_5tbin_mean=nanmean(LateINs_Day1_5tbin); % mean late resp of all neurons across trials
LateINs_Day1_5tbin_sem=nanstd(LateINs_Day1_5tbin)/sqrt(size(LateINs_Day1_5tbin,1));

OnsetOther_Day1_5tbin_mean=nanmean(OnsetOther_Day1_5tbin); % mean onset of all neurons across trials
OnsetOther_Day1_5tbin_sem=nanstd(OnsetOther_Day1_5tbin)/sqrt(size(OnsetOther_Day1_5tbin,1));

EarlyOther_Day1_5tbin_mean=nanmean(EarlyOther_Day1_5tbin); % mean early resp of all neurons across trials
EarlyOther_Day1_5tbin_sem=nanstd(EarlyOther_Day1_5tbin)/sqrt(size(EarlyOther_Day1_5tbin,1));

LateOther_Day1_5tbin_mean=nanmean(LateOther_Day1_5tbin); % mean late resp of all neurons across trials
LateOther_Day1_5tbin_sem=nanstd(LateOther_Day1_5tbin)/sqrt(size(LateOther_Day1_5tbin,1));

clear i_neur i_IN i_other
clear anum daynum sessionnum enum neurnum i_neur Onset Early Late

%clear NameAll_Day1 PutINFLAG Onset OnsetAll_Day1 OnsetAll_Day1_5tbin Early...
%     EarlyAll_Day1 EarlyAll_Day1_5tbin LateAll_Day1 LateAll_Day1_5tbin...
% Onset_Day1_All_5tbin_mean Onset_Day1_All_5tbin_sem Early_Day1_All_5tbin_mean ...
% Early_Day1_All_5tbin_sem Late_Day1_All_5tbin_mean Late_Day1_All_5tbin_sem 

% clear NameOther_Day1 OnsetOther_Day1 OnsetOther_Day1_5tbin Early EarlyOther_Day1 ...
%     EarlyOther_Day1_5tbin Late LateOther_Day1 LateOther_Day1_5tbin...
% OnsetOther_Day1_5tbin_mean OnsetOther_Day1_5tbin_sem EarlyOther_Day1_5tbin_mean ...
% EarlyOther_Day1_5tbin_sem LateOther_Day1_5tbin_mean LateOther_Day1_5tbin_sem

% clear NameINs_Day1 OnsetINs_Day1 OnsetINs_Day1_5tbin EarlyINs_Day1 ...
%     EarlyINs_Day1_5tbin LateINs_Day1 LateINs_Day1_5tbin...
% OnsetINs_Day1_5tbin_mean OnsetINs_Day1_5tbin_sem EarlyINs_Day1_5tbin_mean ...
% EarlyINs_Day1_5tbin_sem LateINs_Day1_5tbin_mean LateINs_Day1_5tbin_sem 
