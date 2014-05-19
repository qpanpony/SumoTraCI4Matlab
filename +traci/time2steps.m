function timeInMiliseconds = time2steps(time)
%timeInMiliseconds An internal function to convert time in seconds to
%miliseconds.

%   Copyright 2013 Universidad Nacional de Colombia,
%   Politecnico Jaime Isaza Cadavid.
%   Authors: Andres Acosta, Jairo Espinosa, Jorge Espinosa.
%   $Id: time2steps.m 2 2013-12-21 21:39:57Z aacosta $

timeInMiliseconds = int32(time*1000);