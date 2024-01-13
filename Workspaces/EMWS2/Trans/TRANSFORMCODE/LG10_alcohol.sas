label LG10_alcohol = 'Transformed alcohol';
if alcohol eq . then LG10_alcohol = .;
else do;
if alcohol + 1 > 0 then LG10_alcohol = log10(alcohol + 1);
else LG10_alcohol = .;
end;
