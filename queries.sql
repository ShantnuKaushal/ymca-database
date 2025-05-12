-- Returns the number of children registered for each day of the Spring break camp
SELECT date,COUNT(dependentId) AS num_children_registered
FROM RegistersFor_Day
GROUP BY date
ORDER BY date;

-- Returns a list of donors along with their total donation amount, orderd by greatest to smallest
SELECT donor.donorID, Participant.fName, Participant.mName, Participant.lName, SUM(amount) AS total_donated
FROM donor,donation, Participant
WHERE donor.donorID=donation.donor_ID and donor.partiId= Participant.participantId
GROUP BY donor.donorID
ORDER BY total_donated DESC;

-- Returns a list of id, names, address of all people in the database along with their membership information if they are a member or null if not.
SELECT participant.participantId,fName,mName,lName,streetName,city,state,zip,membership.IDNum,memType,IDType,income
FROM participant,membership
WHERE participant.participantId=membership.partiId OR membership.partiId IS NULL;

-- Returns the number of segments offered for each sports program, along with the total count of people registered for that program. 
SELECT program.name AS program_name,COUNT(DISTINCT has_segments.segId) AS number_of_segments,COUNT(registersfor_segments.segId) AS total_registered
FROM program,has_segments,registersfor_segments
WHERE program.programClassId=has_segments.programId AND has_segments.segId=registersfor_segments.segId
GROUP BY program.name;

-- Returns a list of all staff (id, name, position, phone) that do not teach private lessons or group fitness or sports programs
SELECT staff.ssn,fName,lName,position,phoneNum
FROM staff
WHERE ssn NOT IN(SELECT staffid FROM instructorinPrivateLesson) AND ssn NOT IN(SELECT staffid FROM instructorGroupFitness) AND ssn NOT IN(SELECT staffid FROM instructorInSportsProgram);

-- Returns a list of all facilities that are booked for any time on May 5th, 2025
SELECT facility.facId,facilityName,activityName,activityTime
FROM facility,books
WHERE facility.facId=books.facilityId AND books.date='2025-05-05';

-- Returns a list of summer camp sessions along with the number of staff assigned to that session if the number of staff is less than 3
SELECT session.sessionId,tripName,theme,COUNT(worksAtCampSession.staffid) AS staff_count
FROM session,worksAtCampSession
WHERE session.sessionId=worksAtCampSession.workSessionId
GROUP BY session.sessionId,tripName,theme
HAVING COUNT(worksAtCampSession.staffid)<3;

-- Returns a list of people (name, address, phone,membership id if they are members) signed up for Lifeguard certification on a particular date.
SELECT Participant.fName, Participant.mName, Participant.lName, Participant.streetName, Participant.city, Participant.state, Participant.zip, Participant.phoneNum,
(SELECT Membership.IDNum FROM Membership WHERE Membership.partiId = Participant.participantId) AS membership_id 
FROM Participant, RegistersFor_Course, Course
WHERE Participant.participantId = RegistersFor_Course.partiId AND RegistersFor_Course.cId  = Course.CourseId AND Course.name= 'Lifeguard Training' AND RegistersFor_Course.date = '2025-05-10';


-- Return a list with the summer camp name, level, location, and for each session, the dates, trips and themes.
SELECT SummerCamp.summerId AS camp_id,SummerCamp.streetName AS location_street,SummerCamp.city,SummerCamp.state,SummerCamp.zip,Session.tripName,Session.theme,Has_Session.date
FROM SummerCamp,Session,Has_Session
WHERE SummerCamp.summerId=Has_Session.sCampId AND Has_Session.sId=Session.sessionId
ORDER BY SummerCamp.summerId,Has_Session.date;

-- Returns the group classes in ranking of highest popularity– could be highly useful to an analyst working with the YMCA to analyze trends.
SELECT GroupClass.name AS group_class_name,GroupClass.eligibility,COUNT(RegistersFor_GroupClass.partiId) AS total_registrations
FROM GroupClass,RegistersFor_GroupClass
WHERE GroupClass.groupClassId=RegistersFor_GroupClass.gcID
GROUP BY GroupClass.name,GroupClass.eligibility
HAVING COUNT(RegistersFor_GroupClass.partiId)>0
ORDER BY total_registrations DESC;




