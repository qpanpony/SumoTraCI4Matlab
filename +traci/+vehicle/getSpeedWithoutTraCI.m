function speedWithoutTraCI = getSpeedWithoutTraCI(vehID)
%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getSpeedWithoutTraCI.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
speedWithoutTraCI = traci.vehicle.getUniversal(constants.VAR_SPEED_WITHOUT_TRACI, vehID);