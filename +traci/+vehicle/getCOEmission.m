function COEmission = getCOEmission(vehID)
%getCOEmission Returns the CO emission of the vehicle.
%   COEmission = getCO2Emission(VEHID) Returns the CO emission in mg for
%   the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getCOEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
COEmission = traci.vehicle.getUniversal(constants.VAR_COEMISSION, vehID);