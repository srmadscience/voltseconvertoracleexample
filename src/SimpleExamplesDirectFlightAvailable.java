package org.foo;
import org.voltdb.*;
public class SimpleExamplesDirectFlightAvailable extends VoltProcedure {

public int run (String pfromcity
,String ptocity
) throws VoltAbortException {

// output variables
int pdirect;

//     PROCEDURE direct_flight_available (
//         p_fromcity   IN airports.airport_code%type,
//         p_tocity     IN airports.airport_code%type,
//         p_direct     OUT BOOLEAN
//     ) IS
// --
//         CURSOR checkflight IS
//             SELECT
//                 NULL
//             FROM
//                 dual
//             WHERE
//                 EXISTS (
//                     SELECT
//                         flight_number
//                     FROM
//                         flights
//                     WHERE
//                         departure_city = p_fromcity
//                     AND
//                         arrival_city = p_tocity
//                 );
// --
// 
//         l_dummy   VARCHAR2(1) := NULL;
// --
//     BEGIN
// --
//         OPEN checkflight;
// --
//         FETCH checkflight INTO l_dummy;
// --
//         IF checkflight%found THEN
// --
//             p_direct := true;
// --
//         ELSE
// --
//             p_direct := false;
// --
//         END IF;
// --
//         CLOSE checkflight;
// --
//     END;
// --
// 

// package results to send back to client

return pdirect;

}
}
