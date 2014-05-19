function type = getType(poiID)
%getType
%   type = getType(POIID) Returns the (abstract) type of the poi.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getType.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
type = traci.poi.getUniversal(constants.VAR_TYPE, poiID);