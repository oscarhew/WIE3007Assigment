if NAME = "category" then do;
ROLE = 'ID';
LEVEL = 'NOMINAL';
end;
else
do;
ROLE='INPUT';
LEVEL='BINARY';
end;
