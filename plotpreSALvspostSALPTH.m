% plot CSplus preSAL vs postSAL response

%preSAL
%SEM above
preSALSEMabove=INRESP.CSplus.preSAL.MeanPTHz+INRESP.CSplus.preSAL.PTHzSEM;
%SEM below
preSALSESALelow=INRESP.CSplus.preSAL.MeanPTHz-INRESP.CSplus.preSAL.PTHzSEM;

%postSAL
%SEM above
postSALSEMabove=INRESP.CSplus.postSAL.MeanPTHz+INRESP.CSplus.postSAL.PTHzSEM;
%SEM below
postSALSESALelow=INRESP.CSplus.postSAL.MeanPTHz-INRESP.CSplus.postSAL.PTHzSEM;

figure
plot(Tm(2:end), INRESP.CSplus.preSAL.MeanPTHz(1:end), 'color', [0.7, 0.7, 0.7], 'Linewidth', 1);
hold on
plot(Tm(2:end), INRESP.CSplus.postSAL.MeanPTHz(1:end), 'color','k','Linewidth', 1)

hold on
plot(Tm(2:end), postSALSEMabove(1:end),'color', 'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end), postSALSESALelow(1:end),'color', 'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end), preSALSEMabove(1:end), 'color', [0.7, 0.7, 0.7], 'Linewidth', 0.25);
hold on
plot(Tm(2:end), preSALSESALelow(1:end),'color', [0.7, 0.7, 0.7], 'Linewidth', 0.25);


legend('preSAL','postSAL')

set(gca,'fontsize',36,'fontname','Arial')
%xlabel('Time from cue onset (s)','fontsize',36,'fontname','Arial')
%ylabel('Average firing rate (z score)','fontsize',36,'fontname','Arial')

axis tight
box off
clear preSALSEMabove preSALSESALelow postSALSEMabove postSALSESALelow 