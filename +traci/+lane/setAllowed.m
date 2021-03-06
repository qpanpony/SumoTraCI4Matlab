function setAllowed(laneID, allowedClasses)
import traci.constants
%setAllowed Set the allowed vehicle classes in the lane.
%   setAllowed(LANEID,ALLOWEDCLASSES) Sets a list of allowed vehicle 
%   classes contained in a cell array of strings. Setting an empty list 
%   means all vehicles are allowed.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setAllowed.m 2 2013-12-21 21:39:57Z aacosta $

global message
traci.beginMessage(constants.CMD_SET_LANE_VARIABLE, constants.LANE_ALLOWED,...
laneID, 1+4+sum(cellfun('length', allowedClasses))+4*length(allowedClasses));
message.string = [message.string uint8(sscanf(constants.TYPE_STRINGLIST,'%x')) ...
    fliplr(typecast(int32(length(allowedClasses)),'uint8'))];
for i=1:length(allowedClasses)
    message.string = [message.string fliplr(typecast(int32(length(...
        allowedClasses{i})),'uint8')) uint8(allowedClasses{i})];
end
traci.sendExact();