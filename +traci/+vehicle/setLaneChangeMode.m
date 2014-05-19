function setLaneChangeMode(vehID, LaneChangeMode)
%setLaneChangeMode
%   setLaneChangeMode(VEHID,LaneChangeMode) Sets an integer encoding the mode of the 
%   vehicle's Lane changing.
%   The following table shows the defined vehicle Lane change mode.
%
%   bit1, bit0: strategic (change lanes to continue the route)
%   	00 = do no strategic changes;
%   	01 = do strategic changes if not in conflict with a TraCI request;
%   	10 = do strategic changes even if overriding TraCI request;
%   bit3, bit2: Cooperative (change in order to allow others to change)
%		00 = do no cooperative changes;
%		01 = do cooperative changes if not in conflict with a TraCI request;
%		10 = do cooperative changes even if  overriding TraCI request;
%	bit5, bit4: speed gain (the other lane allows for faster driving)
%		00 = do no speed gain changes;
%		01 = do speed gain changes if not in conflict with a TraCI request;
%		10 = do speed gain changes even if overriding TraCI request;
%	bit7, bit6: Obligation to drive on the right
%		00 = do not right drive changes;
%		01 = do right drive changes if not in conflict with a TraCI request;
%		10 = do right drive changes even if overriding TraCI request;
% 	bit9, bit8: External request (TraCI)
%		00 = do not respect other drivers when following TraCI requests, adapt speed to fulfill request;
%		01 = avoid immediate collisions when following a TraCI request, adapt speed to fulfill request;
%		10 = respect the speed /brake gaps of others when changing lanes, adapt speed to fulfill request;
%		11 = respect the speed /brake gaps of others when changing lanes, no speed adaption;

%   Authors: Qiang Pan.
%   $Id: setLaneChangeMode.m 2 2014-05-06 21:39:57Z aacosta $

import traci.constants
traci.sendIntCmd(constants.CMD_SET_VEHICLE_VARIABLE, constants.VAR_LANECHANGEMODE, vehID, LaneChangeMode);