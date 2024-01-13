***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4 
;
      label S_IMP_pH = 'Standard: IMP_pH' ;

      label S_IMP_sulphates = 'Standard: IMP_sulphates' ;

      label S_LG10_alcohol = 'Standard: LG10_alcohol' ;

      label S_LG10_chlorides = 'Standard: LG10_chlorides' ;

      label S_LG10_citric_acid = 'Standard: LG10_citric_acid' ;

      label S_LG10_density = 'Standard: LG10_density' ;

      label S_LG10_fixed_acidity = 'Standard: LG10_fixed_acidity' ;

      label S_LG10_free_sulfur_dioxide = 
'Standard: LG10_free_sulfur_dioxide' ;

      label S_LG10_total_sulfur_dioxide = 
'Standard: LG10_total_sulfur_dioxide' ;

      label S_LG10_volatile_acidity = 'Standard: LG10_volatile_acidity' ;

      label S_TastingDate = 'Standard: TastingDate' ;

      label TasterNameAlice = 'Dummy: TasterName=Alice' ;

      label TasterNameBob = 'Dummy: TasterName=Bob' ;

      label TasterNameCharl = 'Dummy: TasterName=Charl' ;

      label TasterNameDavid = 'Dummy: TasterName=David' ;

      label TasterNameEva = 'Dummy: TasterName=Eva' ;

      label categoryred = 'Dummy: category=red' ;

      label H11 = 'Hidden: H1=1' ;

      label H12 = 'Hidden: H1=2' ;

      label H13 = 'Hidden: H1=3' ;

      label P_quality = 'Predicted: quality' ;

      label R_quality = 'Residual: quality' ;

      label  _WARN_ = "Warnings"; 

*** Generate dummy variables for TasterName ;
drop TasterNameAlice TasterNameBob TasterNameCharl TasterNameDavid 
        TasterNameEva ;
*** encoding is sparse, initialize to zero;
TasterNameAlice = 0;
TasterNameBob = 0;
TasterNameCharl = 0;
TasterNameDavid = 0;
TasterNameEva = 0;
if missing( TasterName ) then do;
   TasterNameAlice = .;
   TasterNameBob = .;
   TasterNameCharl = .;
   TasterNameDavid = .;
   TasterNameEva = .;
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
            TasterNameAlice = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm5 = 'BOB'  then do;
               TasterNameBob = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm5 = 'CHARL'  then do;
            TasterNameCharl = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm5 <= 'EVA'  then do;
         if _dm5 = 'DAVID'  then do;
            TasterNameDavid = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm5 = 'EVA'  then do;
               TasterNameEva = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm5 = 'FRANK'  then do;
            TasterNameAlice = -1;
            TasterNameBob = -1;
            TasterNameCharl = -1;
            TasterNameDavid = -1;
            TasterNameEva = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      TasterNameAlice = .;
      TasterNameBob = .;
      TasterNameCharl = .;
      TasterNameDavid = .;
      TasterNameEva = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for category ;
drop categoryred ;
if missing( category ) then do;
   categoryred = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm5 $ 5; drop _dm5 ;
   _dm5 = put( category , $5. );
   %DMNORMIP( _dm5 )
   if _dm5 = 'WHITE'  then do;
      categoryred = -1;
   end;
   else if _dm5 = 'RED'  then do;
      categoryred = 1;
   end;
   else do;
      categoryred = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   IMP_pH , 
   IMP_sulphates , 
   LG10_alcohol , 
   LG10_chlorides , 
   LG10_citric_acid , 
   LG10_density , 
   LG10_fixed_acidity , 
   LG10_free_sulfur_dioxide , 
   LG10_total_sulfur_dioxide , 
   LG10_volatile_acidity , 
   TastingDate   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node intvl ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_IMP_pH  =    -20.0672425008577 +     6.23439582148352 * IMP_pH ;
   S_IMP_sulphates  =    -3.58309155466372 +      6.7500656989007 * 
        IMP_sulphates ;
   S_LG10_alcohol  =    -24.0500748236754 +     22.7294375892051 * 
        LG10_alcohol ;
   S_LG10_chlorides  =    -1.79234315209471 +     76.6509421314696 * 
        LG10_chlorides ;
   S_LG10_citric_acid  =    -2.46057370286609 +     21.0889117723493 * 
        LG10_citric_acid ;
   S_LG10_density  =    -458.716430332171 +     1529.69678180903 * 
        LG10_density ;
   S_LG10_fixed_acidity  =    -14.4599176086849 +     15.8915642929421 * 
        LG10_fixed_acidity ;
   S_LG10_free_sulfur_dioxide
          =    -4.99540334109185 +     3.51961405144005 * 
        LG10_free_sulfur_dioxide ;
   S_LG10_total_sulfur_dioxide
          =    -6.54385019411713 +     3.29239116313804 * 
        LG10_total_sulfur_dioxide ;
   S_LG10_volatile_acidity  =     -2.4724118289289 +     19.8823125795843 * 
        LG10_volatile_acidity ;
   S_TastingDate  =    -70.8451292950523 +     0.00315370877083 * TastingDate
         ;
END;
ELSE DO;
   IF MISSING( IMP_pH ) THEN S_IMP_pH  = . ;
   ELSE S_IMP_pH  =    -20.0672425008577 +     6.23439582148352 * IMP_pH ;
   IF MISSING( IMP_sulphates ) THEN S_IMP_sulphates  = . ;
   ELSE S_IMP_sulphates  =    -3.58309155466372 +      6.7500656989007 * 
        IMP_sulphates ;
   IF MISSING( LG10_alcohol ) THEN S_LG10_alcohol  = . ;
   ELSE S_LG10_alcohol  =    -24.0500748236754 +     22.7294375892051 * 
        LG10_alcohol ;
   IF MISSING( LG10_chlorides ) THEN S_LG10_chlorides  = . ;
   ELSE S_LG10_chlorides  =    -1.79234315209471 +     76.6509421314696 * 
        LG10_chlorides ;
   IF MISSING( LG10_citric_acid ) THEN S_LG10_citric_acid  = . ;
   ELSE S_LG10_citric_acid  =    -2.46057370286609 +     21.0889117723493 * 
        LG10_citric_acid ;
   IF MISSING( LG10_density ) THEN S_LG10_density  = . ;
   ELSE S_LG10_density  =    -458.716430332171 +     1529.69678180903 * 
        LG10_density ;
   IF MISSING( LG10_fixed_acidity ) THEN S_LG10_fixed_acidity  = . ;
   ELSE S_LG10_fixed_acidity  =    -14.4599176086849 +     15.8915642929421 * 
        LG10_fixed_acidity ;
   IF MISSING( LG10_free_sulfur_dioxide ) THEN S_LG10_free_sulfur_dioxide
          = . ;
   ELSE S_LG10_free_sulfur_dioxide
          =    -4.99540334109185 +     3.51961405144005 * 
        LG10_free_sulfur_dioxide ;
   IF MISSING( LG10_total_sulfur_dioxide ) THEN S_LG10_total_sulfur_dioxide
          = . ;
   ELSE S_LG10_total_sulfur_dioxide
          =    -6.54385019411713 +     3.29239116313804 * 
        LG10_total_sulfur_dioxide ;
   IF MISSING( LG10_volatile_acidity ) THEN S_LG10_volatile_acidity  = . ;
   ELSE S_LG10_volatile_acidity
          =     -2.4724118289289 +     19.8823125795843 * 
        LG10_volatile_acidity ;
   IF MISSING( TastingDate ) THEN S_TastingDate  = . ;
   ELSE S_TastingDate  =    -70.8451292950523 +     0.00315370877083 * 
        TastingDate ;
END;
*** *************************;
*** Writing the Node nom ;
*** *************************;
*** *************************;
*** Writing the Node H1 ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H11  =    -0.02854776423278 * S_IMP_pH  +    -0.04152757351281 * 
        S_IMP_sulphates  +     0.08481756578316 * S_LG10_alcohol
          +    -0.04476869267583 * S_LG10_chlorides  +     0.17005366630965 * 
        S_LG10_citric_acid  +    -0.00225514274066 * S_LG10_density
          +    -0.37545029594231 * S_LG10_fixed_acidity
          +     0.56042815638994 * S_LG10_free_sulfur_dioxide
          +     0.41428718615697 * S_LG10_total_sulfur_dioxide
          +    -0.11141635205747 * S_LG10_volatile_acidity
          +       0.058795992961 * S_TastingDate ;
   H12  =    -0.07375543734855 * S_IMP_pH  +     0.03968879147823 * 
        S_IMP_sulphates  +     0.04287981456851 * S_LG10_alcohol
          +    -0.11577731904788 * S_LG10_chlorides  +    -0.11770026721302 * 
        S_LG10_citric_acid  +     0.17632766133376 * S_LG10_density
          +     0.04976365474293 * S_LG10_fixed_acidity
          +    -0.11146196444863 * S_LG10_free_sulfur_dioxide
          +    -0.10744366614236 * S_LG10_total_sulfur_dioxide
          +    -0.41959747814529 * S_LG10_volatile_acidity
          +    -0.00809406980444 * S_TastingDate ;
   H13  =     0.10540454416842 * S_IMP_pH  +    -0.03515840282079 * 
        S_IMP_sulphates  +     0.02142944854534 * S_LG10_alcohol
          +     0.15470671991636 * S_LG10_chlorides  +     0.15903298665569 * 
        S_LG10_citric_acid  +    -0.24733527556506 * S_LG10_density
          +    -0.04815616800009 * S_LG10_fixed_acidity
          +     0.15071554529406 * S_LG10_free_sulfur_dioxide
          +     0.10755440022533 * S_LG10_total_sulfur_dioxide
          +     0.54711649823554 * S_LG10_volatile_acidity
          +     0.00553920469293 * S_TastingDate ;
   H11  = H11  +     0.26987632124782 * TasterNameAlice
          +     -0.1016980872245 * TasterNameBob  +     0.11508831526768 * 
        TasterNameCharl  +    -0.29101316117048 * TasterNameDavid
          +     -0.0616016035881 * TasterNameEva  +     1.54201532052704 * 
        categoryred ;
   H12  = H12  +     0.01529402565633 * TasterNameAlice
          +     0.01071385014848 * TasterNameBob  +    -0.07383532955467 * 
        TasterNameCharl  +     0.07283398737241 * TasterNameDavid
          +     0.04085621911184 * TasterNameEva  +     -0.0503045455432 * 
        categoryred ;
   H13  = H13  +    -0.04159476251033 * TasterNameAlice
          +    -0.00165317136636 * TasterNameBob  +     0.09663657225328 * 
        TasterNameCharl  +     -0.0858823081886 * TasterNameDavid
          +    -0.06071118411771 * TasterNameEva  +     0.00417053972317 * 
        categoryred ;
   H11  =      2.2775891653481 + H11 ;
   H12  =     0.30386050659432 + H12 ;
   H13  =    -0.41789410403336 + H13 ;
   H11  = TANH(H11 );
   H12  = TANH(H12 );
   H13  = TANH(H13 );
END;
ELSE DO;
   H11  = .;
   H12  = .;
   H13  = .;
END;
*** *************************;
*** Writing the Node intervalTargets ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   P_quality  =     1.01337175115583 * H11  +     7.44185752167535 * H12
          +     5.78247468058626 * H13 ;
   P_quality  =     4.83672770489493 + P_quality ;
END;
ELSE DO;
   P_quality  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_quality  =     5.80985373364126;
END;
*** *****************************;
*** Writing the Residuals  of the Node intervalTargets ;
*** ******************************;
IF MISSING( quality ) THEN R_quality  = . ;
ELSE R_quality  = quality  - P_quality ;
********************************;
*** End Scoring Code for Neural;
********************************;
