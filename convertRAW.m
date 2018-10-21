%script to convert to new data format

count = 0;

for r = 1:length(RAW)
    [aname, remain] = strtok(RAW(r).Einfo{1,1}, '_');
    [day, remain] = strtok(remain, '_');
    [session, remain] = strtok(remain, '_');
    switch(aname)
        case {'E9'}
            anum = 1; 
        case {'E10'} 
            anum = 2;
        case {'E11'} 
            anum = 3;        
        case {'E12'} 
            anum = 4;
        case {'E13'} 
            anum = 5;
        case {'E14'} 
            anum = 6;
        case {'E16'} 
            anum = 7;
        case {'E17'} 
            anum = 8;
        case {'E18'} 
            anum = 9;
        case {'E19'} 
            anum = 10;
        case {'E21'} 
            anum = 11;
        case {'E22'} 
            anum = 12;
        case {'E23'} 
            anum = 13;
        case {'E24'} 
            anum = 14;
        case {'E25'} 
            anum = 15;
        case {'E26'} 
            anum = 16;
        case {'E27'} 
            anum = 17;
        case {'E29'} 
            anum = 18;
        case {'OFE13'}
            anum= 19;
        case {'OFE14'}
            anum = 20;
        case {'OFE15'}
            anum = 21;    
        case {'OFE16'}
            anum = 22;
        case {'OFE17'}
            anum = 23;
        case {'OFE18'}
            anum = 24;
        case {'F1'}
            anum = 25;
        case {'F3'}
            anum = 26;
        case {'F4'}
            anum = 27;
        case {'F8'}
            anum = 28;
        case {'F9'}
            anum = 29;
        case {'F10'}
            anum = 30;
    end
    
    if day(1)=='T'
        daynum = str2num(day(2:end));
    else
        switch(day)
            case {'EXT'} 
                daynum=16;
            case {'EREC'}
                daynum=17;
            case {'app1'}
                daynum=18;
            case {'FC1'}
                daynum=19;
            case {'app2'}
                daynum=20;
            case {'FC2'}
                daynum=21;                
        end
    end
           
    switch(session)
        case {'preSAL', 'preMB', 'preL','preR'}
            sessionnum = 1;
            treatment{anum}{daynum}{sessionnum}.name = session;
        case {'postSAL', 'postMB', 'postL', 'postR'}
            sessionnum = 2;
            treatment{anum}{daynum}{sessionnum}.name = session;  
        otherwise 
            sessionnum = 1;
    end
    
    %Make BDATA structure
    if any(strncmpi(RAW(r).Einfo(:,2), 'Start', 6))
        BDATA{anum}{daynum}{sessionnum}.start = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Start', 6)),1};
    else
        count=count+1
        C=RAW(r).Nrast;
        [s,d] = cellfun(@size,C); 
        if max(s)>=max(d)
            [~,ind]=max(s);
        else
            [~,ind]=max(d);
        end
        C = RAW(r).Nrast{ind};
        BDATA{anum}{daynum}{sessionnum}.start = C(1);
        rvals(count)=r;
        
    end
    BDATA{anum}{daynum}{sessionnum}.csplustimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'CSplus', 6)),1};
    BDATA{anum}{daynum}{sessionnum}.csminustimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'CSminus', 6)),1};
    BDATA{anum}{daynum}{sessionnum}.rewardtimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Reward', 6)),1};
    BDATA{anum}{daynum}{sessionnum}.sustporttimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Sustport', 6)),1};
    
    if strncmpi(RAW(r).Einfo(:,2),'Shock',6)
        BDATA{anum}{daynum}{sessionnum}.shocktimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Shock', 6)),1}; 
    end
    BDATA{anum}{daynum}{sessionnum}.PEPostCSPlusTimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'PEpostCSplus', 12)),1};
    
    
    % to take into account that Stop can be named as either
    % Stop or Session_End
    if any(strncmpi(RAW(r).Einfo(:,2), 'Stop', 6)) 
        BDATA{anum}{daynum}{sessionnum}.endtime = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Stop', 6)),1};
    elseif any(strncmpi(RAW(r).Einfo(:,2), 'Session_End', 6))
        BDATA{anum}{daynum}{sessionnum}.endtime = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Session_End', 6)),1};
    end
    
    % to take into account that port entry can be named as either
    % Port Entry or Port_Entry
    if any(strncmpi(RAW(r).Einfo(:,2), 'Port Entry', 6))
            BDATA{anum}{daynum}{sessionnum}.PEtimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Port Entry', 6)),1};
    elseif any(strncmpi(RAW(r).Einfo(:,2), 'Port_Entry', 6))
            BDATA{anum}{daynum}{sessionnum}.PEtimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Port_Entry', 6)),1};
    end
     
    
   
    %to take into account that port exit can either be named as Port Exit
    %or Port_Exit
    if any(strncmpi(RAW(r).Einfo(:,2), 'Port Exit', 6))
        BDATA{anum}{daynum}{sessionnum}.portexittimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Port Exit', 6)),1};
    elseif any(strncmpi(RAW(r).Einfo(:,2), 'Port_Exit', 6))
        BDATA{anum}{daynum}{sessionnum}.portexittimes = RAW(r).Erast{find(strncmpi(RAW(r).Einfo(:,2), 'Port_Exit', 6)),1};
    end
    
    %Make NDATA structure
    for neuron=1:length(RAW(r).Ninfo)
        neurname=RAW(r).Ninfo{neuron,2};
        neurname=neurname(5:end);
        if neurname(1)==0
            neurname=neurname(2:end);
        end
        [enum,neurletter] = strtok(neurname,neurname(end));
        enum=str2num(enum);
        switch(neurletter)
            case 'a'
                neurnum=1;
            case 'b'
                neurnum=2;
            case 'c'
                neurnum=3;
            case 'd'
                neurnum=4;
            case 'e'
                neurnum=5;
        end
        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name=horzcat(aname,' ', day, ' ', session, ' ', neurname);
        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes=RAW(r).Nrast(neuron,1);
        % waveforms are in mV, one each 25 us
        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.waveform=RAW(r).waveforms(neuron,:);  
        [~,NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration,~,NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP] = WaveformAnalysis(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.waveform);%function to call waveforms
        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate = length(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes{1})/BDATA{anum}{daynum}{sessionnum}.endtime; % firing rate = number of spikes / total time
        % correction for there being two firing rates for E17
        if length(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate)>1 
            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.firingrate(2);
        end
        NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.ISI = BDATA{anum}{daynum}{sessionnum}.endtime/length(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes{1});% ISI = total time / number of spikes
        % correction for there being two ISIs for E17
        if length(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.ISI)>1 
            NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.ISI=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.ISI(2);
        end
    end

end



clear r remain aname day session anum daynum sessionnum neurname enum ...
neurletter neuron neurnum C d ind s 

