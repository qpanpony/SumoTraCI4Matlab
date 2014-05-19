function JamLengthMeters = getJamLengthMeters(detID)
%getJamLengthMeters Return the jam length in vehicles.
%   JamLengthVehicle = getJamLengthVehicle(DETID) Returns the
%	jam length in meters within the last simulation step on
%	the given areal detector.

%   Copyright 2014 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getJamLengthMeters.m 14 2014-03-13 21:47:13Z afacostag $

import traci.constants
JamLengthMeters = traci.areal.getUniversal(constants.JAM_LENGTH_METERS, detID);