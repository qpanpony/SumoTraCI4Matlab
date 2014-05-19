function lastStepMeanSpeed = getLastStepMeanSpeed(edgeID)
%getLastStepMeanSpeed Get the average speed on the edge.
%   lastStepMeanSpeed = getLastStepMeanSpeed(EDGEID) Returns the average 
%   speed in m/s for the last time step on the given edge.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLastStepMeanSpeed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lastStepMeanSpeed = traci.edge.getUniversal(constants.LAST_STEP_MEAN_SPEED, edgeID);