function imperfection = getImperfection(typeID)
%getImperfection
%   imperfection = getImperfection(TYPEID) Returns the driver's imperfection
%   (dawdling) [0,1] of vehicles of this type.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getImperfection.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
imperfection = traci.vehicletype.getUniversal(constants.VAR_IMPERFECTION, typeID);