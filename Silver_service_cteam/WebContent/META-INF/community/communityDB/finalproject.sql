drop table reservationInfo;
drop table silverhalldetail;
drop table medicaldetail;
drop table welfareFacilities;
drop table U_MEMBER;

CREATE TABLE U_MEMBER(
     U_NO NUMBER NOT NULL PRIMARY KEY
    ,U_ID VARCHAR2(20)  UNIQUE  NOT NULL 
    ,U_PASSWORD VARCHAR2(50) NOT NULL
    ,U_NAME   VARCHAR2(50) NOT NULL
    ,U_BIRTH  varchar2(20) NOT NULL
    ,U_BIRTH2 varchar2(20) NOT NULL
    ,U_PHONE VARCHAR2(50) 
    ,U_EMAIL VARCHAR2(100) NOT NULL
    ,U_ADDR  VARCHAR2(200) NOT NULL
    ,U_ADDR1 VARCHAR2(200) NOT NULL
    ,U_ADDR2 VARCHAR2(200) NOT NULL
    ,U_REDATE DATE DEFAULT SysDATE
);

insert into U_MEMBER Values((select nvl(max(U_NO),0)+1 from U_MEMBER),'abc1234','abc1234','홍길동','651212','1234567','010-1234-5678','abc1234@naver.com','08505','서울시','금천구 가산동',sysdate);
insert into U_MEMBER Values((select nvl(max(U_NO),0)+1 from U_MEMBER),'abc123','abc123','아무개','551212','1234567','010-1234-5678','abc1234@naver.com','08505','서울시','금천구 가산동',sysdate);
commit;

create table welfareFacilities(
facilityNo number(10) primary key,
typeName varchar2(50),
facilityName varchar2(50) not null,
cityloc varchar2(20),
address varchar2(100) not null,
telnumber varchar2(30) not null,
latitude varchar2(40),
longitude varchar2(40),
serviceScore number(5)
);

create table medicaldetail(
facilityNo number(10),
peopleLimit number(10),
peopleNumber number(10),
foreign key(facilityNo) references welfareFacilities(facilityNo)
);


create table silverhalldetail(
facilityNo number(10),
serviceType varchar2(20),
foreign key(facilityNo) references welfareFacilities(facilityNo)
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

select
		w.typeName, r.facilityName, w.address, w.telnumber, userName,
		to_char(r.resDate,'yyyy-mm-dd') "resDate", r.resTime, r.visitPurpose
		from reservationInfo r, welfareFacilities w, U_MEMBER u
		where r.u_no = 2 and r.u_no = u.u_no and r.facilityNO = w.facilityNo

select * from reservationInfo;

insert into reservationInfo VALUES((select nvl(max(resNo),0)+1 from reservationInfo),1,(select facilityName from welfareFacilities where facilityno = 1),2,(select U_NAME from U_MEMBER where U_NO = 2),55, sysdate, '오전 10:00')

select * from welfareFacilities where typeName = '재가노인복지시설'


select
		w.facilityNo, w.facilityName, w.typeName,w.cityloc,w.address,w.telnumber,w.serviceScore,w.latitude,w.longitude,m.peopleLimit, m.peopleNumber, s.servicetype
		FROM welfarefacilities w, medicalDetail m, silverhalldetail s
		WHERE w.FACILITYNO = 5
		and w.facilityNo = m.facilityNo(+) and w.facilityNo = s.facilityNo(+)

select * from welfareFacilities where FACILITYNO = 5

select * from U_member

select u_no,u_id,u_name
		,'19'||to_date(u_birth,'yy-mm-dd') "u_birth"
		,decode(subStr(u_birth2,1,1),'1','남성','3','남성','여성') "u_gender"
        ,floor(to_number(sysdate-to_date('19'||to_date(u_birth,'yy-mm-dd')))/365) "u_age"
		,u_phone,u_email,u_addr1||' '||u_addr2 "u_addr" from U_MEMBER where u_no = 2

/*
==============================================================================
*/

create table myloginlog(
num number constraint myloginlogs_num_pk primary key,
idn varchar2(10),
reip varchar2(30),
uagent varchar2(100),
status varchar2(10),
sstime date default sysdate,
constraint myloginlogs_idn_fk FOREIGN key(idn)
REFERENCES member_aop(id)
);

create table member_aop(
id varchar2(30) primary key
);

create SEQUENCE myloginlog_seq
increment by 1
start with 1;