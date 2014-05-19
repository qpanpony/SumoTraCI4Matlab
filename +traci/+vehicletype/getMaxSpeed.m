function maxSpeed = getMaxSpeed(typeID)
%getMaxSpeed
%   maxSpeed = getMaxSpeed(TYPEID) Returns the maximum speed in m/s of 
%   vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getMaxSpeed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
maxSpeed = traci.vehicletype.getUniversal(constants.VAR_MAXSPEED, typeID);