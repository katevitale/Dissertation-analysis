
% plot pre-SAL vs post-SAL response


%pre SAL...
%SEM above
preSALSEMabove=INRESP.CSplus.preSAL.MeanPTHz+INRESP.CSplus.preSAL.PTHzSEM;
%SEM below
preSALSESALelow=INRESP.CSplus.preSAL.MeanPTHz-INRESP.CSplus.preSAL.PTHzSEM;

figure

plot(Tm(2:end-1), INRESP.CSplus.preSAL.MeanPTHz(1:end-1), 'k' , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), preSALSEMabove(1:end-1),'k', 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), preSALSESALelow(1:end-1),'k', 'Linewidth', 0.25);

%post SAL...
%SEM above
postSALSEMabove=INRESP.CSplus.postSAL.MeanPTHz+INRESP.CSplus.postSAL.PTHzSEM;
%SEM below
postSALSESALelow=INRESP.CSplus.postSAL.MeanPTHz-INRESP.CSplus.postSAL.PTHzSEM;

hold on

plot(Tm(2:end-1), INRESP.CSplus.postSAL.MeanPTHz(1:end-1), 'color',[0.75, 0.75, 0.75] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), postSALSEMabove(1:end-1),'color', [0.75, 0.75, 0.75], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), postSALSESALelow(1:end-1),'color', [0.75, 0.75, 0.75], 'Linewidth', 0.25);

set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear preSALSEMabove preSALSESALelow s1SEMabove s1SESALelow