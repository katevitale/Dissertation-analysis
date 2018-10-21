n% chi square test

 %preMB vs postMB      
       % Observed data
       n1 = 30; N1 = 55;
       n2 = 23; N2 = 55;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl_MB,chi2stat_MB,pval_MB] = crosstab(x1,x2)

%preSAL vs postSAL      
       % Observed data
       n1 = 15; N1 = 47;
       n2 = 21; N2 = 47;
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl_SAL,chi2stat_SAL,pval_SAL] = crosstab(x1,x2)

 clear n1 N1 n2 N2 x1 x2
 
 % putative INs
  %preMB vs postMB      
       % Observed data
       n1 = 3; N1 = 6;
       n2 = 1; N2 = 6;
       
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl_MB,chi2stat_MB,pval_MB] = crosstab(x1,x2)
       
       %preSAL vs postSAL      
       % Observed data
       n1 = ; N1 = ;
       n2 = ; N2 = ;
       
       x1 = [repmat('a',N1,1); repmat('b',N2,1)];
       x2 = [repmat(1,n1,1); repmat(2,N1-n1,1); repmat(1,n2,1); repmat(2,N2-n2,1)];
       [tbl_SAL,chi2stat_SAL,pval_SAL] = crosstab(x1,x2)