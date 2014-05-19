function speedDeviation = getSpeedDeviation(vehID)
%getSpeedDeviation
%   speedDeviation = getSpeedDeviation(VEHID) Returns the maximum speed 
%   deviation of the vehicle type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getSpeedDeviation.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
speedDeviation = traci.vehicle.getUniversal(constants.VAR_SPEED_DEVIATION, vehID);