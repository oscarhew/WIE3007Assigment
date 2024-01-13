****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_quality = 'Predicted: quality' ;
label _WARN_ = 'Warnings' ;



******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(alcohol ) AND 
                10.625 <= alcohol  THEN DO;
  IF  NOT MISSING(alcohol ) AND 
            11.741666665 <= alcohol  THEN DO;
    IF  NOT MISSING(free_sulfur_dioxide ) AND 
      free_sulfur_dioxide  <                 21.5 THEN DO;
      IF  NOT MISSING(sulphates ) AND 
                       0.685 <= sulphates  THEN DO;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
                           121 <= total_sulfur_dioxide  THEN DO;
          _NODE_  =                   49;
          _LEAF_  =                   35;
          P_quality  =     5.85714285714285;
          END;
        ELSE DO;
          _NODE_  =                   48;
          _LEAF_  =                   34;
          P_quality  =     6.79411764705882;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(density ) AND 
          density  <             0.990315 THEN DO;
          IF  NOT MISSING(sulphates ) AND 
            sulphates  <                0.325 THEN DO;
            _NODE_  =                   76;
            _LEAF_  =                   31;
            P_quality  =     7.66666666666666;
            END;
          ELSE DO;
            _NODE_  =                   77;
            _LEAF_  =                   32;
            P_quality  =                  6.4;
            END;
          END;
        ELSE DO;
          _NODE_  =                   47;
          _LEAF_  =                   33;
          P_quality  =       5.920245398773;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(fixed_acidity ) AND 
                        7.85 <= fixed_acidity  THEN DO;
        IF  NOT MISSING(volatile_acidity ) AND 
                         0.395 <= volatile_acidity  THEN DO;
          _NODE_  =                   53;
          _LEAF_  =                   40;
          P_quality  =     6.80952380952381;
          END;
        ELSE DO;
          _NODE_  =                   52;
          _LEAF_  =                   39;
          P_quality  =     6.14545454545454;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(sulphates ) AND 
                         0.475 <= sulphates  THEN DO;
          _NODE_  =                   51;
          _LEAF_  =                   38;
          P_quality  =     6.85526315789473;
          END;
        ELSE DO;
          IF  NOT MISSING(fixed_acidity ) AND 
            fixed_acidity  <                 5.35 THEN DO;
            _NODE_  =                   78;
            _LEAF_  =                   36;
            P_quality  =                 7.25;
            END;
          ELSE DO;
            _NODE_  =                   79;
            _LEAF_  =                   37;
            P_quality  =     6.55035971223021;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(volatile_acidity ) AND 
                     0.675 <= volatile_acidity  THEN DO;
      IF  NOT MISSING(volatile_acidity ) AND 
                       1.015 <= volatile_acidity  THEN DO;
        _NODE_  =                   25;
        _LEAF_  =                   30;
        P_quality  =                    4;
        END;
      ELSE DO;
        _NODE_  =                   24;
        _LEAF_  =                   29;
        P_quality  =     5.33333333333333;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(free_sulfur_dioxide ) AND 
        free_sulfur_dioxide  <                 11.5 THEN DO;
        IF  NOT MISSING(total_sulfur_dioxide ) AND 
                            36 <= total_sulfur_dioxide  THEN DO;
          IF  NOT MISSING(alcohol ) AND 
            alcohol  <                11.05 THEN DO;
            _NODE_  =                   70;
            _LEAF_  =                   23;
            P_quality  =     5.44117647058823;
            END;
          ELSE DO;
            _NODE_  =                   71;
            _LEAF_  =                   24;
            P_quality  =     4.71428571428571;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(volatile_acidity ) AND 
            volatile_acidity  <                0.365 THEN DO;
            _NODE_  =                   68;
            _LEAF_  =                   21;
            P_quality  =              6.59375;
            END;
          ELSE DO;
            _NODE_  =                   69;
            _LEAF_  =                   22;
            P_quality  =     5.87096774193548;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(pH ) AND 
          pH  <                3.245 THEN DO;
          IF  NOT MISSING(volatile_acidity ) AND 
            volatile_acidity  <                0.195 THEN DO;
            _NODE_  =                   72;
            _LEAF_  =                   25;
            P_quality  =     6.30827067669173;
            END;
          ELSE DO;
            _NODE_  =                   73;
            _LEAF_  =                   26;
            P_quality  =     5.96781609195402;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(chlorides ) AND 
            chlorides  <               0.0395 THEN DO;
            _NODE_  =                   74;
            _LEAF_  =                   27;
            P_quality  =     6.53205128205128;
            END;
          ELSE DO;
            _NODE_  =                   75;
            _LEAF_  =                   28;
            P_quality  =      6.1038961038961;
            END;
          END;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(volatile_acidity ) AND 
    volatile_acidity  <               0.2425 THEN DO;
    IF  NOT MISSING(volatile_acidity ) AND 
                    0.2075 <= volatile_acidity  THEN DO;
      _NODE_  =                    9;
      _LEAF_  =                    7;
      P_quality  =     5.69574944071588;
      END;
    ELSE DO;
      IF  NOT MISSING(density ) AND 
                     0.99791 <= density  THEN DO;
        IF  NOT MISSING(citric_acid ) AND 
                         0.305 <= citric_acid  THEN DO;
          _NODE_  =                   33;
          _LEAF_  =                    6;
          P_quality  =                5.975;
          END;
        ELSE DO;
          IF  NOT MISSING(alcohol ) AND 
                            9.15 <= alcohol  THEN DO;
            _NODE_  =                   57;
            _LEAF_  =                    5;
            P_quality  =                    6;
            END;
          ELSE DO;
            _NODE_  =                   56;
            _LEAF_  =                    4;
            P_quality  =     7.23913043478261;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
          free_sulfur_dioxide  <                  6.5 THEN DO;
          _NODE_  =                   30;
          _LEAF_  =                    1;
          P_quality  =     4.42857142857142;
          END;
        ELSE DO;
          IF  NOT MISSING(alcohol ) AND 
                    10.116666665 <= alcohol  THEN DO;
            _NODE_  =                   55;
            _LEAF_  =                    3;
            P_quality  =              6.09375;
            END;
          ELSE DO;
            _NODE_  =                   54;
            _LEAF_  =                    2;
            P_quality  =     5.80524344569288;
            END;
          END;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(alcohol ) AND 
                      9.85 <= alcohol  THEN DO;
      IF  NOT MISSING(sulphates ) AND 
        sulphates  <                0.545 THEN DO;
        IF  NOT MISSING(free_sulfur_dioxide ) AND 
          free_sulfur_dioxide  <                 25.5 THEN DO;
          _NODE_  =                   38;
          _LEAF_  =                   15;
          P_quality  =     5.21176470588235;
          END;
        ELSE DO;
          IF  NOT MISSING(volatile_acidity ) AND 
                          0.7125 <= volatile_acidity  THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                   17;
            P_quality  =     4.57142857142857;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                   16;
            P_quality  =     5.62777777777777;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(pH ) AND 
                         3.535 <= pH  THEN DO;
          _NODE_  =                   41;
          _LEAF_  =                   20;
          P_quality  =                    5;
          END;
        ELSE DO;
          IF  NOT MISSING(total_sulfur_dioxide ) AND 
                             186 <= total_sulfur_dioxide  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   19;
            P_quality  =     5.24242424242424;
            END;
          ELSE DO;
            _NODE_  =                   66;
            _LEAF_  =                   18;
            P_quality  =     5.78369905956112;
            END;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(volatile_acidity ) AND 
                      0.4225 <= volatile_acidity  THEN DO;
        IF  NOT MISSING(sulphates ) AND 
          sulphates  <                0.535 THEN DO;
          _NODE_  =                   36;
          _LEAF_  =                   12;
          P_quality  =     4.96059113300492;
          END;
        ELSE DO;
          IF  NOT MISSING(total_sulfur_dioxide ) AND 
            total_sulfur_dioxide  <                 46.5 THEN DO;
            _NODE_  =                   62;
            _LEAF_  =                   13;
            P_quality  =     5.38235294117647;
            END;
          ELSE DO;
            _NODE_  =                   63;
            _LEAF_  =                   14;
            P_quality  =     5.11290322580645;
            END;
          END;
        END;
      ELSE DO;
        IF  NOT MISSING(citric_acid ) AND 
          citric_acid  <                0.265 THEN DO;
          IF  NOT MISSING(pH ) AND 
                           3.485 <= pH  THEN DO;
            _NODE_  =                   59;
            _LEAF_  =                    9;
            P_quality  =                    4;
            END;
          ELSE DO;
            _NODE_  =                   58;
            _LEAF_  =                    8;
            P_quality  =     5.16788321167883;
            END;
          END;
        ELSE DO;
          IF  NOT MISSING(volatile_acidity ) AND 
            volatile_acidity  <                0.275 THEN DO;
            _NODE_  =                   60;
            _LEAF_  =                   10;
            P_quality  =     5.60693641618497;
            END;
          ELSE DO;
            _NODE_  =                   61;
            _LEAF_  =                   11;
            P_quality  =     5.35933806146572;
            END;
          END;
        END;
      END;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;

