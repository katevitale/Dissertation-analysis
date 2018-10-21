%Make BANAL structure
%BANAL contains trial behavioral variables

global Dura Tm  BSIZE OnsetRespWin SustRespWin Pval_Sust Pval_Ph Baseline ...
    BSIZE_plot Tbase Baseline_plot Tplot EarlyRespOnset EarlyRespOffset ...
    LateRespOnset LateRespOffset

BSIZE = 0.05; %50ms binsize for statistical detection

Dura=[-10 40]; 
BSIZE_plot=1;
Tm=Dura(1):BSIZE_plot:Dura(2);
Tplot=Tm+BSIZE_plot/2;
Tplot=Tplot(1:end-1);
Baseline=[-10 0]; %(baseline for stats)
OnsetRespWin=0.5; 
SustRespWin=10;
EarlyRespOnset=0;
EarlyRespOffset=2;
LateRespOnset=2;
LateRespOffset=10;
Pval_Sust=0.05;
Pval_Ph=0.01;
Baseline_plot=[-20 0];
Tbase=Baseline_plot(1):BSIZE:Baseline_plot(2);


clear BANAL

for anum=1:length(BDATA) %animals
    for daynum=1:length(BDATA{anum}) %days
        for sessionnum=1:length(BDATA{anum}{daynum})%sessions
            
            % find reward latency
            if any(BDATA{anum}{daynum}{sessionnum}.rewardtimes)
                BANAL{anum}{daynum}{sessionnum}.RewardLat=round(BDATA{anum}{daynum}{sessionnum}.rewardtimes-BDATA{anum}{daynum}{sessionnum}.csplustimes);
            elseif any(BDATA{anum}{daynum}{sessionnum}.shocktimes)
                BANAL{anum}{daynum}{sessionnum}.ShockLat=round(BDATA{anum}{daynum}{sessionnum}.shocktimes-BDATA{anum}{daynum}{sessionnum}.csplustimes);
            end
            
            % find baseline onset time (for firing rate calcs in RESP)
            BANAL{anum}{daynum}{sessionnum}.BaselineOnset=BDATA{anum}{daynum}{sessionnum}.csplustimes+Baseline(1);
            BANAL{anum}{daynum}{sessionnum}.CSminusBaselineOnset=BDATA{anum}{daynum}{sessionnum}.csminustimes+Baseline(1);
            
            % find cs onset response window offset time (for firing rate calcs in RESP)
            BANAL{anum}{daynum}{sessionnum}.CSplusOnsetWinOffset=BDATA{anum}{daynum}{sessionnum}.csplustimes+OnsetRespWin;
            BANAL{anum}{daynum}{sessionnum}.CSminusOnsetWinOffset=BDATA{anum}{daynum}{sessionnum}.csminustimes+OnsetRespWin;
            
            % find cs sustained response window offset time
            BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset=BDATA{anum}{daynum}{sessionnum}.csplustimes+SustRespWin;          
            BANAL{anum}{daynum}{sessionnum}.CSminusSustWinOffset=BDATA{anum}{daynum}{sessionnum}.csminustimes+SustRespWin;    
            
            % find cs early response window onset and offset times
            BANAL{anum}{daynum}{sessionnum}.CSplusEarlyOnset=BDATA{anum}{daynum}{sessionnum}.csplustimes+EarlyRespOnset;
            BANAL{anum}{daynum}{sessionnum}.CSminusEarlyOnset=BDATA{anum}{daynum}{sessionnum}.csminustimes+EarlyRespOnset;
            BANAL{anum}{daynum}{sessionnum}.CSplusEarlyOffset=BDATA{anum}{daynum}{sessionnum}.csplustimes+EarlyRespOffset;
            BANAL{anum}{daynum}{sessionnum}.CSminusEarlyOffset=BDATA{anum}{daynum}{sessionnum}.csminustimes+EarlyRespOffset;
            
            % find cs late response window onset and offset times
            BANAL{anum}{daynum}{sessionnum}.CSplusLateOnset=BDATA{anum}{daynum}{sessionnum}.csplustimes+LateRespOnset;
            BANAL{anum}{daynum}{sessionnum}.CSminusLateOnset=BDATA{anum}{daynum}{sessionnum}.csminustimes+LateRespOnset;
            BANAL{anum}{daynum}{sessionnum}.CSplusLateOffset=BDATA{anum}{daynum}{sessionnum}.csplustimes+LateRespOffset;
            BANAL{anum}{daynum}{sessionnum}.CSminusLateOffset=BDATA{anum}{daynum}{sessionnum}.csminustimes+LateRespOffset;
            
            % demarcate bins for phasic event response detection
            BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin1=BDATA{anum}{daynum}{sessionnum}.csplustimes+BSIZE;
            BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin2=BDATA{anum}{daynum}{sessionnum}.csplustimes+(2*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin3=BDATA{anum}{daynum}{sessionnum}.csplustimes+(3*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin4=BDATA{anum}{daynum}{sessionnum}.csplustimes+(4*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin5=BDATA{anum}{daynum}{sessionnum}.csplustimes+(5*BSIZE);
            
            BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin1=BDATA{anum}{daynum}{sessionnum}.csminustimes+BSIZE;
            BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin2=BDATA{anum}{daynum}{sessionnum}.csminustimes+(2*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin3=BDATA{anum}{daynum}{sessionnum}.csminustimes+(3*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin4=BDATA{anum}{daynum}{sessionnum}.csminustimes+(4*BSIZE);
            BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin5=BDATA{anum}{daynum}{sessionnum}.csminustimes+(5*BSIZE);
            
            % for each trial...
            for trial=1:length(BDATA{anum}{daynum}{sessionnum}.csplustimes) %trials
                
                % identify 1s trials (rewarded trials)
                if isfield(BDATA{anum}{daynum}{sessionnum}, 'rewardtimes') == true %tf = isfield(S, 'fieldname')
                    if BANAL{anum}{daynum}{sessionnum}.RewardLat(trial) == 1 
                        BANAL{anum}{daynum}{sessionnum}.RewardLatType(trial) = {'OneSecondTrial'};
                        BANAL{anum}{daynum}{sessionnum}.TrialValidity(trial) = false;
                    else
                        BANAL{anum}{daynum}{sessionnum}.RewardLatType(trial) = {'ValidTrial'};
                        BANAL{anum}{daynum}{sessionnum}.TrialValidity(trial) = true;
                    end
                end
                % identify 1s trials (shocked trials)
                if isfield(BDATA{anum}{daynum}{sessionnum}, 'shocktimes') == true
                    if BANAL{anum}{daynum}{sessionnum}.ShockLat(trial) == 1 
                        BANAL{anum}{daynum}{sessionnum}.ShockLatType(trial) = {'OneSecondTrial'};
                        BANAL{anum}{daynum}{sessionnum}.TrialValidity(trial) = false;
                    else
                        BANAL{anum}{daynum}{sessionnum}.ShockLatType(trial) = {'ValidTrial'};
                        BANAL{anum}{daynum}{sessionnum}.TrialValidity(trial) = true;
                    end
                end
                % find PE latency
                
                % CS plus
                
                %absolute latency (PELatAbs) and latency cut off at 30s
                %(PELat)
                if isfield(BDATA{anum}{daynum}{sessionnum}, 'rewardtimes') == true
                    if any(BDATA{anum}{daynum}{sessionnum}.PEtimes>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial))
                        BANAL{anum}{daynum}{sessionnum}.PELatAbs(trial)=(BDATA{anum}{daynum}{sessionnum}.PEtimes(find(BDATA{anum}{daynum}{sessionnum}.PEtimes>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial),1,'first'))-BDATA{anum}{daynum}{sessionnum}.csplustimes(trial));%ix = find(a > threshold, 1, 'first')

                        if BANAL{anum}{daynum}{sessionnum}.PELatAbs(trial)>30
                            BANAL{anum}{daynum}{sessionnum}.PELat(trial)=30;
                        else
                            BANAL{anum}{daynum}{sessionnum}.PELat(trial)=BANAL{anum}{daynum}{sessionnum}.PELatAbs(trial);
                        end

                        % assign labels to each trial's performance
                            if BANAL{anum}{daynum}{sessionnum}.PELatAbs(trial)>30 %first PE is outside of cue period
                                    BANAL{anum}{daynum}{sessionnum}.PerfType(trial)={'Omission'};
                            elseif BANAL{anum}{daynum}{sessionnum}.RewardLat(trial)<BANAL{anum}{daynum}{sessionnum}.PELat(trial) %first PE is after reward delivery during period
                                    BANAL{anum}{daynum}{sessionnum}.PerfType(trial)={'PEduringRew'};
                            elseif BANAL{anum}{daynum}{sessionnum}.PELat(trial)< BANAL{anum}{daynum}{sessionnum}.RewardLat(trial) %first PE is before reward delivery during period
                                BANAL{anum}{daynum}{sessionnum}.PerfType(trial)={'PEduringCS_US'};
                            end
                        else 
                            BANAL{anum}{daynum}{sessionnum}.PELat(trial)=30;
                    end
                end
                
                BANAL{anum}{daynum}{sessionnum}.MeanPELat=nanmean(BANAL{anum}{daynum}{sessionnum}.PELat(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                
                 % determine %TIP (in sustained window)
               if isfield(BDATA{anum}{daynum}{sessionnum}, 'rewardtimes') == true
                    sustimes=BDATA{anum}{daynum}{sessionnum}.sustporttimes(find(BDATA{anum}{daynum}{sessionnum}.sustporttimes>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial) & BDATA{anum}{daynum}{sessionnum}.sustporttimes < BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset(trial)));%op=A(A>l & A<U);
                    BANAL{anum}{daynum}{sessionnum}.TIP(trial)=(length(sustimes)/(SustRespWin/0.1))*100;
               end
               
               BANAL{anum}{daynum}{sessionnum}.MeanTIP=nanmean(BANAL{anum}{daynum}{sessionnum}.TIP(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
          
               
            end
            
             % for each trial...
            for trial=1:length(BDATA{anum}{daynum}{sessionnum}.csminustimes) %trials
           
            
                %CS minus
                
                 %absolute latency (PELatAbs) and latency cut off at 30s (PELat)
                if isfield(BDATA{anum}{daynum}{sessionnum}, 'rewardtimes') == true
                    if any(BDATA{anum}{daynum}{sessionnum}.PEtimes>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial))
                        BANAL{anum}{daynum}{sessionnum}.PELatAbsMinus(trial)=(BDATA{anum}{daynum}{sessionnum}.PEtimes(find(BDATA{anum}{daynum}{sessionnum}.PEtimes>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial),1,'first'))-BDATA{anum}{daynum}{sessionnum}.csminustimes(trial));%ix = find(a > threshold, 1, 'first')

                        if BANAL{anum}{daynum}{sessionnum}.PELatAbsMinus(trial)>30
                            BANAL{anum}{daynum}{sessionnum}.PELatMinus(trial)=30;
                        else
                            BANAL{anum}{daynum}{sessionnum}.PELatMinus(trial)=BANAL{anum}{daynum}{sessionnum}.PELatAbsMinus(trial);
                        end

                        % assign labels to each trial's performance
                            if BANAL{anum}{daynum}{sessionnum}.PELatAbsMinus(trial)>30 %first PE is outside of cue period
                                    BANAL{anum}{daynum}{sessionnum}.PerfTypeMinus(trial)={'Omission'};
                            else BANAL{anum}{daynum}{sessionnum}.PerfTypeMinus(trial)={'PEduringCSMinus'};
                            end
                        else 
                            BANAL{anum}{daynum}{sessionnum}.PELatMinus(trial)=30;
                    end
                end
                
                BANAL{anum}{daynum}{sessionnum}.MeanPELatMinus=nanmean(BANAL{anum}{daynum}{sessionnum}.PELatMinus);
                
               % determine %TIP (in sustained window)
               if isfield(BDATA{anum}{daynum}{sessionnum}, 'csminustimes') == true
                    sustimesminus=BDATA{anum}{daynum}{sessionnum}.sustporttimes(find(BDATA{anum}{daynum}{sessionnum}.sustporttimes>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial) & BDATA{anum}{daynum}{sessionnum}.sustporttimes < BANAL{anum}{daynum}{sessionnum}.CSminusSustWinOffset(trial)));%op=A(A>l & A<U);
                    BANAL{anum}{daynum}{sessionnum}.TIPMinus(trial)=(length(sustimesminus)/(SustRespWin/0.1))*100;
               end
               
               BANAL{anum}{daynum}{sessionnum}.MeanTIPMinus=nanmean(BANAL{anum}{daynum}{sessionnum}.TIPMinus);
          
            end
       end
   end      
end

clear anum daynum sessionnum trialnum sustimes trial sustimesminus
