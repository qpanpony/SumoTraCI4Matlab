function result = sendReadOneStringCmd(cmdID, varID, objID)
%sendReadOneStringCmd An internal function to build an outgoing message to
%the SUMO server and parse the response.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: sendReadOneStringCmd.m 2 2013-12-21 21:39:57Z aacosta $

traci.beginMessage(cmdID, varID, objID);
result = traci.checkResult(cmdID, varID, objID);