

DROP TABLE IF EXISTS ROLESYSTEM_INFO;
CREATE TABLE ROLESYSTEM_INFO
(	"ROLE_CD" VARCHAR2(30),
     "SYSTEM_CD" VARCHAR2(30) NOT NULL,
     "USE_FLAG" CHAR(1),
     "SYSTEM_GRP_CD" VARCHAR2(30)
) ;

COMMENT ON COLUMN ROLESYSTEM_INFO.ROLE_CD IS '권한코드';
COMMENT ON COLUMN ROLESYSTEM_INFO.SYSTEM_CD IS '시스템코드';
COMMENT ON COLUMN ROLESYSTEM_INFO.USE_FLAG IS '사용여부';
COMMENT ON COLUMN ROLESYSTEM_INFO.SYSTEM_GRP_CD IS '시스템그룹코드';



DROP TABLE IF EXISTS ROLEUSER_INFO;
CREATE TABLE ROLEUSER_INFO
(	"ROLE_CD" VARCHAR2(30) NOT NULL,
     "USER_ID" VARCHAR2(20) NOT NULL,
     "USE_FLAG" CHAR(1)
);
COMMENT ON COLUMN ROLEUSER_INFO.ROLE_CD IS '권한코드';
COMMENT ON COLUMN ROLEUSER_INFO.USER_ID IS '사용자아이디';
COMMENT ON COLUMN ROLEUSER_INFO.USE_FLAG IS '사용여부';


DROP TABLE IF EXISTS ROLE_INFO;
CREATE TABLE ROLE_INFO
(	"ROLE_CD" VARCHAR2(30) NOT NULL,
     "ROLE_NAME" VARCHAR2(60),
     "ROLE_DESCR" VARCHAR2(200)
);

COMMENT ON COLUMN ROLE_INFO.ROLE_CD IS '권한코드';
COMMENT ON COLUMN ROLE_INFO.ROLE_NAME IS '권한명';
COMMENT ON COLUMN ROLE_INFO.ROLE_DESCR IS '권한설명';


DROP TABLE IF EXISTS SYSTEM_INFO;
CREATE TABLE SYSTEM_INFO
(	"SYSTEM_CD" VARCHAR2(30) NOT NULL,
     "SYSTEM_NAME" VARCHAR2(60),
     "SYSTEM_GRP_CD" VARCHAR2(30) NOT NULL,
     "SYSTEM_GRP_NAME" VARCHAR2(60)
);

COMMENT ON COLUMN SYSTEM_INFO.SYSTEM_CD IS '시스템코드';
COMMENT ON COLUMN SYSTEM_INFO.SYSTEM_NAME IS '시스템명';
COMMENT ON COLUMN SYSTEM_INFO.SYSTEM_GRP_CD IS '시스템그룹코드';
COMMENT ON COLUMN SYSTEM_INFO.SYSTEM_GRP_NAME IS '시스템그룹명';



DROP TABLE IF EXISTS USER_INFO;
CREATE TABLE USER_INFO
(	"ID" VARCHAR2(20) NOT NULL,
     "PASSWORD" VARCHAR2(100) NOT NULL,
     "USER_NAME" VARCHAR2(20),
     "PHONE_NO" VARCHAR2(30),
     "EMAIL" VARCHAR2(50)
);


COMMENT ON COLUMN USER_INFO.ID IS '사용자아이디';
COMMENT ON COLUMN USER_INFO.PASSWORD IS '사용자비밀번호';
COMMENT ON COLUMN USER_INFO.USER_NAME IS '사용자명';
COMMENT ON COLUMN USER_INFO.PHONE_NO IS '전화번호';
COMMENT ON COLUMN USER_INFO.EMAIL IS '이메일';
