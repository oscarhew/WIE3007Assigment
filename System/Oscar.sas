PROC IMPORT OUT=newdata
    DATAFILE="C:\Users\Oscar\Documents\Document\File need to backup\UM\Y4S1\Data Mining and Warehousing\GroupAssignment\datasets\wine\new_red_wine.csv"
    DBMS=CSV
    REPLACE;
    GETNAMES=YES;
RUN;
