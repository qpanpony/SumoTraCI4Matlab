function setEffort(vehID, begTime, endTime, edgeID, effort)
%setEffort
%   setEffort(VEHID,BEGTIME,ENDTIME,EDGEID,EFFORT) Inserts the information 
%   about the effort of edge EDGEID valid from BEGTIME time to ENDTIME time
%   into the vehicle's internal edge weights container.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setEffort.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message

traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_EDGE_EFFORT, vehID,...
    1+4+1+4+1+4+1+4+length(edgeID)+1+4);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(4),'uint8')) uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    fliplr(typecast(int32(begTime),'uint8')) uint8(sscanf(constants.TYPE_INTEGER,'%x')) ...
    fliplr(typecast(int32(endTime),'uint8')) uint8(sscanf(constants.TYPE_STRING,'%x')) ...
    fliplr(typecast(int32(length(edgeID)),'uint8')) uint8(edgeID)];
message.string = [message.string uint8(sscanf(constants.TYPE_DOUBLE,'%x')) ...
    fliplr(typecast(effort,'uint8'))];
traci.sendExact()