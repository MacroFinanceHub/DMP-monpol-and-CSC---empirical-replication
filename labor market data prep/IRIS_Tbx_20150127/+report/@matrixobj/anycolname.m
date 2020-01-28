function Flag = anycolname(This)
% anycolname  [Not a public function] True if user specified at least one column name.
%
% Backend IRIS function.
% No help provided.

% -IRIS Toolbox.
% -Copyright (c) 2007-2015 IRIS Solutions Team.

%--------------------------------------------------------------------------

Flag = ~isempty(This.options.colnames) ...
    && any(~cellfun(@isempty,This.options.colnames));

end
