FILENAME REFFILE '/home/nadeemrehman670/roassi 2/Dataset12.csv';
PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.IMPORT5;
	GETNAMES=YES;
RUN;
PROC CONTENTS DATA=WORK.IMPORT5;
RUN;
PROC PRINT DATA=WORK.IMPORT5;
RUN;
proc contents DATA=WORK.IMPORT5;
run;
proc means data= WORK.IMPORT5;
run;
proc univariate data  = WORK.IMPORT5 normal plot;
Histogram ;
run;
proc univariate data  = WORK.IMPORT5 normal plot;
variable Inflation_rate; 
run;
PROC CORR Data=WORK.IMPORT5
PLOTS=MATRIX(HISTOGRAM);
RUN;
PROC REG DATA=WORK.IMPORT5;
MODEL Housing = Unemployement GDP interest_rate Inflation_rate income_per_capita;
TITLE "Regression analysis";
RUN;
PROC REG DATA=WORK.IMPORT5;
MODEL Housing = Unemployement GDP interest_rate income_per_capita;
TITLE "Regression analysis";
Run;
PROC REG DATA=WORK.IMPORT5;
MODEL Housing = Unemployement GDP income_per_capita;
TITLE "Regression analysis";
Run;
PROC REG DATA=WORK.IMPORT5;
MODEL Housing = Unemployement GDP income_per_capita;
TITLE "Regression analysis";
Run;
PROC REG DATA=WORK.IMPORT5;
MODEL Housing = Unemployement GDP;
TITLE "Regression analysis";
Run;
QUIT;

