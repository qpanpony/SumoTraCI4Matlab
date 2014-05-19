function lastStepMeanSpeed = getLastStepMeanSpeed(detID)
%getLastStepMeanSpeed Get the average speed.
%   lastStepMeanSpeed = getLastStepMeanSpeed(DETID) Returns the average 
%   speed in m/s for the last time step on the given multi-entry/multi-exit
%   detector.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLastStepMeanSpeed.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lastStepMeanSpeed = traci.multientryexit.getUniversal(constants.LAST_STEP_MEAN_SPEED, detID);