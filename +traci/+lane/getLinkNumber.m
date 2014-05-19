function linkNumber = getLinkNumber(laneID)
%getLinkNumber
%   linkNumber = getLinkNumber(LANEID) Returns the number of connections to
%   successive lanes.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLinkNumber.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
linkNumber = traci.lane.getUniversal(constants.LANE_LINK_NUMBER, laneID);