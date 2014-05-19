function COEmission = getCOEmission(edgeID)
%getCOEmission Returns the CO emission on the given edge.
%   COEmission = getCOEmission(EDGEID) Returns the CO emission in mg for 
%   the last time step on the given edge.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getCOEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
COEmission = traci.edge.getUniversal(constants.VAR_COEMISSION, edgeID);