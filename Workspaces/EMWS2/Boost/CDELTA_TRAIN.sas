if upcase(NAME) = "ALCOHOL" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "CATEGORY" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "CHLORIDES" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "CITRIC_ACID" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "DENSITY" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "FIXED_ACIDITY" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "FREE_SULFUR_DIOXIDE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "PH" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "Q_QUALITY" then do;
ROLE = "ASSESS";
end;
else 
if upcase(NAME) = "SULPHATES" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "TASTERNAME" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "TASTINGDATE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "TOTAL_SULFUR_DIOXIDE" then do;
ROLE = "INPUT";
end;
else 
if upcase(NAME) = "VOLATILE_ACIDITY" then do;
ROLE = "INPUT";
end;
