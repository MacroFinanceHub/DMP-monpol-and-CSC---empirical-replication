function Def = estimateobj()
% estimateobj  [Not a public function] Default options for estimateobj class functions.
%
% Backend IRIS function.
% No help provided.

% -IRIS Toolbox.
% -Copyright (c) 2007-2015 IRIS Solutions Team.

%--------------------------------------------------------------------------

Def.myestimate = { ...
    'display','iter',@(x) isanystri(x,{'iter','final','none','off'}), ...
    'epspower',1/2,@isnumeric, ...
    'initval','struct',@(x) isempty(x) || isstruct(x) || isanystri(x,{'struct','model'}), ...
    'maxiter',500,@(x) isnumericscalar(x) && x >= 0, ...
    'maxfunevals',2000,@(x) isnumericscalar(x) && x > 0, ...
    'optimset',{},@(x) isempty(x) || isstruct(x) || (iscell(x) && iscellstr(x(1:2:end))), ...
    'penalty',0,@(x) isnumericscalar(x) && x >= 0, ...
    'evallik',true,@islogicalscalar, ...
    'evalpprior,evalppriors',true,@islogicalscalar, ...
    'evalsprior,evalspriors',true,@islogicalscalar, ...
    'solver,optimiser,optimizer','fmin',@(x) (ischar(x) && isanystri(x,{'fmin','lsqnonlin','pso'})) ...
    || iscell(x) || isfunc(x), ...
    'tolfun',1e-6,@(x) isnumeric(x) && x > 0, ...
    'tolx',1e-6,@(x) isnumeric(x) && x > 0, ...
    'updateinit',[],@(x) isempty(x) || isstruct(x), ...
    };

end