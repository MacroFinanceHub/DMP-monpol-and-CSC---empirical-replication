function varargout = normal(varargin)
utils.warning('obsolete', ...
    ['The package name logprior is obsolete and will be removed from future versions of IRIS. ', ...
    'Use logdist.normal instead.']);
[varargout{1:nargout}] = logdist.normal(varargin{:});
end