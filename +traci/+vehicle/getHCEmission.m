function HCEmission = getHCEmission(vehID)
%getHCEmission Returns the HC emission of the vehicle.
%   HCEmission = getHCEmission(VEHID) Returns the HC emission in mg for
%   the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getHCEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
HCEmission = traci.vehicle.getUniversal(constants.VAR_HCEMISSION, vehID);