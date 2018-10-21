%the goal of this script is to determine numbers of neurons inhibited or
%excited or multiphasic in each session

% 072316 - changed to set flag to -1 if there is a short inhibition

% set counts to 0

total_s1=0; total_s7=0; total_EXT=0; total_EREC=0; total_preMB=0; total_postMB=0; total_preSAL=0; total_postSAL=0; 
total_s2=0; total_s3=0; total_s4=0; total_s5=0; total_s6=0; 
LongIn_s1=0; LongIn_s7=0; LongIn_EXT=0; LongIn_EREC=0; LongIn_preMB=0; LongIn_postMB=0; LongIn_preSAL=0; LongIn_postSAL=0; 
LongIn_s2=0; LongIn_s3=0; LongIn_s4=0; LongIn_s5=0; LongIn_s6=0; 
ShortIn_s1=0; ShortIn_s7=0; ShortIn_EXT=0; ShortIn_EREC=0; ShortIn_preMB=0; ShortIn_postMB=0; ShortIn_preSAL=0; ShortIn_postSAL=0; 
ShortIn_s2=0; ShortIn_s3=0; ShortIn_s4=0; ShortIn_s5=0; ShortIn_s6=0; 
MultIIE_s1=0; MultIIE_s7=0; MultIIE_EXT=0; MultIIE_EREC=0; MultIIE_preMB=0; MultIIE_postMB=0; MultIIE_preSAL=0; MultIIE_postSAL=0; 
MultIIE_s2=0; MultIIE_s3=0; MultIIE_s4=0; MultIIE_s5=0; MultIIE_s6=0;
IoI_s1=0; IoI_s7=0; IoI_EXT=0; IoI_EREC=0; IoI_preMB=0; IoI_postMB=0; IoI_preSAL=0; IoI_postSAL=0; 
IoI_s2=0; IoI_s3=0; IoI_s4=0; IoI_s5=0; IoI_s6=0; 
VShortIn_s1=0; VShortIn_s7=0; VShortIn_EXT=0; VShortIn_EREC=0; VShortIn_preMB=0; VShortIn_postMB=0; VShortIn_preSAL=0; VShortIn_postSAL=0; 
VShortIn_s2=0; VShortIn_s3=0; VShortIn_s4=0; VShortIn_s5=0; VShortIn_s6=0; 
MultIoE_s1=0; MultIoE_s7=0; MultIoE_EXT=0; MultIoE_EREC=0; MultIoE_preMB=0; MultIoE_postMB=0; MultIoE_preSAL=0; MultIoE_postSAL=0; 
MultIoE_s2=0; MultIoE_s3=0; MultIoE_s4=0; MultIoE_s5=0; MultIoE_s6=0; 
MultIEI_s1=0; MultIEI_s7=0; MultIEI_EXT=0; MultIEI_EREC=0; MultIEI_preMB=0; MultIEI_postMB=0; MultIEI_preSAL=0; MultIEI_postSAL=0; 
MultIEI_s2=0; MultIEI_s3=0; MultIEI_s4=0; MultIEI_s5=0; MultIEI_s6=0; 
MultIEo_s1=0; MultIEo_s7=0; MultIEo_EXT=0; MultIEo_EREC=0; MultIEo_preMB=0; MultIEo_postMB=0; MultIEo_preSAL=0; MultIEo_postSAL=0; 
MultIEo_s2=0; MultIEo_s3=0; MultIEo_s4=0; MultIEo_s5=0; MultIEo_s6=0; 
MultIEE_s1=0; MultIEE_s7=0; MultIEE_EXT=0; MultIEE_EREC=0; MultIEE_preMB=0; MultIEE_postMB=0; MultIEE_preSAL=0; MultIEE_postSAL=0; 
MultIEE_s2=0; MultIEE_s3=0; MultIEE_s4=0; MultIEE_s5=0; MultIEE_s6=0;
LateInoII_s1=0; LateInoII_s7=0; LateInoII_EXT=0; LateInoII_EREC=0; LateInoII_preMB=0; LateInoII_postMB=0; LateInoII_preSAL=0; LateInoII_postSAL=0; 
LateInoII_s2=0; LateInoII_s3=0; LateInoII_s4=0; LateInoII_s5=0; LateInoII_s6=0; 
EarlyInoIo_s1=0; EarlyInoIo_s7=0; EarlyInoIo_EXT=0; EarlyInoIo_EREC=0; EarlyInoIo_preMB=0; EarlyInoIo_postMB=0; EarlyInoIo_preSAL=0; EarlyInoIo_postSAL=0; 
EarlyInoIo_s2=0; EarlyInoIo_s3=0; EarlyInoIo_s4=0; EarlyInoIo_s5=0; EarlyInoIo_s6=0; 
MultoIE_s1=0; MultoIE_s7=0; MultoIE_EXT=0; MultoIE_EREC=0; MultoIE_preMB=0; MultoIE_postMB=0; MultoIE_preSAL=0; MultoIE_postSAL=0; 
MultoIE_s2=0; MultoIE_s3=0; MultoIE_s4=0; MultoIE_s5=0; MultoIE_s6=0; 
LateInooI_s1=0; LateInooI_s7=0; LateInooI_EXT=0; LateInooI_EREC=0; LateInooI_preMB=0; LateInooI_postMB=0; LateInooI_preSAL=0; LateInooI_postSAL=0; 
LateInooI_s2=0; LateInooI_s3=0; LateInooI_s4=0; LateInooI_s5=0; LateInooI_s6=0; 
NR_s1=0; NR_s7=0; NR_EXT=0; NR_EREC=0; NR_preMB=0; NR_postMB=0; NR_preSAL=0; NR_postSAL=0; 
NR_s2=0; NR_s3=0; NR_s4=0; NR_s5=0; NR_s6=0; 
LateExooE_s1=0; LateExooE_s7=0; LateExooE_EXT=0; LateExooE_EREC=0; LateExooE_preMB=0; LateExooE_postMB=0; LateExooE_preSAL=0; LateExooE_postSAL=0; 
LateExooE_s2=0; LateExooE_s3=0; LateExooE_s4=0; LateExooE_s5=0; LateExooE_s6=0; 
MultoEI_s1=0; MultoEI_s7=0; MultoEI_EXT=0; MultoEI_EREC=0; MultoEI_preMB=0; MultoEI_postMB=0; MultoEI_preSAL=0; MultoEI_postSAL=0; 
MultoEI_s2=0; MultoEI_s3=0; MultoEI_s4=0; MultoEI_s5=0; MultoEI_s6=0; 
EarlyExoEo_s1=0; EarlyExoEo_s7=0; EarlyExoEo_EXT=0; EarlyExoEo_EREC=0; EarlyExoEo_preMB=0; EarlyExoEo_postMB=0; EarlyExoEo_preSAL=0; EarlyExoEo_postSAL=0; 
EarlyExoEo_s2=0; EarlyExoEo_s3=0; EarlyExoEo_s4=0; EarlyExoEo_s5=0; EarlyExoEo_s6=0;
LateExoEE_s1=0; LateExoEE_s7=0; LateExoEE_EXT=0; LateExoEE_EREC=0; LateExoEE_preMB=0; LateExoEE_postMB=0; LateExoEE_preSAL=0; LateExoEE_postSAL=0; 
LateExoEE_s2=0; LateExoEE_s3=0; LateExoEE_s4=0; LateExoEE_s5=0; LateExoEE_s6=0;
MultEII_s1=0; MultEII_s7=0; MultEII_EXT=0; MultEII_EREC=0; MultEII_preMB=0; MultEII_postMB=0; MultEII_preSAL=0; MultEII_postSAL=0; 
MultEII_s2=0; MultEII_s3=0; MultEII_s4=0; MultEII_s5=0; MultEII_s6=0;
MultEIo_s1=0; MultEIo_s7=0; MultEIo_EXT=0; MultEIo_EREC=0; MultEIo_preMB=0; MultEIo_postMB=0; MultEIo_preSAL=0; MultEIo_postSAL=0; 
MultEIo_s2=0; MultEIo_s3=0; MultEIo_s4=0; MultEIo_s5=0; MultEIo_s6=0;
MultEIE_s1=0; MultEIE_s7=0; MultEIE_EXT=0; MultEIE_EREC=0; MultEIE_preMB=0; MultEIE_postMB=0; MultEIE_preSAL=0; MultEIE_postSAL=0; 
MultEIE_s2=0; MultEIE_s3=0; MultEIE_s4=0; MultEIE_s5=0; MultEIE_s6=0; 
MultEoI_s1=0; MultEoI_s7=0; MultEoI_EXT=0; MultEoI_EREC=0; MultEoI_preMB=0; MultEoI_postMB=0; MultEoI_preSAL=0; MultEoI_postSAL=0; 
MultEoI_s2=0; MultEoI_s3=0; MultEoI_s4=0; MultEoI_s5=0; MultEoI_s6=0;
VShortEx_s1=0; VShortEx_s7=0; VShortEx_EXT=0; VShortEx_EREC=0; VShortEx_preMB=0; VShortEx_postMB=0; VShortEx_preSAL=0; VShortEx_postSAL=0; 
VShortEx_s2=0; VShortEx_s3=0; VShortEx_s4=0; VShortEx_s5=0; VShortEx_s6=0;
EoE_s1=0; EoE_s7=0; EoE_EXT=0; EoE_EREC=0; EoE_preMB=0; EoE_postMB=0; EoE_preSAL=0; EoE_postSAL=0; 
EoE_s2=0; EoE_s3=0; EoE_s4=0; EoE_s5=0; EoE_s6=0; 
MultEEI_s1=0; MultEEI_s7=0; MultEEI_EXT=0; MultEEI_EREC=0; MultEEI_preMB=0; MultEEI_postMB=0; MultEEI_preSAL=0; MultEEI_postSAL=0; 
MultEEI_s2=0; MultEEI_s3=0; MultEEI_s4=0; MultEEI_s5=0; MultEEI_s6=0; 
ShortEx_s1=0; ShortEx_s7=0; ShortEx_EXT=0; ShortEx_EREC=0; ShortEx_preMB=0; ShortEx_postMB=0; ShortEx_preSAL=0; ShortEx_postSAL=0; 
ShortEx_s2=0; ShortEx_s3=0; ShortEx_s4=0; ShortEx_s5=0; ShortEx_s6=0; 
LongEx_s1=0; LongEx_s7=0; LongEx_EXT=0; LongEx_EREC=0; LongEx_preMB=0; LongEx_postMB=0; LongEx_preSAL=0; LongEx_postSAL=0; 
LongEx_s2=0; LongEx_s3=0; LongEx_s4=0; LongEx_s5=0; LongEx_s6=0;

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        switch(daynum)
                            case 1
                                total_s1=total_s1+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s1=LongIn_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s1=ShortIn_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s1=MultIIE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s1=IoI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s1=VShortIn_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s1=MultIoE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s1=MultIEI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s1=MultIEo_s1+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s1=MultIEE_s1+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s1=LateInoII_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s1=EarlyInoIo_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s1=MultoIE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s1=LateInooI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s1=NR_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s1=LateExooE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s1=MultoEI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s1=EarlyExoEo_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s1=LateExoEE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s1=MultEII_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s1=MultEIo_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s1=MultEIE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s1=MultEoI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s1=VShortEx_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s1=EoE_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s1=MultEEI_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s1=ShortEx_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s1=LongEx_s1+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                            case 2
                                total_s2=total_s2+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s2=LongIn_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s2=ShortIn_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s2=MultIIE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s2=IoI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s2=VShortIn_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s2=MultIoE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s2=MultIEI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s2=MultIEo_s2+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s2=MultIEE_s2+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s2=LateInoII_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s2=EarlyInoIo_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s2=MultoIE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s2=LateInooI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s2=NR_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s2=LateExooE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s2=MultoEI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s2=EarlyExoEo_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s2=LateExoEE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s2=MultEII_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s2=MultEIo_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s2=MultEIE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s2=MultEoI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s2=VShortEx_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s2=EoE_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s2=MultEEI_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s2=ShortEx_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s2=LongEx_s2+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                            case 3
                                total_s3=total_s3+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s3=LongIn_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s3=ShortIn_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s3=MultIIE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s3=IoI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s3=VShortIn_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s3=MultIoE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s3=MultIEI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s3=MultIEo_s3+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s3=MultIEE_s3+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s3=LateInoII_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s3=EarlyInoIo_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s3=MultoIE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s3=LateInooI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s3=NR_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s3=LateExooE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s3=MultoEI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s3=EarlyExoEo_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s3=LateExoEE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s3=MultEII_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s3=MultEIo_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s3=MultEIE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s3=MultEoI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s3=VShortEx_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s3=EoE_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s3=MultEEI_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s3=ShortEx_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s3=LongEx_s3+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 4
                                total_s4=total_s4+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s4=LongIn_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s4=ShortIn_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s4=MultIIE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s4=IoI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s4=VShortIn_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s4=MultIoE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s4=MultIEI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s4=MultIEo_s4+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s4=MultIEE_s4+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s4=LateInoII_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s4=EarlyInoIo_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s4=MultoIE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s4=LateInooI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s4=NR_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s4=LateExooE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s4=MultoEI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s4=EarlyExoEo_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s4=LateExoEE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s4=MultEII_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s4=MultEIo_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s4=MultEIE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s4=MultEoI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s4=VShortEx_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s4=EoE_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s4=MultEEI_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s4=ShortEx_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s4=LongEx_s4+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 5
                                total_s5=total_s5+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s5=LongIn_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s5=ShortIn_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s5=MultIIE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s5=IoI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s5=VShortIn_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s5=MultIoE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s5=MultIEI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s5=MultIEo_s5+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s5=MultIEE_s5+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s5=LateInoII_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s5=EarlyInoIo_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s5=MultoIE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s5=LateInooI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s5=NR_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s5=LateExooE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s5=MultoEI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s5=EarlyExoEo_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s5=LateExoEE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s5=MultEII_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s5=MultEIo_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s5=MultEIE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s5=MultEoI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s5=VShortEx_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s5=EoE_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s5=MultEEI_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s5=ShortEx_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s5=LongEx_s5+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                         
                           case 6
                                total_s6=total_s6+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s6=LongIn_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s6=ShortIn_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s6=MultIIE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s6=IoI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s6=VShortIn_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s6=MultIoE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s6=MultIEI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s6=MultIEo_s6+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s6=MultIEE_s6+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s6=LateInoII_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s6=EarlyInoIo_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s6=MultoIE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s6=LateInooI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s6=NR_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s6=LateExooE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s6=MultoEI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s6=EarlyExoEo_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s6=LateExoEE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s6=MultEII_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s6=MultEIo_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s6=MultEIE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s6=MultEoI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s6=VShortEx_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s6=EoE_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s6=MultEEI_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s6=ShortEx_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s6=LongEx_s6+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                                                       case 7
                                total_s7=total_s7+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_s7=LongIn_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_s7=ShortIn_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_s7=MultIIE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_s7=IoI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_s7=VShortIn_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_s7=MultIoE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_s7=MultIEI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_s7=MultIEo_s7+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_s7=MultIEE_s7+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_s7=LateInoII_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_s7=EarlyInoIo_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_s7=MultoIE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_s7=LateInooI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_s7=NR_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_s7=LateExooE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_s7=MultoEI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_s7=EarlyExoEo_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_s7=LateExoEE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_s7=MultEII_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_s7=MultEIo_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_s7=MultEIE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_s7=MultEoI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_s7=VShortEx_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_s7=EoE_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_s7=MultEEI_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_s7=ShortEx_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_s7=LongEx_s7+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                                                       case 16
                                total_EXT=total_EXT+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_EXT=LongIn_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_EXT=ShortIn_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_EXT=MultIIE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_EXT=IoI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_EXT=VShortIn_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_EXT=MultIoE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_EXT=MultIEI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_EXT=MultIEo_EXT+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_EXT=MultIEE_EXT+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_EXT=LateInoII_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_EXT=EarlyInoIo_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_EXT=MultoIE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_EXT=LateInooI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_EXT=NR_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_EXT=LateExooE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_EXT=MultoEI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_EXT=EarlyExoEo_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_EXT=LateExoEE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_EXT=MultEII_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_EXT=MultEIo_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_EXT=MultEIE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_EXT=MultEoI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_EXT=VShortEx_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_EXT=EoE_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_EXT=MultEEI_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_EXT=ShortEx_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_EXT=LongEx_EXT+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 17
                                total_EREC=total_EREC+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_EREC=LongIn_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_EREC=ShortIn_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_EREC=MultIIE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_EREC=IoI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_EREC=VShortIn_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_EREC=MultIoE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_EREC=MultIEI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_EREC=MultIEo_EREC+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_EREC=MultIEE_EREC+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_EREC=LateInoII_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_EREC=EarlyInoIo_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_EREC=MultoIE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_EREC=LateInooI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_EREC=NR_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_EREC=LateExooE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_EREC=MultoEI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_EREC=EarlyExoEo_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_EREC=LateExoEE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_EREC=MultEII_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_EREC=MultEIo_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_EREC=MultEIE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_EREC=MultEoI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_EREC=VShortEx_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_EREC=EoE_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_EREC=MultEEI_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_EREC=ShortEx_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_EREC=LongEx_EREC+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                        end
                        
                        if daynum>7 && daynum<16
                            switch(treatment{anum}{daynum}{sessionnum}.name)
                                case {'preMB'}
                                total_preMB=total_preMB+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_preMB=LongIn_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_preMB=ShortIn_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_preMB=MultIIE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_preMB=IoI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_preMB=VShortIn_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_preMB=MultIoE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_preMB=MultIEI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_preMB=MultIEo_preMB+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_preMB=MultIEE_preMB+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_preMB=LateInoII_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_preMB=EarlyInoIo_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_preMB=MultoIE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_preMB=LateInooI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_preMB=NR_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_preMB=LateExooE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_preMB=MultoEI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_preMB=EarlyExoEo_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_preMB=LateExoEE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_preMB=MultEII_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_preMB=MultEIo_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_preMB=MultEIE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_preMB=MultEoI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_preMB=VShortEx_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_preMB=EoE_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_preMB=MultEEI_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_preMB=ShortEx_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_preMB=LongEx_preMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                         case {'postMB'} 
                                total_postMB=total_postMB+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_postMB=LongIn_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_postMB=ShortIn_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_postMB=MultIIE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_postMB=IoI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_postMB=VShortIn_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_postMB=MultIoE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_postMB=MultIEI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_postMB=MultIEo_postMB+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_postMB=MultIEE_postMB+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_postMB=LateInoII_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_postMB=EarlyInoIo_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_postMB=MultoIE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_postMB=LateInooI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_postMB=NR_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_postMB=LateExooE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_postMB=MultoEI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_postMB=EarlyExoEo_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_postMB=LateExoEE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_postMB=MultEII_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_postMB=MultEIo_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_postMB=MultEIE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_postMB=MultEoI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_postMB=VShortEx_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_postMB=EoE_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_postMB=MultEEI_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_postMB=ShortEx_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_postMB=LongEx_postMB+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                         case {'preSAL'}
                               
                                total_preSAL=total_preSAL+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_preSAL=LongIn_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_preSAL=ShortIn_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_preSAL=MultIIE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_preSAL=IoI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_preSAL=VShortIn_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_preSAL=MultIoE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_preSAL=MultIEI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_preSAL=MultIEo_preSAL+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_preSAL=MultIEE_preSAL+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_preSAL=LateInoII_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_preSAL=EarlyInoIo_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_preSAL=MultoIE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_preSAL=LateInooI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_preSAL=NR_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_preSAL=LateExooE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_preSAL=MultoEI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_preSAL=EarlyExoEo_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_preSAL=LateExoEE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_preSAL=MultEII_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_preSAL=MultEIo_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_preSAL=MultEIE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_preSAL=MultEoI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_preSAL=VShortEx_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_preSAL=EoE_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_preSAL=MultEEI_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_preSAL=ShortEx_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_preSAL=LongEx_preSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                           case {'postSAL'} 
                                
                                total_postSAL=total_postSAL+1;
                                if RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn_postSAL=LongIn_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn_postSAL=ShortIn_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE_postSAL=MultIIE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI_postSAL=IoI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn_postSAL=VShortIn_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE_postSAL=MultIoE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI_postSAL=MultIEI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo_postSAL=MultIEo_postSAL+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE_postSAL=MultIEE_postSAL+1;
                                             RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII_postSAL=LateInoII_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo_postSAL=EarlyInoIo_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE_postSAL=MultoIE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI_postSAL=LateInooI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR_postSAL=NR_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE_postSAL=LateExooE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI_postSAL=MultoEI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo_postSAL=EarlyExoEo_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE_postSAL=LateExoEE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSplus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII_postSAL=MultEII_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo_postSAL=MultEIo_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE_postSAL=MultEIE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI_postSAL=MultEoI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx_postSAL=VShortEx_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE_postSAL=EoE_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSplus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI_postSAL=MultEEI_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx_postSAL=ShortEx_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSplus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx_postSAL=LongEx_postSAL+1;
                                            RESP.CSplus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
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

clear anum daynum sessionnum enum neurnum

LongInprop(1)=((LongIn_s1 + IoI_s1 + LateInoII_s1 + ...
            LateInooI_s1)/total_s1)*100;
LongInprop(2)=((LongIn_s2 + IoI_s2 + LateInoII_s2 + ...
            LateInooI_s2)/total_s2)*100;
LongInprop(3)=((LongIn_s3 + IoI_s3 + LateInoII_s3 + ...
            LateInooI_s3)/total_s3)*100;
LongInprop(4)=((LongIn_s4 + IoI_s4 + LateInoII_s4 + ...
            LateInooI_s4)/total_s4)*100;
LongInprop(5)=((LongIn_s5 + IoI_s5 + LateInoII_s5 + ...
            LateInooI_s5)/total_s5)*100;        
LongInprop(6)=((LongIn_s6 + IoI_s6 + LateInoII_s6 + ...
            LateInooI_s6)/total_s6)*100;
LongInprop(7)=((LongIn_s7 + IoI_s7 + LateInoII_s7 + ...
            LateInooI_s7)/total_s7)*100;
LongInprop(8)= NaN;        
LongInprop(9)=((LongIn_EXT + IoI_EXT + LateInoII_EXT + ...
            LateInooI_EXT)/total_EXT)*100;        
LongInprop(10)=((LongIn_EREC + IoI_EREC + LateInoII_EREC + ...
            LateInooI_EREC)/total_EREC)*100;
LongInprop(11)= NaN; 
LongInprop(12)=((LongIn_preMB + IoI_preMB + LateInoII_preMB + ...
            LateInooI_preMB)/total_preMB)*100;
LongInprop(13)=((LongIn_postMB + IoI_postMB + LateInoII_postMB + ...
            LateInooI_postMB)/total_postMB)*100;
LongInprop(14)=((LongIn_preSAL + IoI_preSAL + LateInoII_preSAL + ...
            LateInooI_preSAL)/total_preSAL)*100;
LongInprop(15)=((LongIn_postSAL + IoI_postSAL + LateInoII_postSAL + ...
            LateInooI_postSAL)/total_postSAL)*100;

        
        
LateInprop(1)=((LongIn_s1 + IoI_s1 + MultIEI_s1 + LateInoII_s1 + ...
            LateInooI_s1 + MultoEI_s1 + MultEII_s1 + MultEoI_s1 +...
             MultEEI_s1)/total_s1)*100;
LateInprop(2)=((LongIn_s2 + IoI_s2 + MultIEI_s2 + LateInoII_s2 + ...
            LateInooI_s2 + MultoEI_s2 + MultEII_s2 + MultEoI_s2 +...
             MultEEI_s2)/total_s2)*100;
LateInprop(3)=((LongIn_s3 + IoI_s3 + MultIEI_s3 + LateInoII_s3 + ...
            LateInooI_s3 + MultoEI_s3 + MultEII_s3 + MultEoI_s3 +...
             MultEEI_s3)/total_s3)*100; 
LateInprop(4)=((LongIn_s4 + IoI_s4 + MultIEI_s4 + LateInoII_s4 + ...
            LateInooI_s4 + MultoEI_s4 + MultEII_s4 + MultEoI_s4 +...
             MultEEI_s4)/total_s4)*100; 
LateInprop(5)=((LongIn_s5 + IoI_s5 + MultIEI_s5 + LateInoII_s5 + ...
            LateInooI_s5 + MultoEI_s5 + MultEII_s5 + MultEoI_s5 +...
             MultEEI_s5)/total_s5)*100;
LateInprop(6)=((LongIn_s6 + IoI_s6 + MultIEI_s6 + LateInoII_s6 + ...
            LateInooI_s6 + MultoEI_s6 + MultEII_s6 + MultEoI_s6 +...
             MultEEI_s6)/total_s6)*100;
LateInprop(7)=((LongIn_s7 + IoI_s7 + MultIEI_s7 + LateInoII_s7 + ...
            LateInooI_s7 + MultoEI_s7 + MultEII_s7 + MultEoI_s7 +...
             MultEEI_s7)/total_s7)*100;                                            
LateInprop(8)= NaN;
LateInprop(9)=((LongIn_EXT + IoI_EXT + MultIEI_EXT + LateInoII_EXT + ...
            LateInooI_EXT + MultoEI_EXT + MultEII_EXT + MultEoI_EXT +...
             MultEEI_EXT)/total_EXT)*100;
LateInprop(10)=((LongIn_EREC + IoI_EREC + MultIEI_EREC + LateInoII_EREC + ...
            LateInooI_EREC + MultoEI_EREC + MultEII_EREC + MultEoI_EREC +...
             MultEEI_EREC)/total_EREC)*100;
LateInprop(11)= NaN;
LateInprop(12)=((LongIn_preMB + IoI_preMB + MultIEI_preMB + LateInoII_preMB + ...
            LateInooI_preMB + MultoEI_preMB + MultEII_preMB + MultEoI_preMB +...
             MultEEI_preMB)/total_preMB)*100;
LateInprop(13)=((LongIn_postMB + IoI_postMB + MultIEI_postMB + LateInoII_postMB + ...
            LateInooI_postMB + MultoEI_postMB + MultEII_postMB + MultEoI_postMB +...
             MultEEI_postMB)/total_postMB)*100;
LateInprop(14)=((LongIn_preSAL + IoI_preSAL + MultIEI_preSAL + LateInoII_preSAL + ...
            LateInooI_preSAL + MultoEI_preSAL + MultEII_preSAL + MultEoI_preSAL +...
             MultEEI_preSAL)/total_preSAL)*100;
LateInprop(15)=((LongIn_postSAL + IoI_postSAL + MultIEI_postSAL + LateInoII_postSAL + ...
            LateInooI_postSAL + MultoEI_postSAL + MultEII_postSAL + MultEoI_postSAL +...
             MultEEI_postSAL)/total_postSAL)*100;
                                         
         

LongExprop(1)=((LongEx_s1 + EoE_s1 + LateExoEE_s1 + ...
            LateExooE_s1)/total_s1)*100;
LongExprop(2)=((LongEx_s2 + EoE_s2 + LateExoEE_s2 + ...
            LateExooE_s2)/total_s2)*100;
LongExprop(3)=((LongEx_s3 + EoE_s3 + LateExoEE_s3 + ...
            LateExooE_s3)/total_s3)*100;
LongExprop(4)=((LongEx_s4 + EoE_s4 + LateExoEE_s4 + ...
            LateExooE_s4)/total_s4)*100;
LongExprop(5)=((LongEx_s5 + EoE_s5 + LateExoEE_s5 + ...
            LateExooE_s5)/total_s5)*100;        
LongExprop(6)=((LongEx_s6 + EoE_s6 + LateExoEE_s6 + ...
            LateExooE_s6)/total_s6)*100;
LongExprop(7)=((LongEx_s7 + EoE_s7 + LateExoEE_s7 + ...
            LateExooE_s7)/total_s7)*100;
LongExprop(8)= NaN;        
LongExprop(9)=((LongEx_EXT + EoE_EXT + LateExoEE_EXT + ...
            LateExooE_EXT)/total_EXT)*100;        
LongExprop(10)=((LongEx_EREC + EoE_EREC + LateExoEE_EREC + ...
            LateExooE_EREC)/total_EREC)*100;
LongExprop(11)= NaN; 
LongExprop(12)=((LongEx_preMB + EoE_preMB + LateExoEE_preMB + ...
            LateExooE_preMB)/total_preMB)*100;
LongExprop(13)=((LongEx_postMB + EoE_postMB + LateExoEE_postMB + ...
            LateExooE_postMB)/total_postMB)*100;
LongExprop(14)=((LongEx_preSAL + EoE_preSAL + LateExoEE_preSAL + ...
            LateExooE_preSAL)/total_preSAL)*100;
LongExprop(15)=((LongEx_postSAL + EoE_postSAL + LateExoEE_postSAL + ...
            LateExooE_postSAL)/total_postSAL)*100;         
         
LateExprop(1)=((MultIIE_s1 + MultIoE_s1 + MultIEE_s1 + MultoIE_s1 + ...
            LateExooE_s1 + LateExoEE_s1 + MultEIE_s1 + EoE_s1 +...
             LongEx_s1)/total_s1)*100;
LateExprop(2)=((MultIIE_s2 + MultIoE_s2 + MultIEE_s2 + MultoIE_s2 + ...
            LateExooE_s2 + LateExoEE_s2 + MultEIE_s2 + EoE_s2 +...
             LongEx_s2)/total_s2)*100;
LateExprop(3)=((MultIIE_s3 + MultIoE_s3 + MultIEE_s3 + MultoIE_s3 + ...
            LateExooE_s3 + LateExoEE_s3 + MultEIE_s3 + EoE_s3 +...
             LongEx_s3)/total_s3)*100; 
LateExprop(4)=((MultIIE_s4 + MultIoE_s4 + MultIEE_s4 + MultoIE_s4 + ...
            LateExooE_s4 + LateExoEE_s4 + MultEIE_s4 + EoE_s4 +...
             LongEx_s4)/total_s4)*100;
LateExprop(5)=((MultIIE_s5 + MultIoE_s5 + MultIEE_s5 + MultoIE_s5 + ...
            LateExooE_s5 + LateExoEE_s5 + MultEIE_s5 + EoE_s5 +...
             LongEx_s5)/total_s5)*100;
LateExprop(6)=((MultIIE_s6 + MultIoE_s6 + MultIEE_s6 + MultoIE_s6 + ...
            LateExooE_s6 + LateExoEE_s6 + MultEIE_s6 + EoE_s6 +...
             LongEx_s6)/total_s6)*100;
LateExprop(7)=((MultIIE_s7 + MultIoE_s7 + MultIEE_s7 + MultoIE_s7 + ...
            LateExooE_s7 + LateExoEE_s7 + MultEIE_s7 + EoE_s7 +...
             LongEx_s7)/total_s7)*100;
LateExprop(8)=NaN;
LateExprop(9)=((MultIIE_EXT + MultIoE_EXT + MultIEE_EXT + MultoIE_EXT + ...
            LateExooE_EXT + LateExoEE_EXT + MultEIE_EXT + EoE_EXT +...
             LongEx_EXT)/total_EXT)*100;
LateExprop(10)=((MultIIE_EREC + MultIoE_EREC + MultIEE_EREC + MultoIE_EREC + ...
            LateExooE_EREC + LateExoEE_EREC + MultEIE_EREC + EoE_EREC +...
             LongEx_EREC)/total_EREC)*100;                                      
LateExprop(11)=NaN;
LateExprop(12)=((MultIIE_preMB + MultIoE_preMB + MultIEE_preMB + MultoIE_preMB + ...
            LateExooE_preMB + LateExoEE_preMB + MultEIE_preMB + EoE_preMB +...
             LongEx_preMB)/total_preMB)*100;                                            
LateExprop(13)=((MultIIE_postMB + MultIoE_postMB + MultIEE_postMB + MultoIE_postMB + ...
            LateExooE_postMB + LateExoEE_postMB + MultEIE_postMB + EoE_postMB +...
             LongEx_postMB)/total_postMB)*100;
LateExprop(14)=((MultIIE_preSAL + MultIoE_preSAL + MultIEE_preSAL + MultoIE_preSAL + ...
            LateExooE_preSAL + LateExoEE_preSAL + MultEIE_preSAL + EoE_preSAL +...
             LongEx_preSAL)/total_preSAL)*100;                                            
LateExprop(15)=((MultIIE_postSAL + MultIoE_postSAL + MultIEE_postSAL + MultoIE_postSAL + ...
            LateExooE_postSAL + LateExoEE_postSAL + MultEIE_postSAL + EoE_postSAL +...
             LongEx_postSAL)/total_postSAL)*100;                                            

ShortInprop(1)=((ShortIn_s1 + VShortIn_s1 + EarlyInoIo_s1)/total_s1)*100;
ShortInprop(2)=((ShortIn_s2 + VShortIn_s2 + EarlyInoIo_s2)/total_s2)*100;
ShortInprop(3)=((ShortIn_s3 + VShortIn_s3 + EarlyInoIo_s3)/total_s3)*100; 
ShortInprop(4)=((ShortIn_s4 + VShortIn_s4 + EarlyInoIo_s4)/total_s4)*100; 
ShortInprop(5)=((ShortIn_s5 + VShortIn_s5 + EarlyInoIo_s5)/total_s5)*100;
ShortInprop(6)=((ShortIn_s6 + VShortIn_s6 + EarlyInoIo_s6)/total_s6)*100;
ShortInprop(7)=((ShortIn_s7 + VShortIn_s7 + EarlyInoIo_s7)/total_s7)*100;                                            
ShortInprop(8)= NaN;
ShortInprop(9)=((ShortIn_EXT + VShortIn_EXT + EarlyInoIo_EXT)/total_EXT)*100;
ShortInprop(10)=((ShortIn_EREC + VShortIn_EREC + EarlyInoIo_EREC)/total_EREC)*100;
ShortInprop(11)= NaN;
ShortInprop(12)=((ShortIn_preMB + VShortIn_preMB + EarlyInoIo_preMB)/total_preMB)*100;
ShortInprop(13)=((ShortIn_postMB + VShortIn_postMB + EarlyInoIo_postMB)/total_postMB)*100;
ShortInprop(14)=((ShortIn_preSAL + VShortIn_preSAL + EarlyInoIo_preSAL)/total_preSAL)*100;
ShortInprop(15)=((ShortIn_postSAL + VShortIn_postSAL + EarlyInoIo_postSAL)/total_postSAL)*100;         
         
         
total(1)=total_s1; 
total(2)=total_s2; 
total(3)=total_s3; 
total(4)=total_s4;
total(5)=total_s5;
total(6)=total_s6;
total(7)=total_s7;
total(8)=NaN;
total(9)=total_EXT;
total(10)=total_EREC;
total(11)=NaN;
total(12)=total_preMB;
total(13)=total_postMB;
total(14)=total_preSAL;
total(15)=total_postSAL;
                         

clear total_s1 total_s2 total_s3 total_s4 total_s5 total_s6 total_s7 ...
total_EXT total_EREC total_preMB total_postMB total_preSAL total_postSAL                                       
 
clear LongIn_s1 LongIn_s2 LongIn_s3 LongIn_s4 LongIn_s5 LongIn_s6 LongIn_s7 ...
LongIn_EXT LongIn_EREC LongIn_preMB LongIn_postMB LongIn_preSAL LongIn_postSAL  
                                           
clear ShortIn_s1 ShortIn_s2 ShortIn_s3 ShortIn_s4 ShortIn_s5 ShortIn_s6 ShortIn_s7 ...
ShortIn_EXT ShortIn_EREC ShortIn_preMB ShortIn_postMB ShortIn_preSAL ShortIn_postSAL 

clear IoI_s1 IoI_s2 IoI_s3 IoI_s4 IoI_s5 IoI_s6 IoI_s7 ...
IoI_EXT IoI_EREC IoI_preMB IoI_postMB IoI_preSAL IoI_postSAL                                            
                                            
clear VShortIn_s1 VShortIn_s2 VShortIn_s3 VShortIn_s4 VShortIn_s5 VShortIn_s6 VShortIn_s7 ...
VShortIn_EXT VShortIn_EREC VShortIn_preMB VShortIn_postMB VShortIn_preSAL VShortIn_postSAL
   
clear MultIoE_s1 MultIoE_s2 MultIoE_s3 MultIoE_s4 MultIoE_s5 MultIoE_s6 MultIoE_s7 ...
MultIoE_EXT MultIoE_EREC MultIoE_preMB MultIoE_postMB MultIoE_preSAL MultIoE_postSAL 
                         
clear MultIEI_s1 MultIEI_s2 MultIEI_s3 MultIEI_s4 MultIEI_s5 MultIEI_s6 MultIEI_s7 ...
MultIEI_EXT MultIEI_EREC MultIEI_preMB MultIEI_postMB MultIEI_preSAL MultIEI_postSAL
                                      
clear MultIEE_s1 MultIEE_s2 MultIEE_s3 MultIEE_s4 MultIEE_s5 MultIEE_s6 MultIEE_s7 ...
MultIEE_EXT MultIEE_EREC ...
MultIEE_preMB MultIEE_postMB MultIEE_preSAL MultIEE_postSAL  
                                            
clear LateInoII_s1 LateInoII_s2 LateInoII_s3 LateInoII_s4 LateInoII_s5 LateInoII_s6 LateInoII_s7 ...
LateInoII_EXT LateInoII_EREC LateInoII_preMB LateInoII_postMB LateInoII_preSAL LateInoII_postSAL                                             
                                            
clear EarlyInoIo_s1 EarlyInoIo_s2 EarlyInoIo_s3 EarlyInoIo_s4 EarlyInoIo_s5 EarlyInoIo_s6 EarlyInoIo_s7 ...
EarlyInoIo_EXT EarlyInoIo_EREC EarlyInoIo_preMB EarlyInoIo_postMB EarlyInoIo_preSAL EarlyInoIo_postSAL   
                                      
clear MultoIE_s1 MultoIE_s2 MultoIE_s3 MultoIE_s4 MultoIE_s5 MultoIE_s6 MultoIE_s7 ...
MultoIE_EXT MultoIE_EREC MultoIE_preMB MultoIE_postMB MultoIE_preSAL MultoIE_postSAL                                             
                                            
clear LateInooI_s1 LateInooI_s2 LateInooI_s3 LateInooI_s4 LateInooI_s5 LateInooI_s6 LateInooI_s7 ...
LateInooI_EXT LateInooI_EREC LateInooI_preMB LateInooI_postMB LateInooI_preSAL LateInooI_postSAL                                            
  
clear NR_s1 NR_s2 NR_s3 NR_s4 NR_s5 NR_s6 NR_s7 NR_EXT NR_EREC NR_preMB NR_postMB NR_preSAL NR_postSAL                                        
                                            
clear LateExooE_s1 LateExooE_s2 LateExooE_s3 LateExooE_s4 LateExooE_s5 LateExooE_s6 LateExooE_s7 ...
LateExooE_EXT LateExooE_EREC LateExooE_preMB LateExooE_postMB LateExooE_preSAL LateExooE_postSAL                                              

clear MultoEI_s1 MultoEI_s2 MultoEI_s3 MultoEI_s4 MultoEI_s5 MultoEI_s6 MultoEI_s7 ...
MultoEI_EXT MultoEI_EREC MultoEI_preMB MultoEI_postMB MultoEI_preSAL MultoEI_postSAL  
                                            
clear EarlyExoEo_s1 EarlyExoEo_s2 EarlyExoEo_s3 EarlyExoEo_s4 EarlyExoEo_s5 EarlyExoEo_s6 EarlyExoEo_s7 ...
EarlyExoEo_EXT EarlyExoEo_EREC EarlyExoEo_preMB EarlyExoEo_postMB EarlyExoEo_preSAL EarlyExoEo_postSAL
 
clear LateExoEE_s1 LateExoEE_s2 LateExoEE_s3 LateExoEE_s4 LateExoEE_s5 LateExoEE_s6 LateExoEE_s7 ...
LateExoEE_EXT LateExoEE_EREC LateExoEE_preMB LateExoEE_postMB LateExoEE_preSAL LateExoEE_postSAL

clear MultEII_s1 MultEII_s2 MultEII_s3 MultEII_s4 MultEII_s5 MultEII_s6 MultEII_s7 ...
MultEII_EXT MultEII_EREC MultEII_preMB MultEII_postMB MultEII_preSAL MultEII_postSAL 

clear MultEIo_s1 MultEIo_s2 MultEIo_s3 MultEIo_s4 MultEIo_s5 MultEIo_s6 MultEIo_s7 ...
MultEIo_EXT MultEIo_EREC MultEIo_preMB MultEIo_postMB MultEIo_preSAL MultEIo_postSAL

clear MultEIE_s1 MultEIE_s2 MultEIE_s3 MultEIE_s4 MultEIE_s5 MultEIE_s6 MultEIE_s7 ...
MultEIE_EXT MultEIE_EREC MultEIE_preMB MultEIE_postMB MultEIE_preSAL MultEIE_postSAL  

clear MultEoI_s1 MultEoI_s2 MultEoI_s3 MultEoI_s4 MultEoI_s5 MultEoI_s6 MultEoI_s7 ...
MultEoI_EXT MultEoI_EREC MultEoI_preMB MultEoI_postMB MultEoI_preSAL MultEoI_postSAL

clear VShortEx_s1 VShortEx_s2 VShortEx_s3 VShortEx_s4 VShortEx_s5 VShortEx_s6 VShortEx_s7 ...
VShortEx_EXT VShortEx_EREC VShortEx_preMB VShortEx_postMB VShortEx_preSAL VShortEx_postSAL

clear EoE_s1 EoE_s2 EoE_s3 EoE_s4 EoE_s5 EoE_s6 EoE_s7 ...
EoE_EXT EoE_EREC EoE_preMB EoE_postMB EoE_preSAL EoE_postSAL  

clear MultEEI_s1 MultEEI_s2 MultEEI_s3 MultEEI_s4 MultEEI_s5 MultEEI_s6 MultEEI_s7 ...
MultEEI_EXT MultEEI_EREC MultEEI_preMB MultEEI_postMB MultEEI_preSAL MultEEI_postSAL 
 
clear MultIEo_s1 MultIEo_s2 MultIEo_s3 MultIEo_s4 MultIEo_s5 MultIEo_s6 MultIEo_s7 ...
MultIEo_EXT MultIEo_EREC MultIEo_preMB MultIEo_postMB MultIEo_preSAL MultIEo_postSAL 

clear MultIIE_s1 MultIIE_s2 MultIIE_s3 MultIIE_s4 MultIIE_s5 MultIIE_s6 MultIIE_s7 ...
MultIIE_EXT MultIIE_EREC MultIIE_preMB MultIIE_postMB MultIIE_preSAL MultIIE_postSAL 

clear ShortEx_s1 ShortEx_s2 ShortEx_s3 ShortEx_s4 ShortEx_s5 ShortEx_s6 ShortEx_s7 ...
ShortEx_EXT ShortEx_EREC ShortEx_preMB ShortEx_postMB ShortEx_preSAL ShortEx_postSAL 

clear LongEx_s1 LongEx_s2 LongEx_s3 LongEx_s4 LongEx_s5 LongEx_s6 LongEx_s7 ...
LongEx_EXT LongEx_EREC LongEx_preMB LongEx_postMB LongEx_preSAL LongEx_postSAL
%   