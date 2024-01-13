format IMP_sulphates BEST12.0;
label IMP_sulphates = 'Imputed sulphates';
IMP_sulphates = sulphates;
if missing(sulphates) then IMP_sulphates = 0.5308232119;
