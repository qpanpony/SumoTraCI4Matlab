function arrivedNumber = getArrivedNumber()
%getArrivedNumber Get the number of arrived vehicles.
%   arrivedNumber = getArrivedNumber() Returns the number of vehicles which
%   arrived (have reached their destination and are removed from the road 
%   network) in this time step. 

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getArrivedNumber.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
arrivedNumber = traci.simulation.getUniversal(constants.VAR_ARRIVED_VEHICLES_NUMBER);