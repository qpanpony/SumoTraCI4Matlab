function accel = getAccel(vehID)
%getAccel Get the acceleration of the vehicle.
%   accel = getAccel(VEHID) Returns the maximum acceleration possibility in
%   m/s^2 of this vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getAccel.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
accel = traci.vehicle.getUniversal(constants.VAR_ACCEL, vehID);