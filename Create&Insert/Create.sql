CREATE TABLE "Airline" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    "address" VARCHAR(250)     NULL,
    "ContactName" varchar(50)    NULL,
    CONSTRAINT "pk_Airline" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "AirTelephone" (
    "ID" int   NOT NULL,
    "TelephoneNumber" int   NOT NULL,
    CONSTRAINT "pk_AirTelephone" PRIMARY KEY (
        "ID","TelephoneNumber"
     )
);

CREATE TABLE "Employee" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    "Address" VARCHAR(250)    NULL,
    "BirthDate" DATE    NULL,
    "Position" varchar(50)    NULL,
    "Gender" varchar(50)    NULL,
    "AirlineID" int   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "EmpQualifications" (
    "EmpID" int   NOT NULL,
    "Qualifications" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_EmpQualifications" PRIMARY KEY (
        "EmpID","Qualifications"
     )
);

CREATE TABLE "Transactions" (
    "ID" int   NOT NULL,
    "Date" DATE    NULL,
    "Description" varchar(100)    NULL,
    "Amount" float    NULL,
    "AirlineID" int   NOT NULL,
    CONSTRAINT "pk_Transactions" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Aircraft" (
    "ID" int   NOT NULL,
    "Capacity" int    NULL,
    "Model" varchar(50)    NULL,
    "AirlineID" int   NOT NULL,
    CONSTRAINT "pk_Aircraft" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "AircraftRoute" (
    "AircraftID" int   NOT NULL,
    "RouteID" int   NOT NULL,
    "CountPass" int    NULL,
    "TimeSpent" time    NULL,
    "ArrDate" DATE    NULL,
    "DepDate" DATE    NULL,
    "PricePerPass" float    NULL,
    CONSTRAINT "pk_AircraftRoute" PRIMARY KEY (
        "AircraftID","RouteID"
     )
);

CREATE TABLE "Route" (
    "ID" int   NOT NULL,
    "Classification" VARCHAR(50)    NULL,
    "Distance" float    NULL,
    "Destination" VARCHAR(100)    NULL,
    "Origin" VARCHAR(100)    NULL,
    CONSTRAINT "pk_Route" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Crew" (
    "CrewID" int , 
    "MajPilot" varchar(50),
    "AssPilot" varchar(50),
    "Hostess1" varchar(50),
    "Hostess2" varchar(50),
    "AirlineID" int NOT NULL UNIQUE, 
    FOREIGN KEY ("AirlineID") REFERENCES "Airline" ("ID") 

);

ALTER TABLE "AirTelephone" ADD CONSTRAINT "fk_AirTelephone_ID" FOREIGN KEY("ID")
REFERENCES "Airline" ("ID");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_AirlineID" FOREIGN KEY("AirlineID")
REFERENCES "Airline" ("ID");

ALTER TABLE "EmpQualifications" ADD CONSTRAINT "fk_EmpQualifications_EmpID" FOREIGN KEY("EmpID")
REFERENCES "Employee" ("ID");

ALTER TABLE "Transactions" ADD CONSTRAINT "fk_Transactions_AirlineID" FOREIGN KEY("AirlineID")
REFERENCES "Airline" ("ID");

ALTER TABLE "Aircraft" ADD CONSTRAINT "fk_Aircraft_AirlineID" FOREIGN KEY("AirlineID")
REFERENCES "Airline" ("ID");

ALTER TABLE "AircraftRoute" ADD CONSTRAINT "fk_AircraftRoute_AircraftID" FOREIGN KEY("AircraftID")
REFERENCES "Aircraft" ("ID");

ALTER TABLE "AircraftRoute" ADD CONSTRAINT "fk_AircraftRoute_RouteID" FOREIGN KEY("RouteID")
REFERENCES "Route" ("ID");