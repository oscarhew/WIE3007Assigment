label LG10_total_sulfur_dioxide = 'Transformed: total sulfur dioxide';
if total_sulfur_dioxide eq . then LG10_total_sulfur_dioxide = .;
else do;
if total_sulfur_dioxide + 1 > 0 then LG10_total_sulfur_dioxide = log10(total_sulfur_dioxide + 1);
else LG10_total_sulfur_dioxide = .;
end;
