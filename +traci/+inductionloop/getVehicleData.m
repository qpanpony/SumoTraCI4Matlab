function vehicleData = getVehicleData(loopID)
%getVehicleData Get several data about passed vehicles.
%   vehicleData = getVehicleData(LOOPID) Returns a cell structure 
%   containing several information about vehicles which passed the detector.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getVehicleData.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
vehicleData = traci.inductionloop.getUniversal(constants.LAST_STEP_VEHICLE_DATA, loopID);