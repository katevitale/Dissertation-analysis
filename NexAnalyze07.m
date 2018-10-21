%%
%May 15th, 2012: FRED: modified from version NexAnalyze04 to import waveforms 
%Sept 2014: KV modified to clear unnecessary variables after running

clear all;clc 
SAVE_FLAG=1;
tic
% Load all .nex info

address='/Users/Kate/Dropbox/Matlab scripts/Vitale et al Second Submission/All nex files';


AF=dir([address,'/*.nex']);
Sesnum=0;
for k=1:length(AF)
      
        fname=AF(k).name;
        [nexfile] = readNexFile([address,'/',fname]);  fprintf([fname,'\n'])
        %Iind=myfind(nexfile.intervals,'AllFile'); 
        Sesnum=Sesnum+1;
        % Get all events timestamps for the selected session
        NUM_EVENTS=length(nexfile.events);
        for j=1:NUM_EVENTS
            evt=nexfile.events{j}.timestamps;
            RAW(Sesnum).Erast{j,1}=evt;%(find((evt>nexfile.intervals{Iind}.intStarts) & (evt<nexfile.intervals{Iind}.intEnds)));
            %RAW(Sesnum).Erast{j,1}=evt(find((evt>nexfile.intervals{Iind}.intStarts) & (evt<3600)));
            RAW(Sesnum).Einfo(j,:)={fname,nexfile.events{j}.name};
        end
        % start from neuron 1 get ready for the next session
        
        % Get the Neuron timestamps and waveforms
       NUM_NEURONS=length(nexfile.neurons);
        for j=1:NUM_NEURONS
            nrn=nexfile.neurons{j}.timestamps;
            RAW(Sesnum).Nrast{j,1}=nrn;%(find((nrn>nexfile.intervals{Iind}.intStarts) & (nrn<nexfile.intervals{Iind}.intEnds)));
            RAW(Sesnum).Ninfo(j,:)={fname,nexfile.neurons{j}.name};
            RAW(Sesnum).waveforms(j,:)=nexfile.waves{j}.waveforms;
        end
        
    
end
toc   
%RAWgn=RAW;
%% SAVING DATA
if SAVE_FLAG
    save('RAW.mat','RAW')
end
fprintf('\n')
toc

clear SAVE_FLAG address AF Sesnum k fname nexfile NUM_EVENTS evt NUM_NEURONS nrn j