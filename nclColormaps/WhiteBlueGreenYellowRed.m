function [cmap] = WhiteBlueGreenYellowRed(args)
% Edited: Jun. 21st, 2022
%
% Colormap Reference:
% https://www.ncl.ucar.edu/Document/Graphics/ColorTables/WhiteBlueGreenYellowRed.shtml
%
% ncolors = 254
% cmap = WhiteBlueGreenYellowRed()
% cmap = WhiteBlueGreenYellowRed(argumentName, argumentValue)
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

cmap = [[255, 255, 255];...
    [252, 254, 255];...
    [250, 253, 255];...
    [247, 252, 254];...
    [244, 251, 254];...
    [242, 250, 254];...
    [239, 249, 254];...
    [236, 248, 253];...
    [234, 247, 253];...
    [231, 246, 253];...
    [229, 245, 253];...
    [226, 244, 253];...
    [223, 243, 252];...
    [221, 242, 252];...
    [218, 241, 252];...
    [215, 240, 252];...
    [213, 239, 252];...
    [210, 238, 251];...
    [207, 237, 251];...
    [205, 236, 251];...
    [202, 235, 251];...
    [199, 234, 250];...
    [197, 233, 250];...
    [194, 232, 250];...
    [191, 231, 250];...
    [189, 230, 250];...
    [186, 229, 249];...
    [183, 228, 249];...
    [181, 227, 249];...
    [178, 226, 249];...
    [176, 225, 249];...
    [173, 224, 248];...
    [170, 223, 248];...
    [168, 222, 248];...
    [165, 221, 248];...
    [162, 220, 247];...
    [157, 218, 247];...
    [155, 216, 246];...
    [152, 214, 245];...
    [150, 212, 243];...
    [148, 210, 242];...
    [146, 208, 241];...
    [143, 206, 240];...
    [141, 204, 238];...
    [139, 202, 237];...
    [136, 200, 236];...
    [134, 197, 235];...
    [132, 195, 234];...
    [129, 193, 232];...
    [127, 191, 231];...
    [125, 189, 230];...
    [123, 187, 229];...
    [120, 185, 228];...
    [118, 183, 226];...
    [116, 181, 225];...
    [113, 179, 224];...
    [111, 177, 223];...
    [109, 175, 221];...
    [106, 173, 220];...
    [104, 171, 219];...
    [102, 169, 218];...
    [100, 167, 217];...
    [97, 165, 215];...
    [95, 163, 214];...
    [93, 160, 213];...
    [90, 158, 212];...
    [88, 156, 211];...
    [86, 154, 209];...
    [83, 152, 208];...
    [81, 150, 207];...
    [79, 148, 206];...
    [77, 146, 204];...
    [72, 142, 202];...
    [72, 143, 198];...
    [72, 144, 195];...
    [72, 145, 191];...
    [72, 146, 188];...
    [72, 147, 184];...
    [72, 148, 181];...
    [72, 149, 177];...
    [72, 150, 173];...
    [72, 151, 170];...
    [72, 153, 166];...
    [72, 154, 163];...
    [72, 155, 159];...
    [72, 156, 156];...
    [72, 157, 152];...
    [72, 158, 148];...
    [72, 159, 145];...
    [72, 160, 141];...
    [72, 161, 138];...
    [73, 162, 134];...
    [73, 163, 131];...
    [73, 164, 127];...
    [73, 165, 124];...
    [73, 166, 120];...
    [73, 167, 116];...
    [73, 168, 113];...
    [73, 169, 109];...
    [73, 170, 106];...
    [73, 172, 102];...
    [73, 173, 99];...
    [73, 174, 95];...
    [73, 175, 91];...
    [73, 176, 88];...
    [73, 177, 84];...
    [73, 178, 81];...
    [73, 179, 77];...
    [73, 181, 70];...
    [78, 182, 71];...
    [83, 184, 71];...
    [87, 185, 72];...
    [92, 187, 72];...
    [97, 188, 73];...
    [102, 189, 74];...
    [106, 191, 74];...
    [111, 192, 75];...
    [116, 193, 75];...
    [121, 195, 76];...
    [126, 196, 77];...
    [130, 198, 77];...
    [135, 199, 78];...
    [140, 200, 78];...
    [145, 202, 79];...
    [150, 203, 80];...
    [154, 204, 80];...
    [159, 206, 81];...
    [164, 207, 81];...
    [169, 209, 82];...
    [173, 210, 82];...
    [178, 211, 83];...
    [183, 213, 84];...
    [188, 214, 84];...
    [193, 215, 85];...
    [197, 217, 85];...
    [202, 218, 86];...
    [207, 220, 87];...
    [212, 221, 87];...
    [217, 222, 88];...
    [221, 224, 88];...
    [226, 225, 89];...
    [231, 226, 90];...
    [236, 228, 90];...
    [240, 229, 91];...
    [245, 231, 91];...
    [250, 232, 92];...
    [250, 229, 91];...
    [250, 225, 89];...
    [250, 222, 88];...
    [249, 218, 86];...
    [249, 215, 85];...
    [249, 212, 84];...
    [249, 208, 82];...
    [249, 205, 81];...
    [249, 201, 80];...
    [249, 198, 78];...
    [249, 195, 77];...
    [248, 191, 75];...
    [248, 188, 74];...
    [248, 184, 73];...
    [248, 181, 71];...
    [248, 178, 70];...
    [248, 174, 69];...
    [248, 171, 67];...
    [247, 167, 66];...
    [247, 164, 64];...
    [247, 160, 63];...
    [247, 157, 62];...
    [247, 154, 60];...
    [247, 150, 59];...
    [247, 147, 58];...
    [246, 143, 56];...
    [246, 140, 55];...
    [246, 137, 53];...
    [246, 133, 52];...
    [246, 130, 51];...
    [246, 126, 49];...
    [246, 123, 48];...
    [246, 120, 47];...
    [245, 116, 45];...
    [245, 113, 44];...
    [245, 106, 41];...
    [244, 104, 41];...
    [243, 102, 41];...
    [242, 100, 41];...
    [241, 98, 41];...
    [240, 96, 41];...
    [239, 94, 41];...
    [239, 92, 41];...
    [238, 90, 41];...
    [237, 88, 41];...
    [236, 86, 41];...
    [235, 84, 41];...
    [234, 82, 41];...
    [233, 80, 41];...
    [232, 78, 41];...
    [231, 76, 41];...
    [230, 74, 41];...
    [229, 72, 41];...
    [228, 70, 41];...
    [228, 67, 40];...
    [227, 65, 40];...
    [226, 63, 40];...
    [225, 61, 40];...
    [224, 59, 40];...
    [223, 57, 40];...
    [222, 55, 40];...
    [221, 53, 40];...
    [220, 51, 40];...
    [219, 49, 40];...
    [218, 47, 40];...
    [217, 45, 40];...
    [217, 43, 40];...
    [216, 41, 40];...
    [215, 39, 40];...
    [214, 37, 40];...
    [213, 35, 40];...
    [211, 31, 40];...
    [209, 31, 40];...
    [207, 30, 39];...
    [206, 30, 39];...
    [204, 30, 38];...
    [202, 30, 38];...
    [200, 29, 38];...
    [199, 29, 37];...
    [197, 29, 37];...
    [195, 29, 36];...
    [193, 28, 36];...
    [192, 28, 36];...
    [190, 28, 35];...
    [188, 27, 35];...
    [186, 27, 34];...
    [185, 27, 34];...
    [183, 27, 34];...
    [181, 26, 33];...
    [179, 26, 33];...
    [178, 26, 32];...
    [176, 26, 32];...
    [174, 25, 31];...
    [172, 25, 31];...
    [171, 25, 31];...
    [169, 25, 30];...
    [167, 24, 30];...
    [165, 24, 29];...
    [164, 24, 29];...
    [162, 23, 29];...
    [160, 23, 28];...
    [158, 23, 28];...
    [157, 23, 27];...
    [155, 22, 27];...
    [153, 22, 27];...
    [151, 22, 26];...
    [150, 22, 26];...
    [146, 21, 25]];

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

cmap = cmap ./ 255;

end