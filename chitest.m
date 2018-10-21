% chi square test

%T1 vs T7
    %inhibition
       % Observed data
       n1 = 23; N1 = 125;
       n2 = 95; N2 = 141;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)

    %excitation
       % Observed data
       n1 = 27 ; N1 =  125;
       n2 = 27; N2 = 141;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
       
    %inhibition to CS-
       % Observed data
       n1 = 14; N1 = 125;
       n2 = 5; N2 = 141;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
       
 %preMB vs postMB      
       % Observed data
       n1 = 35; N1 = 55;
       n2 = 25; N2 = 55;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)

%preSAL vs postSAL      
       % Observed data
       n1 = 20; N1 = 47;
       n2 = 26; N2 = 47;
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
       
 %T7 versus EREC  
 %neurons with sustained inhibition
       % Observed data
       n1 = 108; N1 = 144;
       n2 = 42; N2 = 123;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
      
 %Long Excited putative interneurons
       % Observed data
       n1 = 1; N1 = 19;
       n2 = 9; N2 = 16;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2) 
 
       
  % T1 
  % Increasing versus decreasing sustained inhibitory response
  
       n1 = 18; N1 = 125;
       n2 = 5; N2 = 125;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
       
  % Increasing versus decreasing any excitatory response
  
       n1 = 19; N1 = 125;
       n2 = 7; N2 = 125;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl,chi2stat,pval] = crosstab(x1,x2)
       
 clear n1 N1 n2 N2 x1 x2 chi2stat pval tbl