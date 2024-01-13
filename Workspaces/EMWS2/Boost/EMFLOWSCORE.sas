****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label P_quality = 'Predicted: quality' ;
      P_quality  = 0;
label R_quality = 'Residual: quality' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_5 $      5; DROP _ARBFMT_5; 
_ARBFMT_5 = ' '; /* Initialize to avoid warning. */


 DROP _ARB_F_;
 DROP _ARB_BADF_;
     _ARB_F_ = 5.8093497499;
     _ARB_BADF_ = 0;
******             ASSIGN OBSERVATION TO NODE             ******;
 DROP _ARB_P_;
 _ARB_P_ = 0;
 DROP _ARB_PPATH_; _ARB_PPATH_ = 1;

********** LEAF     1  NODE   418 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

   DROP _BRANCH_;
  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99281 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2425 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.993965 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                2.945 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0093129589;
      END;
    END;
  END;

********** LEAF     2  NODE   422 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99281 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.993965 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.945 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <         9.6666666665 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99547 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF pH  <                3.285 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.054710191;
        END;
      END;
    END;
  END;

********** LEAF     3  NODE   423 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99281 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.993965 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.945 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                9.6666666665 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99547 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF                3.285 <= pH  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.031208199;
        END;
      END;
    END;
  END;

********** LEAF     4  NODE   420 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.625 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99281 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(alcohol ) AND 
      alcohol  <               11.775 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(alcohol ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99125 <= density  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0355 <= chlorides  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0211599971;
      END;
    END;
  END;

********** LEAF     5  NODE   421 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.625 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99281 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(alcohol ) AND 
                    11.775 <= alcohol  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(alcohol ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99125 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0355 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0664524124;
      END;
    END;
  END;

********** LEAF     6  NODE   427 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.525 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99281 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <                0.275 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0585 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.000488056;
      END;
    END;
  END;

********** LEAF     7  NODE   428 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.525 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99281 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                     0.275 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0585 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.04432379;
      END;
    END;
  END;

********** LEAF     8  NODE   429 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.525 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99281 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                23.75 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 82.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0142386968;
      END;
    END;
  END;

********** LEAF     9  NODE   430 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.525 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99281 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                     23.75 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 82.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0540656802;
      END;
    END;
  END;

********** LEAF    10  NODE   434 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         10.916666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991995 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0375 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2475 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99359 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                2.945 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0084398709;
      END;
    END;
  END;

********** LEAF    11  NODE   438 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         10.916666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991995 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0375 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2475 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99359 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.945 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.995225 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0385 <= chlorides  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.045955371;
        END;
      END;
    END;
  END;

********** LEAF    12  NODE   439 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         10.916666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991995 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0375 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2475 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99359 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.945 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                        9.85 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.995225 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0385 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.017201181;
        END;
      END;
    END;
  END;

********** LEAF    13  NODE   436 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
            10.916666665 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.991995 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0375 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 26.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 89.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0241680542;
      END;
    END;
  END;

********** LEAF    14  NODE   437 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
            10.916666665 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.991995 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0375 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      26.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 89.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0590429354;
      END;
    END;
  END;

********** LEAF    15  NODE   443 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.75 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99251 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2425 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                2.915 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99199 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0040350812;
      END;
    END;
  END;

********** LEAF    16  NODE   447 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.75 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99251 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.915 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99199 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.545 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 67.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.041209809;
        END;
      END;
    END;
  END;

********** LEAF    17  NODE   448 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.75 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99251 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.915 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99199 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
                       0.545 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 67.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.023402871;
        END;
      END;
    END;
  END;

********** LEAF    18  NODE   445 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.75 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99251 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0385 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 24.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 89.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0183939265;
      END;
    END;
  END;

********** LEAF    19  NODE   446 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.75 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99251 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0385 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      24.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 89.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0462682925;
      END;
    END;
  END;

********** LEAF    20  NODE   452 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.475 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2425 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99302 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                2.995 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0131200626;
      END;
    END;
  END;

********** LEAF    21  NODE   454 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.475 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99302 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.995 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <                10.15 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99395 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0375 <= chlorides  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.036547405;
        END;
      END;
    END;
  END;

********** LEAF    22  NODE   455 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.475 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2425 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99302 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.995 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                       10.15 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99395 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0375 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.006086857;
        END;
      END;
    END;
  END;

********** LEAF    23  NODE   451 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.475 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.991245 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0355 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0480858831;
    END;
  END;

********** LEAF    24  NODE   461 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.441666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99125 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3175 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
        volatile_acidity  <                0.215 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.991165 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                109.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0169740974;
        END;
      END;
    END;
  END;

********** LEAF    25  NODE   462 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.441666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99125 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3175 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.215 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.991165 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                109.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.00835019;
        END;
      END;
    END;
  END;

********** LEAF    26  NODE   460 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.441666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99125 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.3175 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0595 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.031953439;
      END;
    END;
  END;

********** LEAF    27  NODE   458 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
            11.441666665 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99125 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0355 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0438526712;
    END;
  END;

********** LEAF    28  NODE   468 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99081 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <                0.405 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0675 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <         10.116666665 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.994585 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                138.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.013148131;
        END;
      END;
    END;
  END;

********** LEAF    29  NODE   469 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99081 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <                0.405 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0675 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                10.116666665 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.994585 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                138.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0141665696;
        END;
      END;
    END;
  END;

********** LEAF    30  NODE   467 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99081 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                     0.405 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0675 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030705293;
      END;
    END;
  END;

********** LEAF    31  NODE   465 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
            11.741666665 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99081 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0275 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0439842938;
    END;
  END;

********** LEAF    32  NODE   475 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0335 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3075 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0605 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
        volatile_acidity  <                0.215 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                110.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99148 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.015176517;
        END;
      END;
    END;
  END;

********** LEAF    33  NODE   476 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0335 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3075 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0605 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.215 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                110.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99148 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.004198384;
        END;
      END;
    END;
  END;

********** LEAF    34  NODE   477 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0335 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.3075 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0605 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.555 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0595 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.037617689;
        END;
      END;
    END;
  END;

********** LEAF    35  NODE   478 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0335 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.3075 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0605 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
                       0.555 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0595 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01115563;
        END;
      END;
    END;
  END;

********** LEAF    36  NODE   472 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.575 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990885 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0335 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0361436427;
    END;
  END;

********** LEAF    37  NODE   482 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992695 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2375 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF sulphates  <                0.375 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99199 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0027503399;
      END;
    END;
  END;

********** LEAF    38  NODE   486 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992695 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2375 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.375 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99199 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <                 9.65 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99541 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF pH  <                3.345 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.02875255;
        END;
      END;
    END;
  END;

********** LEAF    39  NODE   487 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               10.625 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992695 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2375 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.375 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99199 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                        9.65 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99541 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF                3.345 <= pH  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.014139236;
        END;
      END;
    END;
  END;

********** LEAF    40  NODE   484 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.625 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.992695 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 24.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 86.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.007806792;
      END;
    END;
  END;

********** LEAF    41  NODE   485 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  10.625 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.992695 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      24.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 86.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0345400755;
      END;
    END;
  END;

********** LEAF    42  NODE   491 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.245 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF                0.505 <= volatile_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 44.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.028914148;
      END;
    END;
  END;

********** LEAF    43  NODE   493 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.245 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 44.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
        volatile_acidity  <                0.225 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.991435 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF                3.485 <= pH  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0154061859;
        END;
      END;
    END;
  END;

********** LEAF    44  NODE   495 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.245 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 44.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.225 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.991435 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF pH  <                3.485 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
          alcohol  <                 9.85 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.995225 <= density  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF                162.5 <= total_sulfur_dioxide  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.021456247;
          END;
        END;
      END;
    END;
  END;

********** LEAF    45  NODE   496 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.245 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 44.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.225 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.991435 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF pH  <                3.485 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
                          9.85 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.995225 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF total_sulfur_dioxide  <                162.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0046408619;
          END;
        END;
      END;
    END;
  END;

********** LEAF    46  NODE   490 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   11.65 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990885 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0325 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0316256753;
    END;
  END;

********** LEAF    47  NODE   500 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99339 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0435 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.265 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF                0.475 <= volatile_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.030805624;
      END;
    END;
  END;

********** LEAF    48  NODE   501 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              0.99339 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0435 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.265 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.475 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.008299113;
      END;
    END;
  END;

********** LEAF    49  NODE   504 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99339 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0435 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(alcohol ) AND 
      alcohol  <         11.766666665 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(alcohol ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.990885 <= density  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0355 <= chlorides  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 25.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                102.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.006099479;
        END;
      END;
    END;
  END;

********** LEAF    50  NODE   505 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99339 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0435 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(alcohol ) AND 
      alcohol  <         11.766666665 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(alcohol ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.990885 <= density  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0355 <= chlorides  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        25.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                102.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0143035517;
        END;
      END;
    END;
  END;

********** LEAF    51  NODE   503 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              0.99339 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0435 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(alcohol ) AND 
              11.766666665 <= alcohol  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(alcohol ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.990885 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0355 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0314258107;
      END;
    END;
  END;

********** LEAF    52  NODE   509 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.35 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993395 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0425 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <                0.275 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0585 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0021080232;
      END;
    END;
  END;

********** LEAF    53  NODE   510 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.35 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993395 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0425 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                     0.275 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0585 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.022221329;
      END;
    END;
  END;

********** LEAF    54  NODE   511 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.35 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 21.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 78.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001688534;
      END;
    END;
  END;

********** LEAF    55  NODE   512 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.35 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      21.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 78.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0216965676;
      END;
    END;
  END;

********** LEAF    56  NODE   516 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.99 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992005 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.2275 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0295 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                2.905 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.006462237;
      END;
    END;
  END;

********** LEAF    57  NODE   518 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.99 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992005 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2275 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0295 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.905 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.545 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 66.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.021993619;
        END;
      END;
    END;
  END;

********** LEAF    58  NODE   519 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.99 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.992005 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.2275 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0295 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                2.905 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
                       0.545 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 66.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001568387;
        END;
      END;
    END;
  END;

********** LEAF    59  NODE   515 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.99 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.992005 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0385 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0176442009;
    END;
  END;

********** LEAF    60  NODE   525 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4475 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.135 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 24.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 97.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.01026711;
        END;
      END;
    END;
  END;

********** LEAF    61  NODE   527 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4475 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.135 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        24.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 97.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
          volatile_acidity  <                0.275 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF _ARBFMT_5 IN ('RED' 
              ) THEN _BRANCH_ = 0; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF chlorides  <               0.0645 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0116855925;
          END;
        END;
      END;
    END;
  END;

********** LEAF    62  NODE   528 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4475 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.135 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        24.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 97.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
                         0.275 <= volatile_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('RED' ) THEN DO;
               _BRANCH_ =    2; 
              END; 
              ELSE IF _ARBFMT_5 IN ('WHITE' 
              ) THEN _BRANCH_ = 0; 
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF               0.0645 <= chlorides  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.006567785;
          END;
        END;
      END;
    END;
  END;

********** LEAF    63  NODE   524 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.4475 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.135 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.02304805;
      END;
    END;
  END;

********** LEAF    64  NODE   522 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.775 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990885 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0275 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0266782311;
    END;
  END;

********** LEAF    65  NODE   532 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.35 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993185 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
      density  <             0.996655 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                7.175 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.35 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( density  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.018245989;
      END;
    END;
  END;

********** LEAF    66  NODE   533 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.35 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993185 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0405 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
                  0.996655 <= density  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                7.175 <= fixed_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                 9.35 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.002267583;
      END;
    END;
  END;

********** LEAF    67  NODE   534 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.35 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993185 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.565 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0030642617;
      END;
    END;
  END;

********** LEAF    68  NODE   535 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.35 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993185 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0405 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
                     0.565 <= sulphates  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0595 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0256587619;
      END;
    END;
  END;

********** LEAF    69  NODE   537 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
    citric_acid  <                0.255 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.4825 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF                3.505 <= pH  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.015496364;
    END;
  END;

********** LEAF    70  NODE   541 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.255 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4825 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.365 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                 8.15 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0575 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 28.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                112.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF                0.385 <= volatile_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0032392501;
        END;
      END;
    END;
  END;

********** LEAF    71  NODE   542 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.255 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4825 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.365 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                 8.15 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0575 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        28.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                112.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF volatile_acidity  <                0.385 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0224959861;
        END;
      END;
    END;
  END;

********** LEAF    72  NODE   540 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.255 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4825 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.365 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 8.15 <= fixed_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0575 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004135137;
      END;
    END;
  END;

********** LEAF    73  NODE   546 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.994895 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0415 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3025 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.0011922;
      END;
    END;
  END;

********** LEAF    74  NODE   547 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.994895 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0415 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.3025 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0595 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.019836752;
      END;
    END;
  END;

********** LEAF    75  NODE   548 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.994895 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0415 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 20.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 80.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.006302475;
      END;
    END;
  END;

********** LEAF    76  NODE   549 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.994895 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0415 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      20.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 80.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0155835953;
      END;
    END;
  END;

********** LEAF    77  NODE   557 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990795 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0295 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4175 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0675 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.555 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 55.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
          volatile_acidity  <               0.2375 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.991155 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF total_sulfur_dioxide  <                118.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0001372434;
          END;
        END;
      END;
    END;
  END;

********** LEAF    78  NODE   558 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990795 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0295 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4175 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0675 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.555 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 55.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
                        0.2375 <= volatile_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.991155 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF                118.5 <= total_sulfur_dioxide  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.010891797;
          END;
        END;
      END;
    END;
  END;

********** LEAF    79  NODE   556 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990795 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0295 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4175 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0675 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
                       0.555 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 55.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0116941838;
        END;
      END;
    END;
  END;

********** LEAF    80  NODE   554 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990795 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0295 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.4175 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0675 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.018426347;
      END;
    END;
  END;

********** LEAF    81  NODE   552 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.775 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990795 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0295 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0193597944;
    END;
  END;

********** LEAF    82  NODE   560 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(free_sulfur_dioxide ) AND 
    free_sulfur_dioxide  <                 18.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(free_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                77.25 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.014593425;
    END;
  END;

********** LEAF    83  NODE   562 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(free_sulfur_dioxide ) AND 
                    18.5 <= free_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(free_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                77.25 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
      chlorides  <               0.0395 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.992235 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                11.25 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0204866901;
      END;
    END;
  END;

********** LEAF    84  NODE   564 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(free_sulfur_dioxide ) AND 
                    18.5 <= free_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(free_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                77.25 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992235 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                11.25 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <         10.016666665 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99339 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                132.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.008877844;
        END;
      END;
    END;
  END;

********** LEAF    85  NODE   565 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(free_sulfur_dioxide ) AND 
                    18.5 <= free_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(free_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                77.25 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992235 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                11.25 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                10.016666665 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99339 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                132.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0041784193;
        END;
      END;
    END;
  END;

********** LEAF    86  NODE   569 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 18.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                77.25 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.022800805;
      END;
    END;
  END;

********** LEAF    87  NODE   571 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
        chlorides  <               0.0395 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF         10.983333335 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.992215 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0150278506;
        END;
      END;
    END;
  END;

********** LEAF    88  NODE   573 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <         10.983333335 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992215 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
          volatile_acidity  <                0.255 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
              IF sulphates  <                0.425 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF pH  <                2.995 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0013726329;
          END;
        END;
      END;
    END;
  END;

********** LEAF    89  NODE   574 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <         10.983333335 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992215 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
                         0.255 <= volatile_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
              IF                0.425 <= sulphates  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF                2.995 <= pH  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.010020883;
          END;
        END;
      END;
    END;
  END;

********** LEAF    90  NODE   568 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.635 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                 9.85 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              1.00047 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0178328603;
    END;
  END;

********** LEAF    91  NODE   578 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993395 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0425 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.3025 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0585 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0003883351;
      END;
    END;
  END;

********** LEAF    92  NODE   579 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                10.25 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.993395 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0425 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.3025 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0585 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.015489292;
      END;
    END;
  END;

********** LEAF    93  NODE   582 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.575 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 28.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                103.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF               0.3475 <= volatile_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.00745449;
        END;
      END;
    END;
  END;

********** LEAF    94  NODE   583 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.575 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        28.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                103.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF volatile_acidity  <               0.3475 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0092186799;
        END;
      END;
    END;
  END;

********** LEAF    95  NODE   581 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   10.25 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.993395 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
                     0.575 <= sulphates  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0595 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0236577048;
      END;
    END;
  END;

********** LEAF    96  NODE   587 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.235 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF                0.505 <= volatile_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 39.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.016124899;
      END;
    END;
  END;

********** LEAF    97  NODE   591 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.235 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 39.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
        fixed_acidity  <                 7.45 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 64.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
          volatile_acidity  <               0.2525 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF total_sulfur_dioxide  <                159.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.994125 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0097241365;
          END;
        END;
      END;
    END;
  END;

********** LEAF    98  NODE   592 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.235 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 39.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
        fixed_acidity  <                 7.45 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 64.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(volatile_acidity ) AND 
                        0.2525 <= volatile_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(volatile_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF                159.5 <= total_sulfur_dioxide  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.994125 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.003215453;
          END;
        END;
      END;
    END;
  END;

********** LEAF    99  NODE   590 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.65 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.235 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <                0.505 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 39.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
                        7.45 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 64.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.007400296;
        END;
      END;
    END;
  END;

********** LEAF   100  NODE   586 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   11.65 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990885 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0305 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0157252603;
    END;
  END;

********** LEAF   101  NODE   596 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 16.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 73.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.023723361;
      END;
    END;
  END;

********** LEAF   102  NODE   598 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      16.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 73.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
        chlorides  <               0.0395 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF         11.441666665 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.992205 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0135472351;
        END;
      END;
    END;
  END;

********** LEAF   103  NODE   600 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      16.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 73.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <         11.441666665 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992205 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(TastingDate ) AND 
          TastingDate  <                22330 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(TastingDate ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
              IF                 0.76 <= citric_acid  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF                3.635 <= pH  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0015222974;
          END;
        END;
      END;
    END;
  END;

********** LEAF   104  NODE   601 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <              1.00047 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      16.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 73.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <         11.441666665 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992205 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(TastingDate ) AND 
                         22330 <= TastingDate  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(TastingDate ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
              IF citric_acid  <                 0.76 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF pH  <                3.635 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( TastingDate  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.007851545;
          END;
        END;
      END;
    END;
  END;

********** LEAF   105  NODE   595 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.645 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                 9.85 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF              1.00047 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0153115036;
    END;
  END;

********** LEAF   106  NODE   609 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.55 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4225 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0695 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.996655 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.25 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.85 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(fixed_acidity ) AND 
          fixed_acidity  <                 6.95 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(fixed_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF                3.085 <= pH  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF                 63.5 <= total_sulfur_dioxide  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0029276622;
          END;
        END;
      END;
    END;
  END;

********** LEAF   107  NODE   610 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.55 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4225 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0695 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.996655 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.25 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.85 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(fixed_acidity ) AND 
                          6.95 <= fixed_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(fixed_acidity ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF pH  <                3.085 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF total_sulfur_dioxide  <                 63.5 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.01381208;
          END;
        END;
      END;
    END;
  END;

********** LEAF   108  NODE   608 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.55 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
      volatile_acidity  <               0.4225 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0695 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                    0.996655 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.25 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 9.85 <= fixed_acidity  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0067051176;
        END;
      END;
    END;
  END;

********** LEAF   109  NODE   606 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                11.55 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0305 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(volatile_acidity ) AND 
                    0.4225 <= volatile_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(volatile_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0695 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.013422106;
      END;
    END;
  END;

********** LEAF   110  NODE   604 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                   11.55 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.991245 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0305 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0130178982;
    END;
  END;

********** LEAF   111  NODE   614 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.2115 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 18.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                77.25 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.019690601;
      END;
    END;
  END;

********** LEAF   112  NODE   618 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.2115 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
        citric_acid  <                0.365 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.1245 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.45 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.275 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF                0.375 <= volatile_acidity  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF fixed_acidity  <                 6.45 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.003979452;
          END;
        END;
      END;
    END;
  END;

********** LEAF   113  NODE   619 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.2115 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
        citric_acid  <                0.365 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.1245 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.45 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
                         0.275 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF volatile_acidity  <                0.375 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF                 6.45 <= fixed_acidity  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0108208461;
          END;
        END;
      END;
    END;
  END;

********** LEAF   114  NODE   617 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.645 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.2115 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      18.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                77.25 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.365 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.1245 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 9.45 <= fixed_acidity  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.009315182;
        END;
      END;
    END;
  END;

********** LEAF   115  NODE   613 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.645 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                10.05 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.2115 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0150207186;
    END;
  END;

********** LEAF   116  NODE   623 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
      chlorides  <               0.0395 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                10.99 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99219 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0067695737;
      END;
    END;
  END;

********** LEAF   117  NODE   625 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                10.99 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99219 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 25.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 98.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.015396726;
        END;
      END;
    END;
  END;

********** LEAF   118  NODE   626 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                10.99 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99219 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        25.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 98.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.003621192;
        END;
      END;
    END;
  END;

********** LEAF   119  NODE   622 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.575 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                 56.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0098242353;
    END;
  END;

********** LEAF   120  NODE   634 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.315 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 5.45 <= fixed_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.065 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.996295 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.35 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.45 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
          alcohol  <                10.85 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.992005 <= density  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF               0.0415 <= chlorides  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.014144164;
          END;
        END;
      END;
    END;
  END;

********** LEAF   121  NODE   635 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.315 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 5.45 <= fixed_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.065 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.996295 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.35 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 9.45 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
                         10.85 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.992005 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF chlorides  <               0.0415 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0025252797;
          END;
        END;
      END;
    END;
  END;

********** LEAF   122  NODE   633 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.315 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 5.45 <= fixed_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.065 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                    0.996295 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.35 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 9.45 <= fixed_acidity  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.008140195;
        END;
      END;
    END;
  END;

********** LEAF   123  NODE   631 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.315 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                 5.45 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.065 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.016717171;
      END;
    END;
  END;

********** LEAF   124  NODE   629 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                   0.465 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.135 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.012242938;
    END;
  END;

********** LEAF   125  NODE   641 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 60.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
        citric_acid  <                0.265 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF                0.455 <= volatile_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.009761131;
        END;
      END;
    END;
  END;

********** LEAF   126  NODE   643 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 60.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.265 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF volatile_acidity  <                0.455 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.335 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF         9.7666666665 <= alcohol  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF total_sulfur_dioxide  <                154.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0112180587;
          END;
        END;
      END;
    END;
  END;

********** LEAF   127  NODE   644 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 60.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.265 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF volatile_acidity  <                0.455 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
                         0.335 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF alcohol  <         9.7666666665 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
              IF                154.5 <= total_sulfur_dioxide  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0005996496;
          END;
        END;
      END;
    END;
  END;

********** LEAF   128  NODE   640 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.575 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 56.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      7.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 60.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.018077746;
      END;
    END;
  END;

********** LEAF   129  NODE   638 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.575 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                 56.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0087728621;
    END;
  END;

********** LEAF   130  NODE   648 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                 9.85 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.995775 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                167.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
      density  <             0.997015 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                 7.05 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( density  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.013008584;
      END;
    END;
  END;

********** LEAF   131  NODE   649 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <                 9.85 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.995775 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                167.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
                  0.997015 <= density  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                 9.15 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 7.05 <= fixed_acidity  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.00287804;
      END;
    END;
  END;

********** LEAF   132  NODE   652 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                    9.85 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.995775 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                167.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.585 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 25.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                101.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.008898474;
        END;
      END;
    END;
  END;

********** LEAF   133  NODE   653 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                    9.85 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.995775 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                167.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.585 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0595 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        25.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                101.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0086297908;
        END;
      END;
    END;
  END;

********** LEAF   134  NODE   651 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                    9.85 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.995775 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                167.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
                     0.585 <= sulphates  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0595 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0141491853;
      END;
    END;
  END;

********** LEAF   135  NODE   657 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
      citric_acid  <                0.265 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF               0.4825 <= volatile_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.01054143;
      END;
    END;
  END;

********** LEAF   136  NODE   659 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.265 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <               0.4825 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
        citric_acid  <                0.325 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 5.95 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0295 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0076863002;
        END;
      END;
    END;
  END;

********** LEAF   137  NODE   661 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.265 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <               0.4825 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.325 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 5.95 <= fixed_acidity  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0295 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(total_sulfur_dioxide ) AND 
          total_sulfur_dioxide  <                130.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(total_sulfur_dioxide ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
              IF free_sulfur_dioxide  <                 32.5 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('RED' ) THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF _ARBFMT_5 IN ('WHITE' 
              ) THEN _BRANCH_ = 0; 
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0012031271;
          END;
        END;
      END;
    END;
  END;

********** LEAF   138  NODE   662 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.775 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990885 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(citric_acid ) AND 
                     0.265 <= citric_acid  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(citric_acid ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <               0.4825 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.325 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 5.95 <= fixed_acidity  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0295 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(total_sulfur_dioxide ) AND 
                         130.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(total_sulfur_dioxide ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
              IF                 32.5 <= free_sulfur_dioxide  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
               _BRANCH_ =    2; 
              END; 
              ELSE IF _ARBFMT_5 IN ('RED' 
              ) THEN _BRANCH_ = 0; 
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.010865412;
          END;
        END;
      END;
    END;
  END;

********** LEAF   139  NODE   656 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.775 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990885 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0275 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0122447332;
    END;
  END;

********** LEAF   140  NODE   668 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.885 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.585 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 55.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 21.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                 87.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.009395951;
        END;
      END;
    END;
  END;

********** LEAF   141  NODE   670 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.885 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.585 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 55.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        21.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 87.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.295 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF fixed_acidity  <                 6.45 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF                0.405 <= volatile_acidity  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0095568358;
          END;
        END;
      END;
    END;
  END;

********** LEAF   142  NODE   671 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.885 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
      sulphates  <                0.585 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 55.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        21.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                 87.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
                         0.295 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF                 6.45 <= fixed_acidity  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF volatile_acidity  <                0.405 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0006337421;
          END;
        END;
      END;
    END;
  END;

********** LEAF   143  NODE   667 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                172.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.885 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(sulphates ) AND 
                     0.585 <= sulphates  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(sulphates ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 55.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0090332833;
      END;
    END;
  END;

********** LEAF   144  NODE   665 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
                   172.5 <= total_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF                 54.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.885 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010152672;
    END;
  END;

********** LEAF   145  NODE   673 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
    citric_acid  <                0.265 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.4875 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.006261854;
    END;
  END;

********** LEAF   146  NODE   677 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.265 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4875 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 65.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
        citric_acid  <                0.335 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.85 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF free_sulfur_dioxide  <                41.75 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0131664845;
        END;
      END;
    END;
  END;

********** LEAF   147  NODE   678 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.265 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4875 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 65.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(citric_acid ) AND 
                       0.335 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(citric_acid ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.85 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF                41.75 <= free_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0014693209;
        END;
      END;
    END;
  END;

********** LEAF   148  NODE   676 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.265 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.4875 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      7.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 65.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.003832407;
      END;
    END;
  END;

********** LEAF   149  NODE   686 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.4825 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
        pH  <                3.265 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 5.95 <= fixed_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( pH  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
          alcohol  <                10.85 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF              0.99202 <= density  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF               0.0375 <= chlorides  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.00387297;
          END;
        END;
      END;
    END;
  END;

********** LEAF   150  NODE   687 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.4825 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
        pH  <                3.265 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF                 5.95 <= fixed_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( pH  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(alcohol ) AND 
                         10.85 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(alcohol ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <              0.99202 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
              IF chlorides  <               0.0375 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0062758961;
          END;
        END;
      END;
    END;
  END;

********** LEAF   151  NODE   685 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.4825 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
                       3.265 <= pH  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
            IF fixed_acidity  <                 5.95 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0139407031;
        END;
      END;
    END;
  END;

********** LEAF   152  NODE   683 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.4825 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
                     155.5 <= total_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF                 47.5 <= free_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                 9.15 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.006249085;
      END;
    END;
  END;

********** LEAF   153  NODE   681 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                  0.4825 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.135 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.010320825;
    END;
  END;

********** LEAF   154  NODE   691 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.535 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 65.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
     DROP _ARB_SURR_;
    _ARBFMT_5 = PUT( TasterName , $5.);
     %DMNORMIP( _ARBFMT_5);
      IF _ARBFMT_5 IN ('ALICE' ,'BOB' ,'FRANK' ) THEN DO;
       _BRANCH_ =    1; 
      END; 
    _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
    IF _ARBFMT_5 NOTIN (
      'ALICE' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' ,'EVA' 
      ) THEN _ARB_SURR_ = 1; 
    IF _ARB_SURR_ NE 0 THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0375 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99213 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0007229124;
      END;
    END;
  END;

********** LEAF   155  NODE   692 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.535 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF                 65.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
    _ARBFMT_5 = PUT( TasterName , $5.);
     %DMNORMIP( _ARBFMT_5);
      IF _ARBFMT_5 IN ('CHARL' ,'DAVID' ,'EVA' ) THEN DO;
       _BRANCH_ =    2; 
      END; 
    _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
    IF _ARBFMT_5 NOTIN (
      'ALICE' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' ,'EVA' 
      ) THEN _ARB_SURR_ = 1; 
    IF _ARB_SURR_ NE 0 THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0375 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99213 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TasterName  ) THEN _BRANCH_ = 2;
      ELSE IF _ARBFMT_5 NOTIN (
        'ALICE' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' ,'EVA' 
         ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.009602786;
      END;
    END;
  END;

********** LEAF   156  NODE   693 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.535 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                 65.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.225 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.405 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF                 9.75 <= fixed_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001315367;
      END;
    END;
  END;

********** LEAF   157  NODE   694 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.535 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
        IF total_sulfur_dioxide  <                 65.5 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.225 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.405 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
          IF fixed_acidity  <                 9.75 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.010042951;
      END;
    END;
  END;

********** LEAF   158  NODE   698 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                158.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 47.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                9.025 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
      chlorides  <               0.0425 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.992605 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0082655772;
      END;
    END;
  END;

********** LEAF   159  NODE   700 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                158.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 47.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                9.025 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0425 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992605 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
        total_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(total_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF free_sulfur_dioxide  <                 15.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0098182516;
        END;
      END;
    END;
  END;

********** LEAF   160  NODE   701 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                158.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 47.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                9.025 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0425 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992605 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
                        54.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(total_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF                 15.5 <= free_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.008634238;
        END;
      END;
    END;
  END;

********** LEAF   161  NODE   697 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
                   158.5 <= total_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF                 47.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <                9.025 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008942057;
    END;
  END;

********** LEAF   162  NODE   705 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <                0.231 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 17.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 67.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010645918;
      END;
    END;
  END;

********** LEAF   163  NODE   707 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <                0.231 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      17.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 67.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_5 = PUT( TasterName , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('ALICE' ,'EVA' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
      _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
      IF _ARBFMT_5 NOTIN (
        'ALICE' ,'EVA' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' 
        ) THEN _ARB_SURR_ = 1; 
      IF _ARB_SURR_ NE 0 THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 13.9 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.98821 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.004285638;
        END;
      END;
    END;
  END;

********** LEAF   164  NODE   709 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <                0.231 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      17.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 67.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_5 = PUT( TasterName , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('BOB' ,'FRANK' ,'CHARL' ,'DAVID' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
      IF _ARBFMT_5 NOTIN (
        'ALICE' ,'EVA' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' 
        ) THEN _ARB_SURR_ = 1; 
      IF _ARB_SURR_ NE 0 THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 13.9 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.98821 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( TasterName  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_5 NOTIN (
          'ALICE' ,'EVA' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(chlorides ) AND 
          chlorides  <               0.0455 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(chlorides ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF               10.525 <= alcohol  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.994545 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( chlorides  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0080097935;
          END;
        END;
      END;
    END;
  END;

********** LEAF   165  NODE   710 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.635 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                10.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <                0.231 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
                      17.5 <= free_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(free_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 67.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
      _ARBFMT_5 = PUT( TasterName , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('BOB' ,'FRANK' ,'CHARL' ,'DAVID' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
      _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
      IF _ARBFMT_5 NOTIN (
        'ALICE' ,'EVA' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' 
        ) THEN _ARB_SURR_ = 1; 
      IF _ARB_SURR_ NE 0 THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 13.9 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.98821 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( TasterName  ) THEN _BRANCH_ = 2;
        ELSE IF _ARBFMT_5 NOTIN (
          'ALICE' ,'EVA' ,'BOB' ,'FRANK' ,'CHARL' ,'DAVID' 
           ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(chlorides ) AND 
                        0.0455 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(chlorides ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF alcohol  <               10.525 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.994545 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0008591839;
          END;
        END;
      END;
    END;
  END;

********** LEAF   166  NODE   704 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.635 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                10.05 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF                0.231 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.00978868;
    END;
  END;

********** LEAF   167  NODE   714 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.425 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 6.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <              0.99079 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF                3.545 <= pH  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.008669574;
      END;
    END;
  END;

********** LEAF   168  NODE   716 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.425 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      6.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99079 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                3.545 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <              0.99441 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0425 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                10.75 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.007808994;
        END;
      END;
    END;
  END;

********** LEAF   169  NODE   718 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.425 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      6.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99079 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                3.545 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                     0.99441 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0425 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                10.75 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.345 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF fixed_acidity  <                 9.15 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.999085 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0082530523;
          END;
        END;
      END;
    END;
  END;

********** LEAF   170  NODE   719 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <               11.425 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.991245 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0325 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      6.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF              0.99079 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
          IF pH  <                3.545 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                     0.99441 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0425 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                10.75 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
                         0.345 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
              IF                 9.15 <= fixed_acidity  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.999085 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.004290008;
          END;
        END;
      END;
    END;
  END;

********** LEAF   171  NODE   713 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
                  11.425 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.991245 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0325 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.008902128;
    END;
  END;

********** LEAF   172  NODE   721 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.2025 THEN DO;
     _BRANCH_ =    1; 
    END; 

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0101044315;
    END;
  END;

********** LEAF   173  NODE   725 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                  0.2025 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.195 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF sulphates  <                0.505 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <              0.99455 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                10.45 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0445 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.014329577;
        END;
      END;
    END;
  END;

********** LEAF   174  NODE   726 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                  0.2025 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.195 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF sulphates  <                0.505 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                     0.99455 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                10.45 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0445 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001723844;
        END;
      END;
    END;
  END;

********** LEAF   175  NODE   727 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                  0.2025 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.195 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.505 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
        alcohol  <                 9.95 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.995755 <= density  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                160.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.006163759;
        END;
      END;
    END;
  END;

********** LEAF   176  NODE   728 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                  0.2025 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.195 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.505 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(alcohol ) AND 
                        9.95 <= alcohol  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(alcohol ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.995755 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                160.5 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( alcohol  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0077757832;
        END;
      END;
    END;
  END;

********** LEAF   177  NODE   730 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(pH ) AND 
    pH  <                3.115 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(pH ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
        IF sulphates  <                0.325 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                 13.1 <= fixed_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.007609769;
    END;
  END;

********** LEAF   178  NODE   732 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(pH ) AND 
                   3.115 <= pH  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(pH ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
        IF                0.325 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 13.1 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( pH  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
      chlorides  <               0.0395 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.992205 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF               11.875 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0122884292;
      END;
    END;
  END;

********** LEAF   179  NODE   734 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(pH ) AND 
                   3.115 <= pH  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(pH ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
        IF                0.325 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 13.1 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( pH  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992205 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <               11.875 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
        total_sulfur_dioxide  <                 60.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(total_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF free_sulfur_dioxide  <                 14.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0091347269;
        END;
      END;
    END;
  END;

********** LEAF   180  NODE   736 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(pH ) AND 
                   3.115 <= pH  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(pH ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
        IF                0.325 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 13.1 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( pH  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992205 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <               11.875 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
                        60.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(total_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF                 14.5 <= free_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(chlorides ) AND 
          chlorides  <               0.0495 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(chlorides ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.995415 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
               _BRANCH_ =    1; 
              END; 
              ELSE IF _ARBFMT_5 IN ('RED' 
              ) THEN _BRANCH_ = 0; 
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( chlorides  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.001696656;
          END;
        END;
      END;
    END;
  END;

********** LEAF   181  NODE   737 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(pH ) AND 
                   3.115 <= pH  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(pH ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
        IF                0.325 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 13.1 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( pH  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(chlorides ) AND 
                    0.0395 <= chlorides  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(chlorides ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.992205 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <               11.875 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
                        60.5 <= total_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(total_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
            IF                 14.5 <= free_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(chlorides ) AND 
                        0.0495 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(chlorides ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.995415 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
            _ARBFMT_5 = PUT( category , $5.);
             %DMNORMIP( _ARBFMT_5);
              IF _ARBFMT_5 IN ('RED' ) THEN DO;
               _BRANCH_ =    2; 
              END; 
              ELSE IF _ARBFMT_5 IN ('WHITE' 
              ) THEN _BRANCH_ = 0; 
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.011755829;
          END;
        END;
      END;
    END;
  END;

********** LEAF   182  NODE   741 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99671 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF         9.7166666665 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 8.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.115 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF sulphates  <                0.305 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF                0.144 <= chlorides  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010833018;
      END;
    END;
  END;

********** LEAF   183  NODE   743 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99671 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF         9.7166666665 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 8.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.115 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.305 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.144 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
        chlorides  <               0.0395 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99203 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF               11.875 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0093319218;
        END;
      END;
    END;
  END;

********** LEAF   184  NODE   745 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99671 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF         9.7166666665 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 8.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.115 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.305 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.144 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99203 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <               11.875 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.295 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF                0.405 <= volatile_acidity  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF                3.335 <= pH  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( citric_acid  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.007519408;
          END;
        END;
      END;
    END;
  END;

********** LEAF   185  NODE   746 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99671 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF         9.7166666665 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 8.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.115 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
          IF                0.305 <= sulphates  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.144 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0395 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99203 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <               11.875 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(citric_acid ) AND 
                         0.295 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(citric_acid ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF volatile_acidity  <                0.405 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
              IF pH  <                3.335 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0025461275;
          END;
        END;
      END;
    END;
  END;

********** LEAF   186  NODE   740 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
                 0.99671 <= density  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <         9.7166666665 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                 8.85 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.006722403;
    END;
  END;

********** LEAF   187  NODE   750 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.505 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0585 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                111.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 26.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.012535633;
      END;
    END;
  END;

********** LEAF   188  NODE   751 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
    sulphates  <                0.505 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0585 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
                     111.5 <= total_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF                 26.5 <= free_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0009421241;
      END;
    END;
  END;

********** LEAF   189  NODE   752 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.505 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0585 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                 68.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 16.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.0117077129;
      END;
    END;
  END;

********** LEAF   190  NODE   753 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(sulphates ) AND 
                   0.505 <= sulphates  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(sulphates ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0585 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( sulphates  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
                      68.5 <= total_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF                 16.5 <= free_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.001076695;
      END;
    END;
  END;

********** LEAF   191  NODE   759 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990375 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22773.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <         11.716666665 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.539 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
        volatile_acidity  <                0.225 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <              0.99117 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(TastingDate ) THEN DO;
            IF TastingDate  <              21916.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0057837351;
        END;
      END;
    END;
  END;

********** LEAF   192  NODE   761 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990375 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22773.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <         11.716666665 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.539 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.225 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99117 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(TastingDate ) THEN DO;
            IF              21916.5 <= TastingDate  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_5 = PUT( TasterName , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('ALICE' ,'CHARL' ,'EVA' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
        _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
        IF _ARBFMT_5 NOTIN (
          'ALICE' ,'CHARL' ,'EVA' ,'BOB' ,'FRANK' ,'DAVID' 
          ) THEN _ARB_SURR_ = 1; 
        IF _ARB_SURR_ NE 0 THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF                 9.65 <= alcohol  THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.995865 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( TasterName  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_5 NOTIN (
            'ALICE' ,'CHARL' ,'EVA' ,'BOB' ,'FRANK' ,'DAVID' 
             ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.006457794;
          END;
        END;
      END;
    END;
  END;

********** LEAF   193  NODE   762 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990375 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22773.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <         11.716666665 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <                0.539 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(volatile_acidity ) AND 
                       0.225 <= volatile_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(volatile_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF              0.99117 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(TastingDate ) THEN DO;
            IF              21916.5 <= TastingDate  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_5 = PUT( TasterName , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('BOB' ,'FRANK' ,'DAVID' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
        _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
        IF _ARBFMT_5 NOTIN (
          'ALICE' ,'CHARL' ,'EVA' ,'BOB' ,'FRANK' ,'DAVID' 
          ) THEN _ARB_SURR_ = 1; 
        IF _ARB_SURR_ NE 0 THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF alcohol  <                 9.65 THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.995865 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.001030934;
          END;
        END;
      END;
    END;
  END;

********** LEAF   194  NODE   758 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
    alcohol  <         11.741666665 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.990375 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0275 <= chlorides  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( alcohol  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
                   22773.5 <= TastingDate  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF         11.716666665 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF                0.539 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010319231;
      END;
    END;
  END;

********** LEAF   195  NODE   756 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(alcohol ) AND 
            11.741666665 <= alcohol  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(alcohol ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.990375 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0275 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0098374412;
    END;
  END;

********** LEAF   196  NODE   768 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 60.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.994195 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.85 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                148.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0085345603;
        END;
      END;
    END;
  END;

********** LEAF   197  NODE   769 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 60.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                    0.994195 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.85 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                148.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.000265984;
        END;
      END;
    END;
  END;

********** LEAF   198  NODE   767 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      7.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 60.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00337958;
      END;
    END;
  END;

********** LEAF   199  NODE   765 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                   0.465 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.135 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008038899;
    END;
  END;

********** LEAF   200  NODE   771 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
    citric_acid  <                0.235 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF                0.525 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF                3.505 <= pH  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.00959837;
    END;
  END;

********** LEAF   201  NODE   775 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <                0.525 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 65.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
        chlorides  <               0.0385 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF               11.425 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.992065 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0098929437;
        END;
      END;
    END;
  END;

********** LEAF   202  NODE   777 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <                0.525 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 65.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <               11.425 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992065 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(pH ) AND 
          pH  <                3.195 THEN DO;
           _BRANCH_ =    1; 
          END; 
         IF MISSING(pH ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF alcohol  <                 9.65 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
              IF sulphates  <                0.515 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( pH  ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0086615259;
          END;
        END;
      END;
    END;
  END;

********** LEAF   203  NODE   778 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <                0.525 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 65.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0385 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <               11.425 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.992065 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
          IF  NOT MISSING(pH ) AND 
                         3.195 <= pH  THEN DO;
           _BRANCH_ =    2; 
          END; 
         IF MISSING(pH ) THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
              IF                 9.65 <= alcohol  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
              IF                0.515 <= sulphates  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + -0.002375135;
          END;
        END;
      END;
    END;
  END;

********** LEAF   204  NODE   774 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <                0.525 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.505 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      7.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 65.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004652807;
      END;
    END;
  END;

********** LEAF   205  NODE   784 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
        pH  <                3.145 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.25 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
            IF sulphates  <                0.325 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( pH  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.004805173;
        END;
      END;
    END;
  END;

********** LEAF   206  NODE   786 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
                       3.145 <= pH  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.25 <= alcohol  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
            IF                0.325 <= sulphates  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_5 = PUT( TasterName , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('CHARL' ,'DAVID' ,'EVA' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
        _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
        IF _ARBFMT_5 NOTIN (
          'CHARL' ,'DAVID' ,'EVA' ,'ALICE' ,'BOB' ,'FRANK' 
          ) THEN _ARB_SURR_ = 1; 
        IF _ARB_SURR_ NE 0 THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF density  <             0.996035 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF volatile_acidity  <               0.2775 THEN DO;
               _BRANCH_ =    1; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;
        IF _BRANCH_ LT 0 THEN DO; 
           IF MISSING( TasterName  ) THEN _BRANCH_ = 1;
          ELSE IF _ARBFMT_5 NOTIN (
            'CHARL' ,'DAVID' ,'EVA' ,'ALICE' ,'BOB' ,'FRANK' 
             ) THEN _BRANCH_ = 1;
        END; 
        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.0033906152;
          END;
        END;
      END;
    END;
  END;

********** LEAF   207  NODE   787 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
      total_sulfur_dioxide  <                155.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF free_sulfur_dioxide  <                 47.5 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.15 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(pH ) AND 
                       3.145 <= pH  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(pH ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.25 <= alcohol  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(sulphates ) THEN DO;
            IF                0.325 <= sulphates  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;

        _BRANCH_ = -1;
        _ARBFMT_5 = PUT( TasterName , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('ALICE' ,'BOB' ,'FRANK' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
        _ARB_SURR_ = 0;  IF MISSING(TasterName ) THEN _ARB_SURR_ = 1; 
        IF _ARBFMT_5 NOTIN (
          'CHARL' ,'DAVID' ,'EVA' ,'ALICE' ,'BOB' ,'FRANK' 
          ) THEN _ARB_SURR_ = 1; 
        IF _ARB_SURR_ NE 0 THEN DO; 
          IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
              IF             0.996035 <= density  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
              IF               0.2775 <= volatile_acidity  THEN DO;
               _BRANCH_ =    2; 
              END; 
            ELSE _BRANCH_ = 0;
            END;
          END;

        IF _BRANCH_ GT 0 THEN DO;
           _ARB_F_ + 0.014838987;
          END;
        END;
      END;
    END;
  END;

********** LEAF   208  NODE   783 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <                0.465 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.135 <= citric_acid  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
         _BRANCH_ =    1; 
        END; 
        ELSE IF _ARBFMT_5 IN ('RED' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( volatile_acidity  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(total_sulfur_dioxide ) AND 
                     155.5 <= total_sulfur_dioxide  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(total_sulfur_dioxide ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
          IF                 47.5 <= free_sulfur_dioxide  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                 9.15 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.004358644;
      END;
    END;
  END;

********** LEAF   209  NODE   781 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(volatile_acidity ) AND 
                   0.465 <= volatile_acidity  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(volatile_acidity ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.135 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
      _ARBFMT_5 = PUT( category , $5.);
       %DMNORMIP( _ARBFMT_5);
        IF _ARBFMT_5 IN ('RED' ) THEN DO;
         _BRANCH_ =    2; 
        END; 
        ELSE IF _ARBFMT_5 IN ('WHITE' 
        ) THEN _BRANCH_ = 0; 
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.009059367;
    END;
  END;

********** LEAF   210  NODE   795 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TastingDate ) AND 
    TastingDate  <              22493.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(TastingDate ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.1675 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.989325 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
      density  <              0.99611 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0695 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.75 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( density  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 27.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF total_sulfur_dioxide  <                102.5 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.009821802;
        END;
      END;
    END;
  END;

********** LEAF   211  NODE   796 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TastingDate ) AND 
    TastingDate  <              22493.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(TastingDate ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.1675 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.989325 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
      density  <              0.99611 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF chlorides  <               0.0695 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF                 9.75 <= alcohol  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( density  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
                        27.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(free_sulfur_dioxide ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
            IF                102.5 <= total_sulfur_dioxide  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( free_sulfur_dioxide  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0071972331;
        END;
      END;
    END;
  END;

********** LEAF   212  NODE   792 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TastingDate ) AND 
    TastingDate  <              22493.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(TastingDate ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.1675 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF             0.989325 <= density  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( TastingDate  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(density ) AND 
                   0.99611 <= density  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(density ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
          IF               0.0695 <= chlorides  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <                 9.75 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + 0.007951289;
      END;
    END;
  END;

********** LEAF   213  NODE   793 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TastingDate ) AND 
                 22493.5 <= TastingDate  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(TastingDate ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.1675 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.989325 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22691.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                227.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF               0.7325 <= volatile_acidity  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.010563206;
      END;
    END;
  END;

********** LEAF   214  NODE   794 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(TastingDate ) AND 
                 22493.5 <= TastingDate  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(TastingDate ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.1675 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
        IF density  <             0.989325 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
                   22691.5 <= TastingDate  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                227.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
          IF volatile_acidity  <               0.7325 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.003453736;
      END;
    END;
  END;

********** LEAF   215  NODE   802 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99759 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                 9.05 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.245 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.165 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(TastingDate ) AND 
        TastingDate  <              22318.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(TastingDate ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF                  0.7 <= volatile_acidity  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 8.75 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.012617225;
        END;
      END;
    END;
  END;

********** LEAF   216  NODE   803 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99759 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                 9.05 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
      pH  <                3.245 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.165 <= citric_acid  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( pH  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(TastingDate ) AND 
                     22318.5 <= TastingDate  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(TastingDate ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
            IF volatile_acidity  <                  0.7 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 8.75 <= alcohol  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( TastingDate  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001734116;
        END;
      END;
    END;
  END;

********** LEAF   217  NODE   804 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99759 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                 9.05 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.245 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.165 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
        chlorides  <               0.0485 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF density  <             0.994555 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0112641376;
        END;
      END;
    END;
  END;

********** LEAF   218  NODE   805 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <              0.99759 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                 9.05 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF fixed_acidity  <                 9.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(pH ) AND 
                     3.245 <= pH  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(pH ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.165 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(chlorides ) AND 
                      0.0485 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(chlorides ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
            IF             0.994555 <= density  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( chlorides  ) THEN _BRANCH_ = 2;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.002552696;
        END;
      END;
    END;
  END;

********** LEAF   219  NODE   799 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
                 0.99759 <= density  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <                 9.05 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(fixed_acidity ) THEN DO;
        IF                 9.85 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0086918547;
    END;
  END;

********** LEAF   220  NODE   807 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
    density  <             0.992385 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF                11.15 <= alcohol  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF chlorides  <               0.0355 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + 0.0083079572;
    END;
  END;

********** LEAF   221  NODE   809 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
                0.992385 <= density  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <                11.15 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 6.95 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF density  <             0.995605 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.005573726;
      END;
    END;
  END;

********** LEAF   222  NODE   811 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
                0.992385 <= density  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <                11.15 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      6.95 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.995605 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
        density  <             0.996745 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF                 9.65 <= alcohol  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0725 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( density  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.001459119;
        END;
      END;
    END;
  END;

********** LEAF   223  NODE   812 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(density ) AND 
                0.992385 <= density  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(density ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
        IF alcohol  <                11.15 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
        IF               0.0355 <= chlorides  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( density  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      6.95 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(density ) THEN DO;
          IF             0.995605 <= density  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(density ) AND 
                    0.996745 <= density  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(density ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
            IF alcohol  <                 9.65 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0725 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0100687161;
        END;
      END;
    END;
  END;

********** LEAF   224  NODE   814 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
    citric_acid  <                0.235 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF               0.5425 <= volatile_acidity  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF                3.555 <= pH  THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008579672;
    END;
  END;

********** LEAF   225  NODE   818 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.5425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.555 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 66.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
        fixed_acidity  <                 6.85 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF                3.055 <= pH  THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0033556465;
        END;
      END;
    END;
  END;

********** LEAF   226  NODE   819 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.5425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.555 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
      fixed_acidity  <                 7.45 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
           _BRANCH_ =    1; 
          END; 
          ELSE IF _ARBFMT_5 IN ('RED' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF                 66.5 <= total_sulfur_dioxide  THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
                        6.85 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
            IF pH  <                3.055 THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.014326587;
        END;
      END;
    END;
  END;

********** LEAF   227  NODE   817 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(citric_acid ) AND 
                   0.235 <= citric_acid  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(citric_acid ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(volatile_acidity ) THEN DO;
        IF volatile_acidity  <               0.5425 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(pH ) THEN DO;
        IF pH  <                3.555 THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( citric_acid  ) THEN _BRANCH_ = 2;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(fixed_acidity ) AND 
                      7.45 <= fixed_acidity  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(fixed_acidity ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
        _ARBFMT_5 = PUT( category , $5.);
         %DMNORMIP( _ARBFMT_5);
          IF _ARBFMT_5 IN ('RED' ) THEN DO;
           _BRANCH_ =    2; 
          END; 
          ELSE IF _ARBFMT_5 IN ('WHITE' 
          ) THEN _BRANCH_ = 0; 
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(total_sulfur_dioxide ) THEN DO;
          IF total_sulfur_dioxide  <                 66.5 THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;
       _ARB_F_ + -0.00418288;
      END;
    END;
  END;

********** LEAF   228  NODE   825 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                171.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.895 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22435.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.295 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <         9.6166666665 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.525 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0595 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( sulphates  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + -0.010428828;
        END;
      END;
    END;
  END;

********** LEAF   229  NODE   826 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                171.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.895 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
      TastingDate  <              22435.5 THEN DO;
       _BRANCH_ =    1; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF citric_acid  <                0.295 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF alcohol  <         9.6166666665 THEN DO;
           _BRANCH_ =    1; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;

    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(sulphates ) AND 
                       0.525 <= sulphates  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(sulphates ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0595 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0047356482;
        END;
      END;
    END;
  END;

********** LEAF   230  NODE   827 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                171.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.895 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
                   22435.5 <= TastingDate  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.295 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF         9.6166666665 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
        fixed_acidity  <                 7.05 THEN DO;
         _BRANCH_ =    1; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('WHITE' ) THEN DO;
             _BRANCH_ =    1; 
            END; 
            ELSE IF _ARBFMT_5 IN ('RED' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF chlorides  <               0.0545 THEN DO;
             _BRANCH_ =    1; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;
      IF _BRANCH_ LT 0 THEN DO; 
         IF MISSING( fixed_acidity  ) THEN _BRANCH_ = 1;
      END; 
      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0092505049;
        END;
      END;
    END;
  END;

********** LEAF   231  NODE   828 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
    total_sulfur_dioxide  <                171.5 THEN DO;
     _BRANCH_ =    1; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF free_sulfur_dioxide  <                 54.5 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF citric_acid  <                0.895 THEN DO;
         _BRANCH_ =    1; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;
  IF _BRANCH_ LT 0 THEN DO; 
     IF MISSING( total_sulfur_dioxide  ) THEN _BRANCH_ = 1;
  END; 
  IF _BRANCH_ GT 0 THEN DO;

    _BRANCH_ = -1;
      IF  NOT MISSING(TastingDate ) AND 
                   22435.5 <= TastingDate  THEN DO;
       _BRANCH_ =    2; 
      END; 
     IF MISSING(TastingDate ) THEN DO; 
      IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
          IF                0.295 <= citric_acid  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      IF _BRANCH_ LT 0 AND NOT MISSING(alcohol ) THEN DO;
          IF         9.6166666665 <= alcohol  THEN DO;
           _BRANCH_ =    2; 
          END; 
        ELSE _BRANCH_ = 0;
        END;
      END;
    IF _BRANCH_ LT 0 THEN DO; 
       IF MISSING( TastingDate  ) THEN _BRANCH_ = 2;
    END; 
    IF _BRANCH_ GT 0 THEN DO;

      _BRANCH_ = -1;
        IF  NOT MISSING(fixed_acidity ) AND 
                        7.05 <= fixed_acidity  THEN DO;
         _BRANCH_ =    2; 
        END; 
       IF MISSING(fixed_acidity ) THEN DO; 
        IF _BRANCH_ LT 0 AND NOT MISSING(category ) THEN DO;
          _ARBFMT_5 = PUT( category , $5.);
           %DMNORMIP( _ARBFMT_5);
            IF _ARBFMT_5 IN ('RED' ) THEN DO;
             _BRANCH_ =    2; 
            END; 
            ELSE IF _ARBFMT_5 IN ('WHITE' 
            ) THEN _BRANCH_ = 0; 
          END;
        IF _BRANCH_ LT 0 AND NOT MISSING(chlorides ) THEN DO;
            IF               0.0545 <= chlorides  THEN DO;
             _BRANCH_ =    2; 
            END; 
          ELSE _BRANCH_ = 0;
          END;
        END;

      IF _BRANCH_ GT 0 THEN DO;
         _ARB_F_ + 0.0023587895;
        END;
      END;
    END;
  END;

********** LEAF   232  NODE   822 ***************;
IF _ARB_BADF_ EQ 0 THEN DO; 

  _BRANCH_ = -1;
    IF  NOT MISSING(total_sulfur_dioxide ) AND 
                   171.5 <= total_sulfur_dioxide  THEN DO;
     _BRANCH_ =    2; 
    END; 
   IF MISSING(total_sulfur_dioxide ) THEN DO; 
    IF _BRANCH_ LT 0 AND NOT MISSING(free_sulfur_dioxide ) THEN DO;
        IF                 54.5 <= free_sulfur_dioxide  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    IF _BRANCH_ LT 0 AND NOT MISSING(citric_acid ) THEN DO;
        IF                0.895 <= citric_acid  THEN DO;
         _BRANCH_ =    2; 
        END; 
      ELSE _BRANCH_ = 0;
      END;
    END;

  IF _BRANCH_ GT 0 THEN DO;
     _ARB_F_ + -0.008639313;
    END;
  END;
P_quality  = _ARB_F_;

*****  RESIDUALS R_ *************;
IF MISSING( quality ) THEN R_quality  = .;
ELSE R_quality  = quality  - P_quality ;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

