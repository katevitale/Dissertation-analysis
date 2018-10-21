% Function to determine duration of input waveform

function [WfType, PeakToTrough, upsampledWF, AreaUnderAHPeak] = WaveformAnalysis(WF)% WF is waveform in 32 points


% Upsampling by 10 times
UpSampling=10;
Sampling=25/UpSampling; %Sampling rate = 40 kHz = 25 microsec intervals
    for k=1:size(WF,1)
       WFs(k,:)=interp(WF(k,:),UpSampling);
    end
upsampledWF=WFs;
WfType=NaN(size(WF,1),20);

% This if handles missing waveforms or other issues
    if ~isempty(find(diff(WFs),1)) && ~isempty(find(~isnan(WFs), 1))
        % this line below finds the time index of the min first, then the max that occurs after the min
        [~,Sind(1)]=min(WFs); [~,Sind(2)]=max(WFs(Sind(1):end)); Sind(2)=Sind(1)+Sind(2)-1;
        
% Find area under AH peak

    % define y range to look for x-intercept
    Y=WFs(Sind(1):Sind(2));
    
    % x-intercept
    xint=find(Y>0,1)+Sind(1)-1;
    
    % find area under AH peak
    AUP=trapz(WFs(xint:end));
                
% Results
        PeakTime=Sind(2)*Sampling;
        TroughTime=Sind(1)*Sampling;
        PeakToTrough=PeakTime-TroughTime;
        AreaUnderAHPeak=AUP*Sampling;
    end
end

                    