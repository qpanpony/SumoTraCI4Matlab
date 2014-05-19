function route = getRoute(vehID)
%getRoute Get the vehicle route.
%   route = getRoute(VEHID) Returns a cell array of strings containing the 
%   ids of the edges the vehicle's route is made of.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getRoute.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
route = traci.vehicle.getUniversal(constants.VAR_EDGES, vehID);