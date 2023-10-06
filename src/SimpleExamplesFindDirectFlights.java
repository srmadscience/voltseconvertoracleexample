package org.foo;
import org.voltdb.*;
public class SimpleExamplesFindDirectFlights extends VoltProcedure {

public VoltTable run (String pfromcity
,String ptocity
,TimestampType pstartdate
,TimestampType penddate
,double porderby
) throws VoltAbortException {

// output variables
VoltTable pflightlist;

//     PROCEDURE find_direct_flights (
//         p_fromcity     IN airports.airport_code%type,
//         p_tocity       IN airports.airport_code%type,
//         p_startdate    IN DATE,
//         p_enddate      IN DATE,
//         p_orderby      IN NUMBER,
//         p_flightlist   OUT flights_refcursor_type
//     ) IS
// --
//         l_startdate   DATE := p_startdate;
//         l_enddate     DATE := p_enddate;
// --
//     BEGIN
// --
//         IF
//             p_startdate IS NULL
//         THEN
// --
//             l_startdate := TO_DATE(
//                 '01-01-1900',
//             'DD-MM-YYYY');
// --
//         END IF;
// --
//         IF
//             p_enddate IS NULL
//         THEN
// --
//             l_enddate := TO_DATE(
//                 '01-01-2100',
//             'DD-MM-YYYY');
// --
//         END IF;
// --
//         IF p_orderby = 1 THEN
// --
// -- Order by airline...
// --
//             OPEN p_flightlist FOR
//                 SELECT
//                     f.*
//                 FROM
//                     flights f
//                 WHERE
//                     f.departure_city = p_fromcity
//                 AND
//                     f.arrival_city = p_tocity
//                 AND
//                     f.departure_time BETWEEN l_startdate AND l_enddate
//                 ORDER BY f.airline_name;
// --
// 
//         ELSIF p_orderby = 2 THEN
// --
// -- Order by departure time...
// --
//             OPEN p_flightlist FOR
//                 SELECT
//                     f.*
//                 FROM
//                     flights f
//                 WHERE
//                     f.departure_city = p_fromcity
//                 AND
//                     f.arrival_city = p_tocity
//                 AND
//                     f.departure_time BETWEEN l_startdate AND l_enddate
//                 ORDER BY f.departure_time;
// --
// 
//         ELSE
// --
// -- Order by aircraft type...
// --
//             OPEN p_flightlist FOR
//                 SELECT
//                     f.*
//                 FROM
//                     flights f
//                 WHERE
//                     f.departure_city = p_fromcity
//                 AND
//                     f.arrival_city = p_tocity
//                 AND
//                     f.departure_time BETWEEN l_startdate AND l_enddate
//                 ORDER BY f.aircraft_type;
// --
// 
//         END IF;
// --
// 
//     END;
// --
// 

// package results to send back to client

return pflightlist;

}
}
