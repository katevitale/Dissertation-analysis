% Make EXINhRESP 

clear EXINhRESP

i_s7=1; i_EREC=1; 



for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum}) %sessions
             for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 ...
                            && RESP.CSplus.Sustained.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1 ...
                            && log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 ...
                            && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                        switch(daynum)
                            
                            case 7   
                       EXINhRESP.CSplus.s7.PTHz(i_s7,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                            i_s7=i_s7+1;
                            case 17         
                       EXINhRESP.CSplus.Erec.PTHz(i_EREC,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                            i_EREC=i_EREC+1;
                        end
                      end
                    end
                end
             end
        end
end

% Calculate Mean

EXINhRESP.CSplus.s7.MeanPTHz=nanmean(EXINhRESP.CSplus.s7.PTHz); 
EXINhRESP.CSplus.Erec.MeanPTHz=nanmean(EXINhRESP.CSplus.Erec.PTHz);


% Calculate SEM

EXINhRESP.CSplus.s7.PTHzSEM=nanstd(EXINhRESP.CSplus.s7.PTHz)/sqrt(size(EXINhRESP.CSplus.s7.PTHz,1));
EXINhRESP.CSplus.s7.PTHzSEM=nanstd(EXINhRESP.CSplus.s7.PTHz)/sqrt(size(EXINhRESP.CSplus.s7.PTHz,1));

EXINhRESP.CSplus.Erec.PTHzSEM=nanstd(EXINhRESP.CSplus.Erec.PTHz)/sqrt(size(EXINhRESP.CSplus.Erec.PTHz,1));
EXINhRESP.CSplus.Erec.PTHzSEM=nanstd(EXINhRESP.CSplus.Erec.PTHz)/sqrt(size(EXINhRESP.CSplus.Erec.PTHz,1));


% plot Day 1 vs Day 7 response

%Day 7...
%SEM above
s7SEMabove=EXINhRESP.CSplus.s7.MeanPTHz+EXINhRESP.CSplus.s7.PTHzSEM;
%SEM below
s7SEMbelow=EXINhRESP.CSplus.s7.MeanPTHz-EXINhRESP.CSplus.s7.PTHzSEM;

%Ext Rec...
%SEM above
ErecSEMabove=EXINhRESP.CSplus.Erec.MeanPTHz+EXINhRESP.CSplus.Erec.PTHzSEM;
%SEM below
ErecSEMbelow=EXINhRESP.CSplus.Erec.MeanPTHz-EXINhRESP.CSplus.Erec.PTHzSEM;

figure
plot(Tm(2:end-1), EXINhRESP.CSplus.s7.MeanPTHz(1:end-1), 'k', 'Linewidth', 3)
hold on
plot(Tm(2:end-1), EXINhRESP.CSplus.Erec.MeanPTHz(1:end-1), 'color',[0.63, 0.63, 0.63] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), s7SEMabove(1:end-1),'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), s7SEMbelow(1:end-1),'k', 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), ErecSEMabove(1:end-1),'color', [0.63, 0.63, 0.63], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), ErecSEMbelow(1:end-1),'color', [0.63, 0.63, 0.63], 'Linewidth', 0.25);


legend('Day 7','Ext. Recall')

set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear s7SEMabove s7SEMbelow ErecSEMabove ErecSEMbelow