-- Additional rows for Airline table
INSERT INTO "Airline" ("ID", "Name", "address", "ContactName") 
VALUES 
(3, 'Mountain Airlines', '789 Mountain Rd, High City', 'Mike Brown'),
(4, 'Desert Airlines', '123 Desert Way, Sand City', 'Laura Lee');

-- Additional rows for AirTelephone table
INSERT INTO "AirTelephone" ("ID", "TelephoneNumber") 
VALUES 
(3, 3489012),
(4, 4590123);

-- Additional rows for Employee table
INSERT INTO "Employee" ("ID", "Name", "Address", "BirthDate", "Position", "Gender", "AirlineID") 
VALUES 
(3, 'David Lee', '654 Cedar St, High City', '1975-08-15', 'Mechanic', 'M', 3),
(4, 'Sandra White', '987 Maple St, Sand City', '1982-02-05', 'Flight Attendant', 'F', 4),
(5, 'James Black', '432 Birch St, High City', '1970-11-30', 'Security', 'M', 3),
(6, 'Linda Green', '876 Oak St, Sand City', '1976-06-25', 'Ground Crew', 'F', 4);

-- Additional rows for EmpQualifications table
INSERT INTO "EmpQualifications" ("EmpID", "Qualifications") 
VALUES 
(3, 'Mechanic Certification'),
(4, 'Flight Attendant Training'),
(5, 'Security Clearance'),
(6, 'Ground Crew Training');

-- Additional rows for Transactions table
INSERT INTO "Transactions" ("ID", "Date", "Description", "Amount", "AirlineID") 
VALUES 
(3, '2023-04-20', 'Aircraft Fuel', 15000.00, 3),
(4, '2023-04-21', 'Employee Salaries', 20000.00, 4),
(5, '2023-04-22', 'Landing Fees', 12000.00, 3),
(6, '2023-04-23', 'Airport Taxes', 10000.00, 4);

-- Additional rows for Aircraft table
INSERT INTO "Aircraft" ("ID", "Capacity", "Model", "AirlineID") 
VALUES 
(3, 180, 'Boeing 737', 3),
(4, 100, 'Bombardier CRJ200', 4),
(5, 220, 'Airbus A330', 4);

-- Additional rows for Route table
INSERT INTO "Route" ("ID", "Classification", "Distance", "Destination", "Origin") 
VALUES 
(3, 'Domestic', 600.0, 'Los Angeles', 'San Francisco'),
(4, 'International', 8000.0, 'Tokyo', 'Los Angeles'),
(5, 'Domestic', 1000.0, 'Denver', 'Dallas'),
(6, 'International', 11000.0, 'Sydney', 'Los Angeles');

-- Additional rows for AircraftRoute table
INSERT INTO "AircraftRoute" ("AircraftID", "RouteID", "CountPass", "TimeSpent", "ArrDate", "DepDate", "PricePerPass") 
VALUES 
(3, 3, 180, '01:30:00', '2023-04-30', '2023-04-30', 300.00),
(4, 4, 100, '09:00:00', '2023-05-03', '2023-05-02', 1000.00),
(5, 5, 220, '02:00:00', '2023-05-01', '2023-05-01', 400.00);

-- Additional rows for Crew table
INSERT INTO "Crew" ("CrewID", "MajPilot", "AssPilot", "Hostess1", "Hostess2", "AircraftID") 
VALUES 
(8, 'Captain Brown', 'First Officer Green', 'Jessica', 'Amy', 3),
(9, 'Captain Johnson', 'First Officer White', 'Katie', 'Samantha', 4);