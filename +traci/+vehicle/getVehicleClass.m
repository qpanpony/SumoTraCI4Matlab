function vehicleClass = getVehicleClass(vehID)
%getVehicleClass
%   vehicleClass = getVehicleClass(VEHID) Returns the vehicle class of this
%   vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getVehicleClass.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
vehicleClass = traci.vehicle.getUniversal(constants.VAR_VEHICLECLASS, vehID);