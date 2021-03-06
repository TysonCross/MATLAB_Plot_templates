%% Display setting and output setup
scr = get(groot,'ScreenSize');                              % screen resolution
phi = (1 + sqrt(5))/2;
ratio = 1.5*phi/3;
offset = [ scr(3)/8 scr(4)/8]; 
fig1 =  figure('Position',...                               % draw figure
        [offset(1) offset(2) scr(3)*ratio scr(4)*ratio]);
set(fig1,'numbertitle','off',...                            % Give figure useful title
        'name','Plot title',...
        'Color','white',...
        'Units','normalized');
fontName='Helvetica';
set(0,'defaultAxesFontName', fontName);                     % Make fonts pretty
set(0,'defaultTextFontName', fontName);
set(groot,'FixedWidthFontName', 'ElroNet Monospace')  

% Colors
nice_blue =     [ 0.180     0.180     0.900     0.6 ];
nice_green =    [ 0.180     0.900     0.180     0.6 ];
nice_cyan =     [ 0.180     0.900     0.900     0.6 ];
nice_yellow =   [ 0.900     0.900     0.180     0.6 ];
nice_red =      [ 0.900     0.180     0.180     0.6 ];
pastel_blue =   [ 0.0000    0.4470    0.7410    0.8 ];
pastel_orange = [ 0.8500    0.3250    0.0980    0.8 ];
pastel_yellow = [ 0.9290    0.6940    0.1250    0.8 ];
pastel_purple = [ 0.4940    0.1840    0.5560    0.8 ];
pastel_green =  [ 0.4660    0.6740    0.1880    0.8 ];
sky_blue =      [ 0.3010    0.7450    0.9330    0.8 ];
brick_red =     [ 0.6350    0.0780    0.1840    0.8 ];
                    
line_thin = 1;
line_thick = 2;
marker_size = 4;

%% Main plot
subplot_row = 14;
subplot_col = 2;
subplot_entries = subplot_row*subplot_col;
main_plot_area = 8;
ax_main = subplot(subplot_row,subplot_col,[1 subplot_entries-main_plot_area]);
hold on;

p1 = plot(y1,...
    'Color',pastel_blue,... 
    'DisplayName','Curve 1',...
	'LineStyle','-',...
	'LineWidth',line_thin,...
    'MarkerIndices',2:10:length(x),...
    'Marker','o',...
    'MarkerSize',marker_size);
hold on

p2 = plot(y2,...
    'Color',pastel_orange,...                 
    'DisplayName','Curve 2',...
	'LineStyle','-',...
	'LineWidth',line_thin,...
    'MarkerIndices',4:10:length(x),...
    'Marker','s',...
    'MarkerSize',marker_size);
hold on

p3 = plot(y3,...
    'Color',pastel_yellow,...                 
    'DisplayName','Curve 3',...
	'LineStyle','-',...
	'LineWidth',line_thin,...
    'MarkerIndices',6:10:length(x),...
    'Marker','+',...
    'MarkerSize',marker_size);
hold on

p4 = plot(y4,...
    'Color',pastel_green,...                 
    'DisplayName','Curve 4',...
	'LineStyle','-',...
	'LineWidth',line_thin,...
    'MarkerIndices',8:10:length(x),...
    'Marker','d',...
    'MarkerSize',marker_size);
hold on

% Axes and labels
box(ax_main,'off');
set(ax_main,'FontSize',14,...
    'XAxisLocation','origin',...
    'YMinorTick','off',...
    'XMinorTick','off',...
    'TickDir','both',...
    'TickLabelInterpreter','latex');
set(ax_main,...
    'Xlim',[0 max(x)],...
    'Ylim',[floor(min(y)) ceil(max(y))]);
hold on
ylabel('y \rightarrow',...
    'FontName',fontName,...
    'FontSize',14);%,...
xlabel('x \rightarrow',...
    'FontName',fontName,...
    'FontSize',14);

% Title and Annotations
% t_main = title(T.Properties.Description);
t_main = title('The title of the graph');

% Legend
legend1 = legend('show');
set(legend1,...
     'Position',[0.760680992230167 0.751042709291727 0.118343198475919 0.125105584825402],...
     'Box','off');
hold on

%% Lower plots
ax1 = subplot(subplot_row,subplot_col,subplot_entries-3);
hold on;
p2_1 = stem(y1,...
    'Color',pastel_blue,...
	'LineWidth',line_thick,...
    'MarkerSize',0.01);
hold on;
t2_1 = title(strcat(p1.DisplayName,' + Optional Suffix'));

ax2 = subplot(subplot_row,subplot_col,subplot_entries-2);
hold on;
p2_2 = stem(y2,...
    'Color',pastel_orange,...
	'LineWidth',line_thick,...
    'MarkerSize',0.01);
hold on;
t2_2 = title(strcat(p2.DisplayName,' + Optional Suffix'));

ax3 = subplot(subplot_row,subplot_col,subplot_entries-1);
hold on;
p2_3 = stem(y3,...
    'Color',pastel_yellow,...
	'LineWidth',line_thick,...
    'MarkerSize',0.01);
hold on;
t2_3 = title(strcat(p3.DisplayName,' + Optional Suffix'));

ax4 = subplot(subplot_row,subplot_col,subplot_entries);
hold on;
p2_4 = stem(y4,...
    'Color',pastel_green,... 
	'LineWidth',line_thick,...
    'MarkerSize',0.01);
hold on;
t2_4 = title(strcat(p4.DisplayName,' + Optional Suffix'));

%% Adjust figure
xlim([ax_main ax1 ax2 ax3 ax4],[0 numel(x)]);
ylim(ax_main, [floor(min(y)) ceil(max(y))]);
ax_main.Position = FillAxesPos(ax_main,0.99);
% ax1.Position = [0.04 0.2 0.45 0.1];
ax1.Position = [0.04 0.2 0.45 0.1];
ax2.Position = [0.53 0.2 0.445 0.1];
ax3.Position = [0.04 0.05 0.45 0.1];
ax4.Position = [0.53 0.05 0.445 0.1];
hold off;