function angle = getAngle(vehID)
%getAngle Get the angle of the vehicle.
%   angle = getAngle(VEHID) Returns the angle in degrees of the named 
%   vehicle within the last step. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getAngle.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
angle = traci.vehicle.getUniversal(constants.VAR_ANGLE, vehID);