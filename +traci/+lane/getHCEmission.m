function HCEmission = getHCEmission(laneID)
%getHCEmission Returns the HC emission on the given lane.
%   HCEmission = getCOEmission(LANEID) Returns the HC emission in mg for 
%   the last time step on the given lane.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getHCEmission.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
HCEmission = traci.lane.getUniversal(constants.VAR_HCEMISSION, laneID);