DROP TABLE users PURGE;

CREATE TABLE users (
    user_id        VARCHAR2(20) NOT NULL PRIMARY KEY,
    user_pw        VARCHAR2(20) NOT NULL,
    user_name      VARCHAR2(20) NOT NULL,
    tel            VARCHAR2(15) NOT NULL,
    email          VARCHAR2(50) NOT NULL,
    gender         NUMBER(1) NOT NULL,
    administrator  NUMBER(1) DEFAULT 0,
    com_type       NUMBER(1) NOT NULL
);

DROP TABLE withdrawal_user PURGE;

CREATE TABLE withdrawal_user (
    user_id   VARCHAR2(20) NOT NULL PRIMARY KEY,
    del_date  DATE NOT NULL
);

CREATE OR REPLACE VIEW all_user AS
    SELECT
        user_id
    FROM
        users
    UNION ALL
    SELECT
        user_id
    FROM
        withdrawal_user;

CREATE OR REPLACE TRIGGER user_log BEFORE
    DELETE ON users
    FOR EACH ROW
BEGIN
    INSERT INTO withdrawal_user (
        user_id,
        del_date
    ) VALUES (
        :old.user_id,
        sysdate + 90
    );

END;
/

SELECT
    user_id
FROM
    users;

SELECT
    *
FROM
    all_user;

SELECT
    *
FROM
    del_user;

INSERT INTO users VALUES (
    'admin',
    'hdgf2022',
    '방형욱',
    '01023508273',
    'gseducation@naver.com',
    1,
    1,
    5
);

INSERT INTO users VALUES (
    'kcj1284',
    'hdgf2022',
    '김찬중',
    '01067901284',
    'kcj1284@gmail.com',
    1,
    1,
    5
);

INSERT INTO users VALUES (
    'nexusgh12',
    'hdgf2022',
    '정구현',
    '01093322941',
    'nexusgh12@gmail.com',
    1,
    1,
    5
);

INSERT INTO users VALUES (
    'nsmchan',
    'hdgf2022',
    '김민찬',
    '01080334292',
    'ehfhfh1313@naver.com',
    1,
    1,
    5
);

INSERT INTO users VALUES (
    'wkdwndus0409',
    'hdgf2022',
    '장주연',
    '01037073821',
    'wkdwndus0@gmail.com',
    2,
    1,
    5
);

INSERT INTO users VALUES (
    'req134679',
    '1q2w3e4r',
    '김다뱅',
    '01075124046',
    'req134679@gmail.com',
    2,
    1,
    5
);

INSERT INTO users VALUES (
    'testtest',
    '1q2w3e4r',
    '김다뱅',
    '01075124046',
    'req134679@gmail.com',
    2,
    1,
    5
);

DROP TABLE company PURGE;

CREATE TABLE company (
    com_type  NUMBER(1) NOT NULL PRIMARY KEY,
    category  VARCHAR2(20)
);

INSERT INTO company VALUES (
    0,
    'cafeteria'
);

INSERT INTO company VALUES (
    1,
    'catering'
);

INSERT INTO company VALUES (
    2,
    'distribution'
);

INSERT INTO company VALUES (
    3,
    'retail'
);

INSERT INTO company VALUES (
    4,
    'buyer'
);

INSERT INTO company VALUES (
    5,
    'etc'
);

ALTER TABLE users
    ADD CONSTRAINT fk_com FOREIGN KEY ( com_type )
        REFERENCES company ( com_type );

DROP TABLE qna PURGE;

CREATE TABLE qna (
    qna_id     NUMBER(4) NOT NULL PRIMARY KEY,
    title      VARCHAR2(9999) NOT NULL,
    user_id    VARCHAR2(20) NOT NULL,
    secret     NUMBER(1) DEFAULT 0,
    wrdate     DATE NOT NULL,
    main_text  VARCHAR2(5000) NOT NULL,
    answer     VARCHAR2(9999) DEFAULT '답변을 기다려 주세요',
    qna_type   NUMBER(1) NOT NULL
);

SELECT
    *
FROM
    qna;

INSERT INTO qna VALUES (
    '4',
    'test',
    'testtest',
    '0',
    sysdate,
    'asdasdasd',
    'asdasdasd',
    1
);

ALTER TABLE qna
    ADD CONSTRAINT fk_qna FOREIGN KEY ( user_id )
        REFERENCES users ( user_id )
            ON DELETE CASCADE;

CREATE TABLE qna_category (
    qna_type  NUMBER(1) NOT NULL PRIMARY KEY,
    category  VARCHAR2(20)
);

INSERT INTO qna_category VALUES (
    0,
    'good'
);

INSERT INTO qna_category VALUES (
    1,
    'bad'
);

INSERT INTO qna_category VALUES (
    2,
    'proposal'
);

INSERT INTO qna_category VALUES (
    3,
    'etc'
);

ALTER TABLE qna
    ADD CONSTRAINT fk_qna_cat FOREIGN KEY ( qna_type )
        REFERENCES qna_category ( qna_type );

DROP TABLE ir_center PURGE;

CREATE TABLE ir_center (
    ir_id      NUMBER(4) NOT NULL PRIMARY KEY,
    title      VARCHAR2(9999) NOT NULL,
    user_id    VARCHAR2(20) NOT NULL,
    wrdate     DATE NOT NULL,
    main_text  VARCHAR2(5000) NOT NULL,
    file_id    NUMBER(4) DEFAULT 0,
    visiter    NUMBER(4) DEFAULT 0
);

ALTER TABLE ir_center
    ADD CONSTRAINT fk_ir_center FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );

ALTER TABLE ir_center
    ADD CONSTRAINT fk_ir_file_storage FOREIGN KEY ( file_id )
        REFERENCES file_storage ( file_id );

DROP TABLE announcement PURGE;

CREATE TABLE announcement (
    board_id     NUMBER(4) NOT NULL PRIMARY KEY,
    title        VARCHAR2(9999) NOT NULL,
    user_id      VARCHAR2(20) NOT NULL,
    wrdate       DATE NOT NULL,
    main_text    VARCHAR2(5000) NOT NULL,
    file_id      NUMBER(4) DEFAULT 0,
    visiter      NUMBER(4) DEFAULT 0,
    announ_type  NUMBER(1) NOT NULL
);

ALTER TABLE announcement
    ADD CONSTRAINT fk_annnoun FOREIGN KEY ( user_id )
        REFERENCES users ( user_id );

DROP TABLE announ_category PURGE;

CREATE TABLE announ_category (
    announ_type  NUMBER(1) NOT NULL PRIMARY KEY,
    category     VARCHAR2(20)
);

CREATE OR REPLACE SYNONYM anocat FOR announ_category;

INSERT INTO anocat VALUES (
    0,
    'notice'
);

INSERT INTO anocat VALUES (
    1,
    'press'
);

ALTER TABLE announcement DROP CONSTRAINT fk_announ_cat;

ALTER TABLE announcement
    ADD CONSTRAINT fk_announ_cat FOREIGN KEY ( announ_type )
        REFERENCES anocat ( announ_type );

ALTER TABLE announcement DROP CONSTRAINT fk_file_storage;

ALTER TABLE announcement
    ADD CONSTRAINT fk_announ_file_storage FOREIGN KEY ( file_id )
        REFERENCES file_storage ( file_id );

--File Storage table 생성
DROP TABLE file_storage PURGE;

CREATE TABLE file_storage (
    filename      VARCHAR(100),
    filerealname  VARCHAR(100),
    file_id       NUMBER(4) NOT NULL PRIMARY KEY
);

ALTER TABLE announcement DROP CONSTRAINT fk_announ_file;

ALTER TABLE announcement
    ADD CONSTRAINT fk_announ_file FOREIGN KEY ( announ_type )
        REFERENCES anocat ( announ_type );

-- announ 게시판 시퀀스 생성
CREATE SEQUENCE announ_create_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999 MINVALUE 1;
  
  -- IR_Center 게시판 시퀀스 생성
CREATE SEQUENCE ir_center_create_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999 MINVALUE 1;
  
-- QnA 게시판 시퀀스 생성
CREATE SEQUENCE qna_create_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999 MINVALUE 1;
  
-- File_Storage 시퀀스 생성
CREATE SEQUENCE file_storage_seq START WITH 1 INCREMENT BY 1 MAXVALUE 9999 MINVALUE 1;

--회원가입 procedure
CREATE OR REPLACE PROCEDURE sp_insert_users (
    p_user_id    IN  users.user_id%TYPE,
    p_user_pw    IN  users.user_pw%TYPE,
    p_user_name  IN  users.user_name%TYPE,
    p_tel        IN  users.tel%TYPE,
    p_email      IN  users.email%TYPE,
    p_gender     IN  users.gender%TYPE,
    p_com_type   IN  users.com_type%TYPE
) IS
BEGIN
    INSERT INTO users (
        user_id,
        user_pw,
        user_name,
        tel,
        email,
        gender,
        administrator,
        com_type
    ) VALUES (
        p_user_id,
        p_user_pw,
        p_user_name,
        p_tel,
        p_email,
        p_gender,
        0,
        p_com_type
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_update_users (
    p_user_id    IN  users.user_id%TYPE,
    p_user_pw    IN  users.user_pw%TYPE,
    p_user_name  IN  users.user_name%TYPE,
    p_tel        IN  users.tel%TYPE,
    p_email      IN  users.email%TYPE,
    p_gender     IN  users.gender%TYPE,
    p_com_type   IN  users.com_type%TYPE
) IS
BEGIN
    UPDATE users
    SET
        user_pw = p_user_pw,
        user_name = p_user_name,
        tel = p_tel,
        email = p_email,
        gender = p_gender,
        com_type = p_com_type
    WHERE
        user_id = p_user_id;

    COMMIT;
END;
/

CREATE OR REPLACE TYPE user_table_type1 AS
    TABLE OF user_type;
/

CREATE OR REPLACE FUNCTION getuser_pipe_table_func (
    v_user_id VARCHAR2
) RETURN user_table_type1
    PIPELINED
IS
    v_type user_type;
BEGIN
    FOR rec IN (
        SELECT
            user_pw,
            user_name,
            tel,
            email,
            gender,
            com_type
        FROM
            users
        WHERE
            user_id = v_user_id
    ) LOOP
        v_type := user_type(rec.user_pw, rec.user_name, rec.tel, rec.email, rec.gender,
                           rec.com_type);

        PIPE ROW ( v_type );
    END LOOP;
END;
/

CREATE OR REPLACE PROCEDURE sp_delete_users (
    p_user_id IN users.user_id%TYPE
) IS
BEGIN
    DELETE FROM users
    WHERE
        user_id = p_user_id;

    COMMIT;
END;
/

CREATE OR REPLACE TYPE user_type AS OBJECT (
    user_pw    VARCHAR2(20),
    user_name  VARCHAR2(20),
    tel        VARCHAR2(15),
    email      VARCHAR2(50),
    gender     NUMBER(1),
    com_type   NUMBER(1)
);
/

--IR_Center_procedure
CREATE OR REPLACE PROCEDURE sp_insert_ir_center (
    p_title      IN  ir_center.title%TYPE,
    p_user_id    IN  ir_center.user_id%TYPE,
    p_main_text  IN  ir_center.main_text%TYPE,
    p_file_id    IN  ir_center.file_id%TYPE
) IS
BEGIN
    INSERT INTO ir_center (
        ir_id,
        title,
        user_id,
        wrdate,
        main_text,
        file_id
    ) VALUES (
        ir_center_create_seq.NEXTVAL,
        replace(p_title, CHR(34), CHR(038)
                                  || 'quot;'),
        p_user_id,
        sysdate,
        p_main_text,
        p_file_id
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_update_ir_center (
    p_ir_id      IN  ir_center.ir_id%TYPE,
    p_title      IN  ir_center.title%TYPE,
    p_main_text  IN  ir_center.main_text%TYPE,
    p_file_id    IN  ir_center.file_id%TYPE
) IS
BEGIN
    UPDATE ir_center
    SET
        title = replace(p_title, CHR(34), CHR(038)
                                          || 'quot;'),
        main_text = p_main_text,
        file_id = p_file_id
    WHERE
        ir_id = p_ir_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_delete_ir_center (
    p_ir_id IN ir_center.ir_id%TYPE
) IS
BEGIN
    DELETE FROM ir_center
    WHERE
        ir_id = p_ir_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_search_title_ir_center (
    presult  OUT  SYS_REFCURSOR,
    p_title  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     WHERE
                         title LIKE '%'
                                    || p_title
                                    || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_main_text_ir_center (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_all_ir_center (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2,
    p_title      IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%'
                         OR title LIKE '%'
                                       || p_title
                                       || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_list_all_ir_center (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     ORDER BY
                         ir_id DESC;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_list_all_ir_center_by_old (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     ORDER BY
                         wrdate;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_list_all_ir_center_by_visit (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate
                     FROM
                         ir_center
                     ORDER BY
                         visiter DESC;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_one_ir_center (
    presult  OUT  SYS_REFCURSOR,
    p_ir_id  IN   ir_center.ir_id%TYPE
) IS
BEGIN
    OPEN presult FOR SELECT
                         ir_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         main_text,
                         file_id
                     FROM
                         ir_center
                     WHERE
                         ir_id = p_ir_id;

    EXECUTE IMMEDIATE 'update ir_center 
    set
        visiter = (visiter + 1)
    WHERE
        ir_id = ' || p_ir_id;
END;
/

SELECT
    *
FROM
    ir_center;

--Announcement_procedure
CREATE OR REPLACE PROCEDURE sp_insert_announcement (
    p_title        IN  announcement.title%TYPE,
    p_user_id      IN  announcement.user_id%TYPE,
    p_main_text    IN  announcement.main_text%TYPE,
    p_file_id      IN  announcement.file_id%TYPE,
    p_announ_type  IN  announcement.announ_type%TYPE
) IS
BEGIN
    INSERT INTO announcement (
        board_id,
        title,
        user_id,
        wrdate,
        main_text,
        file_id,
        announ_type
    ) VALUES (
        announ_create_seq.NEXTVAL,
        replace(p_title, CHR(34), CHR(038)
                                  || 'quot;'),
        p_user_id,
        sysdate,
        p_main_text,
        p_file_id,
        p_announ_type
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_update_announcement (
    p_board_id     IN  announcement.board_id%TYPE,
    p_title        IN  announcement.title%TYPE,
    p_main_text    IN  announcement.main_text%TYPE,
    p_file_id      IN  announcement.file_id%TYPE,
    p_announ_type  IN  announcement.announ_type%TYPE
) IS
BEGIN
    UPDATE announcement
    SET
        title = replace(p_title, CHR(34), CHR(038)
                                          || 'quot;'),
        main_text = p_main_text,
        file_id = p_file_id,
        announ_type = p_announ_type
    WHERE
        board_id = p_board_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_delete_announcement (
    p_board_id IN announcement.board_id%TYPE
) IS
BEGIN
    DELETE FROM announcement
    WHERE
        board_id = p_board_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_search_title_announcement (
    presult  OUT  SYS_REFCURSOR,
    p_title  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     WHERE
                         title LIKE '%'
                                    || p_title
                                    || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_main_text_announcement (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_all_announcement (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2,
    p_title      IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%'
                         OR title LIKE '%'
                                       || p_title
                                       || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_select_list_all_announcement (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     ORDER BY
                         wrdate DESC;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_list_all_announcement_by_old (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     ORDER BY
                         wrdate;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_list_all_announcement_by_visit (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         announ_type
                     FROM
                         announcement
                     ORDER BY
                         visiter DESC;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_one_announcement (
    presult     OUT  SYS_REFCURSOR,
    p_board_id  IN   announcement.board_id%TYPE
) IS
BEGIN
    OPEN presult FOR SELECT
                         board_id,
                         title,
                         user_id,
                         visiter,
                         wrdate,
                         main_text,
                         file_id,
                         announ_type
                     FROM
                         announcement
                     WHERE
                         board_id = p_board_id;

    EXECUTE IMMEDIATE 'update announcement 
    set
        visiter = (visiter + 1)
    WHERE
        board_id = ' || p_board_id;
END;
/

 --QnA_procedure
CREATE OR REPLACE PROCEDURE sp_insert_qna (
    p_title      IN  qna.title%TYPE,
    p_user_id    IN  qna.user_id%TYPE,
    p_secret     IN  qna.secret%TYPE,
    p_main_text  IN  qna.main_text%TYPE,
    p_qna_type   IN  qna.qna_type%TYPE
) IS
BEGIN
    INSERT INTO qna (
        qna_id,
        title,
        user_id,
        secret,
        wrdate,
        main_text,
        answer,
        qna_type
    ) VALUES (
        qna_create_seq.NEXTVAL,
        p_title,
        p_user_id,
        p_secret,
        sysdate,
        p_main_text,
        'waiting for answer',
        p_qna_type
    );

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_update_qna (
    p_qna_id     IN  qna.qna_id%TYPE,
    p_title      IN  qna.title%TYPE,
    p_main_text  IN  qna.main_text%TYPE,
    p_secret     IN  qna.secret%TYPE,
    p_qna_type   IN  qna.qna_type%TYPE
) IS
BEGIN
    UPDATE qna
    SET
        title = p_title,
        main_text = p_main_text,
        secret = p_secret,
        qna_type = p_qna_type
    WHERE
        qna_id = p_qna_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_delete_qna (
    p_qna_id IN qna.qna_id%TYPE
) IS
BEGIN
    DELETE FROM qna
    WHERE
        qna_id = p_qna_id;

    COMMIT;
END;
/

CREATE OR REPLACE PROCEDURE sp_search_title_qna (
    presult  OUT  SYS_REFCURSOR,
    p_title  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_id
                     FROM
                         qna
                     WHERE
                         title LIKE '%'
                                    || p_title
                                    || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_main_text_qna (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_id
                     FROM
                         qna
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_all_qna (
    presult      OUT  SYS_REFCURSOR,
    p_main_text  IN   VARCHAR2,
    p_title      IN   VARCHAR2
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_id
                     FROM
                         qna
                     WHERE
                         main_text LIKE '%'
                                        || p_main_text
                                        || '%'
                         OR title LIKE '%'
                                       || p_title
                                       || '%';

END;
/

CREATE OR REPLACE PROCEDURE sp_search_list_all_qna (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_id,
                         title,
                         user_id,
                         wrdate,
                         qna_type
                     FROM
                         qna
                     ORDER BY
                         qna_id DESC;

END;
/

CREATE OR REPLACE PROCEDURE sp_select_one_qna (
    presult   OUT  SYS_REFCURSOR,
    p_qna_id  IN   qna.qna_id%TYPE
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_id,
                         title,
                         user_id,
                         secret,
                         wrdate,
                         main_text,
                         answer,
                         qna_type
                     FROM
                         qna
                     WHERE
                         qna_id = p_qna_id;

END;
/

CREATE OR REPLACE SYNONYM del_user FOR withdrawal_user;

CREATE OR REPLACE PROCEDURE sp_delete_users (
    p_user_id IN users.user_id%TYPE
) IS
BEGIN
    DELETE FROM users
    WHERE
        user_id = p_user_id;

    COMMIT;
END;
/

DECLARE
    x NUMBER;
BEGIN
    sys.dbms_job.submit(job => x, what => 'sp_del_old_user(sysdate);', next_date => trunc(sysdate) + 1 + 3 / 24,
                       INTERVAL => 'SYSDATE + 1',
                       no_parse => true);
END;

SELECT
    *
FROM
    user_jobs;

BEGIN
    dbms_job.remove(7);
    COMMIT;
END;

CREATE OR REPLACE PROCEDURE sp_update_answer (
    p_qna_id  IN  qna.qna_id%TYPE,
    p_answer  IN  qna.answer%TYPE
) IS
BEGIN
    UPDATE qna
    SET
        answer = p_answer
    WHERE
        qna_id = p_qna_id;

    COMMIT;
END;
/

select user_id from users;

select * from del_user;


-------------------------------

CREATE OR REPLACE PACKAGE chart_PKG IS --패키지 선언

PROCEDURE sp_qna_type(presult OUT SYS_REFCURSOR); --패키지로 묶을 프로시저1

PROCEDURE sp_com_type(presult OUT SYS_REFCURSOR); --패키지로 묶을 프로시저2

END chart_PKG; --패키지 종료

---------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY chart_PKG  IS --패키지 본문

   ----------패키지 선언부 프로시저1----------    
    PROCEDURE sp_qna_type (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         qna_type,
                         COUNT(*) AS cnt
                     FROM
                         qna
                     GROUP BY
                         GROUPING SETS ( qna_type )
                     ORDER BY
                         qna_type;

END sp_qna_type;

    ----------패키지 선언부 프로시저2----------
    
PROCEDURE sp_com_type (
    presult OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN presult FOR SELECT
                         com_type,
                         COUNT(*) AS cnt
                     FROM
                         users
                     GROUP BY
                         GROUPING SETS ( com_type )
                     ORDER BY
                         com_type;

END sp_com_type;

END chart_PKG; --패키지 종료





select * from del_user;