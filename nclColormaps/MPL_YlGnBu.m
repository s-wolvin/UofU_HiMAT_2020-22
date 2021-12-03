function [cmap] = MPL_YlGnBu(args)
% Edited: Nov. 11th, 2021
%
% Colormap Reference:
% https://www.ncl.ucar.edu/Document/Graphics/ColorTables/MPL_YlGnBu.shtml
%
% ncolors = 128
% cmap = MPL_YlGnBu()
% cmap = MPL_YlGnBu(argumentName, argumentValue)
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

cmap = [[0.997785, 0.999139, 0.846059];...
    [0.993356, 0.997416, 0.836217];...
    [0.988927, 0.995694, 0.826374];...
    [0.984498, 0.993972, 0.816532];...
    [0.980069, 0.992249, 0.80669];...
    [0.97564, 0.990527, 0.796847];...
    [0.971211, 0.988804, 0.787005];...
    [0.966782, 0.987082, 0.777163];...
    [0.962353, 0.985359, 0.76732];...
    [0.960138, 0.984498, 0.762399];...
    [0.953495, 0.981915, 0.747636];...
    [0.95128, 0.981053, 0.742714];...
    [0.944637, 0.97847, 0.727951];...
    [0.942422, 0.977609, 0.72303];...
    [0.935779, 0.975025, 0.708266];...
    [0.933564, 0.974164, 0.703345];...
    [0.924152, 0.970473, 0.694533];...
    [0.914802, 0.966782, 0.695271];...
    [0.910127, 0.964937, 0.69564];...
    [0.896102, 0.9594, 0.696747];...
    [0.886751, 0.955709, 0.697486];...
    [0.877401, 0.952018, 0.698224];...
    [0.872726, 0.950173, 0.698593];...
    [0.858701, 0.944637, 0.6997];...
    [0.84935, 0.940946, 0.700438];...
    [0.84, 0.937255, 0.701176];...
    [0.835325, 0.935409, 0.701546];...
    [0.8213, 0.929873, 0.702653];...
    [0.811949, 0.926182, 0.703391];...
    [0.802599, 0.922491, 0.704129];...
    [0.797924, 0.920646, 0.704498];...
    [0.783899, 0.91511, 0.705606];...
    [0.76932, 0.909419, 0.706959];...
    [0.751603, 0.90253, 0.708681];...
    [0.733887, 0.89564, 0.710404];...
    [0.716171, 0.88875, 0.712126];...
    [0.698454, 0.881861, 0.713849];...
    [0.689596, 0.878416, 0.71471];...
    [0.663022, 0.868082, 0.717293];...
    [0.645306, 0.861192, 0.719016];...
    [0.627589, 0.854302, 0.720738];...
    [0.609873, 0.847413, 0.722461];...
    [0.592157, 0.840523, 0.724183];...
    [0.574441, 0.833633, 0.725905];...
    [0.556724, 0.826744, 0.727628];...
    [0.547866, 0.823299, 0.728489];...
    [0.521292, 0.812964, 0.731073];...
    [0.503576, 0.806075, 0.732795];...
    [0.487551, 0.800031, 0.734856];...
    [0.472295, 0.794371, 0.73707];...
    [0.45704, 0.788712, 0.739285];...
    [0.441784, 0.783053, 0.741499];...
    [0.426528, 0.777393, 0.743714];...
    [0.4189, 0.774564, 0.744821];...
    [0.396017, 0.766075, 0.748143];...
    [0.380761, 0.760415, 0.750358];...
    [0.365506, 0.754756, 0.752572];...
    [0.35025, 0.749097, 0.754787];...
    [0.334994, 0.743437, 0.757001];...
    [0.319739, 0.737778, 0.759216];...
    [0.304483, 0.732118, 0.76143];...
    [0.296855, 0.729289, 0.762537];...
    [0.273972, 0.7208, 0.765859];...
    [0.258716, 0.71514, 0.768074];...
    [0.248258, 0.706897, 0.767889];...
    [0.2394, 0.697793, 0.766905];...
    [0.230542, 0.688689, 0.765921];...
    [0.221684, 0.679585, 0.764937];...
    [0.212826, 0.670481, 0.763952];...
    [0.203968, 0.661376, 0.762968];...
    [0.19511, 0.652272, 0.761984];...
    [0.186251, 0.643168, 0.761];...
    [0.177393, 0.634064, 0.760015];...
    [0.168535, 0.62496, 0.759031];...
    [0.159677, 0.615855, 0.758047];...
    [0.155248, 0.611303, 0.757555];...
    [0.141961, 0.597647, 0.756078];...
    [0.133103, 0.588543, 0.755094];...
    [0.124245, 0.579439, 0.75411];...
    [0.115386, 0.570335, 0.753126];...
    [0.114725, 0.558431, 0.748143];...
    [0.115955, 0.545882, 0.742238];...
    [0.117186, 0.533333, 0.736332];...
    [0.118416, 0.520784, 0.730427];...
    [0.119646, 0.508235, 0.724521];...
    [0.120877, 0.495686, 0.718616];...
    [0.122107, 0.483137, 0.712711];...
    [0.123337, 0.470588, 0.706805];...
    [0.124567, 0.458039, 0.7009];...
    [0.125798, 0.44549, 0.694994];...
    [0.127028, 0.432941, 0.689089];...
    [0.127643, 0.426667, 0.686136];...
    [0.129489, 0.407843, 0.677278];...
    [0.130719, 0.395294, 0.671373];...
    [0.131949, 0.382745, 0.665467];...
    [0.13318, 0.370196, 0.659562];...
    [0.133979, 0.359585, 0.654518];...
    [0.134717, 0.34925, 0.649596];...
    [0.135456, 0.338916, 0.644675];...
    [0.136194, 0.328581, 0.639754];...
    [0.136932, 0.318247, 0.634833];...
    [0.13767, 0.307912, 0.629912];...
    [0.138408, 0.297578, 0.62499];...
    [0.139146, 0.287243, 0.620069];...
    [0.139885, 0.276909, 0.615148];...
    [0.140623, 0.266574, 0.610227];...
    [0.141361, 0.25624, 0.605306];...
    [0.14173, 0.251073, 0.602845];...
    [0.142837, 0.235571, 0.595463];...
    [0.143576, 0.225236, 0.590542];...
    [0.144314, 0.214902, 0.585621];...
    [0.145052, 0.204567, 0.5807];...
    [0.138408, 0.198616, 0.566551];...
    [0.131273, 0.192957, 0.551788];...
    [0.124137, 0.187297, 0.537024];...
    [0.117001, 0.181638, 0.522261];...
    [0.109865, 0.175978, 0.507497];...
    [0.10273, 0.170319, 0.492734];...
    [0.095594, 0.16466, 0.47797];...
    [0.088458, 0.159, 0.463206];...
    [0.081323, 0.153341, 0.448443];...
    [0.074187, 0.147682, 0.433679];...
    [0.067051, 0.142022, 0.418916];...
    [0.063483, 0.139193, 0.411534];...
    [0.05278, 0.130704, 0.389389];...
    [0.045644, 0.125044, 0.374625];...
    [0.038508, 0.119385, 0.359862];...
    [0.031373, 0.113725, 0.345098]];

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