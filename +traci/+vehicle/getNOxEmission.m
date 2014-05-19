function NOxEmission = getNOxEmission(vehID)
%getNOxEmission Get the NOx emission of the vehicle.
%   NOxEmission = getNOxEmission(VEHID) Returns the NOx emission in mg for
%   the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getNOxEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
NOxEmission = traci.vehicle.getUniversal(constants.VAR_NOXEMISSION, vehID);