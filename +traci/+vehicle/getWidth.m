function width = getWidth(vehID)
%getWidth
%   width = getWidth(VEHID) Returns the width in m of this vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getWidth.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
width = traci.vehicle.getUniversal(constants.VAR_WIDTH, vehID);