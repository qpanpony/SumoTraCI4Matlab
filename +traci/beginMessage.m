function beginMessage(cmdID, varID, objID, len)
%beginMessage Internal function to build the TraCI message.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: beginMessage.m 2 2013-12-21 21:39:57Z aacosta $

global message
if nargin < 4
	len = 0;
end

% Put the command in the queue
message.queue = [message.queue uint8(sscanf(cmdID,'%x'))];

% Compute the command length
len = len+1+1+1+4+length(objID);

% Build the message string depending on the length of the message
if len <= 255
	message.string = [message.string uint8([len sscanf(cmdID,'%x') sscanf(varID,'%x')])...
		fliplr(typecast(int32(length(objID)),'uint8')) uint8(objID)];
else
	message.string = [message.string uint8(0) fliplr(typecast(int32(len+4),'uint8')) ...
		uint8([sscanf(cmdID,'%x') sscanf(varID,'%x')])...
		fliplr(typecast(int32(length(objID)),'uint8')) uint8(objID)];
end

