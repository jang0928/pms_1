DROP SEQUENCE members_no_seq;
DELETE FROM members;
DELETE FROM dept WHERE deptno=1

CREATE TABLE DEPT(
 DEPTNO NUMBER PRIMARY KEY,
 DNAME VARCHAR2(200) NOT NULL
);

create sequence dept_no_seq  start with 1
minvalue 1 maxvalue 1000000 CYCLE; 

INSERT INTO dept VALUES (dept_no_seq.nextval,'연구1팀');
INSERT INTO dept VALUES (dept_no_seq.nextval,'연구2팀');
INSERT INTO dept VALUES (dept_no_seq.nextval,'연구3팀');
INSERT INTO dept VALUES (dept_no_seq.nextval,'연구4팀');
INSERT INTO dept VALUES (9999,'인사발령');


SELECT* FROM dept;


CREATE TABLE members (
   mem_no NUMBER CONSTRAINT mem_no_pk PRIMARY KEY, -- 사원 번호
   mem_pass varchar2(50) NOT NULL, -- 비밀번호
   mem_name varchar2(50) NOT NULL, -- 이름
   deptno NUMBER, CONSTRAINT members_deptno_fk -- 부서번호
   FOREIGN KEY (deptno) REFERENCES dept(deptno) ON DELETE SET NULL,
   email varchar2(100), -- 이메일
   pnum varchar2(100), -- 전화번호
   auth varchar2(50), -- 권한
   mem_state varchar2(50) -- 상태(투입중, 투입전)
);


create sequence members_no_seq  start with 1000
minvalue 1 maxvalue 1000000 CYCLE; 

SELECT * FROM MEMBERS
ORDER BY mem_no;

SELECT m.*, pp.PR_TITLE FROM MEMBERS m, PR_PROJECT pp
WHERE m.MEM_NO =pp.MEM_NO
ORDER BY m.mem_no;


SELECT  DISTINCT pr_title,pr_date,pr_sdate,MEM_NAME,auth FROM MEMBERS m ,PR_PROJECT pp, PR_TASK pt 
WHERE  pp.PR_NO =pt.PR_NO  AND pt.MEM_NO =m.MEM_NO;

INSERT INTO members values(members_no_seq.nextval,'750220','김피엠',1,'kim@naver.com','010-2544-2366','pm', '투입중');
INSERT INTO members values(members_no_seq.nextval,'830726','홍과장',1,'hong@naver.com','010-2351-2323','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'891010','남대리',1,'nam@naver.com','010-8994-2321','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'910711','신사원',1,'got@naver.com','010-8887-4321','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'780811','나차장',1,'nana@naver.com','010-8888-9999','개발자', '투입중');

INSERT INTO members values(members_no_seq.nextval,'931220','김팀장',2,'qeo@naver.com','010-1532-5232','pm', '투입중');
INSERT INTO members values(members_no_seq.nextval,'950928','홍길동',2,'doo@naver.com','010-4452-6632','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'890110','김개발',2,'xlss@naver.com','010-4998-1232','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'850211','홍미원',2,'wppp@naver.com','010-7888-1234','개발자', '투입중');
INSERT INTO members values(members_no_seq.nextval,'950825','홍판서',2,'hps@naver.com','010-7777-6666','개발자', '투입중');

INSERT INTO members values(members_no_seq.nextval,'761020','박서준',3,'aaa@naver.com','010-1111-2222','pm', '투입전');
INSERT INTO members values(members_no_seq.nextval,'850221','이예준',3,'bbb@naver.com','010-3333-4444','개발자', '투입전');
INSERT INTO members values(members_no_seq.nextval,'871010','한시우',3,'ccc@naver.com','010-5555-6666','개발자', '투입전');
INSERT INTO members values(members_no_seq.nextval,'920411','김주원',3,'ddd@naver.com','010-7777-8888','개발자', '투입전');
INSERT INTO members values(members_no_seq.nextval,'930725','신예은',3,'eee@naver.com','010-9999-0000','개발자', '투입전');
INSERT INTO members values(members_no_seq.nextval,'900311','홍인사',21,'ddd@naver.com','010-9999-1111','인사', null);


update  members SET mem_state ='투입중';

update  members SET mem_state ='투입전' WHERE mem_no=1027;-- 프로젝트 안들어가있는 번호로 


SELECT DISTINCT mem_name,email,pnum FROM members m2 
WHERE  mem_state ='투입전';





		SELECT  DISTINCT pt.MEM_NO, pr_title,pr_sdate,pr_edate,
		MEM_NAME,auth
		FROM MEMBERS m ,PR_PROJECT pp, PR_TASK pt 
		WHERE  pp.PR_NO =pt.PR_NO 
		AND pt.MEM_NO =m.MEM_NO AND pp.PR_STATE = '진행중'
		ORDER BY PR_TITLE;
	
		SELECT  count(DISTINCT pt.MEM_NO)
		FROM MEMBERS m ,PR_PROJECT pp, PR_TASK pt 
		WHERE  pp.PR_NO =pt.PR_NO 
		AND pt.MEM_NO =m.MEM_NO AND pp.PR_STATE = '진행중';
		ORDER BY PR_TITLE;
	
	SELECT dname, mem_name,email,pnum,auth,mem_no,mem_pass FROM members m,dept d
	WHERE m.DEPTNO =d.DEPTNO AND MEM_NO != ALL (
		SELECT  DISTINCT pt.MEM_NO
		FROM MEMBERS m ,PR_PROJECT pp, PR_TASK pt 
		WHERE  pp.PR_NO =pt.PR_NO  
		AND pt.MEM_NO =m.MEM_NO AND pp.PR_STATE = '진행중')
		ORDER BY MEM_NO;
	
			SELECT DISTINCT dname, mem_name,email,pnum,auth,mem_no,mem_pass FROM members m,dept d
		WHERE mem_state='투입전' AND m.DEPTNO =d.DEPTNO
		
						SELECT NVL(m.DEPTNO, 0), mem_name,email,pnum,auth,mem_no,mem_pass FROM members m,dept d
		WHERE m.DEPTNO =d.DEPTNO;
		
				SELECT dname, mem_name,email,pnum,auth,mem_no,mem_pass FROM members m,dept d
		WHERE m.DEPTNO =d.DEPTNO AND MEM_NO != ALL (
			SELECT  DISTINCT pt.MEM_NO
			FROM MEMBERS m ,PR_PROJECT pp, PR_TASK pt 
			WHERE  pp.PR_NO =pt.PR_NO 
			AND pt.MEM_NO =m.MEM_NO AND pp.PR_STATE = '진행중')
			ORDER BY MEM_NO;
		
update  members SET DEPTNO = 0 WHERE DEPTNO = 4;-- 프로젝트 안들어가있는 번호로 		
		