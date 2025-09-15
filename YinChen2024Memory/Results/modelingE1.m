clear all

opts = delimitedTextImportOptions("NumVariables", 4);
opts.DataLines = [2, Inf];
opts.Delimiter = ",";
opts.VariableNames = ["subject", "Label", "error", "absError"];
opts.VariableTypes = ["double", "double", "double", "double"];
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts = setvaropts(opts, "Label", "TrimNonNumeric", true);
opts = setvaropts(opts, "Label", "ThousandsSeparator", ",");

convertedE1to4 = readtable("/Users/dojoonyi/Dropbox/2017Experiment/speGoNogo/speVCS2/YinChen2024Memory/Results/convertedE1to4.csv", opts);
d = table2array(convertedE1to4);

%% Clear temporary variables
clear opts

addpath ~/Dropbox/2017Experiment/mmMixture/MixtureModeling/jv10/

d(:,end+1)=wrap(d(:,3)/90*pi, pi/2); % 원래 여기에서 90으로 나누면 안 된다. 180이 맞다.

prm = zeros(length(unique(d(:,1))),7);

SN = unique(d(:,1));
for xsn = 1:length(unique(d(:,1)))

	prm(xsn,1) = SN(xsn);
	s = d(d(:,1)==SN(xsn), :);

	for con=1:3
		[prm(xsn,con+1), prm(xsn,con+4)] = JV10_error(s(s(:,2)==con,5));
	end

end

writematrix(prm, 'pramE1to4_.csv', 'Delimiter', ',')