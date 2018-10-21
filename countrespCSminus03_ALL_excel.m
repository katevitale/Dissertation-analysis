%the goal of this script is to determine numbers of neurons inhibited or
%excited or multiphasic in each session

% 072316 - changed to set flag to -1 if there is a short inhibition

% set counts to 0

total(1)=0; total(7)=0; total(9)=0; total(10)=0; total(12)=0; total(13)=0; total(14)=0; total(15)=0; 
total(2)=0; total(3)=0; total(4)=0; total(5)=0; total(6)=0; 
LongIn(1)=0; LongIn(7)=0; LongIn(9)=0; LongIn(10)=0; LongIn(12)=0; LongIn(13)=0; LongIn(14)=0; LongIn(15)=0; 
LongIn(2)=0; LongIn(3)=0; LongIn(4)=0; LongIn(5)=0; LongIn(6)=0; 
ShortIn(1)=0; ShortIn(7)=0; ShortIn(9)=0; ShortIn(10)=0; ShortIn(12)=0; ShortIn(13)=0; ShortIn(14)=0; ShortIn(15)=0; 
ShortIn(2)=0; ShortIn(3)=0; ShortIn(4)=0; ShortIn(5)=0; ShortIn(6)=0; 
MultIIE(1)=0; MultIIE(7)=0; MultIIE(9)=0; MultIIE(10)=0; MultIIE(12)=0; MultIIE(13)=0; MultIIE(14)=0; MultIIE(15)=0; 
MultIIE(2)=0; MultIIE(3)=0; MultIIE(4)=0; MultIIE(5)=0; MultIIE(6)=0;
IoI(1)=0; IoI(7)=0; IoI(9)=0; IoI(10)=0; IoI(12)=0; IoI(13)=0; IoI(14)=0; IoI(15)=0; 
IoI(2)=0; IoI(3)=0; IoI(4)=0; IoI(5)=0; IoI(6)=0; 
VShortIn(1)=0; VShortIn(7)=0; VShortIn(9)=0; VShortIn(10)=0; VShortIn(12)=0; VShortIn(13)=0; VShortIn(14)=0; VShortIn(15)=0; 
VShortIn(2)=0; VShortIn(3)=0; VShortIn(4)=0; VShortIn(5)=0; VShortIn(6)=0; 
MultIoE(1)=0; MultIoE(7)=0; MultIoE(9)=0; MultIoE(10)=0; MultIoE(12)=0; MultIoE(13)=0; MultIoE(14)=0; MultIoE(15)=0; 
MultIoE(2)=0; MultIoE(3)=0; MultIoE(4)=0; MultIoE(5)=0; MultIoE(6)=0; 
MultIEI(1)=0; MultIEI(7)=0; MultIEI(9)=0; MultIEI(10)=0; MultIEI(12)=0; MultIEI(13)=0; MultIEI(14)=0; MultIEI(15)=0; 
MultIEI(2)=0; MultIEI(3)=0; MultIEI(4)=0; MultIEI(5)=0; MultIEI(6)=0; 
MultIEo(1)=0; MultIEo(7)=0; MultIEo(9)=0; MultIEo(10)=0; MultIEo(12)=0; MultIEo(13)=0; MultIEo(14)=0; MultIEo(15)=0; 
MultIEo(2)=0; MultIEo(3)=0; MultIEo(4)=0; MultIEo(5)=0; MultIEo(6)=0; 
MultIEE(1)=0; MultIEE(7)=0; MultIEE(9)=0; MultIEE(10)=0; MultIEE(12)=0; MultIEE(13)=0; MultIEE(14)=0; MultIEE(15)=0; 
MultIEE(2)=0; MultIEE(3)=0; MultIEE(4)=0; MultIEE(5)=0; MultIEE(6)=0;
LateInoII(1)=0; LateInoII(7)=0; LateInoII(9)=0; LateInoII(10)=0; LateInoII(12)=0; LateInoII(13)=0; LateInoII(14)=0; LateInoII(15)=0; 
LateInoII(2)=0; LateInoII(3)=0; LateInoII(4)=0; LateInoII(5)=0; LateInoII(6)=0; 
EarlyInoIo(1)=0; EarlyInoIo(7)=0; EarlyInoIo(9)=0; EarlyInoIo(10)=0; EarlyInoIo(12)=0; EarlyInoIo(13)=0; EarlyInoIo(14)=0; EarlyInoIo(15)=0; 
EarlyInoIo(2)=0; EarlyInoIo(3)=0; EarlyInoIo(4)=0; EarlyInoIo(5)=0; EarlyInoIo(6)=0; 
MultoIE(1)=0; MultoIE(7)=0; MultoIE(9)=0; MultoIE(10)=0; MultoIE(12)=0; MultoIE(13)=0; MultoIE(14)=0; MultoIE(15)=0; 
MultoIE(2)=0; MultoIE(3)=0; MultoIE(4)=0; MultoIE(5)=0; MultoIE(6)=0; 
LateInooI(1)=0; LateInooI(7)=0; LateInooI(9)=0; LateInooI(10)=0; LateInooI(12)=0; LateInooI(13)=0; LateInooI(14)=0; LateInooI(15)=0; 
LateInooI(2)=0; LateInooI(3)=0; LateInooI(4)=0; LateInooI(5)=0; LateInooI(6)=0; 
NR(1)=0; NR(7)=0; NR(9)=0; NR(10)=0; NR(12)=0; NR(13)=0; NR(14)=0; NR(15)=0; 
NR(2)=0; NR(3)=0; NR(4)=0; NR(5)=0; NR(6)=0; 
LateExooE(1)=0; LateExooE(7)=0; LateExooE(9)=0; LateExooE(10)=0; LateExooE(12)=0; LateExooE(13)=0; LateExooE(14)=0; LateExooE(15)=0; 
LateExooE(2)=0; LateExooE(3)=0; LateExooE(4)=0; LateExooE(5)=0; LateExooE(6)=0; 
MultoEI(1)=0; MultoEI(7)=0; MultoEI(9)=0; MultoEI(10)=0; MultoEI(12)=0; MultoEI(13)=0; MultoEI(14)=0; MultoEI(15)=0; 
MultoEI(2)=0; MultoEI(3)=0; MultoEI(4)=0; MultoEI(5)=0; MultoEI(6)=0; 
EarlyExoEo(1)=0; EarlyExoEo(7)=0; EarlyExoEo(9)=0; EarlyExoEo(10)=0; EarlyExoEo(12)=0; EarlyExoEo(13)=0; EarlyExoEo(14)=0; EarlyExoEo(15)=0; 
EarlyExoEo(2)=0; EarlyExoEo(3)=0; EarlyExoEo(4)=0; EarlyExoEo(5)=0; EarlyExoEo(6)=0;
LateExoEE(1)=0; LateExoEE(7)=0; LateExoEE(9)=0; LateExoEE(10)=0; LateExoEE(12)=0; LateExoEE(13)=0; LateExoEE(14)=0; LateExoEE(15)=0; 
LateExoEE(2)=0; LateExoEE(3)=0; LateExoEE(4)=0; LateExoEE(5)=0; LateExoEE(6)=0;
MultEII(1)=0; MultEII(7)=0; MultEII(9)=0; MultEII(10)=0; MultEII(12)=0; MultEII(13)=0; MultEII(14)=0; MultEII(15)=0; 
MultEII(2)=0; MultEII(3)=0; MultEII(4)=0; MultEII(5)=0; MultEII(6)=0;
MultEIo(1)=0; MultEIo(7)=0; MultEIo(9)=0; MultEIo(10)=0; MultEIo(12)=0; MultEIo(13)=0; MultEIo(14)=0; MultEIo(15)=0; 
MultEIo(2)=0; MultEIo(3)=0; MultEIo(4)=0; MultEIo(5)=0; MultEIo(6)=0;
MultEIE(1)=0; MultEIE(7)=0; MultEIE(9)=0; MultEIE(10)=0; MultEIE(12)=0; MultEIE(13)=0; MultEIE(14)=0; MultEIE(15)=0; 
MultEIE(2)=0; MultEIE(3)=0; MultEIE(4)=0; MultEIE(5)=0; MultEIE(6)=0; 
MultEoI(1)=0; MultEoI(7)=0; MultEoI(9)=0; MultEoI(10)=0; MultEoI(12)=0; MultEoI(13)=0; MultEoI(14)=0; MultEoI(15)=0; 
MultEoI(2)=0; MultEoI(3)=0; MultEoI(4)=0; MultEoI(5)=0; MultEoI(6)=0;
VShortEx(1)=0; VShortEx(7)=0; VShortEx(9)=0; VShortEx(10)=0; VShortEx(12)=0; VShortEx(13)=0; VShortEx(14)=0; VShortEx(15)=0; 
VShortEx(2)=0; VShortEx(3)=0; VShortEx(4)=0; VShortEx(5)=0; VShortEx(6)=0;
EoE(1)=0; EoE(7)=0; EoE(9)=0; EoE(10)=0; EoE(12)=0; EoE(13)=0; EoE(14)=0; EoE(15)=0; 
EoE(2)=0; EoE(3)=0; EoE(4)=0; EoE(5)=0; EoE(6)=0; 
MultEEI(1)=0; MultEEI(7)=0; MultEEI(9)=0; MultEEI(10)=0; MultEEI(12)=0; MultEEI(13)=0; MultEEI(14)=0; MultEEI(15)=0; 
MultEEI(2)=0; MultEEI(3)=0; MultEEI(4)=0; MultEEI(5)=0; MultEEI(6)=0; 
ShortEx(1)=0; ShortEx(7)=0; ShortEx(9)=0; ShortEx(10)=0; ShortEx(12)=0; ShortEx(13)=0; ShortEx(14)=0; ShortEx(15)=0; 
ShortEx(2)=0; ShortEx(3)=0; ShortEx(4)=0; ShortEx(5)=0; ShortEx(6)=0; 
LongEx(1)=0; LongEx(7)=0; LongEx(9)=0; LongEx(10)=0; LongEx(12)=0; LongEx(13)=0; LongEx(14)=0; LongEx(15)=0; 
LongEx(2)=0; LongEx(3)=0; LongEx(4)=0; LongEx(5)=0; LongEx(6)=0;

for anum=1:length(NDATA) %animals
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        switch(daynum)
                            case 1
                                total(1)=total(1)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(1)=LongIn(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(1)=ShortIn(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(1)=MultIIE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(1)=IoI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(1)=VShortIn(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(1)=MultIoE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(1)=MultIEI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(1)=MultIEo(1)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(1)=MultIEE(1)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(1)=LateInoII(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(1)=EarlyInoIo(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(1)=MultoIE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(1)=LateInooI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(1)=NR(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(1)=LateExooE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(1)=MultoEI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(1)=EarlyExoEo(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(1)=LateExoEE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(1)=MultEII(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(1)=MultEIo(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(1)=MultEIE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(1)=MultEoI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(1)=VShortEx(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(1)=EoE(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(1)=MultEEI(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(1)=ShortEx(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(1)=LongEx(1)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                            case 2
                                total(2)=total(2)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(2)=LongIn(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(2)=ShortIn(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(2)=MultIIE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(2)=IoI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(2)=VShortIn(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(2)=MultIoE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(2)=MultIEI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(2)=MultIEo(2)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(2)=MultIEE(2)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(2)=LateInoII(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(2)=EarlyInoIo(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(2)=MultoIE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(2)=LateInooI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(2)=NR(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(2)=LateExooE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(2)=MultoEI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(2)=EarlyExoEo(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(2)=LateExoEE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(2)=MultEII(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(2)=MultEIo(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(2)=MultEIE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(2)=MultEoI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(2)=VShortEx(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(2)=EoE(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(2)=MultEEI(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(2)=ShortEx(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(2)=LongEx(2)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                            case 3
                                total(3)=total(3)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(3)=LongIn(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(3)=ShortIn(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(3)=MultIIE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(3)=IoI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(3)=VShortIn(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(3)=MultIoE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(3)=MultIEI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(3)=MultIEo(3)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(3)=MultIEE(3)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(3)=LateInoII(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(3)=EarlyInoIo(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(3)=MultoIE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(3)=LateInooI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(3)=NR(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(3)=LateExooE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(3)=MultoEI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(3)=EarlyExoEo(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(3)=LateExoEE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(3)=MultEII(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(3)=MultEIo(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(3)=MultEIE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(3)=MultEoI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(3)=VShortEx(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(3)=EoE(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(3)=MultEEI(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(3)=ShortEx(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(3)=LongEx(3)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 4
                                total(4)=total(4)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(4)=LongIn(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(4)=ShortIn(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(4)=MultIIE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(4)=IoI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(4)=VShortIn(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(4)=MultIoE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(4)=MultIEI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(4)=MultIEo(4)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(4)=MultIEE(4)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(4)=LateInoII(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(4)=EarlyInoIo(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(4)=MultoIE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(4)=LateInooI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(4)=NR(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(4)=LateExooE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(4)=MultoEI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(4)=EarlyExoEo(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(4)=LateExoEE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(4)=MultEII(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(4)=MultEIo(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(4)=MultEIE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(4)=MultEoI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(4)=VShortEx(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(4)=EoE(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(4)=MultEEI(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(4)=ShortEx(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(4)=LongEx(4)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 5
                                total(5)=total(5)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(5)=LongIn(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(5)=ShortIn(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(5)=MultIIE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(5)=IoI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(5)=VShortIn(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(5)=MultIoE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(5)=MultIEI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(5)=MultIEo(5)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(5)=MultIEE(5)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(5)=LateInoII(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(5)=EarlyInoIo(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(5)=MultoIE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(5)=LateInooI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(5)=NR(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(5)=LateExooE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(5)=MultoEI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(5)=EarlyExoEo(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(5)=LateExoEE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(5)=MultEII(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(5)=MultEIo(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(5)=MultEIE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(5)=MultEoI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(5)=VShortEx(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(5)=EoE(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(5)=MultEEI(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(5)=ShortEx(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(5)=LongEx(5)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                         
                           case 6
                                total(6)=total(6)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(6)=LongIn(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(6)=ShortIn(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(6)=MultIIE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(6)=IoI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(6)=VShortIn(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(6)=MultIoE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(6)=MultIEI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(6)=MultIEo(6)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(6)=MultIEE(6)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(6)=LateInoII(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(6)=EarlyInoIo(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(6)=MultoIE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(6)=LateInooI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(6)=NR(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(6)=LateExooE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(6)=MultoEI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(6)=EarlyExoEo(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(6)=LateExoEE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(6)=MultEII(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(6)=MultEIo(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(6)=MultEIE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(6)=MultEoI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(6)=VShortEx(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(6)=EoE(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(6)=MultEEI(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(6)=ShortEx(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(6)=LongEx(6)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                                                       case 7
                                total(7)=total(7)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(7)=LongIn(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(7)=ShortIn(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(7)=MultIIE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(7)=IoI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(7)=VShortIn(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(7)=MultIoE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(7)=MultIEI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(7)=MultIEo(7)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(7)=MultIEE(7)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(7)=LateInoII(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(7)=EarlyInoIo(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(7)=MultoIE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(7)=LateInooI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(7)=NR(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(7)=LateExooE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(7)=MultoEI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(7)=EarlyExoEo(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(7)=LateExoEE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(7)=MultEII(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(7)=MultEIo(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(7)=MultEIE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(7)=MultEoI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(7)=VShortEx(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(7)=EoE(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(7)=MultEEI(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(7)=ShortEx(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(7)=LongEx(7)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                                                       case 16
                                total(9)=total(9)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(9)=LongIn(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(9)=ShortIn(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(9)=MultIIE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(9)=IoI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(9)=VShortIn(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(9)=MultIoE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(9)=MultIEI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(9)=MultIEo(9)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(9)=MultIEE(9)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(9)=LateInoII(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(9)=EarlyInoIo(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(9)=MultoIE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(9)=LateInooI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(9)=NR(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(9)=LateExooE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(9)=MultoEI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(9)=EarlyExoEo(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(9)=LateExoEE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(9)=MultEII(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(9)=MultEIo(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(9)=MultEIE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(9)=MultEoI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(9)=VShortEx(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(9)=EoE(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(9)=MultEEI(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(9)=ShortEx(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(9)=LongEx(9)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                           case 17
                                total(10)=total(10)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(10)=LongIn(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(10)=ShortIn(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(10)=MultIIE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(10)=IoI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(10)=VShortIn(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(10)=MultIoE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(10)=MultIEI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(10)=MultIEo(10)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(10)=MultIEE(10)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(10)=LateInoII(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(10)=EarlyInoIo(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(10)=MultoIE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(10)=LateInooI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(10)=NR(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(10)=LateExooE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(10)=MultoEI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(10)=EarlyExoEo(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(10)=LateExoEE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(10)=MultEII(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(10)=MultEIo(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(10)=MultEIE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(10)=MultEoI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(10)=VShortEx(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(10)=EoE(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(10)=MultEEI(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(10)=ShortEx(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(10)=LongEx(10)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                        end
                        
                        if daynum>7 && daynum<16
                            switch(treatment{anum}{daynum}{sessionnum}.name)
                                case {'preMB'}
                                total(12)=total(12)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(12)=LongIn(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(12)=ShortIn(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(12)=MultIIE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(12)=IoI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(12)=VShortIn(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(12)=MultIoE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(12)=MultIEI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(12)=MultIEo(12)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(12)=MultIEE(12)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(12)=LateInoII(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(12)=EarlyInoIo(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(12)=MultoIE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(12)=LateInooI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(12)=NR(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(12)=LateExooE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(12)=MultoEI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(12)=EarlyExoEo(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(12)=LateExoEE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(12)=MultEII(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(12)=MultEIo(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(12)=MultEIE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(12)=MultEoI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(12)=VShortEx(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(12)=EoE(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(12)=MultEEI(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(12)=ShortEx(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(12)=LongEx(12)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                         case {'postMB'} 
                                total(13)=total(13)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(13)=LongIn(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(13)=ShortIn(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(13)=MultIIE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(13)=IoI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(13)=VShortIn(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(13)=MultIoE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(13)=MultIEI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(13)=MultIEo(13)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(13)=MultIEE(13)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(13)=LateInoII(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(13)=EarlyInoIo(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(13)=MultoIE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(13)=LateInooI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(13)=NR(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(13)=LateExooE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(13)=MultoEI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(13)=EarlyExoEo(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(13)=LateExoEE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(13)=MultEII(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(13)=MultEIo(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(13)=MultEIE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(13)=MultEoI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(13)=VShortEx(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(13)=EoE(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(13)=MultEEI(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(13)=ShortEx(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(13)=LongEx(13)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                                
                         case {'preSAL'}
                               
                                total(14)=total(14)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(14)=LongIn(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(14)=ShortIn(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(14)=MultIIE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(14)=IoI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(14)=VShortIn(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(14)=MultIoE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(14)=MultIEI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(14)=MultIEo(14)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(14)=MultIEE(14)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(14)=LateInoII(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(14)=EarlyInoIo(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(14)=MultoIE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(14)=LateInooI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(14)=NR(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(14)=LateExooE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(14)=MultoEI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(14)=EarlyExoEo(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(14)=LateExoEE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(14)=MultEII(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(14)=MultEIo(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(14)=MultEIE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(14)=MultEoI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(14)=VShortEx(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(14)=EoE(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(14)=MultEEI(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(14)=ShortEx(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(14)=LongEx(14)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    end
                                end
                           case {'postSAL'} 
                                
                                total(15)=total(15)+1;
                                if RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==-1 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LongIn(15)=LongIn(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;             
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortIn(15)=ShortIn(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIIE(15)=MultIIE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0 
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            IoI(15)=IoI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortIn(15)=VShortIn(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultIoE(15)=MultIoE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}== 1
                                         if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultIEI(15)=MultIEI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                             MultIEo(15)=MultIEo(15)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                             MultIEE(15)=MultIEE(15)+1;
                                             RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                             RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;  
                                         end
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==0
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInoII(15)=LateInoII(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyInoIo(15)=EarlyInoIo(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultoIE(15)=MultoIE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2; 
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            LateInooI(15)=LateInooI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=-1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            NR(15)=NR(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExooE(15)=LateExooE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                     elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultoEI(15)=MultoEI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            EarlyExoEo(15)=EarlyExoEo(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LateExoEE(15)=LateExoEE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end   
                                    end
                                elseif RESP.CSminus.Onset.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}==1
                                    if RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1
                                            MultEII(15)=MultEII(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                         elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            MultEIo(15)=MultEIo(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            MultEIE(15)=MultEIE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEoI(15)=MultEoI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            VShortEx(15)=VShortEx(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            EoE(15)=EoE(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        end
                                    elseif RESP.CSminus.Early.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                        if RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == -1 
                                            MultEEI(15)=MultEEI(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=2;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 0
                                            ShortEx(15)=ShortEx(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                        elseif RESP.CSminus.Late.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum} == 1
                                            LongEx(15)=LongEx(15)+1;
                                            RESP.CSminus.LongIn{anum}{daynum}{sessionnum}{enum}{neurnum}=0;
                                            RESP.CSminus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
                                            RESP.CSminus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum}=1;
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

                                           

daynames = {'Day 1','Day 2','Day 3','Day 4','Day 5','Day 6','Day 7',' ','Ext','EREC',' ','PreMB','PostMB','PreSAL','PostSAL'};
responsetypenames = {'total';'Non-responsive';'VShortEx';'ShortEx';'EarlyExoEo';'LateExoEE';'LateExooE';'EoE';'LongEx';'VShortIn';'ShortIn';'EarlyInoIo';'LateInoII';'LateInooI';'IoI';'LongIn';'MultIIE';'MultIoE';'MultIEI';'MultIEo';'MultIEE';'MultoIE';'MultoEI';'MultEII';'MultEIo';'MultEIE';'MultEoI';'MultEEI'}
exceltable = [total;NR;VShortEx;ShortEx;EarlyExoEo;LateExoEE;LateExooE;EoE;LongEx;VShortIn;ShortIn;EarlyInoIo;LateInoII;LateInooI;IoI;LongIn;MultIIE;MultIoE;MultIEI;MultIEo;MultIEE;MultoIE;MultoEI;MultEII;MultEIo;MultEIE;MultEoI;MultEEI]        

% then copy and paste daynames as headers, responsetypenames as row names,
% and excel table as values in table.

clear total                                      
 
clear LongIn 
                                           
clear ShortIn

clear IoI                                           
                                            
clear VShortIn
   
clear MultIoE
                         
clear MultIEI
                                      
clear MultIEE  
                                            
clear LateInoII                                             
                                            
clear EarlyInoIo   
                                      
clear MultoIE                                            
                                            
clear LateInooI                                          
  
clear NR                                        
                                            
clear LateExooE                                             

clear MultoEI 
                                            
clear EarlyExoEo
 
clear LateExoEE

clear MultEII 

clear MultEIo

clear MultEIE 

clear MultEoI

clear VShortEx

clear EoE  

clear MultEEI
 
clear MultIEo

clear MultIIE 

clear ShortEx 

clear LongEx
  