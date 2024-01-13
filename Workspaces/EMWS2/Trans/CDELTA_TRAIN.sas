*------------------------------------------------------------*;
* Computed Code;
*------------------------------------------------------------*;

if NAME="LG10_alcohol" then do;
   COMMENT = "log10(alcohol  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="alcohol" then delete;

if NAME="LG10_chlorides" then do;
   COMMENT = "log10(chlorides  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="chlorides" then delete;

if NAME="LG10_citric_acid" then do;
   COMMENT = "log10(citric_acid  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="citric_acid" then delete;

if NAME="LG10_density" then do;
   COMMENT = "log10(density  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="density" then delete;

if NAME="LG10_fixed_acidity" then do;
   COMMENT = "log10(fixed_acidity  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="fixed_acidity" then delete;

if NAME="LG10_free_sulfur_dioxide" then do;
   COMMENT = "log10(free_sulfur_dioxide  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="free_sulfur_dioxide" then delete;

if NAME="LG10_total_sulfur_dioxide" then do;
   COMMENT = "log10(total_sulfur_dioxide  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="total_sulfur_dioxide" then delete;

if NAME="LG10_volatile_acidity" then do;
   COMMENT = "log10(volatile_acidity  + 1) ";
ROLE ="INPUT";
REPORT ="N";
LEVEL  ="INTERVAL";
end;
if NAME="volatile_acidity" then delete;
