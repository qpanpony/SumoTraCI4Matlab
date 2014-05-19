function deltaT = getDeltaT()
%getDeltaT
%   deltaT = getDeltaT() Returns the time-step of the simulation in ms. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getDeltaT.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
deltaT = traci.simulation.getUniversal(constants.VAR_DELTA_T);