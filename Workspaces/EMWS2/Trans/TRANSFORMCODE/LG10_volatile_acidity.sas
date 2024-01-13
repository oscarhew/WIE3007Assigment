label LG10_volatile_acidity = 'Transformed: volatile acidity';
if volatile_acidity eq . then LG10_volatile_acidity = .;
else do;
if volatile_acidity + 1 > 0 then LG10_volatile_acidity = log10(volatile_acidity + 1);
else LG10_volatile_acidity = .;
end;
