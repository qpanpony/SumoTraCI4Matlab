function noiseEmission = getNoiseEmission(vehID)
%getNoiseEmission Get the noise emission of the vehicle.
%   noiseEmission = getNoiseEmission(VEHID) Returns the noise emission in 
%   db for the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getNoiseEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
noiseEmission = traci.vehicle.getUniversal(constants.VAR_NOISEEMISSION, vehID);