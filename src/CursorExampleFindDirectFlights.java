package org.foo;
import org.voltdb.*;
public class CursorExampleFindDirectFlights extends VoltProcedure {

public VoltTable run (String pfromcity
,String ptocity
,double porderby
) throws VoltAbortException {

// output variables
VoltTable pflightlist;

// PROCEDURE find_direct_flights    (p_fromcity   in  airports.airport_code%TYPE
//                                  ,p_tocity     in  airports.airport_code%TYPE
//                                  ,p_orderby    in  number
//                                  ,p_flightlist out flights_refcursor_type) IS
// --
// BEGIN
// --
//   IF p_orderby = 1 THEN
// --
// -- Order by airline...
// --
//     OPEN p_flightlist
//     FOR
//     SELECT f.*
//     FROM flights f
//     WHERE f.departure_city = p_fromcity
//     AND   f.arrival_city   = p_tocity
//     ORDER by f.airline_name;
// --
//   ELSIF p_orderby = 2 THEN
// --
// -- Order by departure time...
// --
//     OPEN p_flightlist
//     FOR
//     SELECT f.*
//     FROM flights f
//     WHERE f.departure_city = p_fromcity
//     AND   f.arrival_city   = p_tocity
//     ORDER by f.departure_time;
// --
//   ELSE
// --
// -- Order by aircraft type...
// --
//     OPEN p_flightlist
//     FOR
//     SELECT f.*
//     FROM flights f
//     WHERE f.departure_city = p_fromcity
//     AND   f.arrival_city   = p_tocity
//     ORDER by f.aircraft_type;
// --
//   END IF;
// --
// END;
// --
// END;
// package results to send back to client

return pflightlist;

}
}
