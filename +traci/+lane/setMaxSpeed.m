function setMaxSpeed(laneID, speed)
%setMaxSpeed
%   setMaxSpeed(LANEID,SPEED) Sets a new maximum allowed speed on the lane
%   in m/s.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setMaxSpeed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_LANE_VARIABLE, constants.VAR_MAXSPEED, laneID, speed)