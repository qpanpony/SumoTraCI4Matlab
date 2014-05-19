function lanePosition = getLanePosition(vehID)
%getLanePosition Get the position of the vehicle along the lane.
%   lanePosition = getLanePosition(VEHID) Returns the position of the 
%   vehicle along the lane measured in m.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLanePosition.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lanePosition = traci.vehicle.getUniversal(constants.VAR_LANEPOSITION, vehID);