function [traciversion, sumoversion] = getVersion()
%getVersion Get the TraCI and SUMO versions.
%   [TRACIVERSION SUMOVERSION] = getVersion() Returns the current TraCI and
%   SUMO versions.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getVersion.m 2 2013-12-21 21:39:57Z aacosta $

global message
import traci.constants
message = traci.Message();
% Get the command ID from the traci Constants.
strcommand = constants.CMD_GETVERSION;
command = uint8(sscanf(strcommand,'%x'));

% Prepare the outgoing message
message.queue = [message.queue command]; 
message.string = [message.string uint8(1+1) command];

% Send the outgoing message and receive the result
result = traci.sendExact();

result.readLength();
response = result.read(1);
if response~=command
    throw(MException('traci:FatalTraciError','Received answer 0x%.2X for command 0x%.2X.\n',...
            response, command));
else
    traciversion = result.readInt();
    sumoversion = result.readString();
end
