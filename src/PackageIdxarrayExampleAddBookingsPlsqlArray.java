package org.foo;
import org.voltdb.*;
public class PackageIdxarrayExampleAddBookingsPlsqlArray extends VoltProcedure {

public final SQLStmt sqlgxkrdagaxn7up = new SQLStmt("DELETE BOOKINGS WHERE CUSTOMER_NAME = ? AND AIRLINE_NAME = ? AND FLIGHT_NUMBER = ? AND DEPARTURE_TIME = ? AND SEAT = ? ;");

public final SQLStmt sqlg0kadzhfa2jmk = new SQLStmt("INSERT INTO BOOKINGS (CUSTOMER_NAME, AIRLINE_NAME , FLIGHT_NUMBER, DEPARTURE_TIME, SEAT) VALUES (? , ? , ? , ? , ? );");

public final SQLStmt sql4fb5bx9zwu65f = new SQLStmt("INSERT INTO CUSTOMERS (NAME,ADDRESS,CITY,ZIP,BIRTHDATE,PHONE) VALUES (? ,? ,? ,? ,? ,? );");

public String run (VoltTable pcustomer
,VoltTable pbookingtable
) throws VoltAbortException {

// output variables
String pstatusmessage;

// PROCEDURE add_bookings_plsql_array (p_customer       in             customers%ROWTYPE
//                                    ,p_booking_table  in             bookings_plsql_array
//                                    ,p_status_message    out nocopy varchar2) IS
// --
// BEGIN
// --
//   p_status_message := '';
// --
// -- First create the customer. Ignore error if aleady exists...
// --
//   BEGIN
// --
//     INSERT INTO customers
//     (name,address,city,zip,birthdate,phone)
//     VALUES
//     (p_customer.name,p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone);
// --
//   EXCEPTION WHEN dup_val_on_index THEN null;
// --
//   END;
// --
// -- Attempt to create all the bookings referrer to in bookings_table.
// -- If we get an exception set the status message.
// --
//   FOR i IN p_booking_table.FIRST .. p_booking_table.LAST LOOP
// --
// -- Delete booking if it already exists - this is so this demo is repeatable. Hopefully
// -- this doesn't happen in real booking systems.
// --
//     DELETE bookings
//     WHERE customer_name  = p_booking_table(i).customer_name
//     AND   airline_name   = p_booking_table(i).airline_name
//     AND   flight_number  = p_booking_table(i).flight_number
//     AND   departure_time = p_booking_table(i).departure_time
//     AND   seat           = p_booking_table(i).seat;
// --
// -- Attempt to create this booking...
// --
//     INSERT INTO bookings
//     (customer_name, airline_name
//     , flight_number, departure_time, seat)
//     VALUES
//     (p_booking_table(i).customer_name, p_booking_table(i).airline_name
//     , p_booking_table(i).flight_number, p_booking_table(i).departure_time, p_booking_table(i).seat);
// --
//     p_status_message := p_status_message || 'Added '|| p_booking_table(i).airline_name
//       || ' ' || p_booking_table(i).flight_number || ' ' || p_booking_table(i).departure_time  || ';';
// --
//   END LOOP;
// --
//   COMMIT;
// --
// EXCEPTION
// --
// WHEN others THEN
// --
//   p_status_message := p_status_message || sqlerrm;
// --
//   ROLLBACK;
// --
// END;
// --
// END PACKAGE_IDXARRAY_EXAMPLE;
// package results to send back to client

return pstatusmessage;

}
}
