%PreSAL TIP

A=[BANAL{19}{9}{1}.MeanTIP;%OFE13 T9
 BANAL{20}{9}{1}.MeanTIP;
 BANAL{21}{11}{1}.MeanTIP;
 BANAL{22}{11}{1}.MeanTIP;
 BANAL{23}{11}{1}.MeanTIP;
 BANAL{24}{11}{1}.MeanTIP];

%PostSAL TIP

B=[BANAL{19}{9}{2}.MeanTIP;
 BANAL{20}{9}{2}.MeanTIP;
 BANAL{21}{11}{2}.MeanTIP;
 BANAL{22}{11}{2}.MeanTIP;
 BANAL{23}{11}{2}.MeanTIP;
 BANAL{24}{11}{2}.MeanTIP];

%PreMB TIP

C=[BANAL{19}{11}{1}.MeanTIP;
 BANAL{20}{11}{1}.MeanTIP;
 BANAL{21}{9}{1}.MeanTIP;
 BANAL{22}{9}{1}.MeanTIP;
 BANAL{23}{9}{1}.MeanTIP;
 BANAL{24}{9}{1}.MeanTIP];

%PostMB TIP

D=[BANAL{19}{11}{2}.MeanTIP;
 BANAL{20}{11}{2}.MeanTIP;
 BANAL{21}{9}{2}.MeanTIP;
 BANAL{22}{9}{2}.MeanTIP;
 BANAL{23}{9}{2}.MeanTIP;
 BANAL{24}{9}{2}.MeanTIP];

a=lillietest(A)
b=lillietest(B)
c=lillietest(C)
d=lillietest(D)

 clear a b c d
 
 %clear A B C D
