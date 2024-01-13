label LG10_fixed_acidity = 'Transformed: fixed acidity';
if fixed_acidity eq . then LG10_fixed_acidity = .;
else do;
if fixed_acidity + 1 > 0 then LG10_fixed_acidity = log10(fixed_acidity + 1);
else LG10_fixed_acidity = .;
end;
