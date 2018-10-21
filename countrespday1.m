totalOther_s1=0; LongInOther_s1=0;ShortInOther_s1=0;  MultIIEOther_s1=0; ...
IoIOther_s1=0; VShortInOther_s1=0;  MultIoEOther_s1=0; MultIEIOther_s1=0;  ...
MultIEoOther_s1=0;  MultIEEOther_s1=0; LateInoIIOther_s1=0; EarlyInoIoOther_s1=0;  ...
MultoIEOther_s1=0;  LateInooIOther_s1=0;  NROther_s1=0;  LateExooEOther_s1=0; ...
MultoEIOther_s1=0;  EarlyExoEoOther_s1=0; LateExoEEOther_s1=0; MultEIIOther_s1=0; ...
MultEIoOther_s1=0; MultEIEOther_s1=0;  MultEoIOther_s1=0; VShortExOther_s1=0;...
EoEOther_s1=0;  MultEEIOther_s1=0; ShortExOther_s1=0; LongExOther_s1=0; 

totalIN_s1=0; LongInIN_s1=0;ShortInIN_s1=0;  MultIIEIN_s1=0; ...
IoIIN_s1=0; VShortInIN_s1=0;  MultIoEIN_s1=0; MultIEIIN_s1=0;  ...
MultIEoIN_s1=0;  MultIEEIN_s1=0; LateInoIIIN_s1=0; EarlyInoIoIN_s1=0;  ...
MultoIEIN_s1=0;  LateInooIIN_s1=0;  NRIN_s1=0;  LateExooEIN_s1=0; ...
MultoEIIN_s1=0;  EarlyExoEoIN_s1=0; LateExoEEIN_s1=0; MultEIIIN_s1=0; ...
MultEIoIN_s1=0; MultEIEIN_s1=0;  MultEoIIN_s1=0; VShortExIN_s1=0;...
EoEIN_s1=0;  MultEEIIN_s1=0; ShortExIN_s1=0; LongExIN_s1=0; 

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        
                        if daynum == 1
                            if log(RESP.CSminus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                              
                                totalIN_s1=totalIN_s1+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongInIN_s1=LongInIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortInIN_s1=ShortInIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIEIN_s1=MultIIEIN_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoIIN_s1=IoIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortInIN_s1=VShortInIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoEIN_s1=MultIoEIN_s1+1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEIIN_s1=MultIEIIN_s1+1;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEoIN_s1=MultIEoIN_s1+1;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEEIN_s1=MultIEEIN_s1+1;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoIIIN_s1=LateInoIIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIoIN_s1=EarlyInoIoIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIEIN_s1=MultoIEIN_s1+1; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooIIN_s1=LateInooIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NRIN_s1=NRIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooEIN_s1=LateExooEIN_s1+1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEIIN_s1=MultoEIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEoIN_s1=EarlyExoEoIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEEIN_s1=LateExoEEIN_s1+1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEIIIN_s1=MultEIIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIoIN_s1=MultEIoIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIEIN_s1=MultEIEIN_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoIIN_s1=MultEoIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortExIN_s1=VShortExIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoEIN_s1=EoEIN_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEIIN_s1=MultEEIIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortExIN_s1=ShortExIN_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongExIN_s1=LongExIN_s1+1;
                                        end
                                    end     
                                end
                                
                            else totalOther_s1=totalOther_s1+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongInOther_s1=LongInOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortInOther_s1=ShortInOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIEOther_s1=MultIIEOther_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoIOther_s1=IoIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortInOther_s1=VShortInOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoEOther_s1=MultIoEOther_s1+1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEIOther_s1=MultIEIOther_s1+1;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEoOther_s1=MultIEoOther_s1+1;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEEOther_s1=MultIEEOther_s1+1;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoIIOther_s1=LateInoIIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIoOther_s1=EarlyInoIoOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIEOther_s1=MultoIEOther_s1+1; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooIOther_s1=LateInooIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NROther_s1=NROther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooEOther_s1=LateExooEOther_s1+1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEIOther_s1=MultoEIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEoOther_s1=EarlyExoEoOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEEOther_s1=LateExoEEOther_s1+1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEIIOther_s1=MultEIIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIoOther_s1=MultEIoOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIEOther_s1=MultEIEOther_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoIOther_s1=MultEoIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortExOther_s1=VShortExOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoEOther_s1=EoEOther_s1+1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEIOther_s1=MultEEIOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortExOther_s1=ShortExOther_s1+1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongExOther_s1=LongExOther_s1+1;
                                        end
                                    end     
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

prop_Mult_IN=((MultIIEIN_s1+MultIoEIN_s1+MultIEIIN_s1+MultIEoIN_s1+...
    MultIEEIN_s1+MultoIEIN_s1+MultoEIIN_s1+MultEIIIN_s1+MultEIoIN_s1+...
    MultEIEIN_s1+MultEoIIN_s1+MultEEIIN_s1)/totalIN_s1)*100

prop_shEx_IN=((VShortExIN_s1+ShortExIN_s1+EarlyExoEoIN_s1)/totalIN_s1)*100

prop_lEx_IN=((EoEIN_s1+LongExIN_s1)/totalIN_s1)*100

prop_lateEx_IN=((LateExooEIN_s1+LateExoEEIN_s1)/totalIN_s1)*100
    
prop_shIn_IN=((VShortInIN_s1+ShortInIN_s1+EarlyInoIoIN_s1)/totalIN_s1)*100

prop_lIn_IN=((LongInIN_s1+IoIIN_s1)/totalIN_s1)*100

prop_lateIn_IN=((LateInoIIIN_s1+LateInooIIN_s1)/totalIN_s1)*100

prop_NR_IN= (NRIN_s1/totalIN_s1)*100

prop_Mult_Other=((MultIIEOther_s1+MultIoEOther_s1+MultIEIOther_s1+MultIEoOther_s1+...
    MultIEEOther_s1+MultoIEOther_s1+MultoEIOther_s1+MultEIIOther_s1+MultEIoOther_s1+...
    MultEIEOther_s1+MultEoIOther_s1+MultEEIOther_s1)/totalOther_s1)*100

prop_shEx_Other=((VShortExOther_s1+ShortExOther_s1+EarlyExoEoOther_s1)/totalOther_s1)*100

prop_lEx_Other=((EoEOther_s1+LongExOther_s1)/totalOther_s1)*100

prop_lateEx_Other=((LateExooEOther_s1+LateExoEEOther_s1)/totalOther_s1)*100
    
prop_shIn_Other=((VShortInOther_s1+ShortInOther_s1+EarlyInoIoOther_s1)/totalOther_s1)*100

prop_lIn_Other=((LongInOther_s1+IoIOther_s1)/totalOther_s1)*100

prop_lateIn_Other=((LateInoIIOther_s1+LateInooIOther_s1)/totalOther_s1)*100

prop_NR_Other= (NROther_s1/totalOther_s1)*100

clear totalOther_s1 LongInOther_s1 ShortInOther_s1 MultIIEOther_s1...
IoIOther_s1 VShortInOther_s1 MultIoEOther_s1 MultIEIOther_s1  ...
MultIEoOther_s1  MultIEEOther_s1 LateInoIIOther_s1 EarlyInoIoOther_s1  ...
MultoIEOther_s1  LateInooIOther_s1  NROther_s1  LateExooEOther_s1 ...
MultoEIOther_s1  EarlyExoEoOther_s1 LateExoEEOther_s1 MultEIIOther_s1 ...
MultEIoOther_s1 MultEIEOther_s1  MultEoIOther_s1 VShortExOther_s1...
EoEOther_s1  MultEEIOther_s1 ShortExOther_s1 LongExOther_s1 ...
totalIN_s1 LongInIN_s1 ShortInIN_s1  MultIIEIN_s1 ...
IoIIN_s1 VShortInIN_s1  MultIoEIN_s1 MultIEIIN_s1  ...
MultIEoIN_s1  MultIEEIN_s1 LateInoIIIN_s1 EarlyInoIoIN_s1  ...
MultoIEIN_s1  LateInooIIN_s1  NRIN_s1  LateExooEIN_s1 ...
MultoEIIN_s1  EarlyExoEoIN_s1 LateExoEEIN_s1 MultEIIIN_s1 ...
MultEIoIN_s1 MultEIEIN_s1  MultEoIIN_s1 VShortExIN_s1...
EoEIN_s1 MultEEIIN_s1 ShortExIN_s1 LongExIN_s1 