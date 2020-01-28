function c = removetrails(c)
% REMOVETRAILS  [Not a public function] Strip white-space trails from line ends.
%
% Backend IRIS function.
% No help provide.

% -IRIS Toolbox.
% -Copyright (c) 2007-2015 IRIS Solutions Team.

%**************************************************************************

c = regexprep(c,'[ \t]+(?=\n|$)','');

end