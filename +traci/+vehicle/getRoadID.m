function roadID = getRoadID(vehID)
%getRoadID
%   roadID = getRoadID(VEHID) Returns the id of the edge the named vehicle 
%   was at within the last step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getRoadID.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
roadID = traci.vehicle.getUniversal(constants.VAR_ROAD_ID, vehID);