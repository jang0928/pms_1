DROP TABLE calendar;

create table calendar(
   id number CONSTRAINT calender_id_pk primary key, -- id 
   groupId number, --group id 
   title varchar2(50), -- 일정명
   mem_no NUMBER, -- 작성자(사원번호)
   CONSTRAINT fk_calendar_mem_no FOREIGN KEY (mem_no)
   REFERENCES MEMBERS(mem_no) ON DELETE SET NULL ,
   content varchar2(1000),   -- 내용
   start1 varchar2(50),  -- 시작 날짜
   end1 varchar2(50),  -- 종료 날짜
   allDay number(1), 
   textColor varchar2(50),
   backgroundColor varchar2(50),
   borderColor   varchar2(50)
);

--BACKGROUNCCOLOR
SELECT * FROM calendar;

SELECT id, title, 
      to_char(start1, 'YYYY-MM-DD"T"HH24:MI:SS') start1,
      to_char(end1, 'YYYY-MM-DD"T"HH24:MI:SS') end1,
      mem_no,
      content,
      allday,
      textColor,
      backgroundColor,
      borderColor
FROM CALENDAR;               
 
create sequence cal_seq
   start with 1
   increment by 1
   minvalue 1
   maxvalue 9999999;
  
create sequence cal_gp_seq
   start with 10000
   increment by 1
   minvalue 1
   maxvalue 99999;
   
  
--데이터 입력 
SELECT * FROM calendar ;

INSERT INTO calendar values(cal_seq.nextval,cal_seq.currval,
   '프로젝트 시작',1001,'내용입력함',
   '2021-04-01T00:00:00.000Z',
   '2021-04-02T00:00:00.000Z',
   1, 'yellow', 'navy', 'orange'); 

  SELECT DISTINCT pp.PR_TITLE, pp.PR_SDATE, pp.PR_EDATE 
FROM PR_TASK pt, PR_PROJECT pp 
WHERE pt.PR_NO = pp.PR_NO AND pt.MEM_NO = 1001;

SELECT  DISTINCT cl.ID , pp.PR_TITLE title, pp.PR_SDATE start1, pp.PR_EDATE end1, cl.ALLDAY, CL.TEXTCOLOR ,CL.BORDERCOLOR ,CL.BACKGROUNDCOLOR 
FROM PR_TASK pt, PR_PROJECT pp , CALENDAR cl
WHERE pt.PR_NO = pp.PR_NO AND cl.MEM_NO =pp.MEM_NO AND pt.MEM_NO = 1002;


