%% Experiment 1. 
% 1 left  1_self, 2_friend, 3_stranger
% 2 right 1_self, 2_friend, 3_stranger
% 3 Label 1_self, 2_friend, 3_stranger
% 4 t1X
% 5 t1Y
% 6 t2X
% 7 t2Y
% 8 angle1, 1번과 3번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 9 angle2, 1번과 3번이 다르면 ProbeAngle에서 뺀 값이 측정치
% 10 ProbeAngle
clear all;
mm = [];

for xsn = 1:27

	dd = load(fullfile('E1results', sprintf('sub%d.mat', xsn)));
	dd.ConResults(:,end+1) = xsn;

	
	mm = [mm; dd.ConResults];
	
	clear dd;
end

writematrix(mm, 'E1results.csv', 'Delimiter', ',');



%% Experiment 2. 26번 자료 누락. 

% 1 left  1_self, 2_friend, 3_stranger
% 2 right 1_self, 2_friend, 3_stranger
% 3 Label 1_self, 2_friend, 3_stranger
% 4

% 5 t1X
% 6 t1Y
% 7 t2X
% 8 t2Y
% 9 angle1, 1번과 3번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 10 angle2, 1번과 3번이 다르면 ProbeAngle에서 뺀 값이 측정치

% 11 ProbeAngle
% 12 RT

clear all;
mm = [];

for xsn = [1:25,27:29]

	dd = load(fullfile('E2results', sprintf('sub%db13.mat', xsn)));
	dd.ConResults(:,end+1) = xsn;

	
	mm = [mm; dd.ConResults];
	
	clear dd;
end

writematrix(mm, 'E2results.csv', 'Delimiter', ',');


%% Experiment 3.
% 1 loc1	1_self, 2_friend, 3_stranger
% 2 loc2	1_self, 2_friend, 3_stranger
% 3 loc3	1_self, 2_friend, 3_stranger
% 4 Label	1_self, 2_friend, 3_stranger
% 5 ISI
% 6 angle1, 1번과 4번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 7 angle2, 2번과 4번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 8 angle3, 3번과 4번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 9 ProbeAngle

clear all;
mm = [];

for xsn = 1:25

	dd = load(fullfile('E3results', sprintf('sub%db1.mat', xsn)));
	dd.ConResults(:,end+1) = xsn;

	
	mm = [mm; dd.ConResults];
	
	clear dd;
end

writematrix(mm, 'E3results.csv', 'Delimiter', ',');



%% Experiment 4.
% 1 loc1	1_self, 2_friend, 3_stranger
% 2 loc2	1_self, 2_friend, 3_stranger
% 3 suffix 4_suffix, 5_none
% 4 Label	1_self, 2_friend, 3_stranger
% 5 angle1, 1번과 3번이 같으면 ProbeAngle에서 뺀 값이 측정치
% 6 angle2, 1번과 3번이 다르면 ProbeAngle에서 뺀 값이 측정치
% 7 angle3
% 8 ProbeAngle

clear all;
mm = [];

for xsn = 1:28

	dd = load(fullfile('E4results', sprintf('sub%db1.mat', xsn)));
	dd.ConResults(:,end+1) = xsn;

	
	mm = [mm; dd.ConResults];
	
	clear dd;
end

writematrix(mm, 'E4results.csv', 'Delimiter', ',');










