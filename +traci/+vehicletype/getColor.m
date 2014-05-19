function color = getColor(typeID)
%getColor
%   color = getColor(TYPEID)Returns the color of this type of vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getColor.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
color = traci.vehicletype.getUniversal(constants.VAR_COLOR, typeID);