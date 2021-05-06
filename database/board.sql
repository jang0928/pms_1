DROP TABLE BOARD; -- 프로젝트 테이블 삭제
DROP SEQUENCE BOARD_NO_SEQ; -- 시퀀스 삭제
-- ALTER TABLE PR_PROJECT RENAME COLUMN 기존컬럼명 to 변경컬럼; -- 컬럼명 수정


CREATE TABLE BOARD (
   BOARD_NO NUMBER CONSTRAINT PK_BOARD_NO PRIMARY KEY, -- 게시글 번호
   MEM_NAME VARCHAR2(50) NOT NULL, -- 사원명
   TS_TITLE VARCHAR2(200), -- 업무명
   B_INDATE DATE, -- 결재등록 날짜
   B_CONTENT VARCHAR2(3000) NOT NULL, -- 전달 사항(내용)
   B_STATE VARCHAR2(50), -- 결재 상태
   PR_NO NUMBER, -- 프로젝트 번호
   CONSTRAINT FK_BOARD_PR_NO FOREIGN KEY(PR_NO)
   REFERENCES PR_PROJECT(PR_NO) ON DELETE CASCADE
);

-- BOARD_NO 시퀀스 생성
create sequence BOARD_NO_SEQ start with 1
minvalue 1 maxvalue 1000000 CYCLE; 

SELECT * FROM board;

-- 프로젝트 1
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍과장', '요구사항 정의서', '2021-03-25', '요구사항 정의 완료 보고서입니다.', '결재완료',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍과장',  '일정계획', '2021-03-26', '일정계획 완료보고서입니다.', '결재완료',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍과장', 'application설계', '2021-03-26', 'application설계 완료보고서입니다.', '검토중',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍과장','화면설계', '2021-04-18', '화면설계 완료보고서입니다.', '검토중',1);


INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '남대리',  'DB설계', '2021-03-31', 'DB 설계 초안 검토 요청드립니다.', '검토중',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '남대리', '공통모듈 구현', '2021-04-01', 'front 공통모둘 구현관련 list입니다. 결재 요청드립니다.', '반려',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '남대리', 'front end단 구현', '2021-04-10', 'front단 구현 항목 list입니다. 결재 요청드립니다.', '결재',1);

INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '신사원', '스프링 데이터베이스 연동', '2021-04-22', '스프링 데이터베이스 연결 완료 보고 및 결재 요청드립니다.', '반려',1);

INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '나차장', '통합 test 및 배포', '2021-04-26', '통합 test check sheet 항목 결재 요청드립니다.', '반려',1);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '나차장', '배포', '2021-04-28', '고객사 배포 완료보고서 결재 부탁드립니다.', '검토중',1);


-- 프로젝트 2
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍길동', '요구사항 정의서', '2021-03-31', '요구사항 정의 완료 보고서입니다.', '반려',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍길동', '일정계획', '2021-04-01', '일정계획 검토 및 결재 요청드립니다.', '검토중',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍길동', 'application설계', '2021-04-05', 'application설계 완료보고서입니다. 결재 요청드립니다', '반려',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍길동', '화면설계', '2021-04-07', '화면설계 완료보고서입니다.', '결재',2);


INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '김개발', 'DB설계', '2021-04-11', '데이터베이스 오류로 DB설계 업무 일정 조정 요청드립니다.', '검토중',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '김개발',  '공통모듈 구현', '2021-04-10', 'front 공통모둘 구현관련 list입니다. 결재 요청드립니다.', '반려',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '김개발',  'front end단 구현', '2021-04-15', 'front단 구현 업무 지연으로 일정 조정 결재 요청드립니다.', '결재',2);

INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍미원', '스프링 데이터베이스 연동', '2021-04-16', 'DB설계 및 front단 업무 지연으로 스프링 데이터베이스 일정 조정 요청드립니다.', '검토중',2);

INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍판서',  '통합 test 및 배포', '2021-04-23', '통합 test 완료보고서 결재 요청드립니다.', '결재완료',2);
INSERT INTO BOARD VALUES(BOARD_NO_SEQ.NEXTVAL, '홍판서', '배포', '2021-04-25', '고객사 배포 완료보고서 결재 부탁드립니다.', '검토중',2);




SELECT TS_TITLE 
FROM PR_TASK
WHERE PR_NO = 1 AND TS_NO = 8;

SELECT b.*, pp.PR_TITLE 
FROM BOARD b, PR_PROJECT pp 
WHERE b.PR_NO = pp.PR_NO AND  board_no = 9;