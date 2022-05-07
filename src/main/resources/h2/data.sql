INSERT INTO USER_INFO
(ID, PASSWORD, USER_NAME, PHONE_NO, EMAIL)
    VALUES('auser', '1234', 'A유저', '01033140782', 'auser@daum.net');
INSERT INTO USER_INFO
(ID, PASSWORD, USER_NAME, PHONE_NO, EMAIL)
    VALUES('buser', '1234', 'B유저', '01022983887', 'buser@naver.com');
INSERT INTO USER_INFO
(ID, PASSWORD, USER_NAME, PHONE_NO, EMAIL)
    VALUES('cuser', '1234', 'C유저', '01044873387', 'cuser@google.com');
INSERT INTO USER_INFO
(ID, PASSWORD, USER_NAME, PHONE_NO, EMAIL)
    VALUES('duser', '1234', 'D유저', '01099298937', 'duser@kakao.com');


INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('create', '등록', 'edit_sys_files', '수정파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('update', '수정', 'edit_sys_files', '수정파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('select', '조회', 'edit_sys_files', '수정파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('delete', '삭제', 'edit_sys_files', '수정파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('create', '등록', 'access_network', '네트워크');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('update', '수정', 'access_network', '네트워크');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('select', '조회', 'access_network', '네트워크');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('delete', '삭제', 'access_network', '네트워크');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('create', '등록', 'edit_user_files', '사용자파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('update', '수정', 'edit_user_files', '사용자파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('select', '조회', 'edit_user_files', '사용자파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('delete', '삭제', 'edit_user_files', '사용자파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('create', '등록', 'read_foobar_files', '읽기파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('update', '수정', 'read_foobar_files', '읽기파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('select', '조회', 'read_foobar_files', '읽기파일');
INSERT INTO SYSTEM_INFO
(SYSTEM_CD, SYSTEM_NAME, SYSTEM_GRP_CD, SYSTEM_GRP_NAME)
    VALUES('delete', '삭제', 'read_foobar_files', '읽기파일');


INSERT INTO ROLE_INFO
(ROLE_CD, ROLE_NAME, ROLE_DESCR)
    VALUES('system_admin', '시스템 관리자', '시스템 관리자');
INSERT INTO ROLE_INFO
(ROLE_CD, ROLE_NAME, ROLE_DESCR)
    VALUES('normal_user', '일반 사용자', '일반 사용자');
INSERT INTO ROLE_INFO
(ROLE_CD, ROLE_NAME, ROLE_DESCR)
    VALUES('limited', '제한된 사용자', '제한된 사용자');
INSERT INTO ROLE_INFO
(ROLE_CD, ROLE_NAME, ROLE_DESCR)
    VALUES('student', '학생', '학생');


INSERT INTO ROLEUSER_INFO
(ROLE_CD, USER_ID, USE_FLAG)
    VALUES('system_admin', 'auser', 'Y');
INSERT INTO ROLEUSER_INFO
(ROLE_CD, USER_ID, USE_FLAG)
    VALUES('normal_user', 'buser', 'Y');
INSERT INTO ROLEUSER_INFO
(ROLE_CD, USER_ID, USE_FLAG)
    VALUES('limited', 'cuser', 'Y');
INSERT INTO ROLEUSER_INFO
(ROLE_CD, USER_ID, USE_FLAG)
    VALUES('student', 'duser', 'Y');


INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'create', 'Y', 'edit_sys_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'create', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'create', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'create', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'update', 'Y', 'edit_sys_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'update', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'update', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'update', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'select', 'Y', 'edit_sys_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'select', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'select', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'select', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'delete', 'Y', 'edit_sys_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'delete', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'delete', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('system_admin', 'delete', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'create', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'update', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'select', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'delete', 'N', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'create', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'update', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'select', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('normal_user', 'delete', 'N', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('limited', 'create', 'N', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('limited', 'update', 'N', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('limited', 'select', 'Y', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('limited', 'delete', 'N', 'edit_user_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'create', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'update', 'N', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'select', 'Y', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'delete', 'N', 'read_foobar_files');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'create', 'N', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'update', 'N', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'select', 'Y', 'access_network');
INSERT INTO ROLESYSTEM_INFO
(ROLE_CD, SYSTEM_CD, USE_FLAG, SYSTEM_GRP_CD)
    VALUES('student', 'delete', 'N', 'access_network');


