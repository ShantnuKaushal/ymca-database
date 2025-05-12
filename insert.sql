-- 1. Participant
INSERT INTO Participant(participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip)
 VALUES(1,'John','Q.','Doe','Caucasian','1985-06-15','Male','555-123-4567','Jane','Doe','555-987-6543','123 Main Street','New Rochelle','NY','10805');
INSERT INTO Participant(participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip)
 VALUES(2,'Maria','L.','Smith','Hispanic','1988-11-22','Female','555-321-4321','Carlos','Smith','555-210-1234','456 Elm Street','New Rochelle','NY','10805');
INSERT INTO Participant(participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip)
 VALUES(3,'Anthony','R.','Johnson','African American','1975-02-10','Male','555-543-2109','Monica','Johnson','555-432-1098','789 Pine Road','New Rochelle','NY','10805');
INSERT INTO Participant(participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip)
 VALUES(4,'Carl','P.','White','Native American','1992-04-10','Male','555-678-1234','Nancy','White','555-345-6789','12 Monroe Place','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (5,'Emma','J.','Brown','Caucasian','1990-09-10','Female','555-789-0123','Liam','Brown','555-890-1234','150 Main Street','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (6,'Liam','K.','Smith','African American','1982-02-20','Male','555-901-2345','Olivia','Smith','555-012-3456','75 Huguenot Street','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (7,'Olivia','L.','Garcia','Hispanic','1995-11-05','Female','555-210-9876','Carlos','Garcia','555-321-0987','89 Elm Avenue','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (8,'Noah','M.','Lee','Asian','1988-07-15','Male','555-432-1098','Grace','Lee','555-543-2109','200 Pelham Road','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (9,'Grace','N.','Wilson','Caucasian','1993-04-22','Female','555-654-3210','Ethan','Wilson','555-765-4321','30 Pine Street','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (10,'Ethan','O.','Martinez','Hispanic','1987-12-01','Male','555-876-5432','Isabel','Martinez','555-987-6543','10 Cedar Lane','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (11,'Isabel','P.','Davis','African American','1991-05-30','Female','555-098-7654','Mason','Davis','555-109-8765','45 Maple Avenue','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (12,'Mason','Q.','Lopez','Hispanic','1984-03-18','Male','555-219-8765','Sophia','Lopez','555-321-7654','60 Huguenot Street','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (13,'Sophia','R.','Nguyen','Asian','1992-10-27','Female','555-332-1987','Luca','Nguyen','555-443-2198','120 Pelham Road','New Rochelle','NY','10805');
INSERT INTO Participant (participantId,fName,mName,lName,race,DOB,gender,phoneNum,emergFName,emergLName,emergPhone,streetName,city,state,zip) 
VALUES (14,'Luca','S.','Patel','Asian','1989-08-09','Male','555-443-2198','Mia','Patel','555-554-3312','95 Huguenot Street','New Rochelle','NY','10805');

-- 2. Donor
INSERT INTO Donor(donorID,donorCountry,partiId)
 VALUES(1,'United States',1);
INSERT INTO Donor(donorID,donorCountry,partiId)
 VALUES(2,'United States',2);
INSERT INTO Donor(donorID,donorCountry,partiId)
 VALUES(3,'United States',3);
INSERT INTO Donor(donorID,donorCountry,partiId)
 VALUES(4,'United States',4);

-- 3. Donation
INSERT INTO Donation(donationId,pymtMethod,campaignerFName,campaignerLName,amount,campaign,type,recurrence,donor_ID)
 VALUES(1,'Credit Card','Tom','Green',100.00,'Summer Splash','Camp Fee','One-Time',1);
INSERT INTO Donation(donationId,pymtMethod,campaignerFName,campaignerLName,amount,campaign,type,recurrence,donor_ID)
 VALUES(2,'PayPal','Chris','Clark',75.00,'Fall Festival','General','Monthly',2);
INSERT INTO Donation(donationId,pymtMethod,campaignerFName,campaignerLName,amount,campaign,type,recurrence,donor_ID)
 VALUES(3,'Cash','Alice','Brown',50.00,'Winter Warmth','Camp Fee','One-Time',3);
INSERT INTO Donation(donationId,pymtMethod,campaignerFName,campaignerLName,amount,campaign,type,recurrence,donor_ID)
 VALUES(4,'Check','Robert','Anderson',120.00,'Holiday Hope','General','One-Time',4);

-- 4. ParticipantDependent
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(1,'Emily Doe','Female','Caucasian',NULL,'Pine Street Elementary','2010-09-01','Child','5','Liam','Smith','555-321-7654');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(2,'Oliver Smith','Male','Hispanic',NULL,'Jefferson Elementary','2012-05-10','Child','3','Emma','Brown','555-654-3210');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(3,'Sophia Johnson','Female','African American',NULL,'Lincoln Middle School','2014-08-22','Child','1','David','Lee','555-765-4320');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(4,'Lucas White','Male','Native American',NULL,'Maple Grove Elementary','2013-03-14','Child','2','Olivia','Perez','555-876-5432');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(5,'Ava Brown','Female','Caucasian',NULL,'Roosevelt Elementary','2012-04-18','Child','2','Nathan','Brown','555-112-3344');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(6,'Chloe Smith','Female','African American',NULL,'Jefferson Middle School','2011-09-05','Child','5','Martin','Smith','555-223-4455');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(7,'Miguel Garcia','Male','Hispanic',NULL,'Lincoln Elementary','2013-01-22','Child','1','Isabel','Garcia','555-334-5566');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(8,'Sophia Lee','Female','Asian',NULL,'Maple Grove Middle','2010-11-30','Child','6','Grace','Lee','555-445-6677');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(9,'Evan Wilson','Male','Caucasian',NULL,'Pine Street Elementary','2012-06-14','Child','3','Olivia','Wilson','555-556-7788');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(10,'Isabella Martinez','Female','Hispanic',NULL,'Riverside Middle School','2009-12-02','Child','8','Carlos','Martinez','555-667-8899');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(11,'Mason Davis','Male','African American',NULL,'Roosevelt Elementary','2014-03-27','Child','1','Emma','Davis','555-778-9900');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(12,'Emma Lopez','Female','Hispanic',NULL,'Jefferson Middle School','2011-08-19','Child','5','Liam','Lopez','555-889-0011');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(13,'Aiden Nguyen','Male','Asian',NULL,'Lincoln Elementary','2013-05-13','Child','2','Sophia','Nguyen','555-990-1122');
INSERT INTO ParticipantDependent(partiId,name,gender,race,employer,school,DOB,relationship,grade,doctorFName,doctorLName,doctorPhone)
 VALUES(14,'Mia Patel','Female','Asian',NULL,'Maple Grove Middle','2010-10-09','Child','6','David','Patel','555-101-2233');

-- 5. ParticipantDependent_Medication
INSERT INTO ParticipantDependent_Medication(partiMedId,dependentName,medication)
 VALUES(1,'Emily Doe','Amoxicillin');
INSERT INTO ParticipantDependent_Medication(partiMedId,dependentName,medication)
 VALUES(2,'Oliver Smith','Ibuprofen');
INSERT INTO ParticipantDependent_Medication(partiMedId,dependentName,medication)
 VALUES(3,'Sophia Johnson','Albuterol');
INSERT INTO ParticipantDependent_Medication(partiMedId,dependentName,medication)
 VALUES(4,'Lucas White','Ventolin');


-- 6. HolidayCamp
INSERT INTO HolidayCamp(holidayId,day,hoursOfOperation,streetName,state,city,zip)
 VALUES(1,'2025-12-25','08:00:00','50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO HolidayCamp(holidayId,day,hoursOfOperation,streetName,state,city,zip)
 VALUES(2,'2025-07-04','09:00:00','50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO HolidayCamp(holidayId,day,hoursOfOperation,streetName,state,city,zip)
 VALUES(3,'2025-10-31','10:00:00','50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO HolidayCamp(holidayId,day,hoursOfOperation,streetName,state,city,zip)
 VALUES(4,'2025-11-11','07:30:00','50 Weyman Avenue','NY','New Rochelle','10805');

-- 7. HolidayCamp_Day
INSERT INTO HolidayCamp_Day(hCampId,day,fee)
 VALUES(1,'2025-12-25',75.00);
INSERT INTO HolidayCamp_Day(hCampId,day,fee)
 VALUES(2,'2025-07-04',85.00);
INSERT INTO HolidayCamp_Day(hCampId,day,fee)
 VALUES(3,'2025-10-31',60.00);
INSERT INTO HolidayCamp_Day(hCampId,day,fee)
 VALUES(4,'2025-11-11',55.00);

-- 8. SummerCamp
INSERT INTO SummerCamp(summerId,streetName,state,city,zip)
 VALUES(1,'50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO SummerCamp(summerId,streetName,state,city,zip)
 VALUES(2,'50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO SummerCamp(summerId,streetName,state,city,zip)
 VALUES(3,'50 Weyman Avenue','NY','New Rochelle','10805');
INSERT INTO SummerCamp(summerId,streetName,state,city,zip)
 VALUES(4,'50 Weyman Avenue','NY','New Rochelle','10805');

-- 9. Session
INSERT INTO Session(sessionId,tripName,tripLocation,theme,fees,experienceName,experienceDate,experienceTime)
 VALUES(1,'YMCA Pool Day','50 Weyman Avenue','Swim Lessons',120.00,'Lap Swimming','2025-06-15','10:00:00');
INSERT INTO Session(sessionId,tripName,tripLocation,theme,fees,experienceName,experienceDate,experienceTime)
 VALUES(2,'Beach Field Trip','Long Island Sound Beach, New Rochelle','Water Safety',130.00,'Snorkeling','2025-07-20','11:00:00');
INSERT INTO Session(sessionId,tripName,tripLocation,theme,fees,experienceName,experienceDate,experienceTime)
 VALUES(3,'Climbing Wall Challenge','YMCA Climbing Facility, New Rochelle','Rock Skills',110.00,'Bouldering','2025-08-05','14:00:00');
INSERT INTO Session(sessionId,tripName,tripLocation,theme,fees,experienceName,experienceDate,experienceTime)
 VALUES(4,'Winter Hike','Ward Acres Park, New Rochelle','Cold Weather Safety',95.00,'Snowshoeing','2025-12-05','09:00:00');

-- 10. Has_Session
INSERT INTO Has_Session(sCampId,sId,date)
 VALUES(1,1,'2025-06-15');
INSERT INTO Has_Session(sCampId,sId,date)
 VALUES(2,2,'2025-07-20');
INSERT INTO Has_Session(sCampId,sId,date)
 VALUES(3,3,'2025-08-05');
INSERT INTO Has_Session(sCampId,sId,date)
 VALUES(4,4,'2025-12-05');

-- 11. SummerCamp_Trip
INSERT INTO SummerCamp_Trip(sCampId,name,location)
 VALUES(1,'Hiking Expedition','Ward Acres Park, New Rochelle');
INSERT INTO SummerCamp_Trip(sCampId,name,location)
 VALUES(2,'Kayaking Adventure','Sheldrake River, New Rochelle');
INSERT INTO SummerCamp_Trip(sCampId,name,location)
 VALUES(3,'Trail Run','Greenburgh Nature Center, New Rochelle');
INSERT INTO SummerCamp_Trip(sCampId,name,location)
 VALUES(4,'Winter Trek','Ward Acres Park, New Rochelle');

-- 12. Program
INSERT INTO Program(programClassId,name,time,registration,streetName,zip,city,state,availability)
 VALUES(1,'Aqua Aerobics','14:00:00','Open','50 Weyman Avenue','10805','New Rochelle','NY','Spots Available');
INSERT INTO Program(programClassId,name,time,registration,streetName,zip,city,state,availability)
 VALUES(2,'CPR Certification','13:00:00','Open','50 Weyman Avenue','10805','New Rochelle','NY','Available');
INSERT INTO Program(programClassId,name,time,registration,streetName,zip,city,state,availability)
 VALUES(3,'Lifeguard Training','09:00:00','Members Only','50 Weyman Avenue','10805','New Rochelle','NY','Enrolling');
INSERT INTO Program(programClassId,name,time,registration,streetName,zip,city,state,availability)
 VALUES(4,'Masters Swim Program','16:00:00','Open','50 Weyman Avenue','10805','New Rochelle','NY','Available');

-- 13. Programs_SegmentDate
INSERT INTO Programs_SegmentDate(pID,segmentDate)
 VALUES(1,'2025-07-01');
INSERT INTO Programs_SegmentDate(pID,segmentDate)
 VALUES(2,'2025-08-01');
INSERT INTO Programs_SegmentDate(pID,segmentDate)
 VALUES(3,'2025-09-01');
INSERT INTO Programs_SegmentDate(pID,segmentDate)
 VALUES(4,'2025-10-01');

-- 14. Programs_Requirement
INSERT INTO Programs_Requirement(pID,requirement)
 VALUES(1,'Must be 16+');
INSERT INTO Programs_Requirement(pID,requirement)
 VALUES(2,'CPR certification required');
INSERT INTO Programs_Requirement(pID,requirement)
 VALUES(3,'Swim test required');
INSERT INTO Programs_Requirement(pID,requirement)
 VALUES(4,'Masters level assessment');

-- 15. Segments
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(1,30.00,'Adults');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(2,40.00,'Teens');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(3,50.00,'All Ages');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(4,60.00,'Seniors');

INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(5,30.00,'Adults');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(6,40.00,'Teens');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(7,50.00,'All Ages');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(8,60.00,'Seniors');

INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(9,30.00,'Adults');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(10,40.00,'Teens');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(11,50.00,'All Ages');
INSERT INTO Segments(segmentId,cost,eligibility)
 VALUES(12,60.00,'Seniors');

-- 16. RegistersFor_Segments
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(1,1,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(2,2,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(3,3,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(4,4,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(1,5,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(1,6,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(3,7,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(4,8,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(1,9,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(2,10,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(3,11,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(4,12,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(5,5,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(6,6,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(7,7,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(8,8,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(9,9,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(10,10,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(11,11,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(12,12,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(5,1,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(6,2,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(7,3,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(8,4,'2025-10-01');

INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(9,3,'2025-07-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(10,8,'2025-08-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(11,9,'2025-09-01');
INSERT INTO RegistersFor_Segments(segId,partiId,date)
 VALUES(12,11,'2025-10-01');

-- 17. Has_Segments
INSERT INTO Has_Segments(segId,programId)
 VALUES(1,1);
INSERT INTO Has_Segments(segId,programId)
 VALUES(2,4);
INSERT INTO Has_Segments(segId,programId)
 VALUES(3,3);
INSERT INTO Has_Segments(segId,programId)
 VALUES(4,4);

INSERT INTO Has_Segments(segId,programId)
 VALUES(5,1);
INSERT INTO Has_Segments(segId,programId)
 VALUES(6,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(7,3);
INSERT INTO Has_Segments(segId,programId)
 VALUES(8,4);

INSERT INTO Has_Segments(segId,programId)
 VALUES(9,1);
INSERT INTO Has_Segments(segId,programId)
 VALUES(10,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(11,3);
INSERT INTO Has_Segments(segId,programId)
 VALUES(12,4);

INSERT INTO Has_Segments(segId,programId)
 VALUES(1,3);
INSERT INTO Has_Segments(segId,programId)
 VALUES(2,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(3,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(4,1);

INSERT INTO Has_Segments(segId,programId)
 VALUES(8,1);
INSERT INTO Has_Segments(segId,programId)
 VALUES(12,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(5,2);
INSERT INTO Has_Segments(segId,programId)
 VALUES(2,1);

-- 18. GroupClass
INSERT INTO GroupClass(groupClassId,name,time,registration,eligibility,memberCost,nonMemberCost,programMemberCost,streetName,zip,city,state,availability)
 VALUES(1,'Basketball Basics','09:00:00','Members Only','All Ages',15.00,20.00,12.00,'50 Weyman Avenue','10805','New Rochelle','NY','Open');
INSERT INTO GroupClass(groupClassId,name,time,registration,eligibility,memberCost,nonMemberCost,programMemberCost,streetName,zip,city,state,availability)
 VALUES(2,'Adult Swim Clinic','10:00:00','Open','Adults',25.00,30.00,20.00,'50 Weyman Avenue','10805','New Rochelle','NY','Enrolling');
INSERT INTO GroupClass(groupClassId,name,time,registration,eligibility,memberCost,nonMemberCost,programMemberCost,streetName,zip,city,state,availability)
 VALUES(3,'Teen Water Polo','17:00:00','Scheduled','Teens',15.00,20.00,12.00,'50 Weyman Avenue','10805','New Rochelle','NY','Full');
INSERT INTO GroupClass(groupClassId,name,time,registration,eligibility,memberCost,nonMemberCost,programMemberCost,streetName,zip,city,state,availability)
 VALUES(4,'Senior Fitness Swim','08:00:00','Open','Seniors',20.00,25.00,18.00,'50 Weyman Avenue','10805','New Rochelle','NY','Available');

-- 19. GroupClass_Requirement
INSERT INTO GroupClass_Requirement(gcID,requirement)
 VALUES(1,'Wear proper athletic shoes');
INSERT INTO GroupClass_Requirement(gcID,requirement)
 VALUES(2,'Swim cap required');
INSERT INTO GroupClass_Requirement(gcID,requirement)
 VALUES(3,'Water shoes recommended');
INSERT INTO GroupClass_Requirement(gcID,requirement)
 VALUES(4,'Fitness attire required');

-- 20. RegistersFor_GroupClass
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(1,1,'2025-05-01');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(2,2,'2025-06-10');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(3,3,'2025-06-15');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(4,4,'2025-07-20');

INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(5,1,'2025-05-01');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(6,2,'2025-06-10');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(7,3,'2025-06-15');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(8,4,'2025-07-20');

INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(9,1,'2025-05-01');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(10,2,'2025-06-10');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(11,3,'2025-06-15');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(12,4,'2025-07-21');

INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(5,4,'2025-05-01');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(6,1,'2025-06-10');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(7,2,'2025-06-15');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(8,1,'2025-07-20');

INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(9,3,'2025-05-01');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(10,4,'2025-06-10');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(11,1,'2025-06-15');
INSERT INTO RegistersFor_GroupClass(partiId,gcID,date)
 VALUES(12,4,'2025-07-20');


-- 21. Course
INSERT INTO Course(CourseId,name,registration,time,eligibility,programMemberCost,nonMemberCost,memberCost,streetName,city,state,zip,availability)
 VALUES(1,'Lifeguard Training','Open','11:00:00','16+',80.00,100.00,75.00,'50 Weyman Avenue','New Rochelle','NY','10805','Enrolling');
INSERT INTO Course(CourseId,name,registration,time,eligibility,programMemberCost,nonMemberCost,memberCost,streetName,city,state,zip,availability)
 VALUES(2,'CPR Certification','Open','12:00:00','16+',90.00,110.00,85.00,'50 Weyman Avenue','New Rochelle','NY','10805','Available');
INSERT INTO Course(CourseId,name,registration,time,eligibility,programMemberCost,nonMemberCost,memberCost,streetName,city,state,zip,availability)
 VALUES(3,'Swim Team','Scheduled','16:00:00','All Ages',150.00,180.00,140.00,'50 Weyman Avenue','New Rochelle','NY','10805','Spots Available');
INSERT INTO Course(CourseId,name,registration,time,eligibility,programMemberCost,nonMemberCost,memberCost,streetName,city,state,zip,availability)
 VALUES(4,'Masters Swim Program','Scheduled','18:00:00','Adults',120.00,150.00,110.00,'50 Weyman Avenue','New Rochelle','NY','10805','Available');

-- 22. Course_Requirement
INSERT INTO Course_Requirement(cId,requirement)
 VALUES(1,'Must be able to swim 100m');
INSERT INTO Course_Requirement(cId,requirement)
 VALUES(2,'CPR basics required');
INSERT INTO Course_Requirement(cId,requirement)
 VALUES(3,'Previous swim experience');
INSERT INTO Course_Requirement(cId,requirement)
 VALUES(4,'Master assessment required');

-- 23. RegistersFor_Course
INSERT INTO RegistersFor_Course(partiId,cId,date)
 VALUES(1,1,'2025-05-10');
INSERT INTO RegistersFor_Course(partiId,cId,date)
 VALUES(2,2,'2025-06-12');
INSERT INTO RegistersFor_Course(partiId,cId,date)
 VALUES(3,3,'2025-07-15');
INSERT INTO RegistersFor_Course(partiId,cId,date)
 VALUES(4,4,'2025-08-20');
INSERT INTO RegistersFor_Course(partiId,cId,date)
 VALUES(8,1,'2025-05-10');

-- 24. PrivateClass
INSERT INTO PrivateClass(privateClassId,name,time,registration,streetName,city,state,zip,availability,requirement)
 VALUES(1,'Private Swim Lesson','15:00:00','Scheduled','50 Weyman Avenue','New Rochelle','NY','10805','Available','Beginner swim skills');
INSERT INTO PrivateClass(privateClassId,name,time,registration,streetName,city,state,zip,availability,requirement)
 VALUES(2,'One-on-One Coaching','18:00:00','Open','50 Weyman Avenue','New Rochelle','NY','10805','Spots Available','Intermediate swim skills');
INSERT INTO PrivateClass(privateClassId,name,time,registration,streetName,city,state,zip,availability,requirement)
 VALUES(3,'Stroke Improvement','17:30:00','Open','50 Weyman Avenue','New Rochelle','NY','10805','Full','Advanced techniques');
INSERT INTO PrivateClass(privateClassId,name,time,registration,streetName,city,state,zip,availability,requirement)
 VALUES(4,'Technique Analysis','19:00:00','Scheduled','50 Weyman Avenue','New Rochelle','NY','10805','Available','Must know freestyle');

-- 25. Package
INSERT INTO Package(packageId,cost,eligibility,numOfClasses,privClassId)
 VALUES(1,200.00,'All Ages',5,1);
INSERT INTO Package(packageId,cost,eligibility,numOfClasses,privClassId)
 VALUES(2,250.00,'All Ages',6,2);
INSERT INTO Package(packageId,cost,eligibility,numOfClasses,privClassId)
 VALUES(3,150.00,'Adults',4,3);
INSERT INTO Package(packageId,cost,eligibility,numOfClasses,privClassId)
 VALUES(4,300.00,'Seniors',8,4);

-- 26. RegistersFor_PrivateClass
INSERT INTO RegistersFor_PrivateClass(partiId,privClassID)
 VALUES(1,1);
INSERT INTO RegistersFor_PrivateClass(partiId,privClassID)
 VALUES(2,2);
INSERT INTO RegistersFor_PrivateClass(partiId,privClassID)
 VALUES(3,3);
INSERT INTO RegistersFor_PrivateClass(partiId,privClassID)
 VALUES(4,4);

-- 27. Facility
INSERT INTO Facility(facId,facilityName,cost,operationHours,activityName,activityTime)
 VALUES(1,'Swimming Pool',50.00,720,'Lap Swimming','06:00-22:00');
INSERT INTO Facility(facId,facilityName,cost,operationHours,activityName,activityTime)
 VALUES(2,'Climbing Wall',75.00,600,'Bouldering','08:00-20:00');
INSERT INTO Facility(facId,facilityName,cost,operationHours,activityName,activityTime)
 VALUES(3,'Gymnasium',120.00,720,'Basketball Court','06:00-22:00');
INSERT INTO Facility(facId,facilityName,cost,operationHours,activityName,activityTime)
 VALUES(4,'Yoga Studio',40.00,480,'Yoga Class','09:00-18:00');

-- 28. Books
INSERT INTO Books(facilityId,partiId,date)
 VALUES(1,1,'2025-05-05');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(2,2,'2025-06-15');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(3,3,'2025-07-20');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(4,4,'2025-08-10');

INSERT INTO Books(facilityId,partiId,date)
 VALUES(2,5,'2025-05-05');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(2,6,'2025-06-15');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(3,7,'2025-07-20');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(4,8,'2025-08-10');

INSERT INTO Books(facilityId,partiId,date)
 VALUES(3,9,'2025-05-05');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(2,10,'2025-04-13');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(3,11,'2025-03-24');
INSERT INTO Books(facilityId,partiId,date)
 VALUES(4,12,'2025-01-12');



-- 29. FoodPantry
INSERT INTO FoodPantry(foodPantryId,date)
 VALUES(1,'2025-05-03');
INSERT INTO FoodPantry(foodPantryId,date)
 VALUES(2,'2025-06-10');
INSERT INTO FoodPantry(foodPantryId,date)
 VALUES(3,'2025-07-02');
INSERT INTO FoodPantry(foodPantryId,date)
 VALUES(4,'2025-08-15');

-- 30. FoodPantryVolunteer
INSERT INTO FoodPantryVolunteer(ssn,date,email,homePhone,workPhone,partiId)
 VALUES('555-11-2222','2025-05-03','alice.jones@gmail.com','555-111-2222','555-111-3333',1);
INSERT INTO FoodPantryVolunteer(ssn,date,email,homePhone,workPhone,partiId)
 VALUES('555-22-3333','2025-06-10','brian.kim@yahoo.com','555-222-3333','555-222-4444',2);
INSERT INTO FoodPantryVolunteer(ssn,date,email,homePhone,workPhone,partiId)
 VALUES('555-33-4444','2025-07-02','carol.lee@outlook.com','555-333-4444','555-333-5555',3);
INSERT INTO FoodPantryVolunteer(ssn,date,email,homePhone,workPhone,partiId)
 VALUES('555-44-5555','2025-08-15','david.wilson@hotmail.com','555-444-5555','555-444-6666',4);

-- 31. VolunteersAt_Pantry
INSERT INTO VolunteersAt_Pantry(pSSN,pantryId,date)
 VALUES('555-11-2222',1,'2025-05-03');
INSERT INTO VolunteersAt_Pantry(pSSN,pantryId,date)
 VALUES('555-22-3333',2,'2025-06-10');
INSERT INTO VolunteersAt_Pantry(pSSN,pantryId,date)
 VALUES('555-33-4444',3,'2025-07-02');
INSERT INTO VolunteersAt_Pantry(pSSN,pantryId,date)
 VALUES('555-44-5555',4,'2025-08-15');

-- 32. Membership
INSERT INTO Membership(IDNum,unitID,healthID,email,memType,IDType,income,employer,draftType,famEmployer,famPhone,famGender,famRace,famDOB,fam_FName,fam_LName,famRelation,referral,partiId)
 VALUES(1,1001,2001,'john.d@hotmail.com','Premium','Passport',60000.00,'Tech Works','Auto','Global Corp','555-123-4567','Female','Caucasian','2010-02-14','Emily','Doe','Child','Website',1);
INSERT INTO Membership(IDNum,unitID,healthID,email,memType,IDType,income,employer,draftType,famEmployer,famPhone,famGender,famRace,famDOB,fam_FName,fam_LName,famRelation,referral,partiId)
 VALUES(2,1002,2002,'maria.s@yahoo.com','Standard','DriverLicense',50000.00,'Retail Corp','Check','Retail Corp','555-234-5678','Male','Hispanic','2012-05-10','Oliver','Smith','Child','Flyer',2);
INSERT INTO Membership(IDNum,unitID,healthID,email,memType,IDType,income,employer,draftType,famEmployer,famPhone,famGender,famRace,famDOB,fam_FName,fam_LName,famRelation,referral,partiId)
 VALUES(3,1003,2003,'anthony.j@outlook.com','Basic','IDCard',40000.00,'Health Inc','Check','Health Inc','555-345-6789','Male','African American','2014-08-22','Sophia','Johnson','Child','Friend',3);
INSERT INTO Membership(IDNum,unitID,healthID,email,memType,IDType,income,employer,draftType,famEmployer,famPhone,famGender,famRace,famDOB,fam_FName,fam_LName,famRelation,referral,partiId)
 VALUES(4,1004,2004,'carl.w@gmail.com','Family','Passport',80000.00,'Edu Services','Auto','Edu Services','555-456-7890','Female','Asian','2008-11-30','Lucas','White','Child','Email',4);

-- 33. Volunteer
INSERT INTO Volunteer(ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId)
 VALUES('555-55-6666','Coordinator','2025-05-01','555-555-6666','555-555-7777','YMCA','Pool','555-555-8888','2025-05-10','2025-12-31','Laura','Williams','Manager',1);
INSERT INTO Volunteer(ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId)
 VALUES('555-66-7777','Assistant','2025-06-01','555-666-7777','555-666-8888','YMCA','Gym','555-666-9999','2025-06-10','2025-12-31','David','Nguyen','Coordinator',2);
INSERT INTO Volunteer(ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId)
 VALUES('555-77-8888','Lifeguard','2025-07-01','555-777-8888','555-777-9999','YMCA','Pool','555-777-0000','2025-07-05','2025-12-31','Karen','Patel','Director',3);
INSERT INTO Volunteer(ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId)
 VALUES('555-88-9999','Instructor','2025-08-01','555-888-1111','555-888-2222','YMCA','Front Desk','555-888-3333','2025-08-05','2025-12-31','Susan','Lee','Supervisor',4);

INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('444-55-6668','Assistant','2025-03-10','555-101-1122','555-202-2233','YMCA','Pool','555-303-3344','2025-03-15','2025-12-31','Aaron','Clark','Manager',5);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('555-66-7779','Coordinator','2025-04-05','555-111-2234','555-222-3345','YMCA','Gym','555-333-4456','2025-04-10','2025-12-31','Beth','Morgan','Supervisor',6);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('666-77-8890','Lifeguard','2025-05-20','555-222-3346','555-333-4457','YMCA','Pool','555-444-5567','2025-05-25','2025-12-31','Caleb','Reed','Director',7);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('777-88-0001','Instructor','2025-06-15','555-333-4458','555-444-5568','YMCA','Front Desk','555-555-6678','2025-06-20','2025-12-31','Diana','Bell','Coordinator',8);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('888-99-1112','Supervisor','2025-07-01','555-444-5569','555-555-6679','YMCA','Admin','555-666-7789','2025-07-05','2025-12-31','Ethan','Price','Manager',9);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('999-00-2223','Assistant','2025-07-20','555-555-6670','555-666-7780','YMCA','Pool','555-777-8890','2025-07-25','2025-12-31','Fiona','Grant','Supervisor',10);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('111-22-3338','Lifeguard','2025-08-10','555-666-7781','555-777-8891','YMCA','Gym','555-888-9901','2025-08-15','2025-12-31','Gavin','Hart','Director',11);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('222-33-4449','Instructor','2025-09-05','555-777-8892','555-888-9902','YMCA','Front Desk','555-999-0012','2025-09-10','2025-12-31','Holly','Ng','Coordinator',12);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('333-44-5560','Coordinator','2025-10-01','555-888-9903','555-999-0013','YMCA','Admin','555-000-1123','2025-10-05','2025-12-31','Ian','Olsen','Manager',13);
INSERT INTO Volunteer (ssn,position,applicationDate,homePhone,workPhone,employer,department,employerPhone,employmentDate,employmentEndDate,supervisorFName,supervisorLName,supervisorTitle,partiId) 
VALUES ('444-55-6671','Assistant','2025-11-12','555-999-0014','555-000-1124','YMCA','Pool','555-111-2235','2025-11-15','2025-12-31','Jenna','Parker','Supervisor',14);


-- 34. Volunteer_Education
INSERT INTO Volunteer_Education(volunteerSSN,education)
 VALUES('555-55-6666','Bachelor of Arts');
INSERT INTO Volunteer_Education(volunteerSSN,education)
 VALUES('555-66-7777','CPR Certification');
INSERT INTO Volunteer_Education(volunteerSSN,education)
 VALUES('555-77-8888','Lifeguard Certification');
INSERT INTO Volunteer_Education(volunteerSSN,education)
 VALUES('555-88-9999','First Aid Training');

-- 35. Volunteer_Skills
INSERT INTO Volunteer_Skills(volunteerSSN,skills)
 VALUES('555-55-6666','Team Leadership');
INSERT INTO Volunteer_Skills(volunteerSSN,skills)
 VALUES('555-66-7777','Communication');
INSERT INTO Volunteer_Skills(volunteerSSN,skills)
 VALUES('555-77-8888','Problem Solving');
INSERT INTO Volunteer_Skills(volunteerSSN,skills)
 VALUES('555-88-9999','Customer Service');

-- 36. VolunteersAt_GroupClass
INSERT INTO VolunteersAt_GroupClass(volunteerSSN,gcId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_GroupClass(volunteerSSN,gcId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_GroupClass(volunteerSSN,gcId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_GroupClass(volunteerSSN,gcId)
 VALUES('555-88-9999',4);

-- 37. VolunteersAt_Course
INSERT INTO VolunteersAt_Course(volunteerSSN,cId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_Course(volunteerSSN,cId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_Course(volunteerSSN,cId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_Course(volunteerSSN,cId)
 VALUES('555-88-9999',4);

-- 38. VolunteersAt_Package
INSERT INTO VolunteersAt_Package(volunteerSSN,pkgId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_Package(volunteerSSN,pkgId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_Package(volunteerSSN,pkgId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_Package(volunteerSSN,pkgId)
 VALUES('555-88-9999',4);

-- 39. VolunteersAt_Session
INSERT INTO VolunteersAt_Session(volunteerSSN,sId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_Session(volunteerSSN,sId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_Session(volunteerSSN,sId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_Session(volunteerSSN,sId)
 VALUES('555-88-9999',4);

-- 40. VolunteersAt_Facility
INSERT INTO VolunteersAt_Facility(volunteerSSN,facilityId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_Facility(volunteerSSN,facilityId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_Facility(volunteerSSN,facilityId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_Facility(volunteerSSN,facilityId)
 VALUES('555-88-9999',4);

-- 41. VolunteersAt_Segments
INSERT INTO VolunteersAt_Segments(volunteerSSN,segId)
 VALUES('555-55-6666',1);
INSERT INTO VolunteersAt_Segments(volunteerSSN,segId)
 VALUES('555-66-7777',2);
INSERT INTO VolunteersAt_Segments(volunteerSSN,segId)
 VALUES('555-77-8888',3);
INSERT INTO VolunteersAt_Segments(volunteerSSN,segId)
 VALUES('555-88-9999',4);

-- 42. Staff
INSERT INTO Staff(ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city)
 VALUES('111-22-3333','Laura','M.','Williams','1980-07-12','lauraw@gmail.com','555-777-9999','Front Desk','Coordinator',60000.00,'125 Huguenot Street','10805','NY','New Rochelle');
INSERT INTO Staff(ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city)
 VALUES('444-55-6666','David','L.','Nguyen','1982-04-03','davidn@yahoo.com','555-888-0000','Maintenance','Technician',50000.00,'200 Huguenot Street','10805','NY','New Rochelle');
INSERT INTO Staff(ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city)
 VALUES('777-88-0000','Karen','S.','Patel','1975-09-30','karenp@outlook.com','555-999-0001','Fitness','Trainer',55000.00,'50 Weyman Avenue','10805','NY','New Rochelle');
INSERT INTO Staff(ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city)
 VALUES('222-33-4444','Brian','K.','Kim','1990-01-15','briank@hotmail.com','555-000-2222','Admin','Director',65000.00,'89 Main Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('333-44-5556','Aaron','T.','Clark','1981-02-14','aaron.clark@gmail.com','555-111-2233','Maintenance','Technician',52000.00,'150 Main Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('444-55-6667','Beth','U.','Morgan','1979-11-03','beth.morgan@yahoo.com','555-222-3344','Fitness','Trainer',58000.00,'75 Elm Avenue','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('555-66-7778','Caleb','V.','Reed','1985-06-21','caleb.reed@outlook.com','555-333-4455','Front Desk','Coordinator',60000.00,'89 Huguenot Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('666-77-8889','Diana','W.','Bell','1987-01-30','diana.bell@gmail.com','555-444-5566','Pool','Supervisor',63000.00,'200 Pelham Road','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('777-88-9990','Ethan','X.','Price','1990-12-05','ethan.price@hotmail.com','555-555-6677','Admin','Director',75000.00,'30 Pine Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('888-99-0001','Fiona','Y.','Grant','1983-09-17','fiona.grant@yahoo.com','555-666-7788','Maintenance','Technician',52000.00,'45 Maple Avenue','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('999-00-1112','Gavin','Z.','Hart','1982-03-09','gavin.hart@gmail.com','555-777-8899','Fitness','Trainer',58000.00,'120 Main Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('111-22-3337','Holly','A.','Ng','1989-04-23','holly.ng@outlook.com','555-888-9900','Front Desk','Coordinator',60000.00,'10 Cedar Lane','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('222-33-4448','Ian','B.','Olsen','1984-07-11','ian.olsen@hotmail.com','555-999-0011','Pool','Supervisor',63000.00,'60 Huguenot Street','10805','NY','New Rochelle');
INSERT INTO Staff (ssn,fName,mName,lName,DOB,email,phoneNum,department,position,salary,streetName,zip,state,city) 
VALUES ('333-44-5559','Jenna','C.','Parker','1991-10-29','jenna.parker@gmail.com','555-000-1122','Admin','Assistant',50000.00,'95 Pelham Road','10805','NY','New Rochelle');


-- 43. instructorGroupFitness
INSERT INTO instructorGroupFitness(staffid,groupFitnessClassID)
 VALUES('111-22-3333',1);
INSERT INTO instructorGroupFitness(staffid,groupFitnessClassID)
 VALUES('444-55-6666',2);
INSERT INTO instructorGroupFitness(staffid,groupFitnessClassID)
 VALUES('777-88-0000',3);
INSERT INTO instructorGroupFitness(staffid,groupFitnessClassID)
 VALUES('222-33-4444',4);

-- 44. instructorCourse
INSERT INTO instructorCourse(staffid,courseid)
 VALUES('111-22-3333',1);
INSERT INTO instructorCourse(staffid,courseid)
 VALUES('444-55-6666',2);
INSERT INTO instructorCourse(staffid,courseid)
 VALUES('777-88-0000',3);
INSERT INTO instructorCourse(staffid,courseid)
 VALUES('222-33-4444',4);

-- 45. instructorinPrivateLesson
INSERT INTO instructorinPrivateLesson(staffid,lessonid)
 VALUES('111-22-3333',1);
INSERT INTO instructorinPrivateLesson(staffid,lessonid)
 VALUES('444-55-6666',2);
INSERT INTO instructorinPrivateLesson(staffid,lessonid)
 VALUES('777-88-0000',3);
INSERT INTO instructorinPrivateLesson(staffid,lessonid)
 VALUES('222-33-4444',4);

-- 46. WorksAt_Facility
INSERT INTO WorksAt_Facility(staffSSN,facilityId)
 VALUES('111-22-3333',1);
INSERT INTO WorksAt_Facility(staffSSN,facilityId)
 VALUES('444-55-6666',2);
INSERT INTO WorksAt_Facility(staffSSN,facilityId)
 VALUES('777-88-0000',3);
INSERT INTO WorksAt_Facility(staffSSN,facilityId)
 VALUES('222-33-4444',4);

-- 47. worksAtHolidayCamp
INSERT INTO worksAtHolidayCamp(staffid,campId,date)
 VALUES('111-22-3333',1,'2025-12-25');
INSERT INTO worksAtHolidayCamp(staffid,campId,date)
 VALUES('444-55-6666',2,'2025-07-04');
INSERT INTO worksAtHolidayCamp(staffid,campId,date)
 VALUES('777-88-0000',3,'2025-10-31');
INSERT INTO worksAtHolidayCamp(staffid,campId,date)
 VALUES('222-33-4444',4,'2025-11-11');

-- 48. worksAtCampSession
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('111-22-3333',1);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('444-55-6666',2);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('777-88-0000',3);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('222-33-4444',4);

INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('333-44-5556',1);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('444-55-6666',3);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('777-88-9990',3);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('888-99-0001',4);

INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('999-00-1112',1);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('111-22-3337',1);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('222-33-4448',3);
INSERT INTO worksAtCampSession(staffid,workSessionId)
 VALUES('333-44-5559',3);

-- 49. WorksDuring_Segments
INSERT INTO WorksDuring_Segments(staffSSN,workSegmentId)
 VALUES('111-22-3333',1);
INSERT INTO WorksDuring_Segments(staffSSN,workSegmentId)
 VALUES('444-55-6666',2);
INSERT INTO WorksDuring_Segments(staffSSN,workSegmentId)
 VALUES('777-88-0000',3);
INSERT INTO WorksDuring_Segments(staffSSN,workSegmentId)
 VALUES('222-33-4444',4);

-- 50. RegistersFor_CampSession
INSERT INTO RegistersFor_CampSession(dependentId,dependentName,sId)
 VALUES(1,'Emily Doe',1);
INSERT INTO RegistersFor_CampSession(dependentId,dependentName,sId)
 VALUES(2,'Oliver Smith',2);
INSERT INTO RegistersFor_CampSession(dependentId,dependentName,sId)
 VALUES(3,'Sophia Johnson',3);
INSERT INTO RegistersFor_CampSession(dependentId,dependentName,sId)
 VALUES(4,'Lucas White',4);

-- 51. RegistersFor_Day
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(1,1,'2025-12-25');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(2,2,'2025-07-04');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(3,3,'2025-10-31');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(4,4,'2025-11-11');

INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(5,1,'2025-12-25');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(6,2,'2025-07-04');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(7,3,'2025-10-31');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(8,4,'2025-11-13');

INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(9,1,'2025-12-25');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(10,2,'2025-07-04');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(11,3,'2025-10-31');
INSERT INTO RegistersFor_Day(dependentId,hCampId,date)
 VALUES(12,4,'2025-11-13');

-- 52. instructorInSportsProgram
INSERT INTO instructorInSportsProgram(staffid,programid)
 VALUES('111-22-3333',1);
INSERT INTO instructorInSportsProgram(staffid,programid)
 VALUES('444-55-6666',2);
INSERT INTO instructorInSportsProgram(staffid,programid)
 VALUES('777-88-0000',3);
INSERT INTO instructorInSportsProgram(staffid,programid)
 VALUES('222-33-4444',4);
