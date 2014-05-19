function timeSinceDetection = getTimeSinceDetection(loopID)
%getTimeSinceDetection Get the time since the last detection.
%   timeSinceDetection = getTimeSinceDetection(LOOPID) Returns the time in 
%   seconds since last detection.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getTimeSinceDetection.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
timeSinceDetection = traci.inductionloop.getUniversal(constants.LAST_STEP_TIME_SINCE_DETECTION, loopID);