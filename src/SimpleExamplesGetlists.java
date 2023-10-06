package org.foo;
import org.voltdb.*;
public class SimpleExamplesGetlists extends VoltProcedure {

public final SQLStmt sqlgq1kuhhfh5n87 = new SQLStmt("SELECT A.* FROM AIRCRAFT A ORDER BY AIRCRAFT_TYPE;");

public final SQLStmt sql73c6m5p06ahp5 = new SQLStmt("SELECT A.* FROM AIRLINES A ORDER BY AIRLINE_NAME;");

public final SQLStmt sqlbu661j8c3xtx4 = new SQLStmt("SELECT A.* FROM AIRPORTS A ORDER BY AIRPORT_CODE;");

public VoltTable[] run () throws VoltAbortException {

// output variables
VoltTable pairlinelisting;
VoltTable pairportlisting;
VoltTable paircraftlisting;

//     PROCEDURE getlists (
//         p_airline_listing    OUT airline_refcursor_type,
//         p_airport_listing    OUT airport_refcursor_type,
//         p_aircraft_listing   OUT aircraft_refcursor_type
//     )
//         IS
// --
//     BEGIN
// --
//         OPEN p_airline_listing FOR
//             SELECT
//                 a.*
//             FROM
//                 airlines a
//             ORDER BY airline_name;
// --
// 
//         OPEN p_airport_listing FOR
//             SELECT
//                 a.*
//             FROM
//                 airports a
//             ORDER BY airport_code;
// --
// 
//         OPEN p_aircraft_listing FOR
//             SELECT
//                 a.*
//             FROM
//                 aircraft a
//             ORDER BY aircraft_type;
// --
// 
//     END;
// --
// 

// package results to send back to client

VoltTable[] results = new VoltTable[3];
results[0] = pairlinelisting;

results[1] = pairportlisting;

results[2] = paircraftlisting;


return results;

}
}
