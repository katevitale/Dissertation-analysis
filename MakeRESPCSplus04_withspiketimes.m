%Make RESP structure
%Feb 5, 2015 - KV changed so that z score calculated with appropriate sized bin size (=same size as response window of interest)
%Feb 12, 2015 - KV changed so that trialFRz measures exclude 1s trials 
% Aug 8, 2016 - KV changed to have early response from 1-2s and late response from 2-10s


global Baseline BSIZE OnsetRespWin SustRespWin Pval_Ph Pval_Sust Dura ...
    BSIZE_plot Baseline_plot EarlyRespOnset EarlyRespOffset LateRespOnset ...
    LateRespOffset

nbins=(Baseline(2)-Baseline(1))/OnsetRespWin;% for onset z score calculation

clear RESP
for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            invalid_trials=BANAL{anum}{daynum}{sessionnum}.TrialValidity==0;% NaN out invalid trials
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    %[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    %PRMS=2 give a PSR cell {neurons,trials} and PRMS=1 collapses all the trials >
                    
                    %[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    %INPUTS:
                    %PSRin can be collapsed  or not. if not, the output is uncollapsed as well
                    %Numin= number of trials
                    %PRMS{1}==1 for making baseline-only PSTH and ==2 for normal, main PSTH %(i.e. -15 to 15s)
                    %PRMS{2}==0 for fixed binwidth and ==1 for DP binwidth
                    %PRMS{3}=binwidth used
                    %OUTPUTS:
                    %PTHout
                    %BWout is a vector stores the DP BW
                    %MSRout is MSR=f(BW)
                    
                     %Make PSTH for statistical purposes
                     
                    [RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PSR,~]=...
                        MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH,~,~]=...
                        MakePTH08(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PSR,size(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PSR,2),{2,0,BSIZE});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH=squeeze(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH);
                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH';
                    
                    % Make PSTH for plotting purposes
                    
                    %trial-by-trial baseline-only PSR and PTH
                    [PSR0,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Baseline_plot,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [PTH0,~,~]=MakePTH08(PSR0,size(PSR0,2),{1,0,BSIZE_plot});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    PTH0=squeeze(PTH0);
                    PTH0=PTH0';
                    PTH0=PTH0(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);
                    
                    %trial-by-trial full PSR and PTH
                    [PSR,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [PTH,~,~]=MakePTH08(PSR,size(PSR,2),{2,0,BSIZE_plot});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    PTH=squeeze(PTH);
                    PTH=PTH';
                    PTH=PTH(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);
                    
                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTHplot=nanmean(PTH);
                    
                    PTHz=normalize(PTH,PTH0,0);
                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTHzplot=nanmean(PTHz);
                    
                    % Determine raw firing rate measures
                    for trial=1:length(BDATA{anum}{daynum}{sessionnum}.csplustimes) %trials  
                           %get baseline firing rate 
                           num_spikes_baseline(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.BaselineOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BDATA{anum}{daynum}{sessionnum}.csplustimes(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(trial) = num_spikes_baseline(trial)/(0-Baseline(1));
                            
                           % get raw firing rate during CS onset response
                           % window 
                           num_spikes_CSOnsetWindow(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusOnsetWinOffset(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFR(trial)=num_spikes_CSOnsetWindow(trial)/OnsetRespWin;
                           
                           % get raw firing rate during CS sustained response window
                           num_spikes_CSSustWindow(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR(trial)=num_spikes_CSSustWindow(trial)/SustRespWin;
                           
                           %get raw firing rate during CS early response
                           num_spikes_CS_early(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusEarlyOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusEarlyOffset(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFR(trial)=num_spikes_CS_early(trial)/(EarlyRespOffset-EarlyRespOnset);

                            %get raw firing rate during CS late response
                           num_spikes_CS_late(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusLateOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusLateOffset(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFR(trial)=num_spikes_CS_late(trial)/(LateRespOffset-LateRespOnset);

                           % get raw firing rate during CS sustained response window
                           num_spikes_CSSustWindow(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR(trial)=num_spikes_CSSustWindow(trial)/SustRespWin;
                                       
                           % get raw firing rate during several bins during onset window
                           %bin 1
                           num_spikes_bin1(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csplustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin1(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.TrialFR(trial)=num_spikes_bin1(trial)/BSIZE;
                           %bin2
                           num_spikes_bin2(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin1(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin2(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.TrialFR(trial)=num_spikes_bin2(trial)/BSIZE;
                           %bin3
                           num_spikes_bin3(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin2(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin3(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.TrialFR(trial)=num_spikes_bin3(trial)/BSIZE;
                           %bin4
                           num_spikes_bin4(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin3(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin4(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.TrialFR(trial)=num_spikes_bin4(trial)/BSIZE;
                           %bin5
                           num_spikes_bin5(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin4(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSplusBinOffsets.Bin5(trial));
                           RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.TrialFR(trial)=num_spikes_bin5(trial)/BSIZE;
                           
                    end
                    
                    % determining spiketimes during baseline and CS window
                    
                    for trial=1:length(BDATA{anum}{daynum}{sessionnum}.csplustimes) %trials  
                            spiketimes=cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes);
                            baselineonset = BANAL{anum}{daynum}{sessionnum}.BaselineOnset(trial);
                            csplusonset = BDATA{anum}{daynum}{sessionnum}.csplustimes(trial);
                            sustwinoffset = BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset(trial);
                            
                            baselinespikes=...
                                spiketimes(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>...
                                BANAL{anum}{daynum}{sessionnum}.BaselineOnset(trial) ... 
                                & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<...
                                BDATA{anum}{daynum}{sessionnum}.csplustimes(trial));
                            
                            if any(baselinespikes)
                                if isfield(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained, 'Spiketimes')
                                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.Spiketimes=...
                                    vertcat(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.Spiketimes,baselinespikes); 
                                else 
                                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.Spiketimes=...
                                    baselinespikes;
                                end
                            end
                            
                            CSplusspikes=spiketimes(spiketimes>csplusonset&spiketimes<sustwinoffset);
                            
                            if any(CSplusspikes)
                                if isfield(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained, 'Spiketimes')
                                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.Spiketimes=...
                                    vertcat(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.Spiketimes,CSplusspikes); 
                                else 
                                    RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.Spiketimes=...
                                    CSplusspikes;
                                end
                            end
                            

                            
                            clear spiketimes baselineonset csplusonset sustwinoffset baselinespikes CSplusspikes
                    end

                    % Normalize firing rate measures
                    
                       % Get mean raw firing rate measures during stimulus response windows
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.MeanFR=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity)); 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.MeanFR=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity)); 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.MeanFR=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.MeanFR=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
 
                       % Get mean and std baseline FR
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.MeanFR=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.StdFR=nanstd(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        
%                         %get baseline std for onset response window bin size
%                         ntrials=length(BDATA{anum}{daynum}{sessionnum}.csplustimes);
%                         spiketimes=cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes);
%                         FR=zeros(ntrials, nbins);
%                         
%                             for trial=1:ntrials
%                                 onset_time=BANAL{anum}{daynum}{sessionnum}.BaselineOnset(trial);
%                                 for bin=1:nbins
%                                     num_spikes(trial,bin)=sum(spiketimes>(onset_time+((bin-1)*OnsetRespWin))& spiketimes<(onset_time+(bin*OnsetRespWin)));
%                                     FR(trial,bin)=num_spikes(trial,bin)/OnsetRespWin;
%                                 end
%                             end
%                            
%                             
%                             
%                       
%                         FR(invalid_trials,:)=NaN;
%                              
%                         FR=FR(:); %turn matrix into vector, columnwise
%                         
%                         RESP.CSplus.Baseline.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(FR);
%                         RESP.CSplus.Baseline.Onset.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanstd(FR);
                        
                        
                       
                        
                       % Get z scored FR measures 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFRz=(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFR-RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.MeanFR)/RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.StdFR;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFRz(invalid_trials)=NaN;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFRz=(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR-RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.MeanFR)/RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.StdFR;                         
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFRz(invalid_trials)=NaN;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFRz=(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFR-RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.MeanFR)/RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.StdFR;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFRz(invalid_trials)=NaN;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFRz=(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFR-RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.MeanFR)/RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.StdFR;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFRz(invalid_trials)=NaN;
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.MeanFRz=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.TrialFRz(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.MeanFRz=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFRz(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.MeanFRz=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFRz(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.MeanFRz=nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFRz(BANAL{anum}{daynum}{sessionnum}.TrialValidity));
                     
                        % Get trial FR diff score
                        %RESP.CSplus.Onset.TrialFRd{anum}{daynum}{sessionnum}{enum}{neurnum}=RESP.CSplus.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSplus.Baseline.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};                      
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFRd=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR-RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR;                         
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFRd(invalid_trials)=NaN;
                        
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in sustained window. Excludes 1s trials.
                     
                     resparray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     basearray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     
                     
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.Pvalue = signrank(resparray,basearray);
                        
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.Pvalue<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.FLAG=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.FLAG=-1;
                        end
                     else 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Sustained.FLAG=0;
                     end
                     
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in early window. Excludes 1s trials.
                     
                     resparray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     basearray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     
                     
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.Pvalue = signrank(resparray,basearray);
                        
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.Pvalue<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.FLAG=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.FLAG=-1;
                        end
                     else 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Early.FLAG=0;
                     end
                     
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in late window. Excludes 1s trials.
                     
                     resparray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     basearray=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Baseline.Sustained.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity);
                     
                     
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.Pvalue = signrank(resparray,basearray);
                        
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.Pvalue<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.FLAG=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.FLAG=-1;
                        end
                     else 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Late.FLAG=0;
                     end
                     
                     % Ranksum test between pre- and post-stimulus 
                     % firing rate in onset window. Excludes 1s trials.
                     
                     startindex=((Baseline(1)-Dura(1))/BSIZE)+1;
                     endindex=startindex+((0-Baseline(1))/BSIZE);
                     A=RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.PTH((BANAL{anum}{daynum}{sessionnum}.TrialValidity),startindex:endindex); %basearray in Hz
                     
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.Pvalue = ranksum(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity),A(:));
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.Pvalue = ranksum(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity),A(:));
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.Pvalue = ranksum(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity),A(:));
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.Pvalue = ranksum(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity),A(:));
                     RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.Pvalue = ranksum(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity),A(:));
                      
                        if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.Pvalue<Pval_Ph
                         if nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity))> nanmean(A(:))
                            RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.FLAG=1;
                         else
                             RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.FLAG=-1;
                         end
                     else 
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.FLAG=0;
                     end
                     
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.Pvalue<Pval_Ph
                         if nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity))> nanmean(A(:))
                            RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.FLAG=1;
                         else
                             RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.FLAG=-1;
                         end
                     else 
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.FLAG=0;
                     end
                     
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.Pvalue<Pval_Ph
                         if nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity))> nanmean(A(:))
                            RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.FLAG=1;
                         else
                             RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.FLAG=-1;
                         end
                     else 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.FLAG=0;
                     end
                     
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.Pvalue<Pval_Ph
                         if nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity))> nanmean(A(:))
                            RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.FLAG=1;
                         else
                             RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.FLAG=-1;
                         end
                     else 
                        RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.FLAG=0;
                     end
                     
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.Pvalue<Pval_Ph
                         if nanmean(RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.TrialFR(BANAL{anum}{daynum}{sessionnum}.TrialValidity))> nanmean(A(:))
                            RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.FLAG=1;
                         else
                             RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.FLAG=-1;
                         end
                     else 
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.FLAG=0;
                     end

                      
                     if RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.FLAG==1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.FLAG==1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.FLAG==1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.FLAG==1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.FLAG==1 
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.FLAG=1;
                     elseif RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin1.FLAG==-1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin2.FLAG==-1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin3.FLAG==-1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin4.FLAG==-1 || RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Bins.Bin5.FLAG==-1 
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.FLAG=-1;
                     else
                         RESP{anum}{daynum}{sessionnum}{enum}{neurnum}.CSplus.Onset.FLAG=0;
                     end
                end
            end
        end
    end
end




clear anum daynum sessionnum neurnum enum trialnum trial num_spikes_baseline ...
    num_spikes_CSUS num_spikes_CSOnsetWindow num_spikes_CSSustWindow num_spikes_bin1 ...
    num_spikes_bin2 num_spikes_bin3 num_spikes_bin4 num_spikes_bin5 A PTH0 PTH PTHz ...
    basemat bin1array bin2array bin3array bin4array bin5array basearray resparray ...
     bin onset_time spiketimes num_spikes FR PSR PSR0 i_neur Onset_z_score ...
     ntrials nbins invalid_trials startindex endindex num_spikes_CS_early ...
     num_spikes_CS_late
