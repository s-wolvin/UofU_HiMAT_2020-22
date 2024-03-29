function [cmap] = MPL_gnuplot(args)
% Edited: Nov. 11th, 2021
%
% Colormap Reference
% https://www.ncl.ucar.edu/Document/Graphics/ColorTables/MPL_gnuplot.shtml
%
% ncolors = 128
% cmap = MPL_gnuplot()
% cmap = MPL_gnuplot(argumentName, argumentValue)
% 
% INPUT ARGUMENTS:
%   Reverse - Boolean:      Value to Indicate if Colormap will be Reversed
%   Start   - Integer:      Start Index Value
%   End     - Integer:      End Index Value
%   Skip    - Int/Array:    Index Values to Skip
%   Step    - Integer:      Step Index Value
%   Total   - Integer:      Total Number of Colors Evenly Distributed
%   Repeat  - Integer:      Number of times to repeat a color value

arguments
    args.Start (1,1) {mustBeNumeric}
    args.End (1,1) {mustBeNumeric}
    args.Step (1,1) {mustBeNumeric}
    args.Total (1,1) {mustBeNumeric}
    args.Reverse
    args.Repeat
    args.Skip
end

cmap = [[0.062622, 0, 0.024637];...
    [0.108465, 0.000002, 0.073853];...
    [0.140028, 0.000008, 0.122888];...
    [0.165683, 0.000021, 0.171626];...
    [0.187867, 0.000044, 0.219946];...
    [0.207695, 0.00008, 0.267733];...
    [0.225788, 0.000132, 0.31487];...
    [0.242536, 0.000204, 0.361242];...
    [0.258199, 0.000296, 0.406737];...
    [0.265684, 0.000352, 0.429121];...
    [0.286972, 0.000559, 0.494656];...
    [0.293725, 0.000642, 0.515918];...
    [0.313112, 0.000942, 0.577774];...
    [0.319313, 0.00106, 0.597707];...
    [0.337232, 0.001471, 0.655284];...
    [0.342997, 0.001628, 0.673696];...
    [0.359738, 0.002167, 0.726434];...
    [0.370479, 0.002586, 0.759405];...
    [0.375735, 0.002814, 0.775204];...
    [0.391077, 0.003577, 0.81974];...
    [0.400979, 0.004157, 0.846958];...
    [0.410643, 0.004795, 0.87212];...
    [0.41539, 0.005137, 0.88391];...
    [0.429318, 0.006261, 0.916034];...
    [0.438357, 0.007095, 0.93468];...
    [0.447214, 0.008, 0.951057];...
    [0.451577, 0.00848, 0.958381];...
    [0.46442, 0.010034, 0.976848];...
    [0.472789, 0.011169, 0.986201];...
    [0.481012, 0.012386, 0.993159];...
    [0.485071, 0.013027, 0.995734];...
    [0.49705, 0.01508, 0.999829];...
    [0.504878, 0.016562, 0.999526];...
    [0.512587, 0.018139, 0.996795];...
    [0.520181, 0.019812, 0.991645];...
    [0.527666, 0.021585, 0.984086];...
    [0.535046, 0.023461, 0.974139];...
    [0.538699, 0.024439, 0.968276];...
    [0.54951, 0.027533, 0.947177];...
    [0.5566, 0.029735, 0.930229];...
    [0.563602, 0.03205, 0.911023];...
    [0.570517, 0.034484, 0.889604];...
    [0.57735, 0.037037, 0.866025];...
    [0.584103, 0.039713, 0.840344];...
    [0.590779, 0.042516, 0.812622];...
    [0.594089, 0.043965, 0.798017];...
    [0.603909, 0.04851, 0.751332];...
    [0.610368, 0.051707, 0.717912];...
    [0.616759, 0.055042, 0.682749];...
    [0.623085, 0.058517, 0.645928];...
    [0.629348, 0.062136, 0.607539];...
    [0.635548, 0.065901, 0.567675];...
    [0.641689, 0.069815, 0.526432];...
    [0.644737, 0.071829, 0.505325];...
    [0.653797, 0.078101, 0.440216];...
    [0.659768, 0.08248, 0.395451];...
    [0.665686, 0.087019, 0.349727];...
    [0.671551, 0.091722, 0.303153];...
    [0.677365, 0.096591, 0.255843];...
    [0.68313, 0.10163, 0.207912];...
    [0.688847, 0.10684, 0.159476];...
    [0.691687, 0.109511, 0.135105];...
    [0.70014, 0.11779, 0.061561];...
    [0.705719, 0.123535, 0.01232];...
    [0.711254, 0.129464, 0];...
    [0.716746, 0.135579, 0];...
    [0.722197, 0.141884, 0];...
    [0.727607, 0.148382, 0];...
    [0.732977, 0.155075, 0];...
    [0.738308, 0.161966, 0];...
    [0.7436, 0.169058, 0];...
    [0.748855, 0.176355, 0];...
    [0.754074, 0.183858, 0];...
    [0.759257, 0.191572, 0];...
    [0.764404, 0.199498, 0];...
    [0.766965, 0.203542, 0];...
    [0.774597, 0.216, 0];...
    [0.779643, 0.224582, 0];...
    [0.784657, 0.233388, 0];...
    [0.789639, 0.242421, 0];...
    [0.79459, 0.251685, 0];...
    [0.79951, 0.261181, 0];...
    [0.8044, 0.270914, 0];...
    [0.80926, 0.280885, 0];...
    [0.814092, 0.291098, 0];...
    [0.818895, 0.301556, 0];...
    [0.823669, 0.312261, 0];...
    [0.828417, 0.323217, 0];...
    [0.833137, 0.334425, 0];...
    [0.837831, 0.34589, 0];...
    [0.842499, 0.357615, 0];...
    [0.844823, 0.363575, 0];...
    [0.851757, 0.381852, 0];...
    [0.856349, 0.39437, 0];...
    [0.860916, 0.40716, 0];...
    [0.865459, 0.420223, 0];...
    [0.869979, 0.433562, 0];...
    [0.874475, 0.447181, 0];...
    [0.878948, 0.461082, 0];...
    [0.883398, 0.475268, 0];...
    [0.887826, 0.489742, 0];...
    [0.892232, 0.504507, 0];...
    [0.896617, 0.519566, 0];...
    [0.90098, 0.534922, 0];...
    [0.905322, 0.550577, 0];...
    [0.909643, 0.566535, 0];...
    [0.913944, 0.582798, 0];...
    [0.916087, 0.591045, 0];...
    [0.922486, 0.616252, 0];...
    [0.926727, 0.633449, 0];...
    [0.930949, 0.650963, 0];...
    [0.935152, 0.668797, 0];...
    [0.939336, 0.686953, 0];...
    [0.943502, 0.705435, 0];...
    [0.947649, 0.724246, 0];...
    [0.951779, 0.743388, 0];...
    [0.95589, 0.762864, 0];...
    [0.959984, 0.782678, 0];...
    [0.96406, 0.802832, 0];...
    [0.968119, 0.823329, 0];...
    [0.972162, 0.844171, 0];...
    [0.976187, 0.865363, 0];...
    [0.980196, 0.886906, 0];...
    [0.982194, 0.897811, 0];...
    [0.988165, 0.93106, 0];...
    [0.992126, 0.953675, 0];...
    [0.996071, 0.976655, 0];...
    [1, 1, 0]];

if isfield(args, 'Reverse')
    if args.Reverse == true
        cmap = flipud(cmap);
    end
end

if isfield(args, 'Start')
    if isfield(args, 'End')
        if isfield(args, 'Skip')
            idx = args.Start:args.End;
            mem = ismember(idx, args.Skip);
            cmap = cmap(idx(~mem), :);
        else
            cmap = cmap(args.Start:args.End, :);
        end  
    elseif isfield(args, 'Skip')
        idx = args.Start:size(cmap,1);
        mem = ismember(idx, args.Skip);
        cmap = cmap(idx(~mem), :);
    else
        cmap = cmap(args.Start:end, :);
    end    
elseif isfield(args, 'End')
    if isfield(args, 'Skip')
        idx = 1:args.End;
        mem = ismember(idx, args.Skip);
        cmap = cmap(idx(~mem), :);
    else
        cmap = cmap(1:args.End, :);
    end
elseif isfield(args, 'Skip')
    idx = 1:size(cmap,1);
    mem = ismember(idx, args.Skip);
    cmap = cmap(idx(~mem), :);
end

if isfield(args, 'Step')
    cmap = cmap(1:args.Step:end, :);
end

if isfield(args, 'Total')
    values = round(linspace(1, size(cmap,1), args.Total));
    cmap = cmap(values, :);
end

if isfield(args, 'Repeat')
    idx = repelem(1:size(cmap,1), args.Repeat);
    cmap = cmap(idx, :);
end

end