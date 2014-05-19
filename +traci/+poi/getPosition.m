function position = getPosition(poiID)
%getPosition Get the position of the poi.
%   position = getPosition(POIID) Returns the position coordinates of 
%   the given poi. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getPosition.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
position = traci.poi.getUniversal(constants.VAR_POSITION, poiID);