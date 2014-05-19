function traveltime = getTraveltime(edgeID)
%getTraveltime Get estimated travel time in the edge.
%   traveltime = getTraveltime(EDGEID) Returns the estimated travel time in
%   seconds for the last time step on the given edge.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getTraveltime.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
traveltime = traci.edge.getUniversal(constants.VAR_CURRENT_TRAVELTIME, edgeID);