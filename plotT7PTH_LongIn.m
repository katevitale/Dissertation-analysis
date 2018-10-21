
% plot Day 7 response


%SEM above
s7SEMabove=INRESP.CSplus.s7.MeanPTHz+INRESP.CSplus.s7.PTHzSEM;
%SEM below
s7SEMbelow=INRESP.CSplus.s7.MeanPTHz-INRESP.CSplus.s7.PTHzSEM;

figure

plot(Tm(2:end-1), INRESP.CSplus.s7.MeanPTHz(1:end-1), 'color',[0.45, 0.85, 0.95] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), s7SEMabove(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), s7SEMbelow(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);



set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear s7SEMabove s7SEMbelow