
%% bar graph values for pre versus post MB

%CSplus

%  phasic
meanOnsetpreMB=nanmean(INRESP.CSplus.preMB.Onset.MeanFRz)
semOnsetpreMB=nanstd(INRESP.CSplus.preMB.Onset.MeanFRz)/sqrt(length(INRESP.CSplus.preMB.Onset.MeanFRz))
meanOnsetpostMB=nanmean(INRESP.CSplus.postMB.Onset.MeanFRz)
semOnsetpostMB=nanstd(INRESP.CSplus.postMB.Onset.MeanFRz)/sqrt(length(INRESP.CSplus.postMB.Onset.MeanFRz))
pOnsetpreMBpostMB=signrank(INRESP.CSplus.preMB.Onset.MeanFRz,INRESP.CSplus.postMB.Onset.MeanFRz)

clear meanOnsetpreMB semOnsetpreMB meanOnsetpostMB semOnsetpostMB pOnsetpreMBpostMB

%  Late
meanLatepreMB=nanmean(INRESP.CSplus.preMB.Late.MeanFRz)
semLatepreMB=nanstd(INRESP.CSplus.preMB.Late.MeanFRz)/sqrt(length(INRESP.CSplus.preMB.Late.MeanFRz))
meanLatepostMB=nanmean(INRESP.CSplus.postMB.Late.MeanFRz)
semLatepostMB=nanstd(INRESP.CSplus.postMB.Late.MeanFRz)/sqrt(length(INRESP.CSplus.postMB.Late.MeanFRz))
pLatepreMBpostMB=signrank(INRESP.CSplus.preMB.Late.MeanFRz,INRESP.CSplus.postMB.Late.MeanFRz)

clear meanLatepreMB semLatepreMB meanLatepostMB semLatepostMB pLatepreMBpostMB

%% bar graph values for pre versus post SAL

%CSplus

%  phasic
meanOnsetpreSAL=nanmean(INRESP.CSplus.preSAL.Onset.MeanFRz)
semOnsetpreSAL=nanstd(INRESP.CSplus.preSAL.Onset.MeanFRz)/sqrt(length(INRESP.CSplus.preSAL.Onset.MeanFRz))
meanOnsetpostSAL=nanmean(INRESP.CSplus.postSAL.Onset.MeanFRz)
semOnsetpostSAL=nanstd(INRESP.CSplus.postSAL.Onset.MeanFRz)/sqrt(length(INRESP.CSplus.postSAL.Onset.MeanFRz))
pOnsetpreSALpostSAL=signrank(INRESP.CSplus.preSAL.Onset.MeanFRz,INRESP.CSplus.postSAL.Onset.MeanFRz)

clear meanOnsetpreSAL semOnsetpreSAL meanOnsetpostSAL semOnsetpostSAL pOnsetpreSALpostSAL

%  Late
meanLatepreSAL=nanmean(INRESP.CSplus.preSAL.Late.MeanFRz)
semLatepreSAL=nanstd(INRESP.CSplus.preSAL.Late.MeanFRz)/sqrt(length(INRESP.CSplus.preSAL.Late.MeanFRz))
meanLatepostSAL=nanmean(INRESP.CSplus.postSAL.Late.MeanFRz)
semLatepostSAL=nanstd(INRESP.CSplus.postSAL.Late.MeanFRz)/sqrt(length(INRESP.CSplus.postSAL.Late.MeanFRz))
pLatepreSALpostSAL=signrank(INRESP.CSplus.preSAL.Late.MeanFRz,INRESP.CSplus.postSAL.Late.MeanFRz)

clear meanLatepreSAL semLatepreSAL meanLatepostSAL semLatepostSAL pLatepreSALpostSAL