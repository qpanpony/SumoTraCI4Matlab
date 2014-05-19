function lastStepMeanLength = getLastStepMeanLength(loopID)
%getLastStepMeanLength Get the mean length of the vehicles in the lane.
%   lastStepMeanLength = getLastStepMeanLength(LOOPID) Returns the mean 
%   length in m of vehicles which were on the detector in the last step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLastStepMeanLength.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lastStepMeanLength = traci.inductionloop.getUniversal(constants.LAST_STEP_LENGTH, loopID);