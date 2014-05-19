function startingTeleportNumber = getStartingTeleportNumber()
%getStartingTeleportNumber Get the number of vehicles stsrting to teleport.
%   startingTeleportNumber = getStartingTeleportNumber() Returns the number
%   of vehicles which started to teleport in this time step.  

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getStartingTeleportNumber.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
startingTeleportNumber = traci.simulation.getUniversal(constants.VAR_TELEPORT_STARTING_VEHICLES_NUMBER);