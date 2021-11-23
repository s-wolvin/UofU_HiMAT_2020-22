function [cmap] = MPL_Blues(args)
% Edited: Nov. 11th, 2021
%
% Colormap Reference:
% https://www.ncl.ucar.edu/Document/Graphics/ColorTables/MPL_Blues.shtml
%
% ncolors = 128
% cmap = MPL_Blues()
% cmap = MPL_Blues(argumentName, argumentValue)
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

cmap = [[0.965552, 0.982345, 0.999016];...
    [0.9594, 0.978408, 0.997047];...
    [0.953249, 0.974471, 0.995079];...
    [0.947097, 0.970534, 0.99311];...
    [0.940946, 0.966597, 0.991142];...
    [0.934794, 0.962661, 0.989173];...
    [0.928643, 0.958724, 0.987205];...
    [0.922491, 0.954787, 0.985236];...
    [0.91634, 0.95085, 0.983268];...
    [0.913264, 0.948881, 0.982284];...
    [0.904037, 0.942976, 0.979331];...
    [0.900961, 0.941007, 0.978347];...
    [0.891734, 0.935102, 0.975394];...
    [0.888658, 0.933133, 0.97441];...
    [0.879431, 0.927228, 0.971457];...
    [0.876355, 0.92526, 0.970473];...
    [0.867266, 0.919354, 0.96752];...
    [0.861361, 0.915417, 0.965552];...
    [0.858408, 0.913449, 0.964567];...
    [0.84955, 0.907543, 0.961615];...
    [0.843645, 0.903606, 0.959646];...
    [0.837739, 0.899669, 0.957678];...
    [0.834787, 0.897701, 0.956694];...
    [0.825928, 0.891795, 0.953741];...
    [0.820023, 0.887859, 0.951772];...
    [0.814118, 0.883922, 0.949804];...
    [0.811165, 0.881953, 0.94882];...
    [0.802307, 0.876048, 0.945867];...
    [0.796401, 0.872111, 0.943899];...
    [0.790496, 0.868174, 0.94193];...
    [0.787543, 0.866205, 0.940946];...
    [0.778685, 0.8603, 0.937993];...
    [0.770319, 0.856209, 0.935102];...
    [0.760477, 0.852026, 0.931657];...
    [0.750634, 0.847843, 0.928212];...
    [0.740792, 0.84366, 0.924767];...
    [0.73095, 0.839477, 0.921323];...
    [0.726028, 0.837386, 0.9196];...
    [0.711265, 0.831111, 0.914433];...
    [0.701423, 0.826928, 0.910988];...
    [0.69158, 0.822745, 0.907543];...
    [0.681738, 0.818562, 0.904098];...
    [0.671895, 0.814379, 0.900654];...
    [0.662053, 0.810196, 0.897209];...
    [0.652211, 0.806013, 0.893764];...
    [0.64729, 0.803922, 0.892042];...
    [0.632526, 0.797647, 0.886874];...
    [0.622684, 0.793464, 0.883429];...
    [0.61098, 0.78742, 0.880492];...
    [0.598431, 0.780531, 0.877785];...
    [0.585882, 0.773641, 0.875079];...
    [0.573333, 0.766751, 0.872372];...
    [0.560784, 0.759862, 0.869666];...
    [0.55451, 0.756417, 0.868312];...
    [0.535686, 0.746082, 0.864252];...
    [0.523137, 0.739193, 0.861546];...
    [0.510588, 0.732303, 0.858839];...
    [0.498039, 0.725413, 0.856132];...
    [0.48549, 0.718524, 0.853426];...
    [0.472941, 0.711634, 0.850719];...
    [0.460392, 0.704744, 0.848012];...
    [0.454118, 0.7013, 0.846659];...
    [0.435294, 0.690965, 0.842599];...
    [0.422745, 0.684075, 0.839892];...
    [0.412042, 0.677186, 0.836263];...
    [0.401953, 0.670296, 0.832326];...
    [0.391865, 0.663406, 0.828389];...
    [0.381776, 0.656517, 0.824452];...
    [0.371688, 0.649627, 0.820515];...
    [0.361599, 0.642737, 0.816578];...
    [0.351511, 0.635848, 0.812641];...
    [0.341423, 0.628958, 0.808704];...
    [0.331334, 0.622068, 0.804767];...
    [0.321246, 0.615179, 0.80083];...
    [0.311157, 0.608289, 0.796894];...
    [0.306113, 0.604844, 0.794925];...
    [0.29098, 0.59451, 0.78902];...
    [0.280892, 0.58762, 0.785083];...
    [0.270804, 0.580731, 0.781146];...
    [0.260715, 0.573841, 0.777209];...
    [0.252226, 0.565952, 0.773072];...
    [0.244106, 0.557832, 0.768889];...
    [0.235986, 0.549712, 0.764706];...
    [0.227866, 0.541592, 0.760523];...
    [0.219746, 0.533472, 0.75634];...
    [0.211626, 0.525352, 0.752157];...
    [0.203506, 0.517232, 0.747974];...
    [0.195386, 0.509112, 0.743791];...
    [0.187266, 0.500992, 0.739608];...
    [0.179146, 0.492872, 0.735425];...
    [0.171027, 0.484752, 0.731242];...
    [0.166967, 0.480692, 0.72915];...
    [0.154787, 0.468512, 0.722876];...
    [0.146667, 0.460392, 0.718693];...
    [0.138547, 0.452272, 0.71451];...
    [0.130427, 0.444152, 0.710327];...
    [0.124029, 0.436248, 0.704421];...
    [0.117878, 0.428374, 0.69827];...
    [0.111726, 0.4205, 0.692118];...
    [0.105575, 0.412626, 0.685967];...
    [0.099423, 0.404752, 0.679815];...
    [0.093272, 0.396878, 0.673664];...
    [0.08712, 0.389004, 0.667513];...
    [0.080969, 0.38113, 0.661361];...
    [0.074817, 0.373256, 0.65521];...
    [0.068666, 0.365383, 0.649058];...
    [0.062514, 0.357509, 0.642907];...
    [0.059439, 0.353572, 0.639831];...
    [0.050211, 0.341761, 0.630604];...
    [0.04406, 0.333887, 0.624452];...
    [0.037908, 0.326013, 0.618301];...
    [0.031757, 0.318139, 0.612149];...
    [0.031373, 0.310035, 0.600461];...
    [0.031373, 0.301915, 0.588404];...
    [0.031373, 0.293795, 0.576348];...
    [0.031373, 0.285675, 0.564291];...
    [0.031373, 0.277555, 0.552234];...
    [0.031373, 0.269435, 0.540177];...
    [0.031373, 0.261315, 0.52812];...
    [0.031373, 0.253195, 0.516063];...
    [0.031373, 0.245075, 0.504006];...
    [0.031373, 0.236955, 0.491949];...
    [0.031373, 0.228835, 0.479892];...
    [0.031373, 0.224775, 0.473864];...
    [0.031373, 0.212595, 0.455779];...
    [0.031373, 0.204475, 0.443722];...
    [0.031373, 0.196355, 0.431665];...
    [0.031373, 0.188235, 0.419608]];

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
