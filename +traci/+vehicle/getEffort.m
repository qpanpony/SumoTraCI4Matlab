function effort = getEffort(vehID, time, edgeID)
%getEffort
%   effort = getEffort(VEHID,TIME,EDGEID) Returns the edge effort for the 
%   given time as stored in the vehicle's internal container. If such a 
%   value does not exist, -1 is returned.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getEffort.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message
traci.beginMessage(constants.CMD_GET_VEHICLE_VARIABLE, constants.VAR_EDGE_EFFORT,...
    vehID, 1+4+1+4+1+4+length(edgeID));
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) fliplr(typecast(int32(2),'uint8')) ...
    uint8(sscanf(constants.TYPE_INTEGER,'%x')) fliplr(typecast(int32(time),'uint8')) ...
    uint8(sscanf(constants.TYPE_STRING,'%x')) fliplr(typecast(int32(length(edgeID)),'uint8')) ...
    uint8(edgeID)];
result = traci.checkResult(constants.CMD_GET_VEHICLE_VARIABLE, constants.VAR_EDGE_EFFORT, vehID);
effort = result.readDouble();