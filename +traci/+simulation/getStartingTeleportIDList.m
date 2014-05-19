function startingTeleportIDList = getStartingTeleportIDList()
%getStartingTeleportIDList Get the IDs of vehicles stsrting to teleport.
%   startingTeleportIDList = getStartingTeleportIDList() Returns a cell 
%   array of strings containing the ids of vehicles which which started to 
%   teleport in this time step.  

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getStartingTeleportIDList.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
startingTeleportIDList = traci.simulation.getUniversal(constants.VAR_TELEPORT_STARTING_VEHICLES_IDS);