
% 3D plot spike AUP vs. log of firing rate vs duration for all neurons
figure
for anum=1:length(NDATA) %animals
    for daynum=1%:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1
                        if any(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP) && any(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}) && any(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration)
                        %putative INs in turquoise
                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                scatter3(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP,log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}),NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration,12,[0 0.75 0.7],'filled');
                                hold on
                            % other neurons in black
                            else
                                scatter3(NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP,log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum}),NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration,12,'k','filled');
                                hold on
                            end
                        end
                    end
                end
            end
        end
    end
end

 %xlabel('Waveform AUP (us)', 'fontsize', 22); ylabel('Log of baseline firing rate(spikes/s)', 'fontsize', 22); %zlabel('Waveform duration (ms)','fontsize',22)

set(gca, 'fontsize', 22)

axis tight
    
%clear anum daynum sessionnum enum neurnum


