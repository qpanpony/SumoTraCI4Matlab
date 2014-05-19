function fuelConsumption = getFuelConsumption(edgeID)
%getFuelConsumption Get the fuel consumption on the edge.
%   fuelConsumption = getFuelConsumption(EDGEID) Returns the fuel 
%   consumption in ml for the last time step on the given edge.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getFuelConsumption.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
fuelConsumption = traci.edge.getUniversal(constants.VAR_FUELCONSUMPTION, edgeID);