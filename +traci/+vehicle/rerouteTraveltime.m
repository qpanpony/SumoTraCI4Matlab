function rerouteTraveltime(vehID)
%rerouteTraveltime Compute new route based on the edges' assigned travel time.
%   rerouteTraveltime(VEHID) Computes a new route using the vehicle's 
%   internal and the global edge travel time information. Replaces the 
%   current route by the found.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: rerouteTraveltime.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message

traci.beginMessage(constants.CMD_SET_VEHICLE_VARIABLE, constants.CMD_REROUTE_TRAVELTIME, vehID,...
    1+4);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) ...
    fliplr(typecast(int32(0),'uint8'))];
traci.sendExact();