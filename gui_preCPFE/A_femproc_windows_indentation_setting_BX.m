% Copyright 2013 Max-Planck-Institut f�r Eisenforschung GmbH
function gui_handle = A_femproc_windows_indentation_setting_BX(gui_bicrystal, varargin)
%% Setting of indentation inputs (tip radius, indentation depth...) + setting of the mesh for a
% bicrystal indentation experiment.
% gui_bicrystal: Handle of the Bicrystal GUI

% authors: d.mercier@mpie.de / c.zambaldi@mpie.de

%% Initialization
gui_BX = femproc_init;

x0 = 0.025;
hu = 0.05; % height unit
wu = 0.1; % width unit

%% Window setting
gui_BX.handles.gui_BX_win = figure(...
    'NumberTitle', 'off',...
    'Position', figure_position([.58, .30, .9, 1]), ... %[left, bottom, width, height/width],...
    'ToolBar', 'figure');
guidata(gcf, gui_BX);

gui_BX.description = 'Indentation of a bicrystal - ';

%% Set Matlab and CPFEM configurations
if nargin == 0
    %[gui_BX.config] = load_YAML_config_file;
    
    gui_BX.config_map.Sample_IDs   = [];
    gui_BX.config_map.Sample_ID    = [];
    gui_BX.config_map.Material_IDs = [];
    gui_BX.config_map.Material_ID  = [];
    gui_BX.config_map.default_grain_file_type2 = 'random_GF2data.txt';
    gui_BX.config_map.default_reconstructed_boundaries_file = 'random_RBdata.txt';
    gui_BX.config_map.imported_YAML_GB_config_file = 'config_gui_BX_defaults.yaml';
    
    guidata(gcf, gui_BX);
    femproc_load_YAML_BX_config_file(gui_BX.config_map.imported_YAML_GB_config_file, 2);
    gui_BX = guidata(gcf); guidata(gcf, gui_BX);
    gui_BX.GB.active_data = 'BX';
    gui_BX.GB.activeGrain = gui_BX.GB.GrainA;
    gui_BX.title_str = set_gui_title(gui_BX, '');
else
    gui_BX.flag           = gui_bicrystal.flag;
    gui_BX.config_map     = gui_bicrystal.config_map;
    gui_BX.config         = gui_bicrystal.config;
    gui_BX.GB             = gui_bicrystal.GB;
    gui_BX.GB.active_data = 'BX';
    gui_BX.title_str = set_gui_title(gui_BX, ['Bicrystal n�', num2str(gui_BX.GB.GB_Number)]);
end
gui_BX.config.username = get_username;
guidata(gcf, gui_BX);

%% Customized menu
gui_BX.custom_menu = femproc_custom_menu([gui_BX.module_name,'-BX']);
femproc_custom_menu_BX(gui_BX.custom_menu);

%% Plot the mesh axis
gui_BX.handles.hax = axes('Units', 'normalized',...
    'position', [0.5 0.05 0.45 0.9],...
    'Visible', 'off');

%% Initialization of variables
gui_BX.defaults.variables = ReadYaml('config_mesh_BX_defaults.yaml');
if nargin > 0
    gui_BX.defaults.variables.inclination = gui_BX.GB.GB_Inclination;
end

%% Creation of string boxes and edit boxes to set indenter and indentation properties
gui_BX.handles.mesh = femproc_mesh_parameters_BX(gui_BX.defaults, x0, hu, wu);

%% Creation of popup menu and slider for loaded AFM indenter topography
gui_BX.handles.indenter_topo = preCPFE_buttons_AFM_indenter_topo(x0, hu, wu);
    
%% Pop-up menu to set the mesh quality
gui_BX.handles.pm_mesh_quality = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*7.3 wu*3 hu*0.9],...
    'Style', 'popup',...
    'String', {'Free mesh'; 'Coarse mesh'; 'Fine mesh'; 'Very fine mesh'; 'Ultra fine mesh'},...
    'BackgroundColor', [0.9 0.9 0.9],...
    'FontWeight', 'bold',...
    'FontSize', 10,...
    'HorizontalAlignment', 'center',...
    'Value', 2,...
    'Callback', 'femproc_indentation_setting_BX');

%% Checkbox to plot deformed indenter
gui_BX.handles.cb_indenter_post_indentation = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*6.5 wu*3 hu*0.9],...
    'Style', 'checkbox',...
    'String', 'Plot indenter after indentation',...
    'BackgroundColor', [0.9 0.9 0.9],...
    'FontWeight', 'bold',...
    'FontSize', 10,...
    'HorizontalAlignment', 'center',...
    'Callback', 'femproc_indentation_setting_BX');

%% Button to give picture of the mesh with names of dimensions use to describe the sample and the mesh
gui_BX.handles.pb_mesh_example = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*5.5 wu*3 hu*0.9],...
    'Style', 'pushbutton',...
    'String', 'Mesh layout',...
    'BackgroundColor',[0.9 0.9 0.9],...
    'FontWeight', 'bold',...
    'FontSize', 14,...
    'HorizontalAlignment', 'center',...
    'Callback', 'gui_BX = guidata(gcf); webbrowser(fullfile(gui_BX.config.doc_path_root, gui_BX.config.doc_path_BXind_png));');

%% Creation of string boxes and edit boxes for the calculation of the number of elements
gui_BX.handles.num_elem = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*4.8 wu*3 hu/2],...
    'Style', 'text',...
    'String', 'Number of elements',...
    'BackgroundColor', [0.9 0.9 0.9],...
    'HorizontalAlignment', 'center',...
    'FontWeight', 'bold',...
    'FontSize', 12);

%% Creation of string boxes and edit boxes for the calculation of the transition depth
gui_BX.handles.trans_depth = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*4.2 wu*3 hu/2],...
    'Style', 'text',...
    'String', 'Transition depth',...
    'BackgroundColor', [0.9 0.9 0.9],...
    'HorizontalAlignment', 'center',...
    'FontWeight', 'bold');


%% Pop-up menu to select Python executable
gui_BX.handles.pm_Python = femproc_python_popup([2*x0 hu*2.6 wu*3 hu]);

%% Pop-up menu to set FEM software
gui_BX.handles.pm_FEM_interface = femproc_solver_popup([2*x0 hu*2 wu*3 hu]);

if isfield(gui_BX.config.CPFEM, 'fem_solver_used')
    femproc_set_cpfem_interface_pm(gui_BX.handles.pm_FEM_interface, ...
        gui_BX.config.CPFEM.fem_solvers, gui_BX.config.CPFEM.fem_solver_used);
else
    femproc_set_cpfem_interface_pm(gui_BX.handles.pm_FEM_interface, ...
        gui_BX.config.CPFEM.fem_solvers);
end

%% Button to validate the mesh and for the creation of procedure and material files
gui_BX.handles.pb_CPFEM_model = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [2*x0 hu*1 wu*3 hu],...
    'Style', 'pushbutton',...
    'String', 'CPFE  model',...
    'BackgroundColor', [0.2 0.8 0],...
    'FontWeight', 'bold',...
    'FontSize', 12,...
    'HorizontalAlignment', 'center',...
    'Callback', 'femproc_generate_indentation_model_BX');

%% Pop-up menu to set the color of the mesh (grey or color scale)
gui_BX.handles.pm_mesh_color_title = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [25*x0 hu*19.2 wu*2 hu/2],...
    'Style', 'text',...
    'String', 'Color of the BX:',...
    'BackgroundColor', [0.9 0.9 0.9],...
    'HorizontalAlignment', 'center',...
    'FontSize', 10,...
    'FontWeight', 'bold');

gui_BX.handles.pm_mesh_color = uicontrol('Parent', gui_BX.handles.gui_BX_win,...
    'Units', 'normalized',...
    'Position', [32*x0 hu*19.2 wu hu/2],...
    'Style', 'popup',...
    'String', {'Color'; 'Black and White'},...
    'BackgroundColor', [0.9 0.9 0.9],...
    'FontWeight', 'bold',...
    'FontSize', 10,...
    'HorizontalAlignment', 'center',...
    'Value', 1,...
    'Callback', 'femproc_indentation_setting_BX');

%% Set GUI handle encapsulation
guidata(gcf, gui_BX);
gui_BX.config.CPFEM.python_executable = femproc_python_select;
guidata(gcf, gui_BX);

%% Run the plot of the meshing
gui_BX.indenter_type = 'default'; guidata(gcf, gui_BX);
femproc_indentation_setting_BX;
view(-65,20);
gui_BX = guidata(gcf); guidata(gcf, gui_BX);

gui_handle = gui_BX.handles.gui_BX_win;

end