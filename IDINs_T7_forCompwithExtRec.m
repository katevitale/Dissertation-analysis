
maxnumberofINs = 200;
maxnumberofother = 200;
waveformsize=size(NDATA{1}{1}{1}{3}{1}.waveform,2);
WaveformsIN=NaN(maxnumberofINs,waveformsize);
WaveformsOther=NaN(maxnumberofother,waveformsize);
clear BaselineIN BaselineOther LongExFLAGIN_T7 LongExFLAGOther_T7

x=0.025:0.025:0.8;

i_IN=1;
i_other=1;
for anum=1:15 %animals
    for daynum=7%:length(NDATA{anum}) %days
        for sessionnum=1:length(NDATA{anum}{daynum})%sessions
            for enum=1:length(NDATA{anum}{daynum}{sessionnum}) %electrodes
                for neurnum=1:length(NDATA{anum}{daynum}{sessionnum}{enum})%neurons
                    if NREGION{anum}{daynum}{sessionnum}{enum}{neurnum}.nucleusnum==1

                            if log(RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum})>0.2 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.duration<350 && NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.AUP<35
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=1;
                                NameIN_T7{i_IN}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                FLAGIN_T7{i_IN}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicIN_T7{i_IN}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                SustainedIN_T7{i_IN}=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                WaveformsIN(i_IN,:)=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.waveform;
                                BaselineIN(i_IN,:)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LongExFLAGIN_T7{i_IN}=RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_IN=i_IN+1;
                            else
                                NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.PutativeIN=0;
                                NameOther_T7{i_other}=NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.name;
                                FLAGOther_T7{i_other}=RESP.CSplus.FLAG{anum}{daynum}{sessionnum}{enum}{neurnum};
                                PhasicOther_T7{i_other}=RESP.CSplus.Onset.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                SustainedOther_T7{i_other}=RESP.CSplus.Sustained.MeanFRz{anum}{daynum}{sessionnum}{enum}{neurnum};
                                WaveformsOther(i_other,:) = NDATA{anum}{daynum}{sessionnum}{enum}{neurnum}.waveform;
                                BaselineOther(i_other,:)=RESP.CSplus.Baseline.Sustained.MeanFR{anum}{daynum}{sessionnum}{enum}{neurnum};
                                LongExFLAGOther_T7{i_other}=RESP.CSplus.LongEx{anum}{daynum}{sessionnum}{enum}{neurnum};
                                i_other=i_other+1;
                            end

                    end
                end
            end
        end
    end
end


INWaveform=nanmean(WaveformsIN);
INWaveformSEM=nanstd(WaveformsIN)/sqrt(size(WaveformsIN,1));
OtherWaveform=nanmean(WaveformsOther);
OtherWaveformSEM=nanstd(WaveformsOther)/sqrt(size(WaveformsOther,1));

figure
plot(x,INWaveform, 'Color', [1 0.55 0], 'LineWidth', 2)
hold on
plot(x,OtherWaveform, 'k', 'LineWidth', 2)
hold on
plot(x, INWaveform+INWaveformSEM, 'Color', [1 0.55, 0], 'LineWidth', 0.25)
hold on
plot(x, INWaveform-INWaveformSEM, 'Color', [1 0.55, 0], 'LineWidth', 0.25)
hold on
plot(x, OtherWaveform+OtherWaveformSEM, 'k', 'LineWidth', 0.25)
hold on
plot(x, OtherWaveform-OtherWaveformSEM, 'k', 'LineWidth', 0.25)

xlabel('s'); ylabel('mV');
ylim ([-0.15,0.1])
legend('Putative INs (N=16)', 'Unidentified neurons (N=125)')
clear i_IN i_other waveformsize
