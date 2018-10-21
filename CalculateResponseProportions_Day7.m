total_s7=0; LongIn_s7=0;ShortIn_s7=0;  MultIIE_s7=0; ...
IoI_s7=0; VShortIn_s7=0;  MultIoE_s7=0; MultIEI_s7=0;  ...
MultIEo_s7=0;  MultIEE_s7=0; LateInoII_s7=0; EarlyInoIo_s7=0;  ...
MultoIE_s7=0;  LateInooI_s7=0;  NR_s7=0;  LateExooE_s7=0; ...
MultoEI_s7=0;  EarlyExoEo_s7=0; LateExoEE_s7=0; MultEII_s7=0; ...
MultEIo_s7=0; MultEIE_s7=0;  MultEoI_s7=0; VShortEx_s7=0;...
EoE_s7=0;  MultEEI_s7=0; ShortEx_s7=0; LongEx_s7=0; 

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        
                        if daynum == 7
                             total_s7=total_s7+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s7=LongIn_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s7=ShortIn_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s7=MultIIE_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s7=IoI_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s7=VShortIn_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s7=MultIoE_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s7=MultIEI_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s7=MultIEo_s7+1;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s7=MultIEE_s7+1;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s7=LateInoII_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s7=EarlyInoIo_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s7=MultoIE_s7+1; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s7=LateInooI_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s7=NR_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s7=LateExooE_s7+1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s7=MultoEI_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s7=EarlyExoEo_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s7=LateExoEE_s7+1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s7=MultEII_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s7=MultEIo_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s7=MultEIE_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s7=MultEoI_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s7=VShortEx_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s7=EoE_s7+1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s7=MultEEI_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s7=ShortEx_s7+1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s7=LongEx_s7+1;
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

prop_Mult_=((MultIIE_s7+MultIoE_s7+MultIEI_s7+MultIEo_s7+...
    MultIEE_s7+MultoIE_s7+MultoEI_s7+MultEII_s7+MultEIo_s7+...
    MultEIE_s7+MultEoI_s7+MultEEI_s7)/total_s7)*100

prop_shEx_=((VShortEx_s7+ShortEx_s7+EarlyExoEo_s7)/total_s7)*100

prop_lEx_=((EoE_s7+LongEx_s7)/total_s7)*100

prop_lateEx_=((LateExooE_s7+LateExoEE_s7)/total_s7)*100
    
prop_shIn_=((VShortIn_s7+ShortIn_s7+EarlyInoIo_s7)/total_s7)*100

prop_lIn_=((LongIn_s7+IoI_s7)/total_s7)*100

prop_lateIn_=((LateInoII_s7+LateInooI_s7)/total_s7)*100

prop_NR_= (NR_s7/total_s7)*100

clear total_s7 LongIn_s7 ShortIn_s7 MultIIE_s7...
IoI_s7 VShortIn_s7 MultIoE_s7 MultIEI_s7  ...
MultIEo_s7  MultIEE_s7 LateInoII_s7 EarlyInoIo_s7  ...
MultoIE_s7  LateInooI_s7  NR_s7  LateExooE_s7 ...
MultoEI_s7  EarlyExoEo_s7 LateExoEE_s7 MultEII_s7 ...
MultEIo_s7 MultEIE_s7  MultEoI_s7 VShortEx_s7...
EoE_s7  MultEEI_s7 ShortEx_s7 LongEx_s7 
