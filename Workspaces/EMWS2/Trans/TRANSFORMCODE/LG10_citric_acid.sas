label LG10_citric_acid = 'Transformed: citric acid';
if citric_acid eq . then LG10_citric_acid = .;
else do;
if citric_acid + 1 > 0 then LG10_citric_acid = log10(citric_acid + 1);
else LG10_citric_acid = .;
end;
