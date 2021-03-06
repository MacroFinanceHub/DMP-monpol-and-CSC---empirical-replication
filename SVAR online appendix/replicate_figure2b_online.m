%-------------------------------------------------
% Main file for estimating Proxy VAR for monetary policy and wage inequality project
%-------------------------------------------------
% codes based on Proxy SVAR by Mertens and Ravn, modified by E. Pappa
%
rng(15);
clc; clear all; close all; addpath('auxfiles'); addpath('VAR_Toolbox'); addpath('proxySVARDMP');
%

load DATASET;
%% Baseline VAR specification
tstart           = 1980; 
tend             = 2011; %set tend to 2011 for extended sample
nlags            = 5; % 
%%
% Instrumented variable
shock            = {'FFR'};
% Instrument (Proxy)
IV               =  {'RRSHOCKMA'}; % {'RRSHOCK'}; %RR shock  %TRSHOCK Coibon shock, 'RRSHOCKMA' extended sample Miranda-Agrippino

%Replicate Figure 2b in appendix
%% SECTORIAL RESULTS

% smoothed sector
baseline_var     = {'UR','MA_EMP_S2','MA_RATIO_EMP2','MA_RWAGE_S2','MA_WPREMIUM2','INF_Y'};


%------------------------------------------------------
%% Select what to plot
plot_irf         = 1;        % plot IRFs 0=no plot, 1=single, 2=plot overlay
% Standard error method
method           = 1;        % 1 = Bootstrap;

% Baseline specification
IRF_proxysec(DATASET,tstart,tend,IV,nlags,shock,baseline_var,plot_irf,method)

[~,~,~]=mkdir('charts');               % printing numerical results
filename = ['charts\MAsector2extsample'];
saveas(gcf,filename,'png');