label LG10_free_sulfur_dioxide = 'Transformed: free sulfur dioxide';
if free_sulfur_dioxide eq . then LG10_free_sulfur_dioxide = .;
else do;
if free_sulfur_dioxide + 1 > 0 then LG10_free_sulfur_dioxide = log10(free_sulfur_dioxide + 1);
else LG10_free_sulfur_dioxide = .;
end;
