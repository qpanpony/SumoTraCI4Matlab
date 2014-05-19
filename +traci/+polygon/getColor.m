function color = getColor(polygonID)
%getColor Get the color of the polygon.
%   color = getColor(POLYGONID) Returns the rgba color of the given polygon.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getColor.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
color = traci.polygon.getUniversal(constants.VAR_COLOR, polygonID);