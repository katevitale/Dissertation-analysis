%Make RESP structure
%Feb 5, 2015 - KV changed so that z score calculated with appropriate sized bin size (=same size as response window of interest)
%Feb 12, 2015 - KV changed so that trialFRz measures exclude 1s trials 


global Baseline BSIZE OnsetRespWin SustRespWin Pval_Ph Pval_Sust Dura BSIZE_plot Baseline_plot 

nbins=(Baseline(2)-Baseline(1))/OnsetRespWin;% for onset z score calculation

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    
                    %Make PSTH for statistical purposes
                    [RESP.CSminus.PSR{anum}{daynum}{sessionnum}{enum}{neurnum},~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csminustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum},~,~]=MakePTH08(RESP.CSminus.PSR{anum}{daynum}{sessionnum}{enum}{neurnum},size(RESP.CSminus.PSR{anum}{daynum}{sessionnum}{enum}{neurnum},2),{2,0,BSIZE});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum}=squeeze(RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum});
                    RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum}=RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum}';
                    
                    % Make PSTH for plotting purposes
                    
                    %trial-by-trial baseline-only PSR and PTH
                    [PSR0,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csminustimes,Baseline_plot,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [PTH0,~,~]=MakePTH08(PSR0,size(PSR0,2),{1,0,BSIZE_plot});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    PTH0=squeeze(PTH0);
                    PTH0=PTH0';
                    
                    %trial-by-trial full PSR and PTH
                    [PSR,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csminustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                    [PTH,~,~]=MakePTH08(PSR,1,{2,0,BSIZE_plot});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                    PTH=squeeze(PTH);
                    PTH=PTH';
                    
                    RESP.CSminus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTH);
                    
                    PTHz=normalize(PTH,PTH0,0);
                    RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTHz);
                    
                    % Determine raw firing rate measures
                    for trial=1:length(BDATA{anum}{daynum}{sessionnum}.csminustimes) %trials  
                           %get baseline firing rate
                           num_spikes_baseline(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusBaselineOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BDATA{anum}{daynum}{sessionnum}.csminustimes(trial));
                           RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial) = num_spikes_baseline(trial)/(0-Baseline(1));
                            
                           % get raw firing rate during CS onset response
                           % window 
                           num_spikes_CSOnsetWindow(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusOnsetWinOffset(trial));
                           RESP.CSminus.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_CSOnsetWindow(trial)/OnsetRespWin;
                          
                           % get raw firing rate during CS sustained response window
                           num_spikes_CSSustWindow(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusSustWinOffset(trial));
                           RESP.CSminus.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_CSSustWindow(trial)/SustRespWin;
                                       
                           %get raw firing rate during CS early response
                           num_spikes_CS_early(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusEarlyOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusEarlyOffset(trial));
                           RESP.CSminus.Early.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_CS_early(trial)/(EarlyRespOffset-EarlyRespOnset);

                            %get raw firing rate during CS late response
                           num_spikes_CS_late(trial) = sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusLateOnset(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusLateOffset(trial));
                           RESP.CSminus.Late.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_CS_late(trial)/(LateRespOffset-LateRespOnset);
                           
                           % get raw firing rate during several bins during onset window
                           %bin 1
                           num_spikes_bin1(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BDATA{anum}{daynum}{sessionnum}.csminustimes(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin1(trial));
                           RESP.CSminus.Bins.Bin1.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_bin1(trial)/BSIZE;
                           %bin2
                           num_spikes_bin2(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin1(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin2(trial));
                           RESP.CSminus.Bins.Bin2.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_bin2(trial)/BSIZE;
                           %bin3
                           num_spikes_bin3(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin2(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin3(trial));
                           RESP.CSminus.Bins.Bin3.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_bin3(trial)/BSIZE;
                           %bin4
                           num_spikes_bin4(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin3(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin4(trial));
                           RESP.CSminus.Bins.Bin4.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_bin4(trial)/BSIZE;
                           %bin5
                           num_spikes_bin5(trial)=sum(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin4(trial) & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BANAL{anum}{daynum}{sessionnum}.CSminusBinOffsets.Bin5(trial));
                           RESP.CSminus.Bins.Bin5.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}(trial)=num_spikes_bin5(trial)/BSIZE;
                    end
                    
                    % Normalize firing rate measures
                    
                       % Get mean raw firing rate measures during stimulus response windows
                       RESP.CSminus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}); 
                       RESP.CSminus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}); 
                       RESP.CSminus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Early.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum});
                       RESP.CSminus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Late.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum});
                        
                       % Get mean and std baseline FR
                        RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum});
                        RESP.CSminus.Baseline.Sustained.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanstd(RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum});
                        
%                         %get baseline std for onset response window bin size
%                         ntrials=length(BDATA{anum}{daynum}{sessionnum}.csminustimes);
%                         spiketimes=cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes);
%                         FR=zeros(ntrials, nbins);
%                         
%                             for trial=1:ntrials
%                                 onset_time=BANAL{anum}{daynum}{sessionnum}.CSminusBaselineOnset(trial);
%                                 for bin=1:nbins
%                                     num_spikes(trial,bin)=sum(spiketimes>(onset_time+((bin-1)*OnsetRespWin))& spiketimes<(onset_time+(bin*OnsetRespWin)));
%                                     FR(trial,bin)=num_spikes(trial,bin)/OnsetRespWin;
%                                 end
%                             end
%                             
%                            
%                              
%                         FR=FR(:); %turn matrix into vector
%                         
%                         RESP.CSminus.Baseline.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(FR);
%                         RESP.CSminus.Baseline.Onset.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum}=nanstd(FR);
                        
                       % Get z scored FR measures 
                        RESP.CSminus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=(RESP.CSminus.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})/RESP.CSminus.Baseline.Sustained.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                        RESP.CSminus.Sustained.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=(RESP.CSminus.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})/RESP.CSminus.Baseline.Sustained.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum};                         
                        RESP.CSminus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Onset.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum});
                        RESP.CSminus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Sustained.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum});
                        RESP.CSminus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=(RESP.CSminus.Early.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})/RESP.CSminus.Baseline.Sustained.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                        RESP.CSminus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=(RESP.CSminus.Late.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})/RESP.CSminus.Baseline.Sustained.StdFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                        RESP.CSminus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Early.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum});
                        RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(RESP.CSminus.Late.TrialFRz{anum}{daynum}{sessionnum}{enum}{neurnum});
                        
                        % Get trial FR diff score
                        RESP.CSminus.Onset.TrialFRd{anum}{daynum}{sessionnum}{enum}{neurnum}=RESP.CSminus.Onset.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};                      
                        RESP.CSminus.Sustained.TrialFRd{anum}{daynum}{sessionnum}{enum}{neurnum}=RESP.CSminus.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum}-RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};                         
                        
                        
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in sustained window. Excludes 1s trials.
                     
                     resparray=RESP.CSminus.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     basearray=RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     
                     
                     RESP.CSminus.Sustained.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = signrank(resparray,basearray);
                        
                     if RESP.CSminus.Sustained.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP.CSminus.Sustained.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP.CSminus.Sustained.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                        end
                     else 
                        RESP.CSminus.Sustained.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in early window. Excludes 1s trials.
                     
                     resparray=RESP.CSminus.Early.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     basearray=RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     
                     
                     RESP.CSminus.Early.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = signrank(resparray,basearray);
                        
                     if RESP.CSminus.Early.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                        end
                     else 
                        RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     % Signrank test between pre- and post-stimulus 
                     % firing rate in late window. Excludes 1s trials.
                     
                     resparray=RESP.CSminus.Late.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     basearray=RESP.CSminus.Baseline.Sustained.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                     
                     RESP.CSminus.Late.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = signrank(resparray,basearray);
                        
                     if RESP.CSminus.Late.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Sust
                         
                        if nanmean(resparray)> nanmean(basearray)
                            
                        RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                        
                        elseif nanmean(resparray)< nanmean(basearray)
                            
                        RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                        end
                     else 
                        RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     % Ranksum test between pre- and post-stimulus 
                     % firing rate in onset window. Excludes 1s trials.
                     
                     startindex=((Baseline(1)-Dura(1))/BSIZE)+1;
                     endindex=startindex+((0-Baseline(1))/BSIZE);
                     A=RESP.CSminus.PTH{anum}{daynum}{sessionnum}{enum}{neurnum}(:,startindex:endindex); %basearray in Hz
                    
                     
                     RESP.CSminus.Bins.Bin1.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = ranksum(RESP.CSminus.Bins.Bin1.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum},A(:));
                     RESP.CSminus.Bins.Bin2.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = ranksum(RESP.CSminus.Bins.Bin2.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum},A(:));
                     RESP.CSminus.Bins.Bin3.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = ranksum(RESP.CSminus.Bins.Bin3.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum},A(:));
                     RESP.CSminus.Bins.Bin4.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = ranksum(RESP.CSminus.Bins.Bin4.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum},A(:));
                     RESP.CSminus.Bins.Bin5.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum} = ranksum(RESP.CSminus.Bins.Bin5.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum},A(:));
                      
                        if RESP.CSminus.Bins.Bin1.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Ph
                         if nanmean(RESP.CSminus.Bins.Bin1.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum})> nanmean(A(:))
                            RESP.CSminus.Bins.Bin1.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                         else
                             RESP.CSminus.Bins.Bin1.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                         end
                     else 
                         RESP.CSminus.Bins.Bin1.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     if RESP.CSminus.Bins.Bin2.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Ph
                         if nanmean(RESP.CSminus.Bins.Bin2.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum})> nanmean(A(:))
                            RESP.CSminus.Bins.Bin2.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                         else
                             RESP.CSminus.Bins.Bin2.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                         end
                     else 
                         RESP.CSminus.Bins.Bin2.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     if RESP.CSminus.Bins.Bin3.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Ph
                         if nanmean(RESP.CSminus.Bins.Bin3.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum})> nanmean(A(:))
                            RESP.CSminus.Bins.Bin3.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                         else
                             RESP.CSminus.Bins.Bin3.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                         end
                     else 
                        RESP.CSminus.Bins.Bin3.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     if RESP.CSminus.Bins.Bin4.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Ph
                         if nanmean(RESP.CSminus.Bins.Bin4.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum})> nanmean(A(:))
                            RESP.CSminus.Bins.Bin4.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                         else
                             RESP.CSminus.Bins.Bin4.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                         end
                     else 
                        RESP.CSminus.Bins.Bin4.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end
                     
                     if RESP.CSminus.Bins.Bin5.Pvalue{anum}{daynum}{sessionnum}{enum}{neurnum}<Pval_Ph
                         if nanmean(RESP.CSminus.Bins.Bin5.TrialFR{anum}{daynum}{sessionnum}{enum}{neurnum})> nanmean(A(:))
                            RESP.CSminus.Bins.Bin5.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                         else
                             RESP.CSminus.Bins.Bin5.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                         end
                     else 
                         RESP.CSminus.Bins.Bin5.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                     end

%                      
                     if RESP.CSminus.Bins.Bin1.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 || RESP.CSminus.Bins.Bin2.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 || RESP.CSminus.Bins.Bin3.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 || RESP.CSminus.Bins.Bin4.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 || RESP.CSminus.Bins.Bin5.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1 
                         RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                     elseif RESP.CSminus.Bins.Bin1.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 || RESP.CSminus.Bins.Bin2.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 || RESP.CSminus.Bins.Bin3.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 || RESP.CSminus.Bins.Bin4.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 || RESP.CSminus.Bins.Bin5.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                         RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                     else
                         RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
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
