*************************************;
*** begin scoring code for regression;
*************************************;

length _WARN_ $4;
label _WARN_ = 'Warnings' ;


drop _DM_BAD;
_DM_BAD=0;

*** Check IMP_pH for missing values ;
if missing( IMP_pH ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

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

*** Check LG10_citric_acid for missing values ;
if missing( LG10_citric_acid ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_density for missing values ;
if missing( LG10_density ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Check LG10_fixed_acidity for missing values ;
if missing( LG10_fixed_acidity ) then do;
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

*** Check TastingDate for missing values ;
if missing( TastingDate ) then do;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;

*** Generate dummy variables for TasterName ;
drop _0_0 _0_1 _0_2 _0_3 _0_4 ;
*** encoding is sparse, initialize to zero;
_0_0 = 0;
_0_1 = 0;
_0_2 = 0;
_0_3 = 0;
_0_4 = 0;
if missing( TasterName ) then do;
   _0_0 = .;
   _0_1 = .;
   _0_2 = .;
   _0_3 = .;
   _0_4 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm5 $ 5; drop _dm5 ;
   _dm5 = put( TasterName , $5. );
   %DMNORMIP( _dm5 )
   _dm_find = 0; drop _dm_find;
   if _dm5 <= 'CHARL'  then do;
      if _dm5 <= 'BOB'  then do;
         if _dm5 = 'ALICE'  then do;
            _0_0 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm5 = 'BOB'  then do;
               _0_1 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm5 = 'CHARL'  then do;
            _0_2 = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm5 <= 'EVA'  then do;
         if _dm5 = 'DAVID'  then do;
            _0_3 = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm5 = 'EVA'  then do;
               _0_4 = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm5 = 'FRANK'  then do;
            _0_0 = -1;
            _0_1 = -1;
            _0_2 = -1;
            _0_3 = -1;
            _0_4 = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      _0_0 = .;
      _0_1 = .;
      _0_2 = .;
      _0_3 = .;
      _0_4 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for category ;
drop _1_0 ;
if missing( category ) then do;
   _1_0 = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm5 $ 5; drop _dm5 ;
   _dm5 = put( category , $5. );
   %DMNORMIP( _dm5 )
   if _dm5 = 'WHITE'  then do;
      _1_0 = -1;
   end;
   else if _dm5 = 'RED'  then do;
      _1_0 = 1;
   end;
   else do;
      _1_0 = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** If missing inputs, use averages;
if _DM_BAD > 0 then do;
   _LP0 =     5.80985373364126;
   goto REG4DR1;
end;

*** Compute Linear Predictor;
drop _TEMP;
drop _LP0;
_LP0 = 0;

***  Effect: IMP_pH ;
_TEMP = IMP_pH ;
_LP0 = _LP0 + (   -0.10442707199141 * _TEMP);

***  Effect: IMP_sulphates ;
_TEMP = IMP_sulphates ;
_LP0 = _LP0 + (    0.51001669409147 * _TEMP);

***  Effect: LG10_alcohol ;
_TEMP = LG10_alcohol ;
_LP0 = _LP0 + (    9.92414002736711 * _TEMP);

***  Effect: LG10_chlorides ;
_TEMP = LG10_chlorides ;
_LP0 = _LP0 + (   -2.86915332343833 * _TEMP);

***  Effect: LG10_citric_acid ;
_TEMP = LG10_citric_acid ;
_LP0 = _LP0 + (   -0.05007188645508 * _TEMP);

***  Effect: LG10_density ;
_TEMP = LG10_density ;
_LP0 = _LP0 + (    153.621696341461 * _TEMP);

***  Effect: LG10_fixed_acidity ;
_TEMP = LG10_fixed_acidity ;
_LP0 = _LP0 + (   -0.55709044090465 * _TEMP);

***  Effect: LG10_free_sulfur_dioxide ;
_TEMP = LG10_free_sulfur_dioxide ;
_LP0 = _LP0 + (    0.70389823944945 * _TEMP);

***  Effect: LG10_total_sulfur_dioxide ;
_TEMP = LG10_total_sulfur_dioxide ;
_LP0 = _LP0 + (   -0.51155393896293 * _TEMP);

***  Effect: LG10_volatile_acidity ;
_TEMP = LG10_volatile_acidity ;
_LP0 = _LP0 + (   -4.80873271777408 * _TEMP);

***  Effect: TasterName ;
_TEMP = 1;
_LP0 = _LP0 + (   -0.00695584689664) * _TEMP * _0_0;
_LP0 = _LP0 + (    0.04175725581865) * _TEMP * _0_1;
_LP0 = _LP0 + (   -0.00955603644128) * _TEMP * _0_2;
_LP0 = _LP0 + (   -0.02447864047553) * _TEMP * _0_3;
_LP0 = _LP0 + (   -0.03396301002784) * _TEMP * _0_4;

***  Effect: TastingDate ;
_TEMP = TastingDate ;
_LP0 = _LP0 + (   -0.00001182389103 * _TEMP);

***  Effect: category ;
_TEMP = 1;
_LP0 = _LP0 + (    0.03224014788001) * _TEMP * _1_0;
*--- Intercept ---*;
_LP0 = _LP0 + (   -49.2156130672666);

REG4DR1:

*** Predicted Value;
label P_quality = 'Predicted: quality' ;
P_quality = _LP0;


*************************************;
***** end scoring code for regression;
*************************************;
