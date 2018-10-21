totalOther_s7=0; LongInOther_s7=0;ShortInOther_s7=0;  MultIIEOther_s7=0; ...
IoIOther_s7=0; VShortInOther_s7=0;  MultIoEOther_s7=0; MultIEIOther_s7=0;  ...
MultIEoOther_s7=0;  MultIEEOther_s7=0; LateInoIIOther_s7=0; EarlyInoIoOther_s7=0;  ...
MultoIEOther_s7=0;  LateInooIOther_s7=0;  NROther_s7=0;  LateExooEOther_s7=0; ...
MultoEIOther_s7=0;  EarlyExoEoOther_s7=0; LateExoEEOther_s7=0; MultEIIOther_s7=0; ...
MultEIoOther_s7=0; MultEIEOther_s7=0;  MultEoIOther_s7=0; VShortExOther_s7=0;...
EoEOther_s7=0;  MultEEIOther_s7=0; ShortExOther_s7=0; LongExOther_s7=0; 

totalIN_s7=0; LongInIN_s7=0;ShortInIN_s7=0;  MultIIEIN_s7=0; ...
IoIIN_s7=0; VShortInIN_s7=0;  MultIoEIN_s7=0; MultIEIIN_s7=0;  ...
MultIEoIN_s7=0;  MultIEEIN_s7=0; LateInoIIIN_s7=0; EarlyInoIoIN_s7=0;  ...
MultoIEIN_s7=0;  LateInooIIN_s7=0;  NRIN_s7=0;  LateExooEIN_s7=0; ...
MultoEIIN_s7=0;  EarlyExoEoIN_s7=0; LateExoEEIN_s7=0; MultEIIIN_s7=0; ...
MultEIoIN_s7=0; MultEIEIN_s7=0;  MultEoIIN_s7=0; VShortExIN_s7=0;...
EoEIN_s7=0;  MultEEIIN_s7=0; ShortExIN_s7=0; LongExIN_s7=0; 

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        
                        if daynum == 7
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                              
                                totalIN_s7=totalIN_s7+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongInIN_s7=LongInIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortInIN_s7=ShortInIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIEIN_s7=MultIIEIN_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoIIN_s7=IoIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortInIN_s7=VShortInIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoEIN_s7=MultIoEIN_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEIIN_s7=MultIEIIN_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEoIN_s7=MultIEoIN_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEEIN_s7=MultIEEIN_s7+1;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoIIIN_s7=LateInoIIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIoIN_s7=EarlyInoIoIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIEIN_s7=MultoIEIN_s7+1; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooIIN_s7=LateInooIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NRIN_s7=NRIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooEIN_s7=LateExooEIN_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEIIN_s7=MultoEIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEoIN_s7=EarlyExoEoIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEEIN_s7=LateExoEEIN_s7+1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEIIIN_s7=MultEIIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIoIN_s7=MultEIoIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIEIN_s7=MultEIEIN_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoIIN_s7=MultEoIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortExIN_s7=VShortExIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoEIN_s7=EoEIN_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEIIN_s7=MultEEIIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortExIN_s7=ShortExIN_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongExIN_s7=LongExIN_s7+1;
                                        end
                                    end     
                                end
                                
                            else totalOther_s7=totalOther_s7+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongInOther_s7=LongInOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortInOther_s7=ShortInOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIEOther_s7=MultIIEOther_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoIOther_s7=IoIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortInOther_s7=VShortInOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoEOther_s7=MultIoEOther_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEIOther_s7=MultIEIOther_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEoOther_s7=MultIEoOther_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEEOther_s7=MultIEEOther_s7+1;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoIIOther_s7=LateInoIIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIoOther_s7=EarlyInoIoOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIEOther_s7=MultoIEOther_s7+1; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooIOther_s7=LateInooIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NROther_s7=NROther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooEOther_s7=LateExooEOther_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEIOther_s7=MultoEIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEoOther_s7=EarlyExoEoOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEEOther_s7=LateExoEEOther_s7+1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEIIOther_s7=MultEIIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIoOther_s7=MultEIoOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIEOther_s7=MultEIEOther_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoIOther_s7=MultEoIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortExOther_s7=VShortExOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoEOther_s7=EoEOther_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEIOther_s7=MultEEIOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortExOther_s7=ShortExOther_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongExOther_s7=LongExOther_s7+1;
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

prop_Mult_IN=((MultIIEIN_s7+MultIoEIN_s7+MultIEIIN_s7+MultIEoIN_s7+...
    MultIEEIN_s7+MultoIEIN_s7+MultoEIIN_s7+MultEIIIN_s7+MultEIoIN_s7+...
    MultEIEIN_s7+MultEoIIN_s7+MultEEIIN_s7)/totalIN_s7)*100

prop_shEx_IN=((VShortExIN_s7+ShortExIN_s7+EarlyExoEoIN_s7)/totalIN_s7)*100

prop_lEx_IN=((EoEIN_s7+LongExIN_s7)/totalIN_s7)*100

prop_lateEx_IN=((LateExooEIN_s7+LateExoEEIN_s7)/totalIN_s7)*100
    
prop_shIn_IN=((VShortInIN_s7+ShortInIN_s7+EarlyInoIoIN_s7)/totalIN_s7)*100

prop_lIn_IN=((LongInIN_s7+IoIIN_s7)/totalIN_s7)*100

prop_lateIn_IN=((LateInoIIIN_s7+LateInooIIN_s7)/totalIN_s7)*100

prop_NR_IN= (NRIN_s7/totalIN_s7)*100

prop_Mult_Other=((MultIIEOther_s7+MultIoEOther_s7+MultIEIOther_s7+MultIEoOther_s7+...
    MultIEEOther_s7+MultoIEOther_s7+MultoEIOther_s7+MultEIIOther_s7+MultEIoOther_s7+...
    MultEIEOther_s7+MultEoIOther_s7+MultEEIOther_s7)/totalOther_s7)*100

prop_shEx_Other=((VShortExOther_s7+ShortExOther_s7+EarlyExoEoOther_s7)/totalOther_s7)*100

prop_lEx_Other=((EoEOther_s7+LongExOther_s7)/totalOther_s7)*100

prop_lateEx_Other=((LateExooEOther_s7+LateExoEEOther_s7)/totalOther_s7)*100
    
prop_shIn_Other=((VShortInOther_s7+ShortInOther_s7+EarlyInoIoOther_s7)/totalOther_s7)*100

prop_lIn_Other=((LongInOther_s7+IoIOther_s7)/totalOther_s7)*100

prop_lateIn_Other=((LateInoIIOther_s7+LateInooIOther_s7)/totalOther_s7)*100

prop_NR_Other= (NROther_s7/totalOther_s7)*100

clear totalOther_s7 LongInOther_s7 ShortInOther_s7 MultIIEOther_s7...
IoIOther_s7 VShortInOther_s7 MultIoEOther_s7 MultIEIOther_s7  ...
MultIEoOther_s7  MultIEEOther_s7 LateInoIIOther_s7 EarlyInoIoOther_s7  ...
MultoIEOther_s7  LateInooIOther_s7  NROther_s7  LateExooEOther_s7 ...
MultoEIOther_s7  EarlyExoEoOther_s7 LateExoEEOther_s7 MultEIIOther_s7 ...
MultEIoOther_s7 MultEIEOther_s7  MultEoIOther_s7 VShortExOther_s7...
EoEOther_s7  MultEEIOther_s7 ShortExOther_s7 LongExOther_s7 ...
totalIN_s7 LongInIN_s7 ShortInIN_s7  MultIIEIN_s7 ...
IoIIN_s7 VShortInIN_s7  MultIoEIN_s7 MultIEIIN_s7  ...
MultIEoIN_s7  MultIEEIN_s7 LateInoIIIN_s7 EarlyInoIoIN_s7  ...
MultoIEIN_s7  LateInooIIN_s7  NRIN_s7  LateExooEIN_s7 ...
MultoEIIN_s7  EarlyExoEoIN_s7 LateExoEEIN_s7 MultEIIIN_s7 ...
MultEIoIN_s7 MultEIEIN_s7  MultEoIIN_s7 VShortExIN_s7...
EoEIN_s7 MultEEIIN_s7 ShortExIN_s7 LongExIN_s7 