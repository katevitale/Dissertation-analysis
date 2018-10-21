%this code doesn't work to calculate an accurate latency for inhibited
%neurons because it is too common for these neurons to have negative bins
%from the onset of the cue (or even before) since they are so low firing
%rate

global BSIZE_lat Baseline Dura Baseline_plot

Baseline_length=Baseline(2)-Baseline(1);
BSIZE_lat = 0.005;
Baseline_bins=Baseline_length/BSIZE_lat;
i_IN_longEx=1;
i_PN_longEx=1;
i_IN_longIn=1;
i_PN_longIn=1;

clear PNs_longEx_PTH PNs_longIn_PTH INs_longIn_PTH INs_longEx_PTH
for anum=1:24 %animals
    for daynum=1:length(NDATA{anum})%days
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
                        
                        RESP.CSplus.PTHzlat{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTHz);
                        RESP.CSplus.PTHlat{anum}{daynum}{sessionnum}{enum}{neurnum}=nanmean(PTH);
                        

                    end
                end
            end
        end
    end
end

clear i_IN_longEx i_IN_longIn i_PN_longEx i_PN_longIn 
clear anum daynum sessionnum enum neurnum




