function emissionClass = getEmissionClass(vehID)
%getEmissionClass
%   emissionClass = getEmissionClass(VEHID) Returns the emission class of 
%   this vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getEmissionClass.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
emissionClass = traci.vehicle.getUniversal(constants.VAR_EMISSIONCLASS, vehID);