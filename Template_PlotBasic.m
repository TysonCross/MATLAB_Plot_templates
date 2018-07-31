% Basic Plotting Template

clc; clear all;
format loose
rng('shuffle');

%% Data
syms f a;
x = [1:2:100];
f = @(a) exp(a/10);
y = f(x);
xq = [1:100];
yq = randi([50,100],1,length(xq))*100;

%------------------------------------------------------------------------------
%% Display setting and output setup
scr = get(groot,'ScreenSize');                              % screen resolution
phi = (1 + sqrt(5))/2;
ratio = phi/3;
offset = [ scr(3)/4 scr(4)/4]; 
fig1 =  figure('Position',...                               % draw figure
        [offset(1) offset(2) scr(3)*ratio scr(4)*ratio]);
set(fig1,'numbertitle','off',...                            % Give figure useful title
        'name','Title of Graph',...
        'Color','white');
fontName='Helvetica';
set(0,'defaultAxesFontName', fontName);                     % Make fonts pretty
set(0,'defaultTextFontName', fontName);
set(groot,'FixedWidthFontName', 'ElroNet Monospace')        % replace with your system's monospaced font

% Draw plots
p1 = plot(x,y,...
    'Color',[0.9 0.18 0.18 .6],...                          % [R G B Alpha]
	'LineStyle','-',...
	'LineWidth',1,...
    'MarkerSize',6,...
	'MarkerFaceColor',[0.9 0.18 0.18],...
    'Marker','o');
hold on
p2 = plot(xq,yq,...
    'Color',[0.18 0.9 0.18 .6],...                 
	'LineStyle',':',...
	'LineWidth',2,...
    'MarkerSize',6,...
	'MarkerFaceColor',[0.18 0.9 0.18],...
    'Marker','+');
hold on

% Axes and labels
ax1 = gca;;
box(ax1,'off');
set(ax1,'FontSize',14,...
    'YMinorTick','off',...
    'XMinorTick','off',...
    'TickLabelInterpreter','latex');
hold on
ylabel('y \rightarrow',...
    'FontName',fontName,...
    'FontSize',14);%,...
xlabel('x \rightarrow',...
    'FontName',fontName,...
    'FontSize',14);

% Legend
legend1 = legend({'x vs y','xq vs yq'},...
     'Location','best',...
     'Position',[0.19 0.7 0.2 0.09],...
     'Box','on');
hold on

% Adjust figure
pos = get(ax1, 'Position');                                 % Current position
pos(1) = 0.08;                                              % Shift Plot horizontally
pos(3) = pos(3)*1.1;                                        % Scale plot vertically
set(ax1, 'Position', pos)
hold off