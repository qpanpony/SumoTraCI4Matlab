function add(routeID, edges)
%add Add a route to the SUMO simulation.
%   add(ROUTEID,EDGES) Adds a route with the id ROUTEID comprised of the 
%   given edges. EDGES is a cell array of strings containing the IDs of the
%   edges.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: add.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message
traci.beginMessage(constants.CMD_SET_ROUTE_VARIABLE, constants.ADD, routeID,...
    1+4+sum(cellfun('length', edges))+4*length(edges));
message.string = [message.string uint8(sscanf(constants.TYPE_STRINGLIST,'%x')) ...
    fliplr(typecast(int32(length(edges)),'uint8'))];
for i=1:length(edges)
    message.string = [message.string fliplr(typecast(int32(length(edges{i})),'uint8')) ...
        uint8(edges{i})];
end
traci.sendExact();