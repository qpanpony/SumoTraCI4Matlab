function length = getLength(laneID)
%getLength
%   length = getLength(LANEID) Returns the length of the lane in m.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLength.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
length = traci.lane.getUniversal(constants.VAR_LENGTH, laneID);