function IDCount = getIDCount()
%IDCount = getIDCount() Get the number of edges in the SUMO network.  

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getIDCount.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
IDCount = traci.edge.getUniversal(constants.ID_COUNT, '');