LatLong=[];
TIPLong=[];
TrialsLong=[];
i_beh=1;
clear  LatAll TIPAll Lat TIP
for anum=1:8
    for daynum=16 %days
        for sessionnum=1%sessions
            invalid_trials=BANAL{anum}{daynum}{sessionnum}.TrialValidity==0;
            %latencies
            latencies=BANAL{anum}{daynum}{sessionnum}.PELat;
            latencies(invalid_trials)=NaN;
            LatAll(i_beh,:)=latencies;
            LatLong=horzcat(LatLong,latencies);
            LatAll_5tbin(i_beh,:)=[nanmean(latencies(1:5)),nanmean(latencies(6:10)),nanmean(latencies(11:15)),...
                nanmean(latencies(16:20)),nanmean(latencies(21:25)),nanmean(latencies(26:30))];
            %times in port
            times_in_port=BANAL{anum}{daynum}{sessionnum}.TIP;
            times_in_port(invalid_trials)=NaN;
            TIPAll(i_beh,:)=times_in_port;
            TIPLong=horzcat(TIPLong,times_in_port);
            TIPAll_5tbin(i_beh,:)=[nanmean(times_in_port(1:5)),nanmean(times_in_port(6:10)),nanmean(times_in_port(11:15)),...
                nanmean(times_in_port(16:20)),nanmean(times_in_port(21:25)),nanmean(times_in_port(26:30))];
            %trials
            Trials=1:1:length(latencies);
            TrialsLong=horzcat(TrialsLong,Trials);
            %add to i_beh
            i_beh=i_beh+1;
        end
    end
end

for anum=9
    for daynum=16 %days
        for sessionnum=1%sessions
            invalid_trials=BANAL{anum}{daynum}{sessionnum}.TrialValidity==0;
            %latencies
            latencies=BANAL{anum}{daynum}{sessionnum}.PELat;
            latencies(invalid_trials)=NaN;
            latencies=[latencies,NaN,NaN,NaN];
            LatAll(i_beh,:)=latencies;
            LatLong=horzcat(LatLong,latencies);
            LatAll_5tbin(i_beh,:)=[nanmean(latencies(1:5)),nanmean(latencies(6:10)),nanmean(latencies(11:15)),...
                nanmean(latencies(16:20)),nanmean(latencies(21:25)),nanmean(latencies(26:30))];
            %times in port
            times_in_port=BANAL{anum}{daynum}{sessionnum}.TIP;
            times_in_port(invalid_trials)=NaN;
            times_in_port=[times_in_port,NaN,NaN,NaN];
            TIPAll(i_beh,:)=times_in_port;
            TIPLong=horzcat(TIPLong,times_in_port);
            TIPAll_5tbin(i_beh,:)=[nanmean(times_in_port(1:5)),nanmean(times_in_port(6:10)),nanmean(times_in_port(11:15)),...
                nanmean(times_in_port(16:20)),nanmean(times_in_port(21:25)),nanmean(times_in_port(26:30))];
            %trials
            Trials=1:1:length(latencies);
            TrialsLong=horzcat(TrialsLong,Trials);
            %add to i_beh
            i_beh=i_beh+1;
        end
    end
end

for anum=10:15
    for daynum=16 %days
        for sessionnum=1%sessions
            invalid_trials=BANAL{anum}{daynum}{sessionnum}.TrialValidity==0;
            %latencies
            latencies=BANAL{anum}{daynum}{sessionnum}.PELat;
            latencies(invalid_trials)=NaN;
            LatAll(i_beh,:)=latencies;
            LatLong=horzcat(LatLong,latencies);
            LatAll_5tbin(i_beh,:)=[nanmean(latencies(1:5)),nanmean(latencies(6:10)),nanmean(latencies(11:15)),...
                nanmean(latencies(16:20)),nanmean(latencies(21:25)),nanmean(latencies(26:30))];
            %times in port
            times_in_port=BANAL{anum}{daynum}{sessionnum}.TIP;
            times_in_port(invalid_trials)=NaN;
            TIPAll(i_beh,:)=times_in_port;
            TIPLong=horzcat(TIPLong,times_in_port);
            TIPAll_5tbin(i_beh,:)=[nanmean(times_in_port(1:5)),nanmean(times_in_port(6:10)),nanmean(times_in_port(11:15)),...
                nanmean(times_in_port(16:20)),nanmean(times_in_port(21:25)),nanmean(times_in_port(26:30))];
            %trials
            Trials=1:1:length(latencies);
            TrialsLong=horzcat(TrialsLong,Trials);
            %add to i_beh
            i_beh=i_beh+1;
        end
    end
end

Lat=nanmean(LatAll);
Latsem=nanstd(LatAll)/sqrt(size(LatAll,1));

TIP=nanmean(TIPAll);
TIPsem=nanstd(TIPAll)/sqrt(size(TIPAll,1));

% %plot TIP graph
% %compute regression coefficient
% X=[TrialsLong',ones(size(TrialsLong'))];
% [b_TIP,~,~,~,stats_TIP]=regress(TIPLong', X)
% rsq_TIP=stats_TIP(1)
% p_TIP=stats_TIP(3)
% %plot graph with averaged data
% trials=1:1:length(TIP);
% figure
% h=errorbar(trials,TIP,TIPsem, 'k.');
% xlim([0 31])
% hold on
% plot(trials, b_TIP(1)*(trials)+ b_TIP(2))
% xlabel('Trial number'); ylabel('% time in port');
% box off
% set(gca,'FontSize',28)
% set(h, 'MarkerSize', 15)
% set(h, 'LineWidth', 0.5)
% 
% %plot graph with all data
% % figure
% % scatter(TrialsLong,TIPLong,'k.')
% % hold on
% % plot(trials, b_TIP(1)*(trials)+ b_TIP(2))
% 
% %plot Lat graph
% %compute regression coefficient
% X=[TrialsLong',ones(size(TrialsLong'))];
% [b_Lat,~,~,~,stats_Lat]=regress(LatLong', X)
% rsq_Lat=stats_Lat(1)
% p_Lat=stats_Lat(3)
% %plot graph with averaged data
% trials=1:1:length(Lat);
% figure
% h=errorbar(trials,Lat,Latsem, 'k.');
% xlim([0 31])
% hold on
%  plot(trials, b_Lat(1)*(trials)+ b_Lat(2))
% xlabel('Trial number'); ylabel('Latency (s)');
% box off
% set(gca,'FontSize',28)
% set(h, 'MarkerSize', 15)
% set(h, 'LineWidth', 0.5)
% 
% %plot graph with all data
% % figure
% % scatter(TrialsLong,LatLong,'k.')
% % hold on
% % plot(trials, b_Lat(1)*(trials)+ b_Lat(2))
% 
% 
% clear invalid_trials latencies times_in_port anum daynum sessionnum enum neurnum ...
%     i_beh i_neur Lat Latsem TIP TIPsem p_Lat p_TIP trials b_TIP stats_TIP ...
%     rsq_TIP p_TIP b_Lat rsq_Lat stats_Lat TIPsem Trials TIPLong LatLong TrialsLong X
% 
% % clear TIPAll LatAll