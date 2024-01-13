*------------------------------------------------------------*;
* Assoc: Sorting Training Data;
*------------------------------------------------------------*;
proc sort data=EMWS2.FIMPORT6_train(keep=Sequence_Tasting quality category) out=WORK.SORTEDTRAIN;
by category Sequence_Tasting;
run;
*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    quality(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    Sequence_Tasting
%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.SORTEDTRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 100001
normlen= 256
out=WORK.EM_DMDB
;
id
category
;
class %DMDBClass;
var %DMDBVar;
target
quality
;
run;
quit;
options nocleanup;
proc assoc dmdb dmdbcat=WORK.EM_DMDB out=EMWS2.Assoc_ASSOC data=WORK.EM_DMDB
pctsup = 5
items=4
;
customer
CATEGORY
;
target
QUALITY
;
run;
quit;
proc sequence data=WORK.EM_DMDB dmdbcat=WORK.EM_DMDB assoc=EMWS2.Assoc_ASSOC out=EMWS2.Assoc_SEQUENCE nitems = 3
pctsup = 2;
customer category;
target quality;
visit Sequence_Tasting
;
run;
quit;
*------------------------------------------------------------*;
* Assoc: Selecting rules;
*------------------------------------------------------------*;
proc sort data=EMWS2.Assoc_SEQUENCE;
by descending SUPPORT;
run;
data WORK.ASSOCSUBSET;
set EMWS2.Assoc_SEQUENCE(obs=200);
index=_N_;
label index = "%sysfunc(sasmsg(sashelp.dmine, rpt_ruleIndex_vlabel,  NOQUOTE))";
label _LHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_leftHandSide_vlabel,  NOQUOTE))";
label _RHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_rightHandSide_vlabel,  NOQUOTE))";
run;
