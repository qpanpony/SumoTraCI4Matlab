function phase = getPhase(tlsID)
%getPhase Get the phase index.
%   phase = getPhase(TLSID) Returns the current phase index of
%   given trafficlights. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getPhase.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
phase = traci.trafficlights.getUniversal(constants.TL_CURRENT_PHASE, tlsID);