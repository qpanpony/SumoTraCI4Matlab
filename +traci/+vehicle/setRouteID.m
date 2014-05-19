function setRouteID(vehID, routeID)
%setRouteID
%   setRouteID(VEHID,ROUTEID) Sets the id of the route for the named 
%   vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setRouteID.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
traci.sendStringCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_ROUTE_ID, vehID, routeID);