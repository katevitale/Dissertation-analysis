spiketimes=cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes);
    answer=spiketimes(cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)>BANAL{anum}{daynum}{sessionnum}.BaselineOnset(trial) ...
    & cell2mat(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.spiketimes)<BDATA{anum}{daynum}{sessionnum}.csplustimes(trial));
    RESP.CSplus.Baseline.Sustained.Spiketimes{anum}{daynum}{sessionnum}{enum}{neurnum}(trial,:)=[answer];              
    
BANAL{anum}{daynum}{sessionnum}.CSplusSustWinOffset(trial)