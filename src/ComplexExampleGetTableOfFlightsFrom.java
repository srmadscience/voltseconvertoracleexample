package org.foo;
import org.voltdb.*;
public class ComplexExampleGetTableOfFlightsFrom extends VoltProcedure {

public VoltTable run (String pcity
) throws VoltAbortException {

// output variables
VoltTable pflightsfrom;

// PROCEDURE get_table_of_flights_from (p_city         in     flights.departure_city%TYPE
//                                     ,p_flights_from    out flights_table) IS
// --
// CURSOR departs_from IS
// SELECT *
// FROM flights
// WHERE p_city = departure_city;
// --
// l_flight flights_type := null;
// --
// BEGIN
// --
//   p_flights_from := flights_table();
// --
//   FOR departs_from_rec IN departs_from LOOP
// --
//     p_flights_from.extend;
//     p_flights_from(p_flights_from.COUNT) := l_flight;
// --
//     l_flight := flights_type(departs_from_rec.departure_city
//                             ,departs_from_rec.arrival_city
//                             ,departs_from_rec.airline_name
//                             ,departs_from_rec.flight_number
//                             ,departs_from_rec.departure_time
//                             ,departs_from_rec.arrival_time
//                             ,departs_from_rec.aircraft_type);
// --
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
