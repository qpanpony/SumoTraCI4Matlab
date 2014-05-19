function IDCount = getIDCount()
%IDCount = getIDCount() Get the number of aeral detectors in the SUMO network.  

%   Copyright 2014 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getIDCount.m 14 2014-03-13 21:47:13Z afacostag $

import traci.constants
IDCount = traci.areal.getUniversal(constants.ID_COUNT, '');