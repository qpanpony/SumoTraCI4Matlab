function setDisallowed(laneID, disallowedClasses)
%setDisallowed Set the disallowed vehicle classes in the lane.
%   setDisallowed(LANEID,DISALLOWEDCLASSES) Sets a list of disallowed 
%   vehicle classes contained in a cell array of strings.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setDisallowed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_LANE_VARIABLE, constants.LANE_DISALLOWED,...
laneID, 1+4+sum(cellfun('length', disallowedClasses))+4*length(disallowedClasses));
message.string = [message.string uint8(sscanf(constants.TYPE_STRINGLIST,'%x')) ...
    fliplr(typecast(int32(length(disallowedClasses)),'uint8'))];
for i=1:length(disallowedClasses)
    message.string = [message.string fliplr(typecast(int32(length(...
        disallowedClasses{i})),'uint8')) uint8(disallowedClasses{i})];
end
traci.sendExact();