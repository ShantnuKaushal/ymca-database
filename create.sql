-- 1. Participant
CREATE TABLE Participant(participantId INT PRIMARY KEY,fName VARCHAR(255),mName VARCHAR(255),lName VARCHAR(255),race VARCHAR(255),DOB DATE,gender VARCHAR(255),phoneNum CHAR(15),emergFName VARCHAR(255),emergLName VARCHAR(255),emergPhone CHAR(15),streetName VARCHAR(255),city VARCHAR(255),state CHAR(2),zip CHAR(10));

-- 2. Donor
CREATE TABLE Donor(donorID INT PRIMARY KEY,donorCountry VARCHAR(255),partiId INT,FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 3. Donation
CREATE TABLE Donation(donationId INT PRIMARY KEY,pymtMethod VARCHAR(255),campaignerFName VARCHAR(255),campaignerLName VARCHAR(255),amount DECIMAL(10,2),campaign VARCHAR(255),type VARCHAR(255),recurrence VARCHAR(255),donor_ID INT,FOREIGN KEY(donor_ID) REFERENCES Donor(donorID));

-- 4. ParticipantDependent
CREATE TABLE ParticipantDependent(partiId INT,name VARCHAR(255),gender VARCHAR(255),race VARCHAR(255),employer VARCHAR(255),school VARCHAR(255),DOB DATE,relationship VARCHAR(255),grade VARCHAR(255),doctorFName VARCHAR(255),doctorLName VARCHAR(255),doctorPhone CHAR(15),PRIMARY KEY(partiId,name),FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 5. ParticipantDependent_Medication
CREATE TABLE ParticipantDependent_Medication(partiMedId INT,dependentName VARCHAR(255),medication VARCHAR(255),PRIMARY KEY(partiMedId,dependentName,medication),FOREIGN KEY(partiMedId,dependentName) REFERENCES ParticipantDependent(partiId,name));

-- 6. HolidayCamp
CREATE TABLE HolidayCamp(holidayId INT PRIMARY KEY,day DATE,hoursOfOperation TIME,streetName VARCHAR(255),state CHAR(2),city VARCHAR(255),zip CHAR(10));

-- 7. HolidayCamp_Day
CREATE TABLE HolidayCamp_Day(hCampId INT,day DATE,fee DECIMAL(10,2),PRIMARY KEY(hCampId,day),FOREIGN KEY(hCampId) REFERENCES HolidayCamp(holidayId));

-- 8. SummerCamp
CREATE TABLE SummerCamp(summerId INT PRIMARY KEY,streetName VARCHAR(255),state CHAR(2),city VARCHAR(255),zip CHAR(10));

-- 9. Session
CREATE TABLE Session(sessionId INT PRIMARY KEY,tripName VARCHAR(255),tripLocation VARCHAR(255),theme VARCHAR(255),fees DECIMAL(10,2),experienceName VARCHAR(255),experienceDate DATE,experienceTime TIME);

-- 10. Has_Session
CREATE TABLE Has_Session(sCampId INT,sId INT,date DATE,PRIMARY KEY(sCampId,sId,date),FOREIGN KEY(sCampId) REFERENCES SummerCamp(summerId),FOREIGN KEY(sId) REFERENCES Session(sessionId));

-- 11. SummerCamp_Trip
CREATE TABLE SummerCamp_Trip(sCampId INT,name VARCHAR(255),location VARCHAR(255),PRIMARY KEY(sCampId,name,location),FOREIGN KEY(sCampId) REFERENCES SummerCamp(summerId));

-- 12. Program
CREATE TABLE Program(programClassId INT PRIMARY KEY,name VARCHAR(255),time TIME,registration VARCHAR(255),streetName VARCHAR(255),zip CHAR(10),city VARCHAR(255),state CHAR(2),availability VARCHAR(255));

-- 13. Programs_SegmentDate
CREATE TABLE Programs_SegmentDate(pID INT,segmentDate DATE,PRIMARY KEY(pID,segmentDate),FOREIGN KEY(pID) REFERENCES Program(programClassId));

-- 14. Programs_Requirement
CREATE TABLE Programs_Requirement(pID INT,requirement VARCHAR(255),PRIMARY KEY(pID,requirement),FOREIGN KEY(pID) REFERENCES Program(programClassId));

-- 15. Segments
CREATE TABLE Segments(segmentId INT PRIMARY KEY,cost VARCHAR(255),eligibility VARCHAR(255));

-- 16. RegistersFor_Segments
CREATE TABLE RegistersFor_Segments(segId INT,partiId INT,date DATE,PRIMARY KEY(segId,partiId,date),FOREIGN KEY(segId) REFERENCES Segments(segmentId),FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 17. Has_Segments
CREATE TABLE Has_Segments(segId INT,programId INT,PRIMARY KEY(segId,programId),FOREIGN KEY(segId) REFERENCES Segments(segmentId),FOREIGN KEY(programId) REFERENCES Program(programClassId));

-- 18. GroupClass
CREATE TABLE GroupClass(groupClassId INT PRIMARY KEY,name VARCHAR(255),time TIME,registration VARCHAR(255),eligibility VARCHAR(255),memberCost DECIMAL(10,2),nonMemberCost DECIMAL(10,2),programMemberCost DECIMAL(10,2),streetName VARCHAR(255),zip CHAR(10),city VARCHAR(255),state CHAR(2),availability VARCHAR(255));

-- 19. GroupClass_Requirement
CREATE TABLE GroupClass_Requirement(gcID INT,requirement VARCHAR(255),PRIMARY KEY(gcID,requirement),FOREIGN KEY(gcID) REFERENCES GroupClass(groupClassId));

-- 20. RegistersFor_GroupClass
CREATE TABLE RegistersFor_GroupClass(partiId INT,gcID INT,date DATE,PRIMARY KEY(partiId,gcID,date),FOREIGN KEY(partiId) REFERENCES Participant(participantId),FOREIGN KEY(gcID) REFERENCES GroupClass(groupClassId));

-- 21. Course
CREATE TABLE Course(CourseId INT PRIMARY KEY,name VARCHAR(255),registration VARCHAR(255),time TIME,eligibility VARCHAR(255),programMemberCost DECIMAL(10,2),nonMemberCost DECIMAL(10,2),memberCost DECIMAL(10,2),streetName VARCHAR(255),city VARCHAR(255),state CHAR(2),zip CHAR(10),availability VARCHAR(255));

-- 22. Course_Requirement
CREATE TABLE Course_Requirement(cId INT,requirement VARCHAR(255),PRIMARY KEY(cId,requirement),FOREIGN KEY(cId) REFERENCES Course(CourseId));

-- 23. RegistersFor_Course
CREATE TABLE RegistersFor_Course(partiId INT,cId INT,date DATE,PRIMARY KEY(partiId,cId,date),FOREIGN KEY(partiId) REFERENCES Participant(participantId),FOREIGN KEY(cId) REFERENCES Course(CourseId));

-- 24. PrivateClass
CREATE TABLE PrivateClass(privateClassId INT PRIMARY KEY,name VARCHAR(255),time TIME,registration VARCHAR(255),streetName VARCHAR(255),city VARCHAR(255),state CHAR(2),zip CHAR(10),availability VARCHAR(255),requirement VARCHAR(255));

-- 25. Package
CREATE TABLE Package(packageId INT PRIMARY KEY,cost DECIMAL(10,2),eligibility VARCHAR(255),numOfClasses INT,privClassId INT,FOREIGN KEY(privClassId) REFERENCES PrivateClass(privateClassId));

-- 26. RegistersFor_PrivateClass
CREATE TABLE RegistersFor_PrivateClass(partiId INT,privClassID INT,PRIMARY KEY(partiId,privClassID),FOREIGN KEY(partiId) REFERENCES Participant(participantId),FOREIGN KEY(privClassID) REFERENCES PrivateClass(privateClassId));

-- 27. Facility
CREATE TABLE Facility(facId INT PRIMARY KEY,facilityName VARCHAR(255),cost DECIMAL(10,2),operationHours INT,activityName VARCHAR(255),activityTime VARCHAR(255));

-- 28. Books
CREATE TABLE Books(facilityId INT,partiId INT,date DATE,PRIMARY KEY(facilityId,partiId,date),FOREIGN KEY(facilityId) REFERENCES Facility(facId),FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 29. FoodPantry
CREATE TABLE FoodPantry(foodPantryId INT PRIMARY KEY,date DATE);

-- 30. FoodPantryVolunteer
CREATE TABLE FoodPantryVolunteer(ssn CHAR(11) PRIMARY KEY,date DATE,email VARCHAR(255),homePhone CHAR(15),workPhone CHAR(15),partiId INT,FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 31. VolunteersAt_Pantry
CREATE TABLE VolunteersAt_Pantry(pSSN CHAR(11),pantryId INT,date DATE,PRIMARY KEY(pSSN,pantryId,date),FOREIGN KEY(pSSN) REFERENCES FoodPantryVolunteer(ssn),FOREIGN KEY(pantryId) REFERENCES FoodPantry(foodPantryId));

-- 32. Membership
CREATE TABLE Membership(IDNum INT PRIMARY KEY,unitID INT,healthID INT,email VARCHAR(255),memType VARCHAR(255),IDType VARCHAR(255),income DECIMAL(10,2),employer VARCHAR(255),draftType VARCHAR(255),famEmployer VARCHAR(255),famPhone CHAR(15),famGender VARCHAR(255),famRace VARCHAR(255),famDOB DATE,fam_FName VARCHAR(255),fam_LName VARCHAR(255),famRelation VARCHAR(255),referral VARCHAR(255),partiId INT,FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 33. Volunteer
CREATE TABLE Volunteer(ssn CHAR(11) PRIMARY KEY,position VARCHAR(255),applicationDate DATE,homePhone CHAR(15),workPhone CHAR(15),employer VARCHAR(255),department VARCHAR(255),employerPhone CHAR(15),employmentDate DATE,employmentEndDate DATE,supervisorFName VARCHAR(255),supervisorLName VARCHAR(255),supervisorTitle VARCHAR(255),partiId INT,FOREIGN KEY(partiId) REFERENCES Participant(participantId));

-- 34. Volunteer_Education
CREATE TABLE Volunteer_Education(volunteerSSN CHAR(11),education VARCHAR(255),PRIMARY KEY(volunteerSSN,education),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn));

-- 35. Volunteer_Skills
CREATE TABLE Volunteer_Skills(volunteerSSN CHAR(11),skills VARCHAR(255),PRIMARY KEY(volunteerSSN,skills),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn));

-- 36. VolunteersAt_GroupClass
CREATE TABLE VolunteersAt_GroupClass(volunteerSSN CHAR(11),gcId INT,PRIMARY KEY(volunteerSSN,gcId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(gcId) REFERENCES GroupClass(groupClassId));

-- 37. VolunteersAt_Course
CREATE TABLE VolunteersAt_Course(volunteerSSN CHAR(11),cId INT,PRIMARY KEY(volunteerSSN,cId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(cId) REFERENCES Course(CourseId));

-- 38. VolunteersAt_Package
CREATE TABLE VolunteersAt_Package(volunteerSSN CHAR(11),pkgId INT,PRIMARY KEY(volunteerSSN,pkgId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(pkgId) REFERENCES Package(packageId));

-- 39. VolunteersAt_Session
CREATE TABLE VolunteersAt_Session(volunteerSSN CHAR(11),sId INT,PRIMARY KEY(volunteerSSN,sId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(sId) REFERENCES Session(sessionId));

-- 40. VolunteersAt_Facility
CREATE TABLE VolunteersAt_Facility(volunteerSSN CHAR(11),facilityId INT,PRIMARY KEY(volunteerSSN,facilityId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(facilityId) REFERENCES Facility(facId));

-- 41. VolunteersAt_Segments
CREATE TABLE VolunteersAt_Segments(volunteerSSN CHAR(11),segId INT,PRIMARY KEY(volunteerSSN,segId),FOREIGN KEY(volunteerSSN) REFERENCES Volunteer(ssn),FOREIGN KEY(segId) REFERENCES Segments(segmentId));

-- 42. Staff
CREATE TABLE Staff(ssn CHAR(11) PRIMARY KEY,fName VARCHAR(255),mName VARCHAR(255),lName VARCHAR(255),DOB DATE,email VARCHAR(255),phoneNum CHAR(15),department VARCHAR(255),position VARCHAR(255),salary DECIMAL(10,2),streetName VARCHAR(255),zip CHAR(10),state CHAR(2),city VARCHAR(255));

-- 43. instructorGroupFitness
CREATE TABLE instructorGroupFitness(staffid CHAR(11),groupFitnessClassID INT,PRIMARY KEY(staffid,groupFitnessClassID),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(groupFitnessClassID) REFERENCES GroupClass(groupClassId));

-- 44. instructorCourse
CREATE TABLE instructorCourse(staffid CHAR(11),courseid INT,PRIMARY KEY(staffid,courseid),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(courseid) REFERENCES Course(CourseId));

-- 45. instructorinPrivateLesson
CREATE TABLE instructorinPrivateLesson(staffid CHAR(11),lessonid INT,PRIMARY KEY(staffid,lessonid),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(lessonid) REFERENCES PrivateClass(privateClassId));

-- 46. WorksAt_Facility
CREATE TABLE WorksAt_Facility(staffSSN CHAR(11),facilityId INT,PRIMARY KEY(staffSSN,facilityId),FOREIGN KEY(staffSSN) REFERENCES Staff(ssn),FOREIGN KEY(facilityId) REFERENCES Facility(facId));

-- 47. worksAtHolidayCamp
CREATE TABLE worksAtHolidayCamp(staffid CHAR(11),campId INT,date DATE,PRIMARY KEY(staffid,campId,date),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(campId) REFERENCES HolidayCamp(holidayId));

-- 48. worksAtCampSession
CREATE TABLE worksAtCampSession(staffid CHAR(11),workSessionId INT,PRIMARY KEY(staffid,workSessionId),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(workSessionId) REFERENCES Session(sessionId));

-- 49. WorksDuring_Segments
CREATE TABLE WorksDuring_Segments(staffSSN CHAR(11),workSegmentId INT,PRIMARY KEY(staffSSN,workSegmentId),FOREIGN KEY(staffSSN) REFERENCES Staff(ssn),FOREIGN KEY(workSegmentId) REFERENCES Segments(segmentId));

-- 50. RegistersFor_CampSession
CREATE TABLE RegistersFor_CampSession(dependentId INT,dependentName VARCHAR(255),sId INT,PRIMARY KEY(dependentId,dependentName,sId),FOREIGN KEY(dependentId,dependentName) REFERENCES ParticipantDependent(partiId,name),FOREIGN KEY(sId) REFERENCES Session(sessionId));

-- 51. RegistersFor_Day
CREATE TABLE RegistersFor_Day(dependentId INT,hCampId INT,date DATE,PRIMARY KEY(dependentId,hCampId,date),FOREIGN KEY(dependentId) REFERENCES ParticipantDependent(partiId),FOREIGN KEY(hCampId) REFERENCES HolidayCamp(holidayId));

-- 52. instructorInSportsProgram
CREATE TABLE instructorInSportsProgram(staffid CHAR(11),programid INT,PRIMARY KEY(staffid,programid),FOREIGN KEY(staffid) REFERENCES Staff(ssn),FOREIGN KEY(programid) REFERENCES Program(programClassId));
