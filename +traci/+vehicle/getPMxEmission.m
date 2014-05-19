function PMxEmission = getPMxEmission(vehID)
%getPmxEmission Get the particular matter emission of the vehicle.
%   pmxEmission = getPmxEmission(VEHID) Returns the particular matter 
%   emission in mg for the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getPMxEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
PMxEmission = traci.vehicle.getUniversal(constants.VAR_PMXEMISSION, vehID);