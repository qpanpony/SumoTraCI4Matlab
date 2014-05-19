function edgeID = getEdgeID(laneID)
%getEdgeID
%   edgeID = getEdgeID(LANEID) Returns the id of the edge the lane belongs 
%   to.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getEdgeID.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
edgeID = traci.lane.getUniversal(constants.LANE_EDGE_ID, laneID);