package org.foo;
import org.voltdb.*;
public class ComplexExampleFliesBetweenAll extends VoltProcedure {

public VoltTable run (VoltTable pfirstcitypair
,VoltTable psecondcitypair
,VoltTable pthirdcityfrom
,VoltTable pthirdcityto
) throws VoltAbortException {

// output variables
VoltTable pairlinelist;

// PROCEDURE flies_between_all (p_first_city_pair  in  city_pair_oracle_type
//                             ,p_second_city_pair in  city_pair_plsql_record
//                             ,p_third_city_from  in  airports%ROWTYPE
//                             ,p_third_city_to    in  airports%ROWTYPE
//                             ,p_airline_list     out simple_examples.airline_refcursor_type) IS
// --
// BEGIN
// --
//   OPEN p_airline_list
//   FOR SELECT a.*
//   FROM airlines a
//   WHERE EXISTS
//         (SELECT null
//          FROM   flights f1
//          WHERE  f1.departure_city = p_first_city_pair.from_city
//          AND    f1.arrival_city   = p_first_city_pair.to_city
//          AND    f1.airline_name   = a.airline_name)
//   AND  EXISTS
//         (SELECT null
//          FROM   flights f2
//          WHERE  f2.departure_city = p_second_city_pair.from_city
//          AND    f2.arrival_city   = p_second_city_pair.to_city
//          AND    f2.airline_name   = a.airline_name)
//   AND  EXISTS
//         (SELECT null
//          FROM   flights f3
//          WHERE  f3.departure_city = p_third_city_from.airport_code
//          AND    f3.arrival_city   = p_third_city_to.airport_code
//          AND    f3.airline_name   = a.airline_name)
//   ORDER BY a.airline_name;
// --
// END;
// --

// package results to send back to client

return pairlinelist;

}
}
