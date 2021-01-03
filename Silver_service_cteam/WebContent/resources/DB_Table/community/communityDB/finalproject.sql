create table welfareFacilities(
facilityNo number(10) primary key,
typeName varchar2(50),
eavaluationResult varchar2(50),
facilityName varchar2(100) not null,
peopleLimit number(10),
peopleNow number(10),
peopleMargin number(10),
peopleWait  number(10),
telnumber varchar2(30) not null,
address varchar2(100) not null,
supplyService varchar(200),
latitude varchar2(40),
longitude varchar2(40)
);

create table welfareFacilityScore(
facilityNo number(10),
facilityName varchar2(100) not null,
EvaluateDate varchar2(30),
EvaluateGrade varchar2(20),
ManageScore number(3),
SafetyScore number(3),
AssureScore number(3),
ProcessScore number(3),
ResultScore number(3),
foreign key(facilityNO) references welfareFacilities(facilityNo)
);


create table welfareFacilityStaff(
facilityNo number(10),
facilityName varchar2(100) not null,
staffTotal number(3),
Director number(3),
General number(3),
SocialWorker number(3),
Doctor number(3),
ContractDoctor number(3),
Nurse number(3),
NurseAside number(3),
Dentalist number(3),
CareWorker1st number(3),
CareWorker2nd number(3),
CareWorker3rd number(3),
PhysicalTherapist number(3),
OccupationalTherapist number(3),
Officer number(3),
Nutritionist number(3),
Cook number(3),
Cleanliness number(3),
Keeper number(3),
Assitant number(3),
Others number(3),
foreign key(facilityNO) references welfareFacilities(facilityNo)
);

create table reservationInfo(
resNo number(10) primary key,
facilityNO number(10),
facilityName varchar2(50) not null,
U_NO number(10),
userName  VARCHAR2(50) NOT NULL,
userAge number(5),
resDate Date default sysdate,
resTime VARCHAR2(20),
visitPurpose varchar2(100),
foreign key(facilityNO) references welfareFacilities(facilityNo),
foreign key(U_NO) references U_MEMBER(U_NO)
);

create table facilityReview(
revNo number(10)primary key,
facilityNo number(10),
facilityName varchar2(100),
u_no number(10),
u_id varchar2(34),
content varchar2(400),
score number,
rdate date,
foreign key(facilityNO) references welfareFacilities(facilityNo),
foreign key(U_NO) references U_MEMBER(U_NO)
);