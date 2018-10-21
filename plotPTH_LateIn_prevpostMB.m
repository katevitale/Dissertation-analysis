
% plot pre-MB vs post-MB response


%pre MB...
%SEM above
preMBSEMabove=INRESP.CSplus.preMB.MeanPTHz+INRESP.CSplus.preMB.PTHzSEM;
%SEM below
preMBSEMbelow=INRESP.CSplus.preMB.MeanPTHz-INRESP.CSplus.preMB.PTHzSEM;

figure

plot(Tm(2:end-1), INRESP.CSplus.preMB.MeanPTHz(1:end-1), 'k' , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), preMBSEMabove(1:end-1),'k', 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), preMBSEMbelow(1:end-1),'k', 'Linewidth', 0.25);

%post MB...
%SEM above
postMBSEMabove=INRESP.CSplus.postMB.MeanPTHz+INRESP.CSplus.postMB.PTHzSEM;
%SEM below
postMBSEMbelow=INRESP.CSplus.postMB.MeanPTHz-INRESP.CSplus.postMB.PTHzSEM;

hold on

plot(Tm(2:end-1), INRESP.CSplus.postMB.MeanPTHz(1:end-1), 'color',[0.45, 0.45, 0.45] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), postMBSEMabove(1:end-1),'color', [0.45, 0.45, 0.45], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), postMBSEMbelow(1:end-1),'color', [0.45, 0.45, 0.45], 'Linewidth', 0.25);

set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear preMBSEMabove preMBSEMbelow s1SEMabove s1SEMbelow