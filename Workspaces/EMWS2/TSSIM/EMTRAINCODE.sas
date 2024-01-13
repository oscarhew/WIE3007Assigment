
%macro EM_TSSIM_MAIN;

   filename temp catalog 'sashelp.emtsdm.tssim_macros.source';
   %include temp;
   filename temp catalog 'sashelp.emtsdm.tsutility_macros.source';
   %include temp;
   filename temp;

   %if %upcase(&EM_ACTION) = CREATE %then %do;
       filename temp catalog 'sashelp.emtsdm.tssim_create.source';
       %include temp;
       filename temp;
       %EM_TSSIM_CREATE;
   %end;
   %else
   %if %upcase(&EM_ACTION) = TRAIN %then %do;
        filename temp catalog 'sashelp.emtsdm.tssim_train.source';
           %include temp;
           filename temp;
        %EM_TSSIM_TRAIN;
   %end;
   %else
   %if %upcase(&EM_ACTION) = SCORE %then %do;
           filename temp catalog 'sashelp.emtsdm.tssim_score.source';
           %include temp;
           filename temp;
        %EM_TSSIM_SCORE;
   %end;
   %else
   %if %upcase(&EM_ACTION) = REPORT %then %do;
           filename temp catalog 'sashelp.emtsdm.tssim_report.source';
           %include temp;
           filename temp;
        %EM_TSSIM_REPORT;
   %end;

%mend EM_TSSIM_MAIN;
%EM_TSSIM_MAIN;


