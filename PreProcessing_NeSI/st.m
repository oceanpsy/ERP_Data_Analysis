%% Preparation for cluster 
addpath(genpath('Common_Functions'));
Mahuika;
ID = getenv('SLURM_ARRAY_TASK_ID');

eeglab;

% the study folder
expCode = ['20' ID(1)];
partCode = ID(end);

parameters.isCluster = 1;
parameters.isgwindow = 1;
parameters.isDenoise = 0;
parameters.isColorbar = 0;
parameters.plotWindow = [-200 996];

saveFigure = 0;

%% Conduct the single trial analysis
st_analysis(expCode, partCode, parameters, saveFigure);