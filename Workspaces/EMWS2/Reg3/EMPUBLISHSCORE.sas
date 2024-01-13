*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;


drop _DM_BAD;
_DM_BAD=0;

*** Check IMP_sulphates for missing values ;
if missing( IMP_sulphates ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_alcohol for missing values ;
if missing( LG10_alcohol ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_chlorides for missing values ;
if missing( LG10_chlorides ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_density for missing values ;
if missing( LG10_density ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_free_sulfur_dioxide for missing values ;
if missing( LG10_free_sulfur_dioxide ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_total_sulfur_dioxide for missing values ;
if missing( LG10_total_sulfur_dioxide ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_volatile_acidity for missing values ;
if missing( LG10_volatile_acidity ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _LP0 =     5.80985373364126;
   goto REG3DR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: IMP_sulphates ;
_TEMP = IMP_sulphates ;
_LP0 = _LP0 + (    0.51533865941506 * _TEMP);

***  Effect: LG10_alcohol ;
_TEMP = LG10_alcohol ;
_LP0 = _LP0 + (    9.65189727903707 * _TEMP);

***  Effect: LG10_chlorides ;
_TEMP = LG10_chlorides ;
_LP0 = _LP0 + (   -2.73874427378403 * _TEMP);

***  Effect: LG10_density ;
_TEMP = LG10_density ;
_LP0 = _LP0 + (    126.719058456838 * _TEMP);

***  Effect: LG10_free_sulfur_dioxide ;
_TEMP = LG10_free_sulfur_dioxide ;
_LP0 = _LP0 + (    0.72742955324797 * _TEMP);

***  Effect: LG10_total_sulfur_dioxide ;
_TEMP = LG10_total_sulfur_dioxide ;
_LP0 = _LP0 + (   -0.54067453427178 * _TEMP);

***  Effect: LG10_volatile_acidity ;
_TEMP = LG10_volatile_acidity ;
_LP0 = _LP0 + (    -4.6242247120438 * _TEMP);
*--- Intercept ---*;
_LP0 = _LP0 + (    -41.994902005201);

REG3DR1:

*** Predicted Value;
label P_quality = 'Predicted: quality' ;
P_quality = _LP0;


*************************************;
***** end scoring code for regression;
*************************************;
