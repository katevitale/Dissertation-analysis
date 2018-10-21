% plot CSplus preMB vs postMB response

%preMB
%SEM above
preMBSEMabove=INRESP.CSplus.preMB.MeanPTHz+INRESP.CSplus.preMB.PTHzSEM;
%SEM below
preMBSEMbelow=INRESP.CSplus.preMB.MeanPTHz-INRESP.CSplus.preMB.PTHzSEM;

%postMB
%SEM above
postMBSEMabove=INRESP.CSplus.postMB.MeanPTHz+INRESP.CSplus.postMB.PTHzSEM;
%SEM below
postMBSEMbelow=INRESP.CSplus.postMB.MeanPTHz-INRESP.CSplus.postMB.PTHzSEM;

figure
plot(Tm(2:end), INRESP.CSplus.preMB.MeanPTHz(1:end), 'color', [0.7, 0.7, 0.7], 'Linewidth', 1);
hold on
plot(Tm(2:end), INRESP.CSplus.postMB.MeanPTHz(1:end), 'color','k','Linewidth', 1)

hold on
plot(Tm(2:end), postMBSEMabove(1:end),'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end), postMBSEMbelow(1:end),'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end), preMBSEMabove(1:end), 'color', [0.7, 0.7, 0.7], 'Linewidth', 0.25);
hold on
plot(Tm(2:end), preMBSEMbelow(1:end),'color', [0.7, 0.7, 0.7], 'Linewidth', 0.25);


legend('preMB','postMB')

set(gca,'fontsize',36,'fontname','Arial')
%xlabel('Time from CS^+ onset (s)','fontsize',36,'fontname','Arial')
%ylabel('Average firing rate (z score)','fontsize',36,'fontname','Arial')

box off
axis tight
clear preMBSEMabove preMBSEMbelow postMBSEMabove postMBSEMbelow 