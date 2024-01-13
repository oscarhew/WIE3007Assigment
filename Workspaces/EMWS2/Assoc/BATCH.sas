*------------------------------------------------------------*;
* Assoc: Creating EM5BATCH data sets;
*------------------------------------------------------------*;
%let EM_ACTION = run;
%let EM_DEBUG =;
*------------------------------------------------------------*;
* Create workspace data set;
*------------------------------------------------------------*;
data workspace;
length property $64 value $100;
property= 'PROJECTLOCATION';
value= "C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment";
output;
property= 'PROJECTNAME';
value= "GroupAssignment_2023";
output;
property= 'WORKSPACENAME';
value= "EMWS2";
output;
property= 'SUMMARYDATASET';
value= 'summary';
output;
property= 'NUMTASKS';
value= 'SINGLE';
output;
property= 'EDITMODE';
value= 'M';
output;
property= 'DEBUG';
value= "&&EM_DEBUG";
output;
property= 'UNLOCK';
value= 'N';
output;
property= 'FORCERUN';
value= 'Y';
output;
run;
*------------------------------------------------------------*;
* Create actions data set:;
*------------------------------------------------------------*;
%macro emaction;
%let actionstring = %upcase(&EM_ACTION);
%if %index(&actionstring, RUN) or %index(&actionstring, REPORT) %then %do;
data actions;
length id $12 action $40;
id="Assoc";
%if %index(&actionstring, RUN) %then %do;
action='run';
output;
%end;
%if %index(&actionstring, REPORT) %then %do;
action='report';
output;
%end;
run;
%end;
%mend;
%emaction;
*------------------------------------------------------------*;
* Execute the actions;
*------------------------------------------------------------*;
%em5batch(execute, workspace=workspace, action=actions);
