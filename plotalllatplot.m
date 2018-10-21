x=Tlatplot(2:end);
y1=mean_INs_LongEx_PTHz;
y11=mean_INs_LongEx_PTHz-sem_INs_LongEx_PTHz;
y12=mean_INs_LongEx_PTHz+sem_INs_LongEx_PTHz;
y2=mean_other_LongIn_PTHz;
y21=mean_other_LongIn_PTHz-sem_other_LongIn_PTHz;
y22=mean_other_LongIn_PTHz+sem_other_LongIn_PTHz;
y3=mean_other_FastEx_PTHz;
y31=mean_other_FastEx_PTHz-sem_other_LongIn_PTHz;
y32=mean_other_FastEx_PTHz+sem_other_LongIn_PTHz;

figure
plotyy([x',x',x'],[y1',y11',y12'],[x',x',x'],[y2',y21',y22']);  

figure
plotyy([x',x',x'],[y1',y11',y12'],[x',x',x'],[y3',y31',y32']);