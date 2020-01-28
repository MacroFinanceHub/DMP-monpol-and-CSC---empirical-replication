function varargout = plot(varargin)
% plot  Line graph for tseries objects.
%
% Syntax
% =======
%
%     [H,Range] = plot(X,...)
%     [H,Range] = plot(Range,X,...)
%     [H,Range] = plot(Ax,Range,X,...)
%
% Input arguments
% ================
%
% * `Ax` [ numeric ] - Handle to axes in which the graph will be plotted;
% if not specified, the current axes will used.
%
% * `Range` [ numeric ] - Date range; if not specified the entire range of
% the input tseries object will be plotted.
%
% * `X` [ tseries ] - Input tseries object whose columns will be ploted as
% a line graph.
%
% Output arguments
% =================
%
% * `H` [ numeric ] - Handles to lines plotted.
%
% * `Range` [ numeric ] - Actually plotted date range.
%
% Options
% ========
%
% * `'datePosition='` [ *`'centre'`* | `'end'` | `'start'` ] - Position of
% each date point within a given period span.
%
% * `'dateTick='` [ numeric | *`Inf`* ] - Vector of dates locating tick
% marks on the X-axis; Inf means they will be created automatically.
%
% * `'tight='` [ `true` | *`false`* ] - Make the y-axis tight.
%
% See help on built-in `plot` function for other options available.
%
% Date format options
% ====================
%
% See [`dat2str`](dates/dat2str) for details on date format options.
%
% * `'dateFormat='` [ char | cellstr | *`'YYYYFP'`* ] - Date format string,
% or array of format strings (possibly different for each date).
%
% * `'freqLetters='` [ char | *`'YHQBMW'`* ] - Six letters used to
% represent the six possible frequencies of IRIS dates, in this order:
% yearly, half-yearly, quarterly, bi-monthly, monthly,  and weekly (such as
% the `'Q'` in `'2010Q1'`).
%
% * `'months='` [ cellstr | *`{'January',...,'December'}`* ] - Twelve
% strings representing the names of the twelve months.
%
% * `'standinMonth='` [ numeric | `'last'` | *`1`* ] - Month that will
% represent a lower-than-monthly-frequency date if the month is part of the
% date format string.
%
% Description
% ============
%
% Example
% ========
%

% -IRIS Toolbox.
% -Copyright (c) 2007-2015 IRIS Solutions Team.

% AREA, BAND, BAR, BARCON, PLOT, PLOTCMP, PLOTYY, SCATTER, STEM

% TODO: Add help on date format related options.

% TODO: Document the use of half-ranges in plot functions [-Inf,date],
% [date,Inf].

%--------------------------------------------------------------------------

[~,~,~,varargout{1:nargout}] = tseries.myplot(0,@plot,varargin{:});

end
