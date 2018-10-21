%compare cue responses


clear EXRESP

i_s1=1; i_s7=1; i_EXT=1; i_EREC=1;
i_s2=1; i_s3=1; i_s4=1; i_s5=1; i_s6=1; 
i_preMB=1;i_preSAL=1;i_preLipsi=1;i_preLcontra=1;i_preRipsi=1;i_preRcontra=1;
i_postMB=1;i_postSAL=1;i_postLipsi=1;i_postLcontra=1;i_postRipsi=1;i_postRcontra=1;



for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum}) %sessions
             for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1 && RESP.CSplus.Ex{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                       switch(daynum)
                            case 1
                                EXRESP.CSplus.s1.Name{i_s1}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s1.Baseline.MeanFR(i_s1)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s1.CSUS.MeanFR(i_s1)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s1.Onset.MeanFR(i_s1)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s1.Onset.MeanFRz(i_s1)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s1.Sustained.MeanFR(i_s1)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s1.Sustained.MeanFRz(i_s1)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s1.PTHz(i_s1,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s1.PTHz(i_s1,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s1=i_s1+1;
                           case 2
                                EXRESP.CSplus.s2.Name{i_s2}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s2.Baseline.MeanFR(i_s2)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s2.CSUS.MeanFR(i_s2)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s2.Onset.MeanFR(i_s2)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s2.Onset.MeanFRz(i_s2)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s2.Sustained.MeanFR(i_s2)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s2.Sustained.MeanFRz(i_s2)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s2.PTHz(i_s2,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s2.PTHz(i_s2,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s2=i_s2+1;
                           case 3
                                EXRESP.CSplus.s3.Name{i_s3}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s3.Baseline.MeanFR(i_s3)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s3.CSUS.MeanFR(i_s3)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s3.Onset.MeanFR(i_s3)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s3.Onset.MeanFRz(i_s3)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s3.Sustained.MeanFR(i_s3)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s3.Sustained.MeanFRz(i_s3)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s3.PTHz(i_s3,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s3.PTHz(i_s3,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s3=i_s3+1;
                           case 4
                                EXRESP.CSplus.s4.Name{i_s4}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s4.Baseline.MeanFR(i_s4)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s4.CSUS.MeanFR(i_s4)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s4.Onset.MeanFR(i_s4)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s4.Onset.MeanFRz(i_s4)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s4.Sustained.MeanFR(i_s4)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s4.Sustained.MeanFRz(i_s4)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s4.PTHz(i_s4,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s4.PTHz(i_s4,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s4=i_s4+1;
                           case 5
                                EXRESP.CSplus.s5.Name{i_s5}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s5.Baseline.MeanFR(i_s5)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s5.CSUS.MeanFR(i_s5)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s5.Onset.MeanFR(i_s5)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s5.Onset.MeanFRz(i_s5)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s5.Sustained.MeanFR(i_s5)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s5.Sustained.MeanFRz(i_s5)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s5.PTHz(i_s5,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s5.PTHz(i_s5,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s5=i_s5+1;
                           case 6
                                EXRESP.CSplus.s6.Name{i_s6}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s6.Baseline.MeanFR(i_s6)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s6.CSUS.MeanFR(i_s6)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s6.Onset.MeanFR(i_s6)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s6.Onset.MeanFRz(i_s6)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s6.Sustained.MeanFR(i_s6)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s6.Sustained.MeanFRz(i_s6)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s6.PTHz(i_s6,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.s6.PTHz(i_s6,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_s6=i_s6+1;
                           case 7
                                EXRESP.CSplus.s7.Name{i_s7}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.s7.Baseline.MeanFR(i_s7)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.s7.CSUS.MeanFR(i_s7)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.Onset.MeanFR(i_s7)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.Onset.MeanFRz(i_s7)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.Sustained.MeanFR(i_s7)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.Sustained.MeanFRz(i_s7)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.PTHz(i_s7,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.s7.firingrate(i_s7)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate;
                                EXRESP.CSplus.s7.duration(i_s7)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration;
                                EXRESP.CSminus.s7.PTHz(i_s7,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                EXRESP.CSminus.s7.Sustained.MeanFRz(i_s7)=RESP.CSminus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_s7=i_s7+1;
                           case 16
                                EXRESP.CSplus.EXT.Name{i_EXT}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.EXT.Baseline.MeanFR(i_EXT)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.EXT.CSUS.MeanFR(i_EXT)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EXT.Onset.MeanFR(i_EXT)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EXT.Onset.MeanFRz(i_EXT)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EXT.Sustained.MeanFR(i_EXT)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EXT.Sustained.MeanFRz(i_EXT)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EXT.PTHz(i_EXT,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.EXT.PTHz(i_EXT,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_EXT=i_EXT+1;
                          case 17
                                EXRESP.CSplus.EREC.Name{i_EREC}=mat2str(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name);
                                EXRESP.CSplus.EREC.Baseline.MeanFR(i_EREC)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                %EXRESP.CSplus.EREC.CSUS.MeanFR(i_EREC)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EREC.Onset.MeanFR(i_EREC)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EREC.Onset.MeanFRz(i_EREC)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EREC.Sustained.MeanFR(i_EREC)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EREC.Sustained.MeanFRz(i_EREC)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSplus.EREC.PTHz(i_EREC,:)=RESP.CSplus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};
                                EXRESP.CSminus.EREC.PTHz(i_EREC,:)=RESP.CSminus.PTHzplot{anum}{daynum}{sessionnum}{enum}{neurnum};% note this is the response of CSplus inh neurons to CS minus
                                i_EREC=i_EREC+1;
                       end
% for some reason, this code is currently not working                                
                        if daynum>7 && daynum<16
                                switch(treatment{anum}{daynum}{sessionnum}.name)
                                    case {'preMB'}
                                        EXRESP.CSplus.preMB.Name{i_preMB}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                        EXRESP.CSplus.preMB.Baseline.MeanFR(i_preMB)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        %EXRESP.CSplus.preMB.CSUS.MeanFR(i_preMB)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preMB.Onset.MeanFR(i_preMB)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preMB.Onset.MeanFRz(i_preMB)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preMB.Sustained.MeanFR(i_preMB)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preMB.Sustained.MeanFRz(i_preMB)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                        i_preMB=i_preMB+1;

                                        EXRESP.CSplus.postMB.Name{i_postMB}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                        EXRESP.CSplus.postMB.Baseline.MeanFR(i_postMB)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        %EXRESP.CSplus.postMB.CSUS.MeanFR(i_postMB)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postMB.Onset.MeanFR(i_postMB)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postMB.Onset.MeanFRz(i_postMB)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postMB.Sustained.MeanFR(i_postMB)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postMB.Sustained.MeanFRz(i_postMB)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        i_postMB=i_postMB+1;

                                    case {'preSAL'}
                                        EXRESP.CSplus.preSAL.Name{i_preSAL}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                        EXRESP.CSplus.preSAL.Baseline.MeanFR(i_preSAL)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        %EXRESP.CSplus.preSAL.CSUS.MeanFR(i_preSAL)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preSAL.Onset.MeanFR(i_preSAL)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preSAL.Onset.MeanFRz(i_preSAL)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preSAL.Sustained.MeanFR(i_preSAL)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                        EXRESP.CSplus.preSAL.Sustained.MeanFRz(i_preSAL)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                        i_preSAL=i_preSAL+1;

                                        EXRESP.CSplus.postSAL.Name{i_postSAL}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                        EXRESP.CSplus.postSAL.Baseline.MeanFR(i_postSAL)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        %EXRESP.CSplus.postSAL.CSUS.MeanFR(i_postSAL)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postSAL.Onset.MeanFR(i_postSAL)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postSAL.Onset.MeanFRz(i_postSAL)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postSAL.Sustained.MeanFR(i_postSAL)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                        EXRESP.CSplus.postSAL.Sustained.MeanFRz(i_postSAL)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                        i_postSAL=i_postSAL+1;

                                    case {'preL'}
                                        if enum<9
                                            EXRESP.CSplus.preLipsi.Name{i_preLipsi}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                            EXRESP.CSplus.preLipsi.Baseline.MeanFR(i_preLipsi)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            %EXRESP.CSplus.preLipsi.CSUS.MeanFR(i_preLipsi)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLipsi.Onset.MeanFR(i_preLipsi)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLipsi.Onset.MeanFRz(i_preLipsi)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLipsi.Sustained.MeanFR(i_preLipsi)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLipsi.Sustained.MeanFRz(i_preLipsi)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            i_preLipsi=i_preLipsi+1;

                                            EXRESP.CSplus.postLipsi.Name{i_postLipsi}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                            EXRESP.CSplus.postLipsi.Baseline.MeanFR(i_postLipsi)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            %EXRESP.CSplus.postLipsi.CSUS.MeanFR(i_postLipsi)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLipsi.Onset.MeanFR(i_postLipsi)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLipsi.Onset.MeanFRz(i_postLipsi)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLipsi.Sustained.MeanFR(i_postLipsi)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLipsi.Sustained.MeanFRz(i_postLipsi)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            i_postLipsi=i_postLipsi+1;                                    

                                         elseif enum>8
                                            EXRESP.CSplus.preLcontra.Name{i_preLcontra}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                            EXRESP.CSplus.preLcontra.Baseline.MeanFR(i_preLcontra)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            %EXRESP.CSplus.preLcontra.CSUS.MeanFR(i_preLcontra)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLcontra.Onset.MeanFR(i_preLcontra)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLcontra.Onset.MeanFRz(i_preLcontra)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLcontra.Sustained.MeanFR(i_preLcontra)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preLcontra.Sustained.MeanFRz(i_preLcontra)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            i_preLcontra=i_preLcontra+1;

                                            EXRESP.CSplus.postLcontra.Name{i_postLcontra}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                            EXRESP.CSplus.postLcontra.Baseline.MeanFR(i_postLcontra)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            %EXRESP.CSplus.postLcontra.CSUS.MeanFR(i_postLcontra)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLcontra.Onset.MeanFR(i_postLcontra)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLcontra.Onset.MeanFRz(i_postLcontra)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLcontra.Sustained.MeanFR(i_postLcontra)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postLcontra.Sustained.MeanFRz(i_postLcontra)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            i_postLcontra=i_postLcontra+1; 

                                        end

                                  case {'preR'}
                                        if enum>8
                                            EXRESP.CSplus.preRipsi.Name{i_preRipsi}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                            EXRESP.CSplus.preRipsi.Baseline.MeanFR(i_preRipsi)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            %EXRESP.CSplus.preRipsi.CSUS.MeanFR(i_preRipsi)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRipsi.Onset.MeanFR(i_preRipsi)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRipsi.Onset.MeanFRz(i_preRipsi)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRipsi.Sustained.MeanFR(i_preRipsi)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRipsi.Sustained.MeanFRz(i_preRipsi)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            i_preRipsi=i_preRipsi+1;

                                            EXRESP.CSplus.postRipsi.Name{i_postRipsi}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                            EXRESP.CSplus.postRipsi.Baseline.MeanFR(i_postRipsi)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            %EXRESP.CSplus.postRipsi.CSUS.MeanFR(i_postRipsi)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRipsi.Onset.MeanFR(i_postRipsi)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRipsi.Onset.MeanFRz(i_postRipsi)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRipsi.Sustained.MeanFR(i_postRipsi)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRipsi.Sustained.MeanFRz(i_postRipsi)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            i_postRipsi=i_postRipsi+1;                                    

                                        else
                                            EXRESP.CSplus.preRcontra.Name{i_preRcontra}=mat2str(NDATA{anum}{daynum}{1}{enum}{neurnum}.name);
                                            EXRESP.CSplus.preRcontra.Baseline.MeanFR(i_preRcontra)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            %EXRESP.CSplus.preRcontra.CSUS.MeanFR(i_preRcontra)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRcontra.Onset.MeanFR(i_preRcontra)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRcontra.Onset.MeanFRz(i_preRcontra)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRcontra.Sustained.MeanFR(i_preRcontra)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{1}{enum}{neurnum};
                                            EXRESP.CSplus.preRcontra.Sustained.MeanFRz(i_preRcontra)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{1}{enum}{neurnum};
                                            i_preRcontra=i_preRcontra+1;

                                            EXRESP.CSplus.postRcontra.Name{i_postRcontra}=mat2str(NDATA{anum}{daynum}{2}{enum}{neurnum}.name);
                                            EXRESP.CSplus.postRcontra.Baseline.MeanFR(i_postRcontra)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            %EXRESP.CSplus.postRcontra.CSUS.MeanFR(i_postRcontra)=RESP.CSplus.CSUS.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRcontra.Onset.MeanFR(i_postRcontra)=RESP.CSplus.Onset.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRcontra.Onset.MeanFRz(i_postRcontra)=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRcontra.Sustained.MeanFR(i_postRcontra)=RESP.CSplus.Sustained.MeanFR{anum}{daynum}{2}{enum}{neurnum};
                                            EXRESP.CSplus.postRcontra.Sustained.MeanFRz(i_postRcontra)=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{2}{enum}{neurnum};
                                            i_postRcontra=i_postRcontra+1; 
                            
                                         end          
                                 end
                            end
                        %end
                    end
                end
            end
        end
    end
end
% 
% EXRESP.CSplus.preipsi.Name=horzcat(EXRESP.CSplus.preRipsi.Name,EXRESP.CSplus.preLipsi.Name);
% EXRESP.CSplus.preipsi.Baseline.MeanFR=horzcat(EXRESP.CSplus.preRipsi.Baseline.MeanFR,EXRESP.CSplus.preLipsi.Baseline.MeanFR);
% %EXRESP.CSplus.preipsi.CSUS.MeanFR=horzcat(EXRESP.CSplus.preRipsi.CSUS.MeanFR,EXRESP.CSplus.preLipsi.CSUS.MeanFR);
% EXRESP.CSplus.preipsi.Onset.MeanFR=horzcat(EXRESP.CSplus.preRipsi.Onset.MeanFR,EXRESP.CSplus.preLipsi.Onset.MeanFR);
% EXRESP.CSplus.preipsi.Onset.MeanFRz=horzcat(EXRESP.CSplus.preRipsi.Onset.MeanFRz,EXRESP.CSplus.preLipsi.Onset.MeanFRz);
% EXRESP.CSplus.preipsi.Sustained.MeanFR=horzcat(EXRESP.CSplus.preRipsi.Sustained.MeanFR,EXRESP.CSplus.preLipsi.Sustained.MeanFR);
% EXRESP.CSplus.preipsi.Sustained.MeanFRz=horzcat(EXRESP.CSplus.preRipsi.Sustained.MeanFRz,EXRESP.CSplus.preLipsi.Sustained.MeanFRz);
% 
% EXRESP.CSplus.precontra.Name=horzcat(EXRESP.CSplus.preRcontra.Name,EXRESP.CSplus.preLcontra.Name);
% EXRESP.CSplus.precontra.Baseline.MeanFR=horzcat(EXRESP.CSplus.preRcontra.Baseline.MeanFR,EXRESP.CSplus.preLcontra.Baseline.MeanFR);
% %EXRESP.CSplus.precontra.CSUS.MeanFR=horzcat(EXRESP.CSplus.preRcontra.CSUS.MeanFR,EXRESP.CSplus.preLcontra.CSUS.MeanFR);
% EXRESP.CSplus.precontra.Onset.MeanFR=horzcat(EXRESP.CSplus.preRcontra.Onset.MeanFR,EXRESP.CSplus.preLcontra.Onset.MeanFR);
% EXRESP.CSplus.precontra.Onset.MeanFRz=horzcat(EXRESP.CSplus.preRcontra.Onset.MeanFRz,EXRESP.CSplus.preLcontra.Onset.MeanFRz);
% EXRESP.CSplus.precontra.Sustained.MeanFR=horzcat(EXRESP.CSplus.preRcontra.Sustained.MeanFR,EXRESP.CSplus.preLcontra.Sustained.MeanFR);
% EXRESP.CSplus.precontra.Sustained.MeanFRz=horzcat(EXRESP.CSplus.preRcontra.Sustained.MeanFRz,EXRESP.CSplus.preLcontra.Sustained.MeanFRz);
% 
% EXRESP.CSplus.postipsi.Name=horzcat(EXRESP.CSplus.postRipsi.Name,EXRESP.CSplus.postLipsi.Name);
% EXRESP.CSplus.postipsi.Baseline.MeanFR=horzcat(EXRESP.CSplus.postRipsi.Baseline.MeanFR,EXRESP.CSplus.postLipsi.Baseline.MeanFR);
% %EXRESP.CSplus.postipsi.CSUS.MeanFR=horzcat(EXRESP.CSplus.postRipsi.CSUS.MeanFR,EXRESP.CSplus.postLipsi.CSUS.MeanFR);
% EXRESP.CSplus.postipsi.Onset.MeanFR=horzcat(EXRESP.CSplus.postRipsi.Onset.MeanFR,EXRESP.CSplus.postLipsi.Onset.MeanFR);
% EXRESP.CSplus.postipsi.Onset.MeanFRz=horzcat(EXRESP.CSplus.postRipsi.Onset.MeanFRz,EXRESP.CSplus.postLipsi.Onset.MeanFRz);
% EXRESP.CSplus.postipsi.Sustained.MeanFR=horzcat(EXRESP.CSplus.postRipsi.Sustained.MeanFR,EXRESP.CSplus.postLipsi.Sustained.MeanFR);
% EXRESP.CSplus.postipsi.Sustained.MeanFRz=horzcat(EXRESP.CSplus.postRipsi.Sustained.MeanFRz,EXRESP.CSplus.postLipsi.Sustained.MeanFRz);
% 
% EXRESP.CSplus.postcontra.Name=horzcat(EXRESP.CSplus.postRcontra.Name,EXRESP.CSplus.postLcontra.Name);
% EXRESP.CSplus.postcontra.Baseline.MeanFR=horzcat(EXRESP.CSplus.postRcontra.Baseline.MeanFR,EXRESP.CSplus.postLcontra.Baseline.MeanFR);
% %EXRESP.CSplus.postcontra.CSUS.MeanFR=horzcat(EXRESP.CSplus.postRcontra.CSUS.MeanFR,EXRESP.CSplus.postLcontra.CSUS.MeanFR);
% EXRESP.CSplus.postcontra.Onset.MeanFR=horzcat(EXRESP.CSplus.postRcontra.Onset.MeanFR,EXRESP.CSplus.postLcontra.Onset.MeanFR);
% EXRESP.CSplus.postcontra.Onset.MeanFRz=horzcat(EXRESP.CSplus.postRcontra.Onset.MeanFRz,EXRESP.CSplus.postLcontra.Onset.MeanFRz);
% EXRESP.CSplus.postcontra.Sustained.MeanFR=horzcat(EXRESP.CSplus.postRcontra.Sustained.MeanFR,EXRESP.CSplus.postLcontra.Sustained.MeanFR);
% EXRESP.CSplus.postcontra.Sustained.MeanFRz=horzcat(EXRESP.CSplus.postRcontra.Sustained.MeanFRz,EXRESP.CSplus.postLcontra.Sustained.MeanFRz);

EXRESP.CSplus.s1.MeanPTHz=nanmean(EXRESP.CSplus.s1.PTHz);
EXRESP.CSplus.s2.MeanPTHz=nanmean(EXRESP.CSplus.s2.PTHz);
EXRESP.CSplus.s3.MeanPTHz=nanmean(EXRESP.CSplus.s3.PTHz);
EXRESP.CSplus.s4.MeanPTHz=nanmean(EXRESP.CSplus.s4.PTHz);
EXRESP.CSplus.s5.MeanPTHz=nanmean(EXRESP.CSplus.s5.PTHz);
EXRESP.CSplus.s6.MeanPTHz=nanmean(EXRESP.CSplus.s6.PTHz);
EXRESP.CSplus.s7.MeanPTHz=nanmean(EXRESP.CSplus.s7.PTHz);
EXRESP.CSplus.EXT.MeanPTHz=nanmean(EXRESP.CSplus.EXT.PTHz);
EXRESP.CSplus.EREC.MeanPTHz=nanmean(EXRESP.CSplus.EREC.PTHz);

EXRESP.CSplus.s1.PTHzSEM=nanstd(EXRESP.CSplus.s1.PTHz)/sqrt(size(EXRESP.CSplus.s1.PTHz,1));
EXRESP.CSplus.s2.PTHzSEM=nanstd(EXRESP.CSplus.s2.PTHz)/sqrt(size(EXRESP.CSplus.s2.PTHz,1));
EXRESP.CSplus.s3.PTHzSEM=nanstd(EXRESP.CSplus.s3.PTHz)/sqrt(size(EXRESP.CSplus.s3.PTHz,1));
EXRESP.CSplus.s4.PTHzSEM=nanstd(EXRESP.CSplus.s4.PTHz)/sqrt(size(EXRESP.CSplus.s4.PTHz,1));
EXRESP.CSplus.s5.PTHzSEM=nanstd(EXRESP.CSplus.s5.PTHz)/sqrt(size(EXRESP.CSplus.s5.PTHz,1));
EXRESP.CSplus.s6.PTHzSEM=nanstd(EXRESP.CSplus.s6.PTHz)/sqrt(size(EXRESP.CSplus.s6.PTHz,1));
EXRESP.CSplus.s7.PTHzSEM=nanstd(EXRESP.CSplus.s7.PTHz)/sqrt(size(EXRESP.CSplus.s7.PTHz,1));
EXRESP.CSplus.EXT.PTHzSEM=nanstd(EXRESP.CSplus.EXT.PTHz)/sqrt(size(EXRESP.CSplus.EXT.PTHz,1));
EXRESP.CSplus.EREC.PTHzSEM=nanstd(EXRESP.CSplus.EREC.PTHz)/sqrt(size(EXRESP.CSplus.EREC.PTHz,1));

EXRESP.CSminus.s1.MeanPTHz=nanmean(EXRESP.CSminus.s1.PTHz);
EXRESP.CSminus.s2.MeanPTHz=nanmean(EXRESP.CSminus.s2.PTHz);
EXRESP.CSminus.s3.MeanPTHz=nanmean(EXRESP.CSminus.s3.PTHz);
EXRESP.CSminus.s4.MeanPTHz=nanmean(EXRESP.CSminus.s4.PTHz);
EXRESP.CSminus.s5.MeanPTHz=nanmean(EXRESP.CSminus.s5.PTHz);
EXRESP.CSminus.s6.MeanPTHz=nanmean(EXRESP.CSminus.s6.PTHz);
EXRESP.CSminus.s7.MeanPTHz=nanmean(EXRESP.CSminus.s7.PTHz);
EXRESP.CSminus.EXT.MeanPTHz=nanmean(EXRESP.CSminus.EXT.PTHz);
EXRESP.CSminus.EREC.MeanPTHz=nanmean(EXRESP.CSminus.EREC.PTHz);

EXRESP.CSminus.s1.PTHzSEM=nanstd(EXRESP.CSminus.s1.PTHz)/sqrt(size(EXRESP.CSminus.s1.PTHz,1));
EXRESP.CSminus.s2.PTHzSEM=nanstd(EXRESP.CSminus.s2.PTHz)/sqrt(size(EXRESP.CSminus.s2.PTHz,1));
EXRESP.CSminus.s3.PTHzSEM=nanstd(EXRESP.CSminus.s3.PTHz)/sqrt(size(EXRESP.CSminus.s3.PTHz,1));
EXRESP.CSminus.s4.PTHzSEM=nanstd(EXRESP.CSminus.s4.PTHz)/sqrt(size(EXRESP.CSminus.s4.PTHz,1));
EXRESP.CSminus.s5.PTHzSEM=nanstd(EXRESP.CSminus.s5.PTHz)/sqrt(size(EXRESP.CSminus.s5.PTHz,1));
EXRESP.CSminus.s6.PTHzSEM=nanstd(EXRESP.CSminus.s6.PTHz)/sqrt(size(EXRESP.CSminus.s6.PTHz,1));
EXRESP.CSminus.s7.PTHzSEM=nanstd(EXRESP.CSminus.s7.PTHz)/sqrt(size(EXRESP.CSminus.s7.PTHz,1));
EXRESP.CSminus.EXT.PTHzSEM=nanstd(EXRESP.CSminus.EXT.PTHz)/sqrt(size(EXRESP.CSminus.EXT.PTHz,1));
EXRESP.CSminus.EREC.PTHzSEM=nanstd(EXRESP.CSminus.EREC.PTHz)/sqrt(size(EXRESP.CSminus.EREC.PTHz,1));
clear anum daynum sessionnum enum neurnum i_preMB i_postMB i_preSAL i_postSAL i_preLipsi i_postLipsi i_preLcontra i_postLcontra i_preRipsi i_postRipsi i_preRcontra i_postRcontra i_s1 i_s2 i_s3 i_s4 i_s5 i_s6 i_s7 i_EXT i_EREC
