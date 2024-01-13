*------------------------------------------------------------*;
* Reg: Create decision matrix;
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
data EM_DMREG / view=EM_DMREG;
set EMWS2.Trans_TRAIN(keep=
IMP_pH IMP_sulphates LG10_alcohol LG10_chlorides LG10_citric_acid LG10_density
LG10_fixed_acidity LG10_free_sulfur_dioxide LG10_total_sulfur_dioxide
LG10_volatile_acidity TasterName TastingDate category quality);
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    TasterName(ASC) category(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    IMP_pH IMP_sulphates LG10_alcohol LG10_chlorides LG10_citric_acid LG10_density
   LG10_fixed_acidity LG10_free_sulfur_dioxide LG10_total_sulfur_dioxide
   LG10_volatile_acidity TastingDate quality
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
quality
;
run;
quit;
*------------------------------------------------------------*;
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
outest = EMWS2.Reg_EMESTIMATE
outterms = EMWS2.Reg_OUTTERMS
outmap= EMWS2.Reg_MAPDS namelen=200
;
class
TasterName
category
;
model quality =
IMP_pH
IMP_sulphates
LG10_alcohol
LG10_chlorides
LG10_citric_acid
LG10_density
LG10_fixed_acidity
LG10_free_sulfur_dioxide
LG10_total_sulfur_dioxide
LG10_volatile_acidity
TasterName
TastingDate
category
/error=normal
coding=DEVIATION
nodesignprint
selection=FORWARD choose=NONE
Hierarchy=CLASS
Rule=NONE
;
;
score data=EMWS2.Trans_TEST
out=_null_
outfit=EMWS2.Reg_FITTEST
role = TEST
;
code file="C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment\GroupAssignment_2023\Workspaces\EMWS2\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment\GroupAssignment_2023\Workspaces\EMWS2\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
