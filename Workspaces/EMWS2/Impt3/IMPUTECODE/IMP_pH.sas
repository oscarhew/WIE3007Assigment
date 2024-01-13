format IMP_pH BEST12.0;
label IMP_pH = 'Imputed pH';
IMP_pH = pH;
if missing(pH) then IMP_pH = 3.2187950646;
