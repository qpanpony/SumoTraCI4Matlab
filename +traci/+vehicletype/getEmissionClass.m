function emissionClass = getEmissionClass(typeID)
%getEmissionClass
%   emissionClass = getEmissionClass(TYPEID) Returns the emission class of 
%   vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getEmissionClass.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
emissionClass = traci.vehicletype.getUniversal(constants.VAR_EMISSIONCLASS, typeID);