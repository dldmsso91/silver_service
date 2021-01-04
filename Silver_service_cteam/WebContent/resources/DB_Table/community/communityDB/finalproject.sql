/*
동시 처리 가능한 Processes parameter 값을 초과 했기 때문에
ORA-12516 에러 발생 시 Processes paramerter값 변경 필요
└ 1. cmd 실행후 sqlplus "/as sysdba" 입력
└ 2. SQL> show parameter 실행후 processes 값 확인 (현재 150)
└ 3. SQL> alter system set processes = 500 scope = spfile; 입력 (동시에 처리가능한 process의 숫자 500개로 증가)
└ 4. SQL> shutdown immediate -> DB종료
└ 5. SQL> startup ->DB 시작
*/
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