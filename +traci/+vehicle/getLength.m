function length = getLength(vehID)
%getLength
%   length = getLength(VEHID) Returns the length in m of the given vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLength.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
length = traci.vehicle.getUniversal(constants.VAR_LENGTH, vehID);