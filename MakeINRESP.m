%compute mean FR FRz and PTHz for each day

% Feb 12, 2015 KV Commented all references to RESP.CSminus, because will work with smaller RESP structure without CSminus field   

clear INRESP

i_s1=1; i_s7=1; i_EXT=1; i_EREC=1;
i_s2=1; i_s3=1; i_s4=1; i_s5=1; i_s6=1; 
i_preMB=1;i_preSAL=1;i_postMB=1;i_postSAL=1;


for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum}) %sessions
             for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 && RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                       switch(daynum)
                            case 1
                                INRESP.CSplus.s1.Name{i_s1}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s1.Baseline.MeanFR(i_s1)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Onset.MeanFR(i_s1)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Onset.MeanFRz(i_s1)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Early.MeanFR(i_s1)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Early.MeanFRz(i_s1)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Late.MeanFR(i_s1)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.Late.MeanFRz(i_s1)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.PTHz(i_s1,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.PTH(i_s1,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s1.firingrate(i_s1)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s1.duration(i_s1)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s1.latency(i_s1)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s1.PTHz(i_s1,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s1.Late.MeanFRz(i_s1)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s1=i_s1+1;
                           case 2
                                INRESP.CSplus.s2.Name{i_s2}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s2.Baseline.MeanFR(i_s2)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Onset.MeanFR(i_s2)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Onset.MeanFRz(i_s2)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Early.MeanFR(i_s2)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Early.MeanFRz(i_s2)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Late.MeanFR(i_s2)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.Late.MeanFRz(i_s2)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.PTHz(i_s2,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.PTH(i_s2,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s2.firingrate(i_s2)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s2.duration(i_s2)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s2.latency(i_s2)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s2.PTHz(i_s2,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s2.Late.MeanFRz(i_s2)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s2=i_s2+1;
                           case 3
                                INRESP.CSplus.s3.Name{i_s3}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s3.Baseline.MeanFR(i_s3)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Onset.MeanFR(i_s3)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Onset.MeanFRz(i_s3)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Early.MeanFR(i_s3)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Early.MeanFRz(i_s3)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Late.MeanFR(i_s3)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.Late.MeanFRz(i_s3)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.PTHz(i_s3,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.PTH(i_s3,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s3.firingrate(i_s3)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s3.duration(i_s3)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s3.latency(i_s3)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s3.PTHz(i_s3,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s3.Late.MeanFRz(i_s3)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s3=i_s3+1;
                           case 4
                                INRESP.CSplus.s4.Name{i_s4}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s4.Baseline.MeanFR(i_s4)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Onset.MeanFR(i_s4)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Onset.MeanFRz(i_s4)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Early.MeanFR(i_s4)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Early.MeanFRz(i_s4)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Late.MeanFR(i_s4)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.Late.MeanFRz(i_s4)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.PTHz(i_s4,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.PTH(i_s4,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s4.firingrate(i_s4)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s4.duration(i_s4)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s4.latency(i_s4)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s4.PTHz(i_s4,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s4.Late.MeanFRz(i_s4)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s4=i_s4+1;
                           case 5
                                INRESP.CSplus.s5.Name{i_s5}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s5.Baseline.MeanFR(i_s5)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Onset.MeanFR(i_s5)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Onset.MeanFRz(i_s5)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Early.MeanFR(i_s5)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Early.MeanFRz(i_s5)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Late.MeanFR(i_s5)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.Late.MeanFRz(i_s5)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.PTHz(i_s5,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.PTH(i_s5,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s5.firingrate(i_s5)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s5.duration(i_s5)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s5.latency(i_s5)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s5.PTHz(i_s5,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s5.Late.MeanFRz(i_s5)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s5=i_s5+1;
                           case 6
                                INRESP.CSplus.s6.Name{i_s6}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s6.Baseline.MeanFR(i_s6)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Onset.MeanFR(i_s6)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Onset.MeanFRz(i_s6)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Early.MeanFR(i_s6)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Early.MeanFRz(i_s6)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Late.MeanFR(i_s6)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.Late.MeanFRz(i_s6)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.PTHz(i_s6,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.PTH(i_s6,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s6.firingrate(i_s6)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s6.duration(i_s6)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s6.latency(i_s6)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s6.PTHz(i_s6,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s6.Late.MeanFRz(i_s6)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s6=i_s6+1;
                           case 7
                                INRESP.CSplus.s7.Name{i_s7}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.s7.Baseline.MeanFR(i_s7)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Onset.MeanFR(i_s7)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Onset.MeanFRz(i_s7)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Early.MeanFR(i_s7)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Early.MeanFRz(i_s7)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Late.MeanFR(i_s7)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.Late.MeanFRz(i_s7)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.PTHz(i_s7,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.PTH(i_s7,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.s7.firingrate(i_s7)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.s7.duration(i_s7)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.s7.latency(i_s7)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.s7.PTHz(i_s7,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.s7.Late.MeanFRz(i_s7)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s7=i_s7+1;
                           case 16
                                INRESP.CSplus.EXT.Name{i_EXT}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.EXT.Baseline.MeanFR(i_EXT)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Onset.MeanFR(i_EXT)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Onset.MeanFRz(i_EXT)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Early.MeanFR(i_EXT)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Early.MeanFRz(i_EXT)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Late.MeanFR(i_EXT)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.Late.MeanFRz(i_EXT)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.PTHz(i_EXT,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.PTH(i_EXT,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EXT.firingrate(i_EXT)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.EXT.duration(i_EXT)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.EXT.latency(i_EXT)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.EXT.PTHz(i_EXT,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.EXT.Late.MeanFRz(i_EXT)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_EXT=i_EXT+1;
                          case 17
                                INRESP.CSplus.EREC.Name{i_EREC}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                INRESP.CSplus.EREC.Baseline.MeanFR(i_EREC)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Onset.MeanFR(i_EREC)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Onset.MeanFRz(i_EREC)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Early.MeanFR(i_EREC)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Early.MeanFRz(i_EREC)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Late.MeanFR(i_EREC)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.Late.MeanFRz(i_EREC)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.PTHz(i_EREC,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.PTH(i_EREC,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSplus.EREC.firingrate(i_EREC)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                INRESP.CSplus.EREC.duration(i_EREC)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                %INRESP.CSplus.EREC.latency(i_EREC)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                INRESP.CSminus.EREC.PTHz(i_EREC,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                INRESP.CSminus.EREC.Late.MeanFRz(i_EREC)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_EREC=i_EREC+1;
                       end
                        
                        if daynum>7 && daynum<16
                                switch(treatment{anum}{daynum}{sessionnum}.name)
                                    case {'preMB'}
                                        INRESP.CSplus.preMB.Name{i_preMB}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                        INRESP.CSplus.preMB.Baseline.MeanFR(i_preMB)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Onset.MeanFR(i_preMB)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Onset.MeanFRz(i_preMB)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Early.MeanFR(i_preMB)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Early.MeanFRz(i_preMB)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Late.MeanFR(i_preMB)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.Late.MeanFRz(i_preMB)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.PTHz(i_preMB,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.PTH(i_preMB,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preMB.firingrate(i_preMB)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                        INRESP.CSplus.preMB.duration(i_preMB)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                        %INRESP.CSplus.preMB.latency(i_preMB)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSminus.preMB.PTHz(i_preMB,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                        INRESP.CSminus.preMB.Late.MeanFRz(i_preMB)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        i_preMB=i_preMB+1;

                                       INRESP.CSplus.postMB.Name{i_postMB}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                        INRESP.CSplus.postMB.Baseline.MeanFR(i_postMB)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Onset.MeanFR(i_postMB)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Onset.MeanFRz(i_postMB)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Early.MeanFR(i_postMB)=RESP.CSplus.Early.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Early.MeanFRz(i_postMB)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Late.MeanFR(i_postMB)=RESP.CSplus.Late.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.Late.MeanFRz(i_postMB)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.PTHz(i_postMB,:)=RESP.CSplus.PTHzplot{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.PTH(i_postMB,:)=RESP.CSplus.PTHplot{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postMB.firingrate(i_postMB)=NDATA{anum}{daynum}{2}{enum}{neurnum}.firingrate;
                                        INRESP.CSplus.postMB.duration(i_postMB)=NDATA{anum}{daynum}{2}{enum}{neurnum}.duration;
                                        %INRESP.CSplus.postMB.latency(i_postMB)=RESP.CSplus.LateInLatency{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSminus.postMB.PTHz(i_postMB,:)=RESP.CSminus.PTHzplot{anum}{daynum}{2}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                        INRESP.CSminus.postMB.Late.MeanFRz(i_postMB)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        i_postMB=i_postMB+1;

                                    case {'preSAL'}
                                        INRESP.CSplus.preSAL.Name{i_preSAL}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                        INRESP.CSplus.preSAL.Baseline.MeanFR(i_preSAL)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Onset.MeanFR(i_preSAL)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Onset.MeanFRz(i_preSAL)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Early.MeanFR(i_preSAL)=RESP.CSplus.Early.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Early.MeanFRz(i_preSAL)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Late.MeanFR(i_preSAL)=RESP.CSplus.Late.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.Late.MeanFRz(i_preSAL)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.PTHz(i_preSAL,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.PTH(i_preSAL,:)=RESP.CSplus.PTHplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSplus.preSAL.firingrate(i_preSAL)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                        INRESP.CSplus.preSAL.duration(i_preSAL)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                        %INRESP.CSplus.preSAL.latency(i_preSAL)=RESP.CSplus.LateInLatency{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        INRESP.CSminus.preSAL.PTHz(i_preSAL,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                        INRESP.CSminus.preSAL.Late.MeanFRz(i_preSAL)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                        i_preSAL=i_preSAL+1;

                                        INRESP.CSplus.postSAL.Name{i_postSAL}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                        INRESP.CSplus.postSAL.Baseline.MeanFR(i_postSAL)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Onset.MeanFR(i_postSAL)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Onset.MeanFRz(i_postSAL)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Early.MeanFR(i_postSAL)=RESP.CSplus.Early.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Early.MeanFRz(i_postSAL)=RESP.CSplus.Early.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Late.MeanFR(i_postSAL)=RESP.CSplus.Late.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.Late.MeanFRz(i_postSAL)=RESP.CSplus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.PTHz(i_postSAL,:)=RESP.CSplus.PTHzplot{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.PTH(i_postSAL,:)=RESP.CSplus.PTHplot{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSplus.postSAL.firingrate(i_postSAL)=NDATA{anum}{daynum}{2}{enum}{neurnum}.firingrate;
                                        INRESP.CSplus.postSAL.duration(i_postSAL)=NDATA{anum}{daynum}{2}{enum}{neurnum}.duration;
                                        %INRESP.CSplus.postSAL.latency(i_postSAL)=RESP.CSplus.LateInLatency{anum}{daynum}{2}{enum}{neurnum};
                                        INRESP.CSminus.postSAL.PTHz(i_postSAL,:)=RESP.CSminus.PTHzplot{anum}{daynum}{2}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                        INRESP.CSminus.postSAL.Late.MeanFRz(i_postSAL)=RESP.CSminus.Late.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        i_postSAL=i_postSAL+1;
                            
                                         end          
                                 end
                    end
                end
            end
        end
    end
end



INRESP.CSplus.s1.MeanPTHz=nanmean(INRESP.CSplus.s1.PTHz);
INRESP.CSplus.s2.MeanPTHz=nanmean(INRESP.CSplus.s2.PTHz);
INRESP.CSplus.s3.MeanPTHz=nanmean(INRESP.CSplus.s3.PTHz);
INRESP.CSplus.s4.MeanPTHz=nanmean(INRESP.CSplus.s4.PTHz);
INRESP.CSplus.s5.MeanPTHz=nanmean(INRESP.CSplus.s5.PTHz);
INRESP.CSplus.s6.MeanPTHz=nanmean(INRESP.CSplus.s6.PTHz);
INRESP.CSplus.s7.MeanPTHz=nanmean(INRESP.CSplus.s7.PTHz);
INRESP.CSplus.EXT.MeanPTHz=nanmean(INRESP.CSplus.EXT.PTHz);
INRESP.CSplus.EREC.MeanPTHz=nanmean(INRESP.CSplus.EREC.PTHz);
INRESP.CSplus.preMB.MeanPTHz=nanmean(INRESP.CSplus.preMB.PTHz);
INRESP.CSplus.postMB.MeanPTHz=nanmean(INRESP.CSplus.postMB.PTHz);
INRESP.CSplus.preSAL.MeanPTHz=nanmean(INRESP.CSplus.preSAL.PTHz);
INRESP.CSplus.postSAL.MeanPTHz=nanmean(INRESP.CSplus.postSAL.PTHz);

INRESP.CSplus.s1.PTHzSEM=nanstd(INRESP.CSplus.s1.PTHz)/sqrt(size(INRESP.CSplus.s1.PTHz,1));
INRESP.CSplus.s2.PTHzSEM=nanstd(INRESP.CSplus.s2.PTHz)/sqrt(size(INRESP.CSplus.s2.PTHz,1));
INRESP.CSplus.s3.PTHzSEM=nanstd(INRESP.CSplus.s3.PTHz)/sqrt(size(INRESP.CSplus.s3.PTHz,1));
INRESP.CSplus.s4.PTHzSEM=nanstd(INRESP.CSplus.s4.PTHz)/sqrt(size(INRESP.CSplus.s4.PTHz,1));
INRESP.CSplus.s5.PTHzSEM=nanstd(INRESP.CSplus.s5.PTHz)/sqrt(size(INRESP.CSplus.s5.PTHz,1));
INRESP.CSplus.s6.PTHzSEM=nanstd(INRESP.CSplus.s6.PTHz)/sqrt(size(INRESP.CSplus.s6.PTHz,1));
INRESP.CSplus.s7.PTHzSEM=nanstd(INRESP.CSplus.s7.PTHz)/sqrt(size(INRESP.CSplus.s7.PTHz,1));
INRESP.CSplus.EXT.PTHzSEM=nanstd(INRESP.CSplus.EXT.PTHz)/sqrt(size(INRESP.CSplus.EXT.PTHz,1));
INRESP.CSplus.EREC.PTHzSEM=nanstd(INRESP.CSplus.EREC.PTHz)/sqrt(size(INRESP.CSplus.EREC.PTHz,1));
INRESP.CSplus.preMB.PTHzSEM=nanstd(INRESP.CSplus.preMB.PTHz)/sqrt(size(INRESP.CSplus.preMB.PTHz,1));
INRESP.CSplus.postMB.PTHzSEM=nanstd(INRESP.CSplus.postMB.PTHz)/sqrt(size(INRESP.CSplus.postMB.PTHz,1));
INRESP.CSplus.preSAL.PTHzSEM=nanstd(INRESP.CSplus.preSAL.PTHz)/sqrt(size(INRESP.CSplus.preSAL.PTHz,1));
INRESP.CSplus.postSAL.PTHzSEM=nanstd(INRESP.CSplus.postSAL.PTHz)/sqrt(size(INRESP.CSplus.postSAL.PTHz,1));

INRESP.CSminus.s1.MeanPTHz=nanmean(INRESP.CSminus.s1.PTHz);
INRESP.CSminus.s2.MeanPTHz=nanmean(INRESP.CSminus.s2.PTHz);
INRESP.CSminus.s3.MeanPTHz=nanmean(INRESP.CSminus.s3.PTHz);
INRESP.CSminus.s4.MeanPTHz=nanmean(INRESP.CSminus.s4.PTHz);
INRESP.CSminus.s5.MeanPTHz=nanmean(INRESP.CSminus.s5.PTHz);
INRESP.CSminus.s6.MeanPTHz=nanmean(INRESP.CSminus.s6.PTHz);
INRESP.CSminus.s7.MeanPTHz=nanmean(INRESP.CSminus.s7.PTHz);
INRESP.CSminus.EXT.MeanPTHz=nanmean(INRESP.CSminus.EXT.PTHz);
INRESP.CSminus.EREC.MeanPTHz=nanmean(INRESP.CSminus.EREC.PTHz);

INRESP.CSminus.s1.PTHzSEM=nanstd(INRESP.CSminus.s1.PTHz)/sqrt(size(INRESP.CSminus.s1.PTHz,1));
INRESP.CSminus.s2.PTHzSEM=nanstd(INRESP.CSminus.s2.PTHz)/sqrt(size(INRESP.CSminus.s2.PTHz,1));
INRESP.CSminus.s3.PTHzSEM=nanstd(INRESP.CSminus.s3.PTHz)/sqrt(size(INRESP.CSminus.s3.PTHz,1));
INRESP.CSminus.s4.PTHzSEM=nanstd(INRESP.CSminus.s4.PTHz)/sqrt(size(INRESP.CSminus.s4.PTHz,1));
INRESP.CSminus.s5.PTHzSEM=nanstd(INRESP.CSminus.s5.PTHz)/sqrt(size(INRESP.CSminus.s5.PTHz,1));
INRESP.CSminus.s6.PTHzSEM=nanstd(INRESP.CSminus.s6.PTHz)/sqrt(size(INRESP.CSminus.s6.PTHz,1));
INRESP.CSminus.s7.PTHzSEM=nanstd(INRESP.CSminus.s7.PTHz)/sqrt(size(INRESP.CSminus.s7.PTHz,1));
INRESP.CSminus.EXT.PTHzSEM=nanstd(INRESP.CSminus.EXT.PTHz)/sqrt(size(INRESP.CSminus.EXT.PTHz,1));
INRESP.CSminus.EREC.PTHzSEM=nanstd(INRESP.CSminus.EREC.PTHz)/sqrt(size(INRESP.CSminus.EREC.PTHz,1));

INRESP.CSplus.s1.MeanPTH=nanmean(INRESP.CSplus.s1.PTH);
INRESP.CSplus.s2.MeanPTH=nanmean(INRESP.CSplus.s2.PTH);
INRESP.CSplus.s3.MeanPTH=nanmean(INRESP.CSplus.s3.PTH);
INRESP.CSplus.s4.MeanPTH=nanmean(INRESP.CSplus.s4.PTH);
INRESP.CSplus.s5.MeanPTH=nanmean(INRESP.CSplus.s5.PTH);
INRESP.CSplus.s6.MeanPTH=nanmean(INRESP.CSplus.s6.PTH);
INRESP.CSplus.s7.MeanPTH=nanmean(INRESP.CSplus.s7.PTH);
INRESP.CSplus.EXT.MeanPTH=nanmean(INRESP.CSplus.EXT.PTH);
INRESP.CSplus.EREC.MeanPTH=nanmean(INRESP.CSplus.EREC.PTH);
INRESP.CSplus.preMB.MeanPTH=nanmean(INRESP.CSplus.preMB.PTH);
INRESP.CSplus.postMB.MeanPTH=nanmean(INRESP.CSplus.postMB.PTH);
INRESP.CSplus.preSAL.MeanPTH=nanmean(INRESP.CSplus.preSAL.PTH);
INRESP.CSplus.postSAL.MeanPTH=nanmean(INRESP.CSplus.postSAL.PTH);

INRESP.CSplus.s1.PTHSEM=nanstd(INRESP.CSplus.s1.PTH)/sqrt(size(INRESP.CSplus.s1.PTH,1));
INRESP.CSplus.s2.PTHSEM=nanstd(INRESP.CSplus.s2.PTH)/sqrt(size(INRESP.CSplus.s2.PTH,1));
INRESP.CSplus.s3.PTHSEM=nanstd(INRESP.CSplus.s3.PTH)/sqrt(size(INRESP.CSplus.s3.PTH,1));
INRESP.CSplus.s4.PTHSEM=nanstd(INRESP.CSplus.s4.PTH)/sqrt(size(INRESP.CSplus.s4.PTH,1));
INRESP.CSplus.s5.PTHSEM=nanstd(INRESP.CSplus.s5.PTH)/sqrt(size(INRESP.CSplus.s5.PTH,1));
INRESP.CSplus.s6.PTHSEM=nanstd(INRESP.CSplus.s6.PTH)/sqrt(size(INRESP.CSplus.s6.PTH,1));
INRESP.CSplus.s7.PTHSEM=nanstd(INRESP.CSplus.s7.PTH)/sqrt(size(INRESP.CSplus.s7.PTH,1));
INRESP.CSplus.EXT.PTHSEM=nanstd(INRESP.CSplus.EXT.PTH)/sqrt(size(INRESP.CSplus.EXT.PTH,1));
INRESP.CSplus.EREC.PTHSEM=nanstd(INRESP.CSplus.EREC.PTH)/sqrt(size(INRESP.CSplus.EREC.PTH,1));
INRESP.CSplus.preMB.PTHSEM=nanstd(INRESP.CSplus.preMB.PTH)/sqrt(size(INRESP.CSplus.preMB.PTH,1));
INRESP.CSplus.postMB.PTHSEM=nanstd(INRESP.CSplus.postMB.PTH)/sqrt(size(INRESP.CSplus.postMB.PTH,1));
INRESP.CSplus.preSAL.PTHSEM=nanstd(INRESP.CSplus.preSAL.PTH)/sqrt(size(INRESP.CSplus.preSAL.PTH,1));
INRESP.CSplus.postSAL.PTHSEM=nanstd(INRESP.CSplus.postSAL.PTH)/sqrt(size(INRESP.CSplus.postSAL.PTH,1));



clear anum daynum sessionnum enum neurnum i_preMB i_postMB i_preSAL i_postSAL...
 i_s1 i_s2 i_s3 i_s4 i_s5 i_s6 i_s7 i_EXT i_EREC 