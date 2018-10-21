% plot CSplus vs CSminus response

%CSplus..
%SEM above
plusSEMabove=INRESP.CSplus.s7.MeanPTHz+INRESP.CSplus.s7.PTHzSEM;
%SEM below
plusSEMbelow=INRESP.CSplus.s7.MeanPTHz-INRESP.CSplus.s7.PTHzSEM;

%CSminus..
%SEM above
minusSEMabove=INRESP.CSminus.s7.MeanPTHz+INRESP.CSminus.s7.PTHzSEM;
%SEM below
minusSEMbelow=INRESP.CSminus.s7.MeanPTHz-INRESP.CSminus.s7.PTHzSEM;

figure
plot(Tm(2:end-1), INRESP.CSplus.s7.MeanPTHz(1:end-1), 'color', [0, 0.77, 0.2], 'Linewidth', 3)
hold on
plot(Tm(2:end-1), INRESP.CSminus.s7.MeanPTHz(1:end-1), 'color',[0.45, 0.85, 0.95] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), plusSEMabove(1:end-1),'color', [0, 0.77, 0.2], 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), plusSEMbelow(1:end-1),'color', [0, 0.77, 0.2], 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), minusSEMabove(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), minusSEMbelow(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);


legend('CS+','CS-')

set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear minusSEMabove minusSEMbelow plusSEMabove plusSEMbelow
