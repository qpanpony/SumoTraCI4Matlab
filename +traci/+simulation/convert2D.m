function [x y] = convert2D(edgeID, pos, laneIndex, toGeo)
%convert2D Convert to absolute coordinates from those relative to an edge.
%   [X,Y] = convert2D(EDGEID,POS) Converts from the position POS relative
%   to the edge EDGEID to absolute coordinates.
%   [X,Y] = convert2D(...,LANEINDEX) Specify the index of the edge's lane.
%   [X,Y] = convert2D(...,TOGEO) Specify if the conversion is made to
%   geo-coordinates, in this case, X is the longitude and Y is the latitude.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: convert2D.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message
if nargin < 4
    toGeo = false;
    if nargin < 3
        laneIndex = 0;
    end
end

posType = sscanf(constants.POSITION_2D,'%x');

if toGeo
    posType = sscanf(constants.POSITION_LON_LAT,'%x');
end
traci.beginMessage(constants.CMD_GET_SIM_VARIABLE, constants.POSITION_CONVERSION,...
    '', 1+4 + 1+4+length(edgeID)+8+1 + 1+1);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(2),'uint8'))];
message.string = [message.string uint8(sscanf(constants.POSITION_ROADMAP,'%x')) ...
    fliplr(typecast(int32(length(edgeID)),'uint8')) uint8(edgeID)];
message.string = [message.string fliplr(typecast(pos,'uint8')) ...
    uint8([laneIndex sscanf(constants.TYPE_UBYTE,'%x') posType])];
result = traci.checkResult(constants.CMD_GET_SIM_VARIABLE, constants.POSITION_CONVERSION, '');
x = result.readDouble;
y = result.readDouble;