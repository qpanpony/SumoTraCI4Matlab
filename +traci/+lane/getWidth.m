function width = getWidth(laneID)
%getWidth
%   width = getWidth(LANEID) Returns the width of the lane in m.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getWidth.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
width = traci.lane.getUniversal(constants.VAR_WIDTH, laneID);