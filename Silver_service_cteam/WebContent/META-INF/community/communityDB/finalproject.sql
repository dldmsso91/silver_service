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