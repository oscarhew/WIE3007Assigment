

length _FILTERFMT1  $200;
drop _FILTERFMT1 ;
_FILTERFMT1= put(TasterName,$5.);
length _FILTERNORM1  $32;
drop _FILTERNORM1 ;
%dmnormcp(_FILTERFMT1,_FILTERNORM1);
if
_FILTERNORM1 not in ( ' ')
and
( TastingDate eq . or (21512.515047<=TastingDate) and (TastingDate<=23415.31181))
then do;
if M_FILTER eq . then M_FILTER = 0;
else M_FILTER = M_FILTER + 0;
end;
else M_FILTER = 1;
label M_FILTER = 'Filtered Indicator';
