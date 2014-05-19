function traveltime = getTraveltime(laneID)
%getTraveltime Get estimated travel time in the lane.
%   traveltime = getTraveltime(LANEID) Returns the estimated travel time in
%   seconds for the last time step on the given lane.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getTraveltime.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
traveltime = traci.lane.getUniversal(constants.VAR_CURRENT_TRAVELTIME, laneID);