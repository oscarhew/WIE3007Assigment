if upcase(NAME) = "CATEGORY" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "Q_QUALITY" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "TASTERNAME" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "TASTINGDATE" then do;
ROLE = "REJECTED";
end;
else 
if upcase(NAME) = "_NODE_" then do;
ROLE = "SEGMENT";
LEVEL = "NOMINAL";
end;
