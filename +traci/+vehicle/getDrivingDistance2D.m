function drivingDistance2D = getDrivingDistance2D(vehID, x, y)
%getDrivingDistance2D Returns the driving distance to an absolute coordinate.
%   drivingDistance2D = getDrivingDistance2D(VEHID,X,Y) Returns 
%   the driving distance from the current position to that defined by the 
%   coordinates X and Y.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: getDrivingDistance2D.m 2 2013-12-21 21:39:57Z aacosta $

import traci.constants
global message
traci.beginMessage(constants.CMD_GET_VEHICLE_VARIABLE, constants.DISTANCE_REQUEST,...
    vehID, 1+4+1+8+8+1);
message.string = [message.string uint8(sscanf(constants.TYPE_COMPOUND,'%x')) fliplr(typecast(int32(2),'uint8')) ...
    uint8(sscanf(constants.POSITION_2D,'%x')) fliplr(typecast([y x],'uint8')) uint8(sscanf(constants.REQUEST_DRIVINGDIST,'%x'))];
result = traci.checkResult(constants.CMD_GET_VEHICLE_VARIABLE, constants.DISTANCE_REQUEST, vehID);
drivingDistance2D = result.readDouble();