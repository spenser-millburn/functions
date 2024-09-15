function gptanalyzefingerprints
for line in  (cat filteredgptd.csv) ; get_faults $line  | g respond what happened and please try to make an executive summary to infer the problem make it one to two sentences; echo "PROCESSED FAULT SEQUENCE " : $line ;end
for line in (cat output.csv ) ;echo $line | g please return only the codes in space seperated format removing fault_ only respond if there are faults respond with onle the word none in lowercase if not | grep -v "none"  >>filteredgptd.csv ; end
end
