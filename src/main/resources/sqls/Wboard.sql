DROP TABLE wboard [DROP CONSTRAINTS] WBOARD_PK

ALTER TABLE wboard DROP PRIMARY KEY WBOARD_PK

DROP SEQUENCE wboard_seq

CREATE SEQUENCE wboard_seq

--시퀀스를 해당 위치에다가 넣어 두기 

CREATE TABLE wboard
(
	wbtodono NUMBER NOT NULL, --위젯보드 해야할일 전체 번호
	wno NUMBER NOT NULL, --위젯번호
	dno NUMBER NOT NULL, --고유넘버(모든사람이 공통으로 가짐),위젯이 속한 대시보드 테이블 번호 
	dgno NUMBER NOT NULL, --대시보드 맴버 권한 그룹 넘버 
	mid VARCHAR2(500) NOT NULL, -- 추가해야할 거 같음 ~ 실험 완성후 갖다 붙이기 
	wbtodo VARCHAR2(4), --Y : 한일 N : 해야 할 일 , 전체할일은 
	wbtitle VARCHAR2(1000), 
	wbcontent VARCHAR2(1000),
	wfno_list VARCHAR2(1000), --파일 테이블 번호 
	wbstartdate DATE NOT NULL,
	wbenddate DATE,
	wbcolor VARCHAR2(50), -- 하일 게시판 색상 
	CONSTRAINT WBOARD_PK PRIMARY KEY(wbtodono)
)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,1,1,1,'a','N','고양이 간식사러 가기 ','6시간 마다 사료가 나오는 통이 있으면 좋겠다 ',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,1,1,2,'a','N','샤워하기 ','아침마다 혹은 저녁마다 ',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,1,1,3,'b','N','친구만나기 건대3번출','배팅이 성공하였따',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,1,1,3,'b','Y','밥먹기','다이소에 가자',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,1,1,3,'b','Y','할일제목','할일내용',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,2,1,1,'a','N','할일제목','할일내용',NULL,SYSDATE,NULL,NULL)

INSERT INTO wboard VALUES
(wboard_seq.NEXTVAL,2,1,1,'a','N','lsdkfjlskdjsdkfjlasdkjflkdjlkfajlsdkfjlsdkjflksjdlf','할일내용',NULL,SYSDATE,NULL,NULL)



SELECT * FROM WBOARD;

SELECT * FROM WBOARD WHERE mid = 'f';

delete from wboard where wbtodono = 2;

select to_char(wbstartdate,'yyyy-mm-dd') FROM WBOARD;
select * from wboard where wno =1;

update wboard set wbtitle='수정수'where wbtodono =3;


--썸머노트 안씁니다
drop SEQUENCE  "SUMMERBOARD_SEQ";

CREATE SEQUENCE  "SUMMERBOARD_SEQ"
MINVALUE 1 MAXVALUE 9999999999999999999999999999 
INCREMENT BY 1 START WITH 1 NOCACHE;

--달력 

create sequence wbcalseq

create table wbcal(
	wbcalno number primary key, --seq 번호가 될것 
	wno number not null, --해당 위젯 넘버 / fk
	mid varchar2(500) not null, -- fk
	wbtodono NUMBER NOT NULL, --위젯보드 해야할일 전체 번호/fk
	wbtitle VARCHAR2(1000), 
	wbstartdate DATE NOT NULL,
	wbenddate DATE,
	wbcolor VARCHAR2(50)
)

select * from wbcal;
