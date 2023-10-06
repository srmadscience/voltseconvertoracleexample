package org.foo;
import org.voltdb.*;
public class SimpleExamplesAddBookingsObjectArray extends VoltProcedure {

public final SQLStmt sqlgxkrdagaxn7up = new SQLStmt("DELETE BOOKINGS WHERE CUSTOMER_NAME = ? AND AIRLINE_NAME = ? AND FLIGHT_NUMBER = ? AND DEPARTURE_TIME = ? AND SEAT = ? ;");

public final SQLStmt sqlg0kadzhfa2jmk = new SQLStmt("INSERT INTO BOOKINGS (CUSTOMER_NAME, AIRLINE_NAME , FLIGHT_NUMBER, DEPARTURE_TIME, SEAT) VALUES (? , ? , ? , ? , ? );");

public final SQLStmt sql4fb5bx9zwu65f = new SQLStmt("INSERT INTO CUSTOMERS (NAME,ADDRESS,CITY,ZIP,BIRTHDATE,PHONE) VALUES (? ,? ,? ,? ,? ,? );");

public final SQLStmt sql37qjm6gytq8d2 = new SQLStmt("SELECT F.* FROM FLIGHTS F WHERE ROWNUM < 10 ORDER BY F.AIRCRAFT_TYPE;");

public VoltTable[] run (VoltTable pcustomer
,VoltTable pbookingtable
,double pbookingdeletecount
) throws VoltAbortException {

// output variables
VoltTable pbookingtable;
double pbookingdeletecount;
VoltTable pflightscursor;
String pstatusmessage;

//     PROCEDURE add_bookings_object_array (
//         p_customer         IN customers%rowtype,
//         p_booking_table IN OUT bookings_table,
//         p_booking_delete_count IN OUT NUMBER,
//         p_flights_cursor   OUT flights_refcursor_type,
//         p_status_message   OUT NOCOPY VARCHAR2
//     )
//         IS
// --
//     BEGIN
// --
//         OPEN p_flights_cursor FOR
//             SELECT
//                 f.*
//             FROM
//                 flights f
//             WHERE
//                 ROWNUM < 10
//             ORDER BY f.aircraft_type;
//     --
// 
//         p_booking_delete_count := 0;
//         p_status_message := 'New Flights for '
//          ||  p_customer.name
//          ||  ': ';
// -- First create the customer. Ignore error if aleady exists...
//         BEGIN
// --
//             INSERT INTO customers (
//                 name,
//                 address,
//                 city,
//                 zip,
//                 birthdate,
//                 phone
//             ) VALUES (
//                 p_customer.name,
//                 p_customer.address,
//                 p_customer.city,
//                 p_customer.zip,
//                 p_customer.birthdate,
//                 p_customer.phone
//             );
// --
// 
//         EXCEPTION
//             WHEN dup_val_on_index THEN
//                 NULL;
// --
//         END;
// --
// 
//         FOR i IN p_booking_table.first..p_booking_table.last LOOP
// --
//             DELETE bookings WHERE customer_name = p_booking_table(i).customer_name
//             AND airline_name = p_booking_table(i).airline_name
//             AND flight_number = p_booking_table(i).flight_number
//             AND departure_time = p_booking_table(i).departure_time
//             AND seat = p_booking_table(i).seat;
//     --
//             p_booking_delete_count := nvl(p_booking_delete_count,0) + sql%rowcount;
// --
// -- Attempt to create this booking...
// --
//             INSERT INTO bookings (
//                 customer_name,
//                 airline_name,
//                 flight_number,
//                 departure_time,
//                 seat
//             ) VALUES (
//                 p_booking_table(i).customer_name,
//                 p_booking_table(i).airline_name,
//                 p_booking_table(i).flight_number,
//                 p_booking_table(i).departure_time,
//                 p_booking_table(i).seat
//             );
// --
// 
//             p_status_message := p_status_message
//              ||  'Added '
//              ||  p_booking_table(
//                 i
//             ).airline_name
//              ||  ' '
//              ||  p_booking_table(
//                 i
//             ).flight_number
//              ||  ' '
//              ||  p_booking_table(
//                 i
//             ).departure_time
//              ||  ';';
// --
// 
//         END LOOP;
// --
// 
//         COMMIT;
// --
// --EXCEPTION
// --
// ---WHEN others THEN
// --
//  -- p_status_message := p_status_message || sqlerrm;
// --
//   --ROLLBACK;
// --
//     END;
// --
// 
// END;
// package results to send back to client

VoltTable[] results = new VoltTable[4];
results[0] = pbookingtable;

VoltTable t1 = new VoltTable(
  new VoltTable.ColumnInfo("P_BOOKING_DELETE_COUNT" , VoltType.DECIMAL));
t1.addRow(pbookingdeletecount);
results[1] = t1;


results[2] = pflightscursor;

VoltTable t3 = new VoltTable(
  new VoltTable.ColumnInfo("P_STATUS_MESSAGE" , VoltType.VARCHAR));
t3.addRow(pstatusmessage);
results[3] = t3;



return results;

}
}
