% Make EXINhRESP 

clear EXINhRESP

i_s1=1; i_s7=1; 

% i_EXT=1; i_EREC=1;
% i_s2=1; i_s3=1; i_s4=1; i_s5=1; i_s6=1; 
% i_preMB=1;i_preSAL=1;i_postMB=1;i_postSAL=1;

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
                            
                            case 1   
                       EXINhRESP.CSplus.s1.PTHz(i_s1,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                       EXINhRESP.CSplus.s1.Late.MeanFR(i_s1)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Sustained.MeanFRz(i_s1)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                
                            i_s1=i_s1+1;
                            case 7         
                       EXINhRESP.CSplus.s7.PTHz(i_s7,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                            i_s7=i_s7+1;
                        end
                      end
                    end
                end
             end
        end
end

% Calculate Mean

EXINhRESP.CSplus.s1.MeanPTHz=nanmean(EXINhRESP.CSplus.s1.PTHz); 
EXINhRESP.CSplus.s7.MeanPTHz=nanmean(EXINhRESP.CSplus.s7.PTHz);


% Calculate SEM

EXINhRESP.CSplus.s1.PTHzSEM=nanstd(EXINhRESP.CSplus.s1.PTHz)/sqrt(size(EXINhRESP.CSplus.s1.PTHz,1));
EXINhRESP.CSplus.s1.PTHzSEM=nanstd(EXINhRESP.CSplus.s1.PTHz)/sqrt(size(EXINhRESP.CSplus.s1.PTHz,1));

EXINhRESP.CSplus.s7.PTHzSEM=nanstd(EXINhRESP.CSplus.s7.PTHz)/sqrt(size(EXINhRESP.CSplus.s7.PTHz,1));
EXINhRESP.CSplus.s7.PTHzSEM=nanstd(EXINhRESP.CSplus.s7.PTHz)/sqrt(size(EXINhRESP.CSplus.s7.PTHz,1));


% plot Day 1 vs Day 7 response

%Day 1...
%SEM above
s1SEMabove=EXINhRESP.CSplus.s1.MeanPTHz+EXINhRESP.CSplus.s1.PTHzSEM;
%SEM below
s1SEMbelow=EXINhRESP.CSplus.s1.MeanPTHz-EXINhRESP.CSplus.s1.PTHzSEM;

%Day 7...
%SEM above
s7SEMabove=EXINhRESP.CSplus.s7.MeanPTHz+EXINhRESP.CSplus.s7.PTHzSEM;
%SEM below
s7SEMbelow=EXINhRESP.CSplus.s7.MeanPTHz-EXINhRESP.CSplus.s7.PTHzSEM;

figure
plot(Tm(2:end-1), EXINhRESP.CSplus.s1.MeanPTHz(1:end-1), 'color', [0, 0.77, 0.2], 'Linewidth', 3)
hold on
plot(Tm(2:end-1), EXINhRESP.CSplus.s7.MeanPTHz(1:end-1), 'color',[0.45, 0.85, 0.95] , 'Linewidth', 3);

hold on
plot(Tm(2:end-1), s1SEMabove(1:end-1),'color', [0, 0.77, 0.2], 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), s1SEMbelow(1:end-1),'color', [0, 0.77, 0.2], 'Linewidth', 0.25)
hold on
plot(Tm(2:end-1), s7SEMabove(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);
hold on
plot(Tm(2:end-1), s7SEMbelow(1:end-1),'color', [0.45, 0.85, 0.95], 'Linewidth', 0.25);


legend('Day 1','Day 7')

set(gca,'fontsize',22,'fontname','Calibri')
xlabel('Time from cue onset (s)','fontsize',22,'fontname','Calibri')
ylabel('Average firing rate (z score)','fontsize',22,'fontname','Calibri')

axis tight

clear s7SEMabove s7SEMbelow s1SEMabove s1SEMbelow