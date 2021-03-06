function setRoute(vehID, edgeList)
%setRoute Set the route of the vehicle.
%   setRoute(VEHID,EDGELIST) changes the vehicle route to given edges list.
%   The first edge in the list has to be the one that the vehicle is at at 
%   the moment.
% 
%   Example:
%   traci.vehicle.setRoute{'1', {'1', '2', '4', '6', '7'}}
% 
%   changes the route for vehicle id 1 to edges 1-2-4-6-7.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setRoute.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message

traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_ROUTE, vehID,...
    1+4+sum(cellfun('length', edgeList))+4*length(edgeList));
message.string = [message.string uint8(sscanf(constants.TYPE_STRINGLIST,'%x')) ...
    fliplr(typecast(int32(length(edgeList)),'uint8'))];
for i=1:length(edgeList)
    message.string = [message.string fliplr(typecast(int32(length(edgeList{i})),'uint8')) ...
        uint8(edgeList{i})];
end
traci.sendExact()