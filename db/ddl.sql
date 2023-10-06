--------------------------------------------------------
--  File created - Saturday-March-25-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for View FRED
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "ORINDADEMO"."FRED" ("AIRCRAFT_TYPE") AS 
  select "AIRCRAFT_TYPE" from aircraft
;
--------------------------------------------------------
--  DDL for Type BOOKINGS_TABLE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORINDADEMO"."BOOKINGS_TABLE" AS TABLE OF bookings_type;

/
--------------------------------------------------------
--  DDL for Type BOOKINGS_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORINDADEMO"."BOOKINGS_TYPE" AS OBJECT
(CUSTOMER_NAME   VARCHAR2(12)
,AIRLINE_NAME    VARCHAR2(50)
,FLIGHT_NUMBER   NUMBER
,DEPARTURE_TIME  DATE
,SEAT            VARCHAR2(3));

/
--------------------------------------------------------
--  DDL for Type CITY_PAIR_ORACLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORINDADEMO"."CITY_PAIR_ORACLE_TYPE" AS OBJECT
(FROM_CITY VARCHAR2(16)
,TO_CITY   VARCHAR2(16));

/
--------------------------------------------------------
--  DDL for Type FLIGHTS_TABLE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORINDADEMO"."FLIGHTS_TABLE" AS TABLE OF flights_type;

/
--------------------------------------------------------
--  DDL for Type FLIGHTS_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "ORINDADEMO"."FLIGHTS_TYPE" AS OBJECT
(DEPARTURE_CITY  VARCHAR2(16)
,ARRIVAL_CITY    VARCHAR2(16)
,AIRLINE_NAME    VARCHAR2(50)
,FLIGHT_NUMBER   NUMBER
,DEPARTURE_TIME  DATE
,ARRIVAL_TIME    DATE
,AIRCRAFT_TYPE   VARCHAR2(50) )

/
--------------------------------------------------------
--  DDL for Table AIRCRAFT
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."AIRCRAFT" 
   (	"AIRCRAFT_TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AIRLINES
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."AIRLINES" 
   (	"AIRLINE_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table AIRPORTS
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."AIRPORTS" 
   (	"AIRPORT_CODE" VARCHAR2(16 BYTE), 
	"AIRPORT_NAME" VARCHAR2(80 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKINGS
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."BOOKINGS" 
   (	"CUSTOMER_NAME" VARCHAR2(12 BYTE), 
	"AIRLINE_NAME" VARCHAR2(50 BYTE), 
	"FLIGHT_NUMBER" NUMBER, 
	"DEPARTURE_TIME" DATE, 
	"SEAT" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."CUSTOMERS" 
   (	"NAME" VARCHAR2(80 BYTE), 
	"ADDRESS" VARCHAR2(50 BYTE), 
	"CITY" VARCHAR2(50 BYTE), 
	"STATE" VARCHAR2(2 BYTE), 
	"ZIP" NUMBER(5,0), 
	"BIRTHDATE" DATE, 
	"PHONE" VARCHAR2(12 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FLIGHTS
--------------------------------------------------------

  CREATE TABLE "ORINDADEMO"."FLIGHTS" 
   (	"DEPARTURE_CITY" VARCHAR2(16 BYTE), 
	"ARRIVAL_CITY" VARCHAR2(16 BYTE), 
	"AIRLINE_NAME" VARCHAR2(50 BYTE), 
	"FLIGHT_NUMBER" NUMBER, 
	"DEPARTURE_TIME" DATE, 
	"ARRIVAL_TIME" DATE, 
	"AIRCRAFT_TYPE" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Sequence SEQUENTIAL_NUMBER_GENERATOR
--------------------------------------------------------

   CREATE SEQUENCE  "ORINDADEMO"."SEQUENTIAL_NUMBER_GENERATOR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Index ACT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."ACT_PK" ON "ORINDADEMO"."AIRCRAFT" ("AIRCRAFT_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."ALS_PK" ON "ORINDADEMO"."AIRLINES" ("AIRLINE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index APT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."APT_PK" ON "ORINDADEMO"."AIRPORTS" ("AIRPORT_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BKG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."BKG_PK" ON "ORINDADEMO"."BOOKINGS" ("CUSTOMER_NAME", "AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME", "SEAT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CST_IX1
--------------------------------------------------------

  CREATE INDEX "ORINDADEMO"."CST_IX1" ON "ORINDADEMO"."CUSTOMERS" ("STATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CST_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."CST_PK" ON "ORINDADEMO"."CUSTOMERS" ("NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FLT_IX1
--------------------------------------------------------

  CREATE INDEX "ORINDADEMO"."FLT_IX1" ON "ORINDADEMO"."FLIGHTS" ("DEPARTURE_CITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FLT_IX2
--------------------------------------------------------

  CREATE INDEX "ORINDADEMO"."FLT_IX2" ON "ORINDADEMO"."FLIGHTS" ("ARRIVAL_CITY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FLT_IX3
--------------------------------------------------------

  CREATE INDEX "ORINDADEMO"."FLT_IX3" ON "ORINDADEMO"."FLIGHTS" ("AIRLINE_NAME", "FLIGHT_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FLT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORINDADEMO"."FLT_PK" ON "ORINDADEMO"."FLIGHTS" ("AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Package Body COMPLEX_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."COMPLEX_EXAMPLE" AS
--
PROCEDURE flies_between_all (p_first_city_pair  in  city_pair_oracle_type
                            ,p_second_city_pair in  city_pair_plsql_record
                            ,p_third_city_from  in  airports%ROWTYPE
                            ,p_third_city_to    in  airports%ROWTYPE
                            ,p_airline_list     out simple_examples.airline_refcursor_type) IS
--
BEGIN
--
  OPEN p_airline_list
  FOR SELECT a.*
  FROM airlines a
  WHERE EXISTS
        (SELECT null
         FROM   flights f1
         WHERE  f1.departure_city = p_first_city_pair.from_city
         AND    f1.arrival_city   = p_first_city_pair.to_city
         AND    f1.airline_name   = a.airline_name)
  AND  EXISTS
        (SELECT null
         FROM   flights f2
         WHERE  f2.departure_city = p_second_city_pair.from_city
         AND    f2.arrival_city   = p_second_city_pair.to_city
         AND    f2.airline_name   = a.airline_name)
  AND  EXISTS
        (SELECT null
         FROM   flights f3
         WHERE  f3.departure_city = p_third_city_from.airport_code
         AND    f3.arrival_city   = p_third_city_to.airport_code
         AND    f3.airline_name   = a.airline_name)
  ORDER BY a.airline_name;
--
END;
--
PROCEDURE get_table_of_flights_from (p_city         in     flights.departure_city%TYPE
                                    ,p_flights_from    out flights_table) IS
--
CURSOR departs_from IS
SELECT *
FROM flights
WHERE p_city = departure_city;
--
l_flight flights_type := null;
--
BEGIN
--
  p_flights_from := flights_table();
--
  FOR departs_from_rec IN departs_from LOOP
--
    p_flights_from.extend;
    p_flights_from(p_flights_from.COUNT) := l_flight;
--
    l_flight := flights_type(departs_from_rec.departure_city
                            ,departs_from_rec.arrival_city
                            ,departs_from_rec.airline_name
                            ,departs_from_rec.flight_number
                            ,departs_from_rec.departure_time
                            ,departs_from_rec.arrival_time
                            ,departs_from_rec.aircraft_type);
--
    p_flights_from(p_flights_from.COUNT) := l_flight;
--
  END LOOP;
--
END;
--
PROCEDURE add_bookings (p_customer       in     customers%ROWTYPE
                       ,p_booking_table  in     bookings_table
                       ,p_status_message    out varchar2) IS
--
BEGIN
--
  p_status_message := '';
--
-- First create the customer. Ignore error if aleady exists...
--
  BEGIN
--
    INSERT INTO customers
    (name,address,city,zip,birthdate,phone)
    VALUES
    (p_customer.name,p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone);
--
  EXCEPTION WHEN dup_val_on_index THEN null;
--
  END;
--
-- Attempt to create all the bookings referrer to in bookings_table.
-- If we get an exception set the status message.
--
  FOR i IN p_booking_table.FIRST .. p_booking_table.LAST LOOP
--
-- Delete booking if it already exists - this is so this demo is repeatable. Hopefully
-- this doesn't happen in real booking systems.
--
    DELETE bookings
    WHERE customer_name  = p_booking_table(i).customer_name
    AND   airline_name   = p_booking_table(i).airline_name
    AND   flight_number  = p_booking_table(i).flight_number
    AND   departure_time = p_booking_table(i).departure_time
    AND   seat           = p_booking_table(i).seat;
--
-- Attempt to create this booking...
--
    INSERT INTO bookings
    (customer_name, airline_name
    , flight_number, departure_time, seat)
    VALUES
    (p_booking_table(i).customer_name, p_booking_table(i).airline_name
    , p_booking_table(i).flight_number, p_booking_table(i).departure_time, p_booking_table(i).seat);
--
    p_status_message := p_status_message || 'Added '|| p_booking_table(i).airline_name
      || ' ' || p_booking_table(i).flight_number || ' ' || p_booking_table(i).departure_time  || ';';
--
  END LOOP;
--
  COMMIT;
--
EXCEPTION
--
WHEN others THEN
--
  p_status_message := p_status_message || sqlerrm;
--
  ROLLBACK;
--
END;
--
END;

/
--------------------------------------------------------
--  DDL for Package Body CURSOR_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."CURSOR_EXAMPLE" AS
--
PROCEDURE getLists(p_airline_listing out airline_refcursor_type
                  ,p_airport_listing out airport_refcursor_type
                  ,p_aircraft_listing out aircraft_refcursor_type) IS
--
BEGIN
--
  OPEN p_airline_listing
  FOR select   a.*
      from     airlines a
      order by airline_name;
--
  OPEN p_airport_listing
  FOR select   a.*
      from     airports a
      order by airport_code;
--
  OPEN p_aircraft_listing
  FOR select   a.*
      from     aircraft a
      order by aircraft_type;
--
END;
--
FUNCTION  direct_flight_available(p_fromcity in airports.airport_code%TYPE
                                 ,p_tocity   in airports.airport_code%TYPE) RETURN boolean IS
--
  CURSOR checkFlight IS
  SELECT null
  FROM   dual
  WHERE exists (SELECT flight_number
                FROM   flights
                WHERE  departure_city = p_fromcity
                AND    arrival_city = p_tocity);
--
  l_dummy VARCHAR2(1) := NULL;
  l_return BOOLEAN := FALSE;
--
BEGIN
--
  OPEN checkFlight;
--
  FETCH checkFlight INTO l_dummy;
--
  IF checkFlight%FOUND THEN
--
    l_return := TRUE;
--
  ELSE
--
    l_return := FALSE;
--
  END IF;
--
  CLOSE checkFlight;
--
  RETURN(l_return);
--
END;
--
PROCEDURE find_direct_flights    (p_fromcity   in  airports.airport_code%TYPE
                                 ,p_tocity     in  airports.airport_code%TYPE
                                 ,p_orderby    in  number
                                 ,p_flightlist out flights_refcursor_type) IS
--
BEGIN
--
  IF p_orderby = 1 THEN
--
-- Order by airline...
--
    OPEN p_flightlist
    FOR
    SELECT f.*
    FROM flights f
    WHERE f.departure_city = p_fromcity
    AND   f.arrival_city   = p_tocity
    ORDER by f.airline_name;
--
  ELSIF p_orderby = 2 THEN
--
-- Order by departure time...
--
    OPEN p_flightlist
    FOR
    SELECT f.*
    FROM flights f
    WHERE f.departure_city = p_fromcity
    AND   f.arrival_city   = p_tocity
    ORDER by f.departure_time;
--
  ELSE
--
-- Order by aircraft type...
--
    OPEN p_flightlist
    FOR
    SELECT f.*
    FROM flights f
    WHERE f.departure_city = p_fromcity
    AND   f.arrival_city   = p_tocity
    ORDER by f.aircraft_type;
--
  END IF;
--
END;
--
END;

/
--------------------------------------------------------
--  DDL for Package Body OBJECT_ARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."OBJECT_ARRAY_EXAMPLE" AS
--
PROCEDURE get_object_array_of_flights(p_city         in            flights.departure_city%TYPE
                                     ,p_flights_from    out nocopy flights_table) IS
--
CURSOR departs_from IS
SELECT *
FROM flights
WHERE p_city = departure_city;
--
l_flight flights_type := null;
--
BEGIN
--
  p_flights_from := flights_table();
--
  FOR departs_from_rec IN departs_from LOOP
--
    p_flights_from.extend;
    l_flight := flights_type(departs_from_rec.departure_city
                            ,departs_from_rec.arrival_city
                            ,departs_from_rec.airline_name
                            ,departs_from_rec.flight_number
                            ,departs_from_rec.departure_time
                            ,departs_from_rec.arrival_time
                            ,departs_from_rec.aircraft_type);
    --
    p_flights_from(p_flights_from.COUNT) := l_flight;
--
  END LOOP;
--
END;
--
PROCEDURE add_bookings_object_array (p_customer       in             customers%ROWTYPE
                                    ,p_booking_table  in             bookings_table
                                    ,p_status_message    out nocopy varchar2) IS
--
BEGIN
--
  p_status_message := 'New Flights for '||p_customer.name||': ';
--
-- First create the customer. Ignore error if aleady exists...
--
  BEGIN
--
    INSERT INTO customers
    (name,address,city,zip,birthdate,phone)
    VALUES
    (p_customer.name,p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone);
--
  EXCEPTION WHEN dup_val_on_index THEN null;
--
  END;
--
-- Attempt to create all the bookings referrer to in bookings_table.
-- If we get an exception set the status message.
--
  FOR i IN p_booking_table.FIRST .. p_booking_table.LAST LOOP
--
-- Delete booking if it already exists - this is so this demo is repeatable. Hopefully
-- this doesn't happen in real booking systems.
--
    DELETE bookings
    WHERE customer_name  = p_booking_table(i).customer_name
    AND   airline_name   = p_booking_table(i).airline_name
    AND   flight_number  = p_booking_table(i).flight_number
    AND   departure_time = p_booking_table(i).departure_time
    AND   seat           = p_booking_table(i).seat;
--
-- Attempt to create this booking...
--
    INSERT INTO bookings
    (customer_name, airline_name
    , flight_number, departure_time, seat)
    VALUES
    (p_booking_table(i).customer_name, p_booking_table(i).airline_name
    , p_booking_table(i).flight_number, p_booking_table(i).departure_time, p_booking_table(i).seat);
--
    p_status_message := p_status_message || 'Added '|| p_booking_table(i).airline_name
      || ' ' || p_booking_table(i).flight_number || ' ' || p_booking_table(i).departure_time  || ';';
--
  END LOOP;
--
  COMMIT;
--
EXCEPTION
--
WHEN others THEN
--
  p_status_message := p_status_message || sqlerrm;
--
  ROLLBACK;
--
END;
--
END OBJECT_ARRAY_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Package Body PACKAGE_ARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."PACKAGE_ARRAY_EXAMPLE" AS
--
PROCEDURE get_plsql_array_of_flights(p_city         in            flights.departure_city%TYPE
                                    ,p_flights_from    out nocopy flights_plsql_array) IS
--
CURSOR departs_from IS
SELECT *
FROM flights
WHERE p_city = departure_city;
--
l_flight flights%ROWTYPE := null;
--
BEGIN
--
  p_flights_from := flights_plsql_array();
--
  FOR departs_from_rec IN departs_from LOOP
--
    p_flights_from.extend;
    l_flight := departs_from_rec;
    p_flights_from(p_flights_from.COUNT) := l_flight;
--
  END LOOP;
--
END;
--
PROCEDURE add_bookings_plsql_array (p_customer       in             customers%ROWTYPE
                                   ,p_booking_table  in             bookings_plsql_array
                                   ,p_status_message    out nocopy varchar2) IS
--
BEGIN
--
  p_status_message := 'New Flights for '||p_customer.name||': ';
--
-- First create the customer. Ignore error if aleady exists...
--
  BEGIN
--
    INSERT INTO customers
    (name,address,city,zip,birthdate,phone)
    VALUES
    (p_customer.name,p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone);
--
  EXCEPTION WHEN dup_val_on_index THEN null;
--
  END;
--
-- Attempt to create all the bookings referrer to in bookings_table.
-- If we get an exception set the status message.
--
  FOR i IN p_booking_table.FIRST .. p_booking_table.LAST LOOP
--
-- Delete booking if it already exists - this is so this demo is repeatable. Hopefully
-- this doesn't happen in real booking systems.
--
    DELETE bookings
    WHERE customer_name  = p_booking_table(i).customer_name
    AND   airline_name   = p_booking_table(i).airline_name
    AND   flight_number  = p_booking_table(i).flight_number
    AND   departure_time = p_booking_table(i).departure_time
    AND   seat           = p_booking_table(i).seat;
--
-- Attempt to create this booking...
--
    INSERT INTO bookings
    (customer_name, airline_name
    , flight_number, departure_time, seat)
    VALUES
    (p_booking_table(i).customer_name, p_booking_table(i).airline_name
    , p_booking_table(i).flight_number, p_booking_table(i).departure_time, p_booking_table(i).seat);
--
    p_status_message := p_status_message || 'Added '|| p_booking_table(i).airline_name
      || ' ' || p_booking_table(i).flight_number || ' ' || p_booking_table(i).departure_time  || ';';
--
  END LOOP;
--
  COMMIT;
--
EXCEPTION
--
WHEN others THEN
--
  p_status_message := p_status_message || sqlerrm;
--
  ROLLBACK;
--
END;
--
END package_ARRAY_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Package Body PACKAGE_IDXARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."PACKAGE_IDXARRAY_EXAMPLE" AS
--
PROCEDURE get_plsql_array_of_flights(p_city         in            flights.departure_city%TYPE
                                    ,p_flights_from    out nocopy flights_plsql_array) IS
--
CURSOR departs_from IS
SELECT *
FROM flights
WHERE p_city = departure_city;
--
l_flight flights%ROWTYPE := null;
--
BEGIN
--
  FOR departs_from_rec IN departs_from LOOP
--
    l_flight := departs_from_rec;
    p_flights_from(p_flights_from.COUNT) := l_flight;
--
  END LOOP;
--
END;
--
PROCEDURE add_bookings_plsql_array (p_customer       in             customers%ROWTYPE
                                   ,p_booking_table  in             bookings_plsql_array
                                   ,p_status_message    out nocopy varchar2) IS
--
BEGIN
--
  p_status_message := '';
--
-- First create the customer. Ignore error if aleady exists...
--
  BEGIN
--
    INSERT INTO customers
    (name,address,city,zip,birthdate,phone)
    VALUES
    (p_customer.name,p_customer.address,p_customer.city,p_customer.zip,p_customer.birthdate,p_customer.phone);
--
  EXCEPTION WHEN dup_val_on_index THEN null;
--
  END;
--
-- Attempt to create all the bookings referrer to in bookings_table.
-- If we get an exception set the status message.
--
  FOR i IN p_booking_table.FIRST .. p_booking_table.LAST LOOP
--
-- Delete booking if it already exists - this is so this demo is repeatable. Hopefully
-- this doesn't happen in real booking systems.
--
    DELETE bookings
    WHERE customer_name  = p_booking_table(i).customer_name
    AND   airline_name   = p_booking_table(i).airline_name
    AND   flight_number  = p_booking_table(i).flight_number
    AND   departure_time = p_booking_table(i).departure_time
    AND   seat           = p_booking_table(i).seat;
--
-- Attempt to create this booking...
--
    INSERT INTO bookings
    (customer_name, airline_name
    , flight_number, departure_time, seat)
    VALUES
    (p_booking_table(i).customer_name, p_booking_table(i).airline_name
    , p_booking_table(i).flight_number, p_booking_table(i).departure_time, p_booking_table(i).seat);
--
    p_status_message := p_status_message || 'Added '|| p_booking_table(i).airline_name
      || ' ' || p_booking_table(i).flight_number || ' ' || p_booking_table(i).departure_time  || ';';
--
  END LOOP;
--
  COMMIT;
--
EXCEPTION
--
WHEN others THEN
--
  p_status_message := p_status_message || sqlerrm;
--
  ROLLBACK;
--
END;
--
END PACKAGE_IDXARRAY_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Package Body SIMPLE_EXAMPLES
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "ORINDADEMO"."SIMPLE_EXAMPLES" AS
--
    PROCEDURE getlists (
        p_airline_listing    OUT airline_refcursor_type,
        p_airport_listing    OUT airport_refcursor_type,
        p_aircraft_listing   OUT aircraft_refcursor_type
    )
        IS
--
    BEGIN
--
        OPEN p_airline_listing FOR
            SELECT
                a.*
            FROM
                airlines a
            ORDER BY airline_name;
--

        OPEN p_airport_listing FOR
            SELECT
                a.*
            FROM
                airports a
            ORDER BY airport_code;
--

        OPEN p_aircraft_listing FOR
            SELECT
                a.*
            FROM
                aircraft a
            ORDER BY aircraft_type;
--

    END;
--

    PROCEDURE direct_flight_available (
        p_fromcity   IN airports.airport_code%type,
        p_tocity     IN airports.airport_code%type,
        p_direct     OUT BOOLEAN
    ) IS
--
        CURSOR checkflight IS
            SELECT
                NULL
            FROM
                dual
            WHERE
                EXISTS (
                    SELECT
                        flight_number
                    FROM
                        flights
                    WHERE
                        departure_city = p_fromcity
                    AND
                        arrival_city = p_tocity
                );
--

        l_dummy   VARCHAR2(1) := NULL;
--
    BEGIN
--
        OPEN checkflight;
--
        FETCH checkflight INTO l_dummy;
--
        IF checkflight%found THEN
--
            p_direct := true;
--
        ELSE
--
            p_direct := false;
--
        END IF;
--
        CLOSE checkflight;
--
    END;
--

    PROCEDURE find_direct_flights (
        p_fromcity     IN airports.airport_code%type,
        p_tocity       IN airports.airport_code%type,
        p_startdate    IN DATE,
        p_enddate      IN DATE,
        p_orderby      IN NUMBER,
        p_flightlist   OUT flights_refcursor_type
    ) IS
--
        l_startdate   DATE := p_startdate;
        l_enddate     DATE := p_enddate;
--
    BEGIN
--
        IF
            p_startdate IS NULL
        THEN
--
            l_startdate := TO_DATE(
                '01-01-1900',
            'DD-MM-YYYY');
--
        END IF;
--
        IF
            p_enddate IS NULL
        THEN
--
            l_enddate := TO_DATE(
                '01-01-2100',
            'DD-MM-YYYY');
--
        END IF;
--
        IF p_orderby = 1 THEN
--
-- Order by airline...
--
            OPEN p_flightlist FOR
                SELECT
                    f.*
                FROM
                    flights f
                WHERE
                    f.departure_city = p_fromcity
                AND
                    f.arrival_city = p_tocity
                AND
                    f.departure_time BETWEEN l_startdate AND l_enddate
                ORDER BY f.airline_name;
--

        ELSIF p_orderby = 2 THEN
--
-- Order by departure time...
--
            OPEN p_flightlist FOR
                SELECT
                    f.*
                FROM
                    flights f
                WHERE
                    f.departure_city = p_fromcity
                AND
                    f.arrival_city = p_tocity
                AND
                    f.departure_time BETWEEN l_startdate AND l_enddate
                ORDER BY f.departure_time;
--

        ELSE
--
-- Order by aircraft type...
--
            OPEN p_flightlist FOR
                SELECT
                    f.*
                FROM
                    flights f
                WHERE
                    f.departure_city = p_fromcity
                AND
                    f.arrival_city = p_tocity
                AND
                    f.departure_time BETWEEN l_startdate AND l_enddate
                ORDER BY f.aircraft_type;
--

        END IF;
--

    END;
--

    PROCEDURE add_bookings_object_array (
        p_customer         IN customers%rowtype,
        p_booking_table IN OUT bookings_table,
        p_booking_delete_count IN OUT NUMBER,
        p_flights_cursor   OUT flights_refcursor_type,
        p_status_message   OUT NOCOPY VARCHAR2
    )
        IS
--
    BEGIN
--
        OPEN p_flights_cursor FOR
            SELECT
                f.*
            FROM
                flights f
            WHERE
                ROWNUM < 10
            ORDER BY f.aircraft_type;
    --

        p_booking_delete_count := 0;
        p_status_message := 'New Flights for '
         ||  p_customer.name
         ||  ': ';
-- First create the customer. Ignore error if aleady exists...
        BEGIN
--
            INSERT INTO customers (
                name,
                address,
                city,
                zip,
                birthdate,
                phone
            ) VALUES (
                p_customer.name,
                p_customer.address,
                p_customer.city,
                p_customer.zip,
                p_customer.birthdate,
                p_customer.phone
            );
--

        EXCEPTION
            WHEN dup_val_on_index THEN
                NULL;
--
        END;
--

        FOR i IN p_booking_table.first..p_booking_table.last LOOP
--
            DELETE bookings WHERE customer_name = p_booking_table(i).customer_name
            AND airline_name = p_booking_table(i).airline_name
            AND flight_number = p_booking_table(i).flight_number
            AND departure_time = p_booking_table(i).departure_time
            AND seat = p_booking_table(i).seat;
    --
            p_booking_delete_count := nvl(p_booking_delete_count,0) + sql%rowcount;
--
-- Attempt to create this booking...
--
            INSERT INTO bookings (
                customer_name,
                airline_name,
                flight_number,
                departure_time,
                seat
            ) VALUES (
                p_booking_table(i).customer_name,
                p_booking_table(i).airline_name,
                p_booking_table(i).flight_number,
                p_booking_table(i).departure_time,
                p_booking_table(i).seat
            );
--

            p_status_message := p_status_message
             ||  'Added '
             ||  p_booking_table(
                i
            ).airline_name
             ||  ' '
             ||  p_booking_table(
                i
            ).flight_number
             ||  ' '
             ||  p_booking_table(
                i
            ).departure_time
             ||  ';';
--

        END LOOP;
--

        COMMIT;
--
--EXCEPTION
--
---WHEN others THEN
--
 -- p_status_message := p_status_message || sqlerrm;
--
  --ROLLBACK;
--
    END;
--

END;

/
--------------------------------------------------------
--  DDL for Package COMPLEX_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."COMPLEX_EXAMPLE" AS
--
TYPE city_pair_plsql_record IS RECORD (from_city flights.departure_city%type
                                      ,to_city   flights.arrival_city%type);
--
PROCEDURE flies_between_all (p_first_city_pair  in  city_pair_oracle_type
                            ,p_second_city_pair in  city_pair_plsql_record
                            ,p_third_city_from  in  airports%ROWTYPE
                            ,p_third_city_to    in  airports%ROWTYPE
                            ,p_airline_list     out simple_examples.airline_refcursor_type);
--
PROCEDURE get_table_of_flights_from (p_city         in     flights.departure_city%TYPE
                                    ,p_flights_from    out flights_table);
--
PROCEDURE add_bookings (p_customer       in     customers%ROWTYPE
                       ,p_booking_table  in     bookings_table
                       ,p_status_message    out varchar2);
--
END;

/
--------------------------------------------------------
--  DDL for Package CURSOR_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."CURSOR_EXAMPLE" AS
--
/*
  This example shows how to call pl/sql procedure that returns one or more cursors from Java.

*/
--
TYPE airline_refcursor_type IS REF CURSOR RETURN airlines%ROWTYPE;
--
TYPE airport_refcursor_type IS REF CURSOR RETURN airports%ROWTYPE;
--
TYPE aircraft_refcursor_type IS REF CURSOR RETURN aircraft%ROWTYPE;
--
TYPE flights_refcursor_type  IS REF CURSOR RETURN flights%ROWTYPE;
--
PROCEDURE getLists(p_airline_listing  out airline_refcursor_type
                  ,p_airport_listing  out airport_refcursor_type
                  ,p_aircraft_listing out aircraft_refcursor_type);
--
FUNCTION direct_flight_available(p_fromcity in  airports.airport_code%TYPE
                                ,p_tocity   in  airports.airport_code%TYPE) RETURN boolean;
--
PROCEDURE find_direct_flights    (p_fromcity   in  airports.airport_code%TYPE
                                 ,p_tocity     in  airports.airport_code%TYPE
                                 ,p_orderby    in  number
                                 ,p_flightlist out flights_refcursor_type);
--
END;

/
--------------------------------------------------------
--  DDL for Package OBJECT_ARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."OBJECT_ARRAY_EXAMPLE" AS
/*
  This example shows how to call pl/sql procedure that takes an array defined
  as an oracle TYPE object as a parameter.

  We call this directly from Java using JDBC and a class that is represented
  by oracle.sql.ARRAY. Our generated Java class will use the JDBC interface
  oracle.sql.Datum
*/
--
-- p_city is the same data type as the column DEPARTURE_CITY in the FLIGHTS table.
-- p_flights_from uses the Oracle TYPE object flights_table.
--
PROCEDURE get_object_array_of_flights(p_city         in            flights.departure_city%TYPE
                                     ,p_flights_from    out nocopy flights_table);
--
PROCEDURE add_bookings_object_array (p_customer       in             customers%ROWTYPE
                                    ,p_booking_table  in             bookings_table
                                    ,p_status_message    out nocopy varchar2);
--
END;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_ARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."PACKAGE_ARRAY_EXAMPLE" AS
/*
 This example shows how to call pl/sql procedure that takes a parameter defined
 in a PL/SQL package  as an array of %ROWTYPE (table record).

 There is no direct way to call this PL/SQL procedure from Java.

 Instead we use OrindaBuild to create Java JDBC code that can bypass this limitation and
 return or accept a PL/SQL array from Java using JDBC.
*/
--
TYPE flights_plsql_array IS TABLE OF flights%ROWTYPE;
--
TYPE bookings_plsql_array IS VARRAY(30) OF bookings%ROWTYPE;
--

PROCEDURE get_plsql_array_of_flights(p_city         in            flights.departure_city%TYPE
                                    ,p_flights_from    out nocopy flights_plsql_array);
--
PROCEDURE add_bookings_plsql_array (p_customer       in             customers%ROWTYPE
                                   ,p_booking_table  in             bookings_plsql_array
                                   ,p_status_message    out nocopy varchar2);
--
END PACKAGE_ARRAY_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Package PACKAGE_IDXARRAY_EXAMPLE
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."PACKAGE_IDXARRAY_EXAMPLE" AS
/*
 This example shows how to call pl/sql procedure that takes a parameter defined
 in a PL/SQL package  as an index by array of %ROWTYPE (table record).

 There is no direct way to call this PL/SQL procedure from Java.

 Instead we use OrindaBuild to create Java JDBC code that can bypass this limitation
 and return an index by array from Java using JDBC.
*/
--
TYPE flights_plsql_array IS TABLE OF flights%ROWTYPE INDEX BY BINARY_INTEGER;
--
TYPE bookings_plsql_array IS TABLE OF bookings%ROWTYPE INDEX BY BINARY_INTEGER;
--

PROCEDURE get_plsql_array_of_flights(p_city         in            flights.departure_city%TYPE
                                    ,p_flights_from    out nocopy flights_plsql_array);
--
PROCEDURE add_bookings_plsql_array (p_customer       in             customers%ROWTYPE
                                   ,p_booking_table  in             bookings_plsql_array
                                   ,p_status_message    out nocopy varchar2);
--
END PACKAGE_IDXARRAY_EXAMPLE;

/
--------------------------------------------------------
--  DDL for Package SIMPLE_EXAMPLES
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "ORINDADEMO"."SIMPLE_EXAMPLES" AS
--
    TYPE airline_refcursor_type IS REF CURSOR RETURN airlines%rowtype;
--
    TYPE airport_refcursor_type IS REF CURSOR RETURN airports%rowtype;
--
    TYPE aircraft_refcursor_type IS REF CURSOR RETURN aircraft%rowtype;
--
    TYPE flights_refcursor_type IS REF CURSOR RETURN flights%rowtype;
--
    PROCEDURE getlists (
        p_airline_listing    OUT airline_refcursor_type,
        p_airport_listing    OUT airport_refcursor_type,
        p_aircraft_listing   OUT aircraft_refcursor_type
    );
--
    PROCEDURE direct_flight_available (
        p_fromcity   IN airports.airport_code%type,
        p_tocity     IN airports.airport_code%type,
        p_direct     OUT BOOLEAN
    );
--

    PROCEDURE find_direct_flights (
        p_fromcity     IN airports.airport_code%type,
        p_tocity       IN airports.airport_code%type,
        p_startdate    IN DATE,
        p_enddate      IN DATE,
        p_orderby      IN NUMBER,
        p_flightlist   OUT flights_refcursor_type
    );
--

    PROCEDURE add_bookings_object_array (
        p_customer             IN     customers%rowtype,
        p_booking_table        IN OUT bookings_table,
        p_booking_delete_count IN OUT NUMBER,
        p_flights_cursor          OUT flights_refcursor_type,
        p_status_message          OUT NOCOPY VARCHAR2
    );
--

END;

/
--------------------------------------------------------
--  Constraints for Table AIRCRAFT
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."AIRCRAFT" ADD CONSTRAINT "ACT_PK" PRIMARY KEY ("AIRCRAFT_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."AIRCRAFT" MODIFY ("AIRCRAFT_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AIRLINES
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."AIRLINES" ADD CONSTRAINT "ALS_PK" PRIMARY KEY ("AIRLINE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."AIRLINES" MODIFY ("AIRLINE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AIRPORTS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."AIRPORTS" ADD CONSTRAINT "APT_PK" PRIMARY KEY ("AIRPORT_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."AIRPORTS" MODIFY ("AIRPORT_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOOKINGS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."BOOKINGS" ADD CONSTRAINT "BKG_PK" PRIMARY KEY ("CUSTOMER_NAME", "AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME", "SEAT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."BOOKINGS" MODIFY ("DEPARTURE_TIME" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."BOOKINGS" MODIFY ("FLIGHT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."BOOKINGS" MODIFY ("AIRLINE_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."BOOKINGS" MODIFY ("CUSTOMER_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."CUSTOMERS" ADD CONSTRAINT "CST_PK" PRIMARY KEY ("NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."CUSTOMERS" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FLIGHTS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."FLIGHTS" ADD CONSTRAINT "FLT_PK" PRIMARY KEY ("AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("AIRCRAFT_TYPE" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("ARRIVAL_TIME" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("DEPARTURE_TIME" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("FLIGHT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("AIRLINE_NAME" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("ARRIVAL_CITY" NOT NULL ENABLE);
  ALTER TABLE "ORINDADEMO"."FLIGHTS" MODIFY ("DEPARTURE_CITY" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOOKINGS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."BOOKINGS" ADD CONSTRAINT "BKG_CST" FOREIGN KEY ("CUSTOMER_NAME")
	  REFERENCES "ORINDADEMO"."CUSTOMERS" ("NAME") ENABLE;
  ALTER TABLE "ORINDADEMO"."BOOKINGS" ADD CONSTRAINT "BKG_FLT" FOREIGN KEY ("AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME")
	  REFERENCES "ORINDADEMO"."FLIGHTS" ("AIRLINE_NAME", "FLIGHT_NUMBER", "DEPARTURE_TIME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FLIGHTS
--------------------------------------------------------

  ALTER TABLE "ORINDADEMO"."FLIGHTS" ADD CONSTRAINT "FLT_AIRCRAFT" FOREIGN KEY ("AIRCRAFT_TYPE")
	  REFERENCES "ORINDADEMO"."AIRCRAFT" ("AIRCRAFT_TYPE") ENABLE;
  ALTER TABLE "ORINDADEMO"."FLIGHTS" ADD CONSTRAINT "FLT_AIRLINE" FOREIGN KEY ("AIRLINE_NAME")
	  REFERENCES "ORINDADEMO"."AIRLINES" ("AIRLINE_NAME") ENABLE;
  ALTER TABLE "ORINDADEMO"."FLIGHTS" ADD CONSTRAINT "FLT_ARR_CITY" FOREIGN KEY ("ARRIVAL_CITY")
	  REFERENCES "ORINDADEMO"."AIRPORTS" ("AIRPORT_CODE") ENABLE;
  ALTER TABLE "ORINDADEMO"."FLIGHTS" ADD CONSTRAINT "FLT_DEP_CITY" FOREIGN KEY ("DEPARTURE_CITY")
	  REFERENCES "ORINDADEMO"."AIRPORTS" ("AIRPORT_CODE") ENABLE;
