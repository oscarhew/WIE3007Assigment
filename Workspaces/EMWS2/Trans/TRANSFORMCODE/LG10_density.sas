label LG10_density = 'Transformed density';
if density eq . then LG10_density = .;
else do;
if density + 1 > 0 then LG10_density = log10(density + 1);
else LG10_density = .;
end;
