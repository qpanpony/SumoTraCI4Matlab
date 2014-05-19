function speedFactor = getSpeedFactor(typeID)
%getSpeedFactor
%   speedFactor = getSpeedFactor(TYPEID) Returns the chosen speed factor for
%   vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getSpeedFactor.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
speedFactor = traci.vehicletype.getUniversal(constants.VAR_SPEED_FACTOR, typeID);