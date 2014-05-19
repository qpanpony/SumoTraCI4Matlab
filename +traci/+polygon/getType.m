function type = getType(polygonID)
%getType
%   type = getType(POLYGONID) Returns the (abstract) type of the polygon.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getType.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
type = traci.polygon.getUniversal(constants.VAR_TYPE, polygonID);