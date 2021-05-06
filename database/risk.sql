DROP TABLE risk; -- 프로젝트 테이블 삭제
DROP SEQUENCE risk_NO_SEQ; -- 시퀀스 삭제
-- ALTER TABLE PR_PROJECT RENAME COLUMN 기존컬럼명 to 변경컬럼; -- 컬럼명 수정
UPDATE risk SET risk_sol ='기술적 로직의 검토' WHERE risk_no=6;

CREATE TABLE risk(
 risk_no NUMBER CONSTRAINT risk_no_pk PRIMARY KEY, -- 리스크 번호
 risk_refno NUMBER, -- 상위리스크번호
 risk_title varchar2(100), -- 제목
 risk_content varchar2(3000), -- 내용
 mem_name varchar(50) NOT NULL, -- 사원명
 risk_list varchar2(200) NOT NULL, -- 리스크항목
 risk_sol varchar2(50), -- 해결 방안
 risk_state varchar2(50), -- 처리상태
 risk_indate DATE, -- 등록 날짜
 risk_findate DATE, --처리완료 날짜
 pr_no NUMBER ,CONSTRAINT  -- 프로젝트 번호
 risk_pr_no_fk FOREIGN KEY (pr_no) REFERENCES pr_project(pr_no) ON DELETE CASCADE,
 ts_title varchar2(200) -- 업무 명
);

SELECT* FROM risk;

CREATE SEQUENCE risk_NO_SEQ START WITH 1
MINVALUE 1 MAXVALUE 1000000 CYCLE;


--1. Event: 위험이 발생할 수 있는 상황(징후) <- Risk 식별시 고려.  --위험보다 알지못하는 위험
--=> Event = 리스크 발생확률(Probability) * 영향(Impact)
--2. Probability(=likelihood / outcome: 가능성/확률): 불확실성 - 아직 발생하지 않음 <- Risk 정성/정량 분석 시 사용. -- 알고있는 위험, pm책임선에서 정리
--3. Impact(=Consequences: 영향도) : 프로젝트에 영향을 줌 --문제해결


--1번 해결방안
--위험 등록부(Risk Register)
--- 식별된 리스크 목록: 근본 원인 / 불확실한 가정에 의해 식별된 ㄹ기스크에 대해 기술한다.
--- 가능한 대응 목록: 식별된 리스크에 대한 잠재적 대응은 Risk를 식별하는 과정에 도출 될 수 있다.
---> 대응 방법이 식별된 Risk는 이 정보가 대응 계획 수립시 유용하게 사용된다.
--

--2번 해결방안
--1) 리스크 등록부 갱신
--	프로젝트가 기준 값으로 고정되었다고 가정할 경우 어느 특정 요소가 변경되는 경우 전체 프로젝트에 미치는 영향력 분석
--	모든 불확실성이 계량화 될 경우, 어떤 의사결정이 가장 큰 기대값을 갖는지 보여줌.
--

	
--3번 해결방안
--회피(Avoidance): 리스크/리스크 발생조건을 제거하거나 프로젝트 계획을 변경하여 "원인 제거".
--(2) 전가(Transfer): 리스크의 결과를 대응의 소유권과 함께 제 삼자에게 이전시키는 노력, 리스크 전가는 단지 다른 당사자에게 리스크 관리의 책임을 이전하는 것이지, 리스크를 제거하는 것은 아니다. 예) 보험 / 이행보증 / 사후 보증 / 보장 등.
--(3) 완화(Mitigation): 부정적 리스크 사건의 확률 / 결과를 용인 가능한 임계점까지 절감하고자 하는 노력. 리스크 발생의 확률 / 영향을 절감하기 위한 조치는 발생 이후보다는 사전에 취하는 것이 효과적.
--(4) 수용

--1) 부정적인 리스크 / 위협에 대응 전략
--(1) 회피(Avoidance): 리스크/리스크 발생조건을 제거하거나 프로젝트 계획을 변경하여 "원인 제거".
--- 프로젝트의 리스크는 제거할 수 없지만, 일부 특정 리스크는 회피할 수 있다. 예) 프로젝트 예산이 10억, 위험 대응 비용이 9억이라면 Risk Mgt하지 않고 계획 변경을 하는 것이 유리하다. 
--(2) 전가(Transfer): 리스크의 결과를 대응의 소유권과 함께 제 삼자에게 이전시키는 노력, 리스크 전가는 단지 다른 당사자에게 리스크 관리의 책임을 이전하는 것이지, 리스크를 제거하는 것은 아니다. 예) 보험 / 이행보증 / 사후 보증 / 보장 등.
--(3) 완화(Mitigation): 부정적 리스크 사건의 확률 / 결과를 용인 가능한 임계점까지 절감하고자 하는 노력. 리스크 발생의 확률 / 영향을 절감하기 위한 조치는 발생 이후보다는 사전에 취하는 것이 효과적.
--(4) 수용(Acceptance): 리스크를 다루기 위한 프로젝트 계획 변경을 하지 않거나, 대응 전략을 찾지 못하는 경우.
--- 적극적 수용(Active Acceptance): 돌발 상황 계획(Contingency Plan) 포함. - New System 오픈 시, 장애 발생을 대비하여 Backup 계획 수립.
--- 소극적 수용(Passive Acceptance): 아무 조치도 하지 않는다. 예) 리스크 자체는 500만원이고 해결을 위한 예비비는 1000만원인 경우.
--2) 긍적적인 리스크 / 기회 대응 전략
--(1) 활용(Exploit): 프로젝트에 유용한 자원을 보다 많이 배정하여 더 좋은 품질을 제공 / 완료 기간 단축(Crashing / Pre-Assignment)
--(2) 공유(Share): "기회관리"라는 명백한 목적하에 리스크 공유 협력 관계 / 팀 / 제휴회사 체결
--(3) 증대(Enhance): 긍정 기회의 "규모"를 변경
--(4) 수용(Acceptance): 부정 리스크 위협 대응 전략의 Acceptance와 동일 

SELECT * FROM risk;
--마지막 
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
	 (risk_no_seq.nextval,0,'제목','내용','홍길동','Event','회피(Avoidance)','조치완료',TIMESTAMP'2021-04-01 18:14:31.0',TIMESTAMP'2021-04-20 00:00:00.0',1,'backend 개발');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES	
	 (risk_no_seq.nextval,0,'특정패턴 오류','a사이트와 b사이트를 반복해서 이동하면 오류가 발생함','김개발','Impact','회피(Avoidance)','조치중',TIMESTAMP'2021-04-01 16:36:51.0',TIMESTAMP'2021-04-20 00:00:00.0',1,'DB 설계');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES	 
	(risk_no_seq.nextval,0,'참여인원 개발 건 ','참여인원간의 개발 리스트의 문제점','홍길동','Event','공유(Share)','조치중',TIMESTAMP'2021-04-01 16:36:52.0',TIMESTAMP'2021-04-20 00:00:00.0',1,'요구사항 정의서');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES	
(risk_no_seq.nextval,0,'참여인원이 부족해요 ','참여인원간의 비용및 시간이 부족합니다 인원 보충해주세요 ,,','홍길동','Impact','공유(Share)','조치중',TIMESTAMP'2021-04-20 00:00:00.0',TIMESTAMP'2021-05-20 00:00:00.0',2,'일정계획');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'데이터조회 에러 ','특정인원의 조회가 불가능합니다','홍미원','Probability','회피(Avoidance)','조치완료',TIMESTAMP'2021-04-01 16:36:54.0',TIMESTAMP'2021-03-30 00:00:00.0',2,'back end 개발');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'새로고침 시 오류가 뜸 ','a사이트에서 새로고침 반복 시 에러가 뜹니다.','김개발','Impact','회피(Avoidance)','조치중',TIMESTAMP'2021-04-01 16:36:55.0',TIMESTAMP'2021-04-15 00:00:00.0',2,'공통모듈 구현');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'특정패턴 오류','a사이트와 b사이트를 반복해서 이동하면 오류가 발생함','김개발','Impact','수용(Acceptance)','조치중',TIMESTAMP'2021-04-01 16:36:55.0',TIMESTAMP'2021-04-20 00:00:00.0',2,'front end단 구현');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'참여인원 개발 건 ','참여인원간의 개발 리스트의 문제점','홍길동','Event',' 완화(Mitigation)','조치중',TIMESTAMP'2021-04-01 16:36:49.0',TIMESTAMP'2021-04-20 00:00:00.0',1,'front end 개발');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'수정함','수정내용임','홍길동','Event','활용(Exploit)','조치완료',TIMESTAMP'2021-04-01 16:36:50.0',TIMESTAMP'2021-04-01 17:11:57.0',1,'스프링 데이터베이스 연동');
INSERT INTO risk (RISK_NO,RISK_REFNO,RISK_TITLE,RISK_CONTENT,MEM_NAME,RISK_LIST,RISK_SOL,RISK_STATE,RISK_INDATE,RISK_FINDATE,PR_NO,TS_TITLE) VALUES
(risk_no_seq.nextval,0,'컴퓨터 오류 ','지나치게 낮은 컴퓨터 사양으로 프로그램 가동 불가','김개발','Probability','활용(Exploit)','조치중',TIMESTAMP'2021-04-01 16:36:56.0',TIMESTAMP'2021-04-20 00:00:00.0',2,'front end 개발');


/*INSERT INTO risk values(risk_no_seq.nextval,0,'참여인원 개발 건 ','참여인원간의 개발 리스트의 문제점','홍길동','우수인력간의 협조부재','협상','조치중',sysdate,'2021-04-20',1);
INSERT INTO risk values(risk_no_seq.nextval,0,'데이터조회 에러 ','특정인원의 조회가 불가능합니다','홍길동','특정데이터의 에러','기술적 로직의 오류 ','조치중',sysdate,'2021-04-30',1);
INSERT INTO risk values(risk_no_seq.nextval,0,'비용 절감 ','프로젝트 개발 간 비용이 부족해 진행 불가합니다','김개발','비용부족','협상','조치중',sysdate,'2021-04-15',1);
INSERT INTO risk values(risk_no_seq.nextval,0,'특정패턴 오류','a사이트와 b사이트를 반복해서 이동하면 오류가 발생함','김개발','특정 데이터의 오류','기술적 로직의 검토','조치중',sysdate,'2021-04-20',1);
INSERT INTO risk values(risk_no_seq.nextval,0,'참여인원 개발 건 ','참여인원간의 개발 리스트의 문제점','홍길동','우수인력간의 협조부재','협상','조치중',sysdate,'2021-04-20',1);

INSERT INTO risk values(risk_no_seq.nextval,0,'참여인원이 부족해요 ','참여인원간의 비용및 시간이 부족합니다 인원 보충해주세요 ','홍길동','비용부족','협상','조치중','2021-04-20','2021-05-20',2);
INSERT INTO risk values(risk_no_seq.nextval,0,'데이터조회 에러 ','특정인원의 조회가 불가능합니다','홍미원','특정데이터의 에러','기술적 로직의 오류 ','조치완료',sysdate,'2021-03-30',2);
INSERT INTO risk values(risk_no_seq.nextval,0,'새로고침 시 오류가 뜸 ','a사이트에서 새로고침 반복 시 에러가 뜹니다.','김개발','특정 데이터의 오류','기술적 로직의 검토','조치중',sysdate,'2021-04-15',2);
INSERT INTO risk values(risk_no_seq.nextval,0,'특정패턴 오류','a사이트와 b사이트를 반복해서 이동하면 오류가 발생함','김개발','특정 데이터의 오류','기술적 로직의 검토','조치중',sysdate,'2021-04-20',2);
INSERT INTO risk values(risk_no_seq.nextval,0,'참여인원 개발 건 ','참여인원간의 개발 리스트의 문제점','홍길동','우수인력간의 협조부재','협상','조치중',sysdate,'2021-04-20',2);*/




---리스크 리스트 조회문 pr_no 파라미터 
SELECT  pr_title,ts_title,risk_title,mem_name,risk_list,risk_state ,RISK_FINDATE FROM RISK r ,PR_PROJECT p
WHERE r.PR_NO =p.PR_NO and p.PR_NO=1;

SELECT * FROM risk;

--리스크 등록(risk_list, risk_sol 고정값으로 select문 이용하여  insert, ts_title은 쿼리이용하여  select문으로  insert)
INSERT INTO risk  VALUES(risk_no_seq.nextval,0,'제목','내용','홍길동','event','회피','조치완료',sysdate,'2021-04-20',1,'backend 개발');

---ts title 조회
SELECT ts_title,mem_name FROM PR_TASK p,MEMBERS m WHERE p.MEM_NO =m.MEM_NO AND p.PR_NO =1 AND m.MEM_NAME='김개발';


--리스크 상세조회 (risk_no 파라미터)
select * from risk WHERE risk_no=1;

---조치 상태 변경 risk_no,risk_state 파라미터
UPDATE risk SET risk_state='조치완료' ,RISK_FINDATE =sysdate WHERE RISK_NO =1;


--리스크 계층 구조 & 페이징  between 파라미터 
   SELECT * FROM (
SELECT rownum cnt , LEVEL,a.* FROM risk a
START WITH risk_refno=0
CONNECT BY PRIOR risk_no= risk_REFNO 
ORDER siblings BY risk_no DESC )
WHERE cnt BETWEEN 1 and 5;

--risk_refno NUMBER, -- 상위리스크번호
-- risk_title varchar2(100), -- 제목
-- risk_content varchar2(3000), -- 내용
-- mem_name varchar(50) NOT NULL, -- 사원명
-- risk_list varchar2(200) NOT NULL, -- 리스크항목
-- risk_sol varchar2(50), -- 해결 방안
-- risk_state varchar2(50), -- 처리상태
-- risk_indate DATE, -- 등록 날짜
-- risk_findate DATE, --처리완료 날짜
-- pr_no

--리스크 수정
UPDATE risk SET risk_title='수정함' , risk_content='수정내용임', risk_list ='위험이 발생할 수 있는 상황',
risk_sol='위험 등록부 - 대응계획 수립', RISK_STATE ='조치완료',RISK_FINDATE=SYSDATE 
WHERE risk_no=2;


--리스크 삭제
DELETE FROM RISK  WHERE risk_no=3;

--리스크 파일 첨부  fname,pathname 은 파라미터값으로.
INSERT INTO PMSFILE VALUES(PMSFILE_NO_SEQ.nextval,NULL,risk_no_seq.nextval, '보고서1', 'c:\\user', sysdate);

--리스크 파일 수정 
update PMSFILE
set fname = '보고서2'
where file_no = 12
and fname = '보고서1'  
		


--인원 조회 
SELECT DISTINCT MEM_NAME, pr_title,pr_date, pr_sdate FROM MEMBERS m ,PR_PROJECT pp ,PR_TASK pt
WHERE m.MEM_NO =pt.MEM_NO AND pp.PR_NO =pt.PR_NO ORDER BY MEM_NAME;


--인원 삭제
DELETE FROM members WHERE mem_no=1000;

--인원 등록
INSERT INTO MEMBERS values(members_no_seq.nextval,671227,'김미자',1,'hue@daum.net','010-2315-8931','개발자');

--인원 수정 
UPDATE MEMBERS SET mem_pass='641011', mem_name='강아지',DEPTNO =2,EMAIL ='asd_@daum.net',pnum='010-7895-6561'
WHERE mem_no=1010;