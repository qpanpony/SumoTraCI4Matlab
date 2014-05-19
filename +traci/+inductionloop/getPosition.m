function position = getPosition(loopID)
%getPosition Get the position of the loop.
%   position = getPosition(LOOPID) Returns the position measured from the 
%   beginning of the lane in meters.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getPosition.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
position = traci.inductionloop.getUniversal(constants.VAR_POSITION, loopID);