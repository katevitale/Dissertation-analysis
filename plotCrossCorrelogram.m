ts2=RESP{4}{7}{1}{1}{1}.CSplus.Sustained.Spiketimes;
ts1=RESP{4}{7}{1}{1}{2}.CSplus.Sustained.Spiketimes;
window = [-0.05 0.05];
[tsOffsets, ts1idx, ts2idx] = crosscorrelogram(ts1, ts2, window);
figure
hist(tsOffsets, 100);