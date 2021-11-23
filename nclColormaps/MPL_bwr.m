function [cmap] = MPL_bwr(args)
% Edited: Nov. 11th, 2021
%
% Colormap Reference:
% https://www.ncl.ucar.edu/Document/Graphics/ColorTables/MPL_bwr.shtml
%
% ncolors = 128
% cmap = MPL_bwr()
% cmap = MPL_bwr(argumentName, argumentValue)
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

cmap = [[0.007843, 0.007843, 1];...
    [0.023529, 0.023529, 1];...
    [0.039216, 0.039216, 1];...
    [0.054902, 0.054902, 1];...
    [0.070588, 0.070588, 1];...
    [0.086275, 0.086275, 1];...
    [0.101961, 0.101961, 1];...
    [0.117647, 0.117647, 1];...
    [0.133333, 0.133333, 1];...
    [0.141176, 0.141176, 1];...
    [0.164706, 0.164706, 1];...
    [0.172549, 0.172549, 1];...
    [0.196078, 0.196078, 1];...
    [0.203922, 0.203922, 1];...
    [0.227451, 0.227451, 1];...
    [0.235294, 0.235294, 1];...
    [0.258824, 0.258824, 1];...
    [0.27451, 0.27451, 1];...
    [0.282353, 0.282353, 1];...
    [0.305882, 0.305882, 1];...
    [0.321569, 0.321569, 1];...
    [0.337255, 0.337255, 1];...
    [0.345098, 0.345098, 1];...
    [0.368627, 0.368627, 1];...
    [0.384314, 0.384314, 1];...
    [0.4, 0.4, 1];...
    [0.407843, 0.407843, 1];...
    [0.431373, 0.431373, 1];...
    [0.447059, 0.447059, 1];...
    [0.462745, 0.462745, 1];...
    [0.470588, 0.470588, 1];...
    [0.494118, 0.494118, 1];...
    [0.509804, 0.509804, 1];...
    [0.52549, 0.52549, 1];...
    [0.541176, 0.541176, 1];...
    [0.556863, 0.556863, 1];...
    [0.572549, 0.572549, 1];...
    [0.580392, 0.580392, 1];...
    [0.603922, 0.603922, 1];...
    [0.619608, 0.619608, 1];...
    [0.635294, 0.635294, 1];...
    [0.65098, 0.65098, 1];...
    [0.666667, 0.666667, 1];...
    [0.682353, 0.682353, 1];...
    [0.698039, 0.698039, 1];...
    [0.705882, 0.705882, 1];...
    [0.729412, 0.729412, 1];...
    [0.745098, 0.745098, 1];...
    [0.760784, 0.760784, 1];...
    [0.776471, 0.776471, 1];...
    [0.792157, 0.792157, 1];...
    [0.807843, 0.807843, 1];...
    [0.823529, 0.823529, 1];...
    [0.831373, 0.831373, 1];...
    [0.854902, 0.854902, 1];...
    [0.870588, 0.870588, 1];...
    [0.886275, 0.886275, 1];...
    [0.901961, 0.901961, 1];...
    [0.917647, 0.917647, 1];...
    [0.933333, 0.933333, 1];...
    [0.94902, 0.94902, 1];...
    [0.956863, 0.956863, 1];...
    [0.980392, 0.980392, 1];...
    [0.996078, 0.996078, 1];...
    [1, 0.988235, 0.988235];...
    [1, 0.972549, 0.972549];...
    [1, 0.956863, 0.956863];...
    [1, 0.941176, 0.941176];...
    [1, 0.92549, 0.92549];...
    [1, 0.909804, 0.909804];...
    [1, 0.894118, 0.894118];...
    [1, 0.878431, 0.878431];...
    [1, 0.862745, 0.862745];...
    [1, 0.847059, 0.847059];...
    [1, 0.831373, 0.831373];...
    [1, 0.823529, 0.823529];...
    [1, 0.8, 0.8];...
    [1, 0.784314, 0.784314];...
    [1, 0.768627, 0.768627];...
    [1, 0.752941, 0.752941];...
    [1, 0.737255, 0.737255];...
    [1, 0.721569, 0.721569];...
    [1, 0.705882, 0.705882];...
    [1, 0.690196, 0.690196];...
    [1, 0.67451, 0.67451];...
    [1, 0.658824, 0.658824];...
    [1, 0.643137, 0.643137];...
    [1, 0.627451, 0.627451];...
    [1, 0.611765, 0.611765];...
    [1, 0.596078, 0.596078];...
    [1, 0.580392, 0.580392];...
    [1, 0.572549, 0.572549];...
    [1, 0.54902, 0.54902];...
    [1, 0.533333, 0.533333];...
    [1, 0.517647, 0.517647];...
    [1, 0.501961, 0.501961];...
    [1, 0.486275, 0.486275];...
    [1, 0.470588, 0.470588];...
    [1, 0.454902, 0.454902];...
    [1, 0.439216, 0.439216];...
    [1, 0.423529, 0.423529];...
    [1, 0.407843, 0.407843];...
    [1, 0.392157, 0.392157];...
    [1, 0.376471, 0.376471];...
    [1, 0.360784, 0.360784];...
    [1, 0.345098, 0.345098];...
    [1, 0.329412, 0.329412];...
    [1, 0.321569, 0.321569];...
    [1, 0.298039, 0.298039];...
    [1, 0.282353, 0.282353];...
    [1, 0.266667, 0.266667];...
    [1, 0.25098, 0.25098];...
    [1, 0.235294, 0.235294];...
    [1, 0.219608, 0.219608];...
    [1, 0.203922, 0.203922];...
    [1, 0.188235, 0.188235];...
    [1, 0.172549, 0.172549];...
    [1, 0.156863, 0.156863];...
    [1, 0.141176, 0.141176];...
    [1, 0.12549, 0.12549];...
    [1, 0.109804, 0.109804];...
    [1, 0.094118, 0.094118];...
    [1, 0.078431, 0.078431];...
    [1, 0.070588, 0.070588];...
    [1, 0.047059, 0.047059];...
    [1, 0.031373, 0.031373];...
    [1, 0.015686, 0.015686];...
    [1, 0, 0]];

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