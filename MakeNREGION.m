%Classification of neurons by region

%%Coding legend for regions
    %1=BLA
    %2=BST
    %3=BM
    %4=CE
    %5=CE
    %6=Pir ctx or En Ctx
    %7=Ast
    %8=STIA
    %0=border or unsure

%%Coding for APclass (from Bregma)
    %anterior = -1.56 to -2.92 
    %middle = -2.92 to 3.2
    %posterior = -3.2 to -4.2

%%Coding for DVclass
    %dorsal = bottom 1/3 of basal nucleus
    %middle = middle 1/3 of basal nucleus
    %ventral = ventral 1/3 of basal nucleus
    %lateral nucleus = in lateral nucleus
    
%%Coding for MLclass
    %medial = medial 1/3 of basal nucleus
    %middle = middle 1/3 of basal nucleus
    %lateral = lateral 1/3 of basal nucleus

%E9
for anum=1
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                           NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='lateral nucleus';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                          
                    end
            end
        end
    end
end
end

%E10
for anum=2
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;  
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                     end
            end
        end
    end
    end
end

 %E11
for anum=3
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                           NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                          
                    end
            end
        end
    end
end
end

 %E12
for anum=4
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=8;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=8;                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=8;                            
                          
                    end
            end
        end
    end
end
end

%E13
for anum=5
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                           NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=3; %but in BLV
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=3;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=3;
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=3;                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=3;                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';  
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';  
                    end
            end
        end
    end
end
end

%E14 
for anum=6 
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; %ITC?
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; %CE?
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';  
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; %ITC   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                              
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                             
                          
                    end
            end
        end
    end
end
end

%E16 
for anum=7 
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 2 
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';

                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';

                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';

                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                         
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                           
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                          
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';  
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral'; 
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                              
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                             
                          
                    end
            end
        end
    end
end
end

%E17 
for anum=8 
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 2 
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 

                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral'; 

                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                         
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';                          
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                                                 
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;     
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;    
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;  
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                              
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                             
                          
                    end
            end
        end
    end
end
end

%E18 
for anum=9 
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 2 
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6; 

                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 

                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                         
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                          
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                                                 
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';       
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';      
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';   
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';  
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                              
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6; 
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                             
                          
                    end
            end
        end
    end
end
end

%E19
for anum=10
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                          
                    end
            end
        end
    end
end
end

%E21
for anum=11
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';

                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                           
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                          
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                             
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                           
                          
                    end
            end
        end
    end
end
end

%E22
for anum=12
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                          
                    end
            end
        end
    end
end
end

%E23
for anum=13
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                          
                    end
            end
        end
    end
end
end

%E24
for anum=14
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';

                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';                           
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                          
                    end
            end
        end
    end
end
end

%E25
for anum=15
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                           
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                           
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                          
                    end
            end
        end
    end
end
end

%E26
for anum=16
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';                           
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';                         
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';                         
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                          
                          
                    end
            end
        end
    end
end
end

%E27
for anum=17
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum})
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=7; %Ast
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='dorsal';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;                            
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=7; %Ast
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;                           
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;                           
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                         NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                          
                    end
            end
        end
    end
end
end

%E29
for anum=18
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='middle';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='medial';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='lateral';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.DVclass='ventral';
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.MLclass='middle';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                          
                    end
            end
        end
    end
end
end

%OFE13
for anum=19
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;                            
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior'; 
                    end
            end
        end
    end
end
end

%OFE14
for anum=20
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=7;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                          
                    end
            end
        end
    end
end
end

%OFE15
for anum=21
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=7; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=4;   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                           
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='posterior';                           
                          
                    end
            end
        end
    end
end
end

%OFE16
for anum=22
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                          
                          
                    end
            end
        end
    end
    end

end

%OFE17
for anum=23
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle';
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                          
                          
                    end
            end
        end
    end
    end
end

%OFE18
for anum=24
    for daynum=1:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    switch(enum)
                        case 1
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 2
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=6;
                        case 3
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=0;
                        case 4
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 5
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 6
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 7
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 8
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                        
                        case 9
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 10
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='middle'; 
                        case 11
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 12
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';   
                        case 13
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 14
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                            
                        case 15
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';
                        case 16
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum=1;
                            NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.APclass='anterior';                          
                          
                    end
            end
        end
    end
    end
end

clear anum daynum sessionnum enum neurnum nucleusnum APclass DVclass MLclass