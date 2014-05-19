function color = getColor(vehID)
%getColor Get the color of the vehicle.
%   color = getColor(VEHID) Returns the vehicle's rgba color.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getColor.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
color = traci.vehicle.getUniversal(constants.VAR_COLOR, vehID);