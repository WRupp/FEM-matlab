    Ncoord = [1 0 1 0 ;
              2 0 0 0 ;
              3 0 0 1;
              4 0 1 1;
              5 1 1 0;
              6 1 0 0;
              7 1 0 1;
              8 1 1 1;
              9 2 1 0;
              10 2 0 0;
              11 2 0 1;
              12 2 1 1];
          
     Nconec = [1 1 2 3 4 5 6 7 8 ;
               2 5 6 7 8 9 10 11 12]; 


Mcc = [];
     Mcc = set2Mcc( [1 2 3 4]',0,1,Mcc);
     Mcc = set2Mcc( [1 5 9 2 6 10]',0,3,Mcc);
     Mcc = set2Mcc( [2 6 10 3 7 11]',0,2,Mcc);
     

     Mcc = set2Mcc([9 10 11 12]', 1, 1,Mcc);
     Mfn = [];