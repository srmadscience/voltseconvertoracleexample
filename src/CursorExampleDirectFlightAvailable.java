package org.foo;
import org.voltdb.*;
public class CursorExampleDirectFlightAvailable extends VoltProcedure {

public int run (String pfromcity
,String ptocity
) throws VoltAbortException {

// output variables
int out;

// FUNCTION  direct_flight_available(p_fromcity in airports.airport_code%TYPE
//                                  ,p_tocity   in airports.airport_code%TYPE) RETURN boolean IS
// --
//   CURSOR checkFlight IS
//   SELECT null
//   FROM   dual
//   WHERE exists (SELECT flight_number
//                 FROM   flights
//                 WHERE  departure_city = p_fromcity
//                 AND    arrival_city = p_tocity);
// --
//   l_dummy VARCHAR2(1) := NULL;
//   l_return BOOLEAN := FALSE;
// --
// BEGIN
// --
//   OPEN checkFlight;
// --
//   FETCH checkFlight INTO l_dummy;
// --
//   IF checkFlight%FOUND THEN
// --
//     l_return := TRUE;
// --
//   ELSE
// --
//     l_return := FALSE;
// --
//   END IF;
// --
//   CLOSE checkFlight;
// --
//   RETURN(l_return);
// --
// END;
// --

// package results to send back to client

return out;

}
}
