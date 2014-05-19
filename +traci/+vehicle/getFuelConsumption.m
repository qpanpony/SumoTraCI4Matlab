function fuelConsumption = getFuelConsumption(vehID)
%getFuelConsumption Get the fuel consumption of the vehicle.
%   fuelConsumption = getFuelConsumption(VEHID) Returns the fuel 
%   consumption in ml for the last time step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getFuelConsumption.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
fuelConsumption = traci.vehicle.getUniversal(constants.VAR_FUELCONSUMPTION, vehID);