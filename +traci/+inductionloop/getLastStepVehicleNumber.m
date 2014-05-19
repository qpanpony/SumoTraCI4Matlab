function lastStepVehicleNumber = getLastStepVehicleNumber(loopID)
%getLastStepVehicleNumber Get number of vehicles in the loop.
%   lastStepVehicleNumber = getLastStepVehicleNumber(LOOPID) Returns the 
%   number of vehicles that were on the named induction loop within the last simulation step.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getLastStepVehicleNumber.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
lastStepVehicleNumber = traci.inductionloop.getUniversal(...
    constants.LAST_STEP_VEHICLE_NUMBER, loopID);