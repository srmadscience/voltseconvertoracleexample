DECLARE
  P_CUSTOMER customers%ROWTYPE;
  P_BOOKING_TABLE ORINDADEMO.BOOKINGS_TABLE;
   p_flights_cursor ORINDADEMO.SIMPLE_EXAMPLES.flights_refcursor_type;
  P_BOOKING_DELETE_COUNT NUMBER;
  P_STATUS_MESSAGE VARCHAR2(200);
BEGIN
 
 
  P_BOOKING_TABLE := BOOKINGS_TABLE( bookings_type('A','B',1,sysdate,'a'));
 
  p_customer.name:= 'John Smith' ;
  p_customer.address  := '123 Any Road' ;
  p_customer.city := 'Springfield' ;
  p_customer.zip := '94597' ;
  p_customer.birthdate := SYSDATE ;
 
  
 -- p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone
  -- Modify the code to initialize the variable
  -- P_BOOKING_TABLE := NULL;
  P_BOOKING_DELETE_COUNT := 2;

  SIMPLE_EXAMPLES.ADD_BOOKINGS_OBJECT_ARRAY(
    P_CUSTOMER => P_CUSTOMER,
    P_BOOKING_TABLE => P_BOOKING_TABLE,
    P_BOOKING_DELETE_COUNT => P_BOOKING_DELETE_COUNT,
    p_flights_cursor => p_flights_cursor,
    P_STATUS_MESSAGE => P_STATUS_MESSAGE
  );

END;


DECLARE
  P_AIRLINE_LISTING ORINDADEMO.SIMPLE_EXAMPLES.airline_refcursor_type;
  P_AIRPORT_LISTING ORINDADEMO.SIMPLE_EXAMPLES.airport_refcursor_type;
  P_AIRCRAFT_LISTING ORINDADEMO.SIMPLE_EXAMPLES.aircraft_refcursor_type;
BEGIN

  SIMPLE_EXAMPLES.GETLISTS(
    P_AIRLINE_LISTING => P_AIRLINE_LISTING,
    P_AIRPORT_LISTING => P_AIRPORT_LISTING,
    P_AIRCRAFT_LISTING => P_AIRCRAFT_LISTING
  );

END;

