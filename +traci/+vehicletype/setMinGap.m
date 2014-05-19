function setMinGap(typeID, minGap)
%setMinGap
%   setMinGap(TYPEID,MINGAP) Sets the offset (gap to front vehicle if 
%   halting) of vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: setMinGap.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
traci.sendDoubleCmd(constants.CMD_SET_VEHICLETYPE_VARIABLE, constants.VAR_MINGAP, typeID, minGap);