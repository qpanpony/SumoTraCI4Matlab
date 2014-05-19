function maxSpeed = getMaxSpeed(vehID)
%getMaxSpeed
%   maxSpeed = getMaxSpeed(VEHID) Returns the maximum speed in m/s of this 
%   vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getMaxSpeed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
maxSpeed = traci.vehicle.getUniversal(constants.VAR_MAXSPEED, vehID);