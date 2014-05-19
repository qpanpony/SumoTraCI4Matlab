function lastStepOccupancy = getLastStepOccupancy(loopID)
%getLastStepOccupancy Get the percentage of time the loop was occupied.
%   lastStepOccupancy = getLastStepOccupancy(LOOPID) Returns the percentage
%   of time the detector was occupied by a vehicle.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLastStepOccupancy.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lastStepOccupancy = traci.inductionloop.getUniversal(constants.LAST_STEP_OCCUPANCY, loopID);

% modified by Qiang Pan
if (lastStepOccupancy == -1)
    lastStepOccupancy = 0;
end