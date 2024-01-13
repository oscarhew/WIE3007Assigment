label LG10_chlorides = 'Transformed chlorides';
if chlorides eq . then LG10_chlorides = .;
else do;
if chlorides + 1 > 0 then LG10_chlorides = log10(chlorides + 1);
else LG10_chlorides = .;
end;
