function typeID = getTypeID(vehID)
%getTypeID
%   typeID = getTypeID(VEHID) Returns the id of the type of the named 
%   vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getTypeID.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
typeID = traci.vehicle.getUniversal(constants.VAR_TYPE, vehID);