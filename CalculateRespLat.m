global BSIZE_lat Baseline MinNumNegBins Dura Baseline_plot

Baseline_length=Baseline(2)-Baseline(1);
Baseline_bins=Baseline_length/BSIZE_lat;
MinNumNegBins = 5;
BSIZE_lat = 0.01;
i_inh=1;
clear Latencies

%this code doesn't work to calculate an accurate latency for inhibited
%neurons because it is too common for these neurons to have negative bins
%from the onset of the cue (or even before) since they are so low firing
%rate

for anum=1:18 %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        clear latency
                        %trial-by-trial baseline-only PSR and PTH
                        %[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PSR0,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Baseline_plot,{2});
                        %[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        [PTH0,~,~]=MakePTH08(PSR0,size(PSR0,2),{1,0,BSIZE_lat});
                        PTH0=squeeze(PTH0);
                        PTH0=PTH0';
                        PTH0=PTH0(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        %trial-by-trial full PSR and PTH
                        [PSR,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PTH,~,~]=MakePTH08(PSR,size(PSR,2),{2,0,BSIZE_lat});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        PTH=squeeze(PTH);
                        PTH=PTH';
                        PTH=PTH(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        PTHz=normalize(PTH,PTH0,0);
                        
                        %plot(nanmean(squeeze(PTHz(900:1100))))
                        RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTHz);

                        countnegbins=0;
                        clear latency

                        if RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                            for bin=Baseline_bins+1:length(RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum})
                             if RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}(bin)<0
                                 countnegbins=countnegbins+1;                             
                                 if countnegbins==MinNumNegBins
                                     latency=(bin-Baseline_bins-MinNumNegBins)*BSIZE_lat; % in s
                                     if daynum==7 
                                         Latencies(i_inh)=latency;
                                            i_inh=i_inh+1;
                                     end
                                     break
                                 end
                             else
                                 countnegbins=0;
                             end
                            end
                            if countnegbins<MinNumNegBins
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} = NaN;
                            else
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} =latency;
                            end
                        end
                    end
                end
            end
        end
    end
end

for anum=19:24 %animals
    for daynum=9 %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        clear latency
                        %trial-by-trial baseline-only PSR and PTH
                        [PSR0,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Baseline_plot,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PTH0,~,~]=MakePTH08(PSR0,size(PSR0,2),{1,0,BSIZE_lat});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        PTH0=squeeze(PTH0);
                        PTH0=PTH0';
                        PTH0=PTH0(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        %trial-by-trial full PSR and PTH
                        [PSR,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PTH,~,~]=MakePTH08(PSR,1,{2,0,BSIZE_lat});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        PTH=squeeze(PTH);
                        PTH=PTH';
                        PTH=PTH(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        PTHz=normalize(PTH,PTH0,0);
                        RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTHz);

                        countnegbins=0;
                        clear latency

                        if RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                            for bin=Baseline_bins+1:length(RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum})
                             if RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}(bin)<0
                                 countnegbins=countnegbins+1;                             
                                 if countnegbins==MinNumNegBins
                                     latency=(bin-Baseline_bins-MinNumNegBins)*BSIZE_lat; % in s
                                     break
                                 end
                             elseif RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}(bin)>=0
                                 countnegbins=0;
                             end
                            end
                            if countnegbins<MinNumNegBins
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} = NaN;
                            else
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} =latency;
                            end
                        end
                    end
                end
            end
        end
    end
end

for anum=19:24 %animals
    for daynum=11 %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        clear latency
                        %trial-by-trial baseline-only PSR and PTH
                        [PSR0,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Baseline_plot,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PTH0,~,~]=MakePTH08(PSR0,size(PSR0,2),{1,0,BSIZE_lat});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        PTH0=squeeze(PTH0);
                        PTH0=PTH0';
                        PTH0=PTH0(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        %trial-by-trial full PSR and PTH
                        [PSR,~]=MakePSR04(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes,BDATA{anum}{daynum}{sessionnum}.csplustimes,Dura,{2});%[PSRout Nout]=MakePSR04(Nrast,Erast,Win,PRMS)
                        [PTH,~,~]=MakePTH08(PSR,1,{2,0,BSIZE_lat});%[PTHout,BWout,MSRout]=MakePTH08(PSRin,Numin,PRMS)
                        PTH=squeeze(PTH);
                        PTH=PTH';
                        PTH=PTH(BANAL{anum}{daynum}{sessionnum}.TrialValidity,:);

                        PTHz=normalize(PTH,PTH0,0);
                        RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTHz);

                        countnegbins=0;
                        clear latency

                        if RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                            for bin=Baseline_bins+1:length(RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum})
                             if RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}(bin)<0
                                 countnegbins=countnegbins+1;                             
                                 if countnegbins==MinNumNegBins
                                     latency=(bin-Baseline_bins-MinNumNegBins)*BSIZE_lat; % in s
                                     break
                                 end
                             elseif RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}(bin)>=0
                                 countnegbins=0;
                             end
                            end
                            if countnegbins<MinNumNegBins
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} = NaN;
                            else
                                RESP.CSplus.LongInLatency{anum}{daynum}{sessionnum}{enum}{neurnum} =latency;
                            end
                        end
                    end
                end
            end
        end
    end
end

meanlat=mean(Latencies(find(Latencies>0)))

   % clear latency countnegbins PTHz bin 