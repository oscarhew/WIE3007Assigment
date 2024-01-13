*------------------------------------------------------------*;
* Neural: Create decision matrix;
*------------------------------------------------------------*;
data WORK.quality(label="quality");
  length   quality                              8
           ;

 quality=3;
output;
 quality=9;
output;
 quality=5.80985373364126;
output;
;
run;
proc datasets lib=work nolist;
modify quality(type=PROFIT label=quality);
run;
quit;
data EM_Neural;
set EMWS2.Trans_TRAIN(keep=
IMP_pH IMP_sulphates LG10_alcohol LG10_chlorides LG10_citric_acid LG10_density
LG10_fixed_acidity LG10_free_sulfur_dioxide LG10_total_sulfur_dioxide
LG10_volatile_acidity TasterName TastingDate category quality);
run;
*------------------------------------------------------------* ;
* Neural: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    TasterName(ASC) category(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Neural: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    IMP_pH IMP_sulphates LG10_alcohol LG10_chlorides LG10_citric_acid LG10_density
   LG10_fixed_acidity LG10_free_sulfur_dioxide LG10_total_sulfur_dioxide
   LG10_volatile_acidity TastingDate quality
%mend DMDBVar;
*------------------------------------------------------------*;
* Neural: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_Neural
dmdbcat=WORK.Neural_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
quality
;
run;
quit;
*------------------------------------------------------------* ;
* Neural: Interval Input Variables Macro ;
*------------------------------------------------------------* ;
%macro INTINPUTS;
    IMP_pH IMP_sulphates LG10_alcohol LG10_chlorides LG10_citric_acid LG10_density
   LG10_fixed_acidity LG10_free_sulfur_dioxide LG10_total_sulfur_dioxide
   LG10_volatile_acidity TastingDate
%mend INTINPUTS;
*------------------------------------------------------------* ;
* Neural: Binary Inputs Macro ;
*------------------------------------------------------------* ;
%macro BININPUTS;

%mend BININPUTS;
*------------------------------------------------------------* ;
* Neural: Nominal Inputs Macro ;
*------------------------------------------------------------* ;
%macro NOMINPUTS;
    TasterName category
%mend NOMINPUTS;
*------------------------------------------------------------* ;
* Neural: Ordinal Inputs Macro ;
*------------------------------------------------------------* ;
%macro ORDINPUTS;

%mend ORDINPUTS;
*------------------------------------------------------------*;
* Neural Network Training;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
random=12345
;
nloptions
;
performance alldetails noutilfile;
netopts
decay=0;
input %INTINPUTS / level=interval id=intvl
;
input %NOMINPUTS / level=nominal id=nom
;
target
quality
/ level=interval id=intervalTargets
bias
;
arch MLP
Hidden=3
;
save network=EMWS2.Neural_NETWORK.dm_neural;
train Maxiter=50
maxtime=14400
Outest=EMWS2.Neural_outest estiter=1
Outfit=EMWS2.Neural_OUTFIT
;
run;
quit;
proc sort data=EMWS2.Neural_OUTFIT(where=(_iter_ ne . and _NAME_="OVERALL")) out=fit_Neural;
by _AVERR_;
run;
%GLOBAL ITER;
data _null_;
set fit_Neural(obs=1);
call symput('ITER',put(_ITER_, 6.));
run;
data EMWS2.Neural_INITIAL;
set EMWS2.Neural_outest(where=(_ITER_ eq &ITER and _OBJ_ ne .));
run;
*------------------------------------------------------------*;
* Neural Network Model Selection;
;
*------------------------------------------------------------*;
proc neural data=EM_Neural dmdbcat=WORK.Neural_DMDB
network = EMWS2.Neural_NETWORK.dm_neural
random=12345
;
nloptions noprint;
performance alldetails noutilfile;
initial inest=EMWS2.Neural_INITIAL;
train tech=NONE;
code file="C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment\GroupAssignment_2023\Workspaces\EMWS2\Neural\SCORECODE.sas"
group=Neural
;
;
code file="C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment\GroupAssignment_2023\Workspaces\EMWS2\Neural\RESIDUALSCORECODE.sas"
group=Neural
residual
;
;
score data=EMWS2.Trans_TRAIN out=_NULL_
outfit=WORK.FIT1
role=TRAIN
outkey=EMWS2.Neural_OUTKEY;
score data=EMWS2.Trans_TEST out=_NULL_
outfit=WORK.FIT2
role=TEST
outkey=EMWS2.Neural_OUTKEY;
run;
quit;
data EMWS2.Neural_OUTFIT;
merge WORK.FIT1 WORK.FIT2;
run;
data EMWS2.Neural_EMESTIMATE;
set EMWS2.Neural_outest;
if _type_ ^in('HESSIAN' 'GRAD');
run;
proc datasets lib=work nolist;
delete EM_Neural;
run;
quit;
