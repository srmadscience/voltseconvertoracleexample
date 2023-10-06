package org.foo;
import org.voltdb.*;
public class PackageArrayExampleGetPlsqlArrayOfFlights extends VoltProcedure {

public VoltTable run (String pcity
) throws VoltAbortException {

// output variables
VoltTable pflightsfrom;

// PROCEDURE get_plsql_array_of_flights(p_city         in            flights.departure_city%TYPE
//                                     ,p_flights_from    out nocopy flights_plsql_array) IS
// --
// CURSOR departs_from IS
// SELECT *
// FROM flights
// WHERE p_city = departure_city;
// --
// l_flight flights%ROWTYPE := null;
// --
// BEGIN
// --
//   p_flights_from := flights_plsql_array();
// --
//   FOR departs_from_rec IN departs_from LOOP
// --
//     p_flights_from.extend;
//     l_flight := departs_from_rec;
//     p_flights_from(p_flights_from.COUNT) := l_flight;
// --
//   END LOOP;
// --
// END;
// --

// package results to send back to client

return pflightsfrom;

}
}
