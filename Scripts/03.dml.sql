INSERT ALL
	INTO MEMBER VALUES ('이소미', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0, sysdate)
	INTO MEMBER VALUES ('하상오', 'sang12', '1234', 'ha12@naver.com', '010-5629-8888', 1, sysdate)
	INTO MEMBER VALUES ('김윤승', 'light', '1234', 'youn104@naver.com', '010-9999-8282', 0, sysdate)
	SELECT 1 FROM DUAL;
	
SELECT * FROM MEMBER;

INSERT ALL
	INTO TITLE VALUES (1, '사장')
	INTO TITLE VALUES (2, '부장')
	INTO TITLE VALUES (3, '과장')
	INTO TITLE VALUES (4, '대리')
	INTO TITLE VALUES (5, '사원')
	SELECT 1 FROM DUAL;
	
SELECT * FROM TITLE;

INSERT INTO DEPARTMENT VALUES(1, '영업', 8);
INSERT INTO DEPARTMENT VALUES(2, '기획', 10);
INSERT INTO DEPARTMENT VALUES(3, '개발', 9);
INSERT INTO DEPARTMENT VALUES(4, '총무', 7);

INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(4377, '이성래', 1, NULL, 5000000, 2, 'test@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(3426, '박영권', 3, 4377, 3000000, 1, 'test1@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(3011, '이수민', 2, 4377, 4000000, 3, 'test2@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(3427, '최종철', 5, 3011, 1500000, 3, 'test3@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(1003, '조민희', 3, 4377, 3000000, 2, 'test4@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(2106, '김창섭', 4, 1003, 2500000, 2, 'test5@test.co.kr', '1234');
INSERT INTO EMPLOYEE(EMP_NO, EMP_NAME, TNO, MANAGER, SALARY, DNO, EMAIL, PASSWD) VALUES(1365, '김상원', 5, 3426, 1500000, 1, 'test6@test.co.kr', '1234');

UPDATE EMPLOYEE
   SET tel = '053-1111-1111';

SELECT CODE, NAME, PRICE, PICTUREURL, DESCRIPTION FROM product;
  
insert into product values(null, '개념을 콕콕 잡아주는 데이터베이스', 27000, 'db.jpg', '데이터베이스에 관한 모든 것을 쉽고 재미있게 정리한 교재...');

insert into product(NAME, PRICE, PICTUREURL, DESCRIPTION) values('웹표준을 위한 HTML5', 25000, 'html5.jpg', 'HTML5 가이드북. 홈페이지 제작을 위한 필수 선택 HTML 기본 문법...');
insert into product(NAME, PRICE, PICTUREURL, DESCRIPTION) values('Dynamic Programming book 시리즈-01 오라클 11g + PL/SQL', 25000, 'oracle.jpg','Dynamic 실무 코칭 프로그래밍 Book의 첫번째 책으로, 오라클 11g의 새로운 ...');
insert into product(NAME, PRICE, PICTUREURL, DESCRIPTION) values('Visual C++ MFC 윈도우 프로그래밍', 26000, 'mfc.jpg', 'Visual C++를 처음 시작하는 독자의 눈높이에 맞춘 Visual C++...');
insert into product(NAME, PRICE, PICTUREURL, DESCRIPTION) values('jQuery and jQuery Mobile : 이해하기 쉽게 풀어쓴', 25000, 'jquery.jpg', '소스 하나로 데스크탑과 모바일까지 HTML5와 함께 사용한다. 초보자들도 ...');  
  
  
--
INSERT INTO BOARD(PASS, NAME, EMAIL, TITLE, CONTENT, READCOUNT, WRITEDATE)
VALUES('1234', '성윤정', 'TEST@TEST.CO.KR', '첫방문', '반갑습니다.', 0, '2020-01-14');

SELECT * FROM BOARD;

INSERT INTO BOARD(PASS, NAME, EMAIL, TITLE, CONTENT, READCOUNT, WRITEDATE)
VALUES('1234', '아이유', 'TEST1@TEST.CO.KR', '첫방문1', '반갑습니다.1', 0, '2020-02-14');
INSERT INTO BOARD(PASS, NAME, EMAIL, TITLE, CONTENT, READCOUNT, WRITEDATE)
VALUES('1234', '박규영', 'TEST2@TEST.CO.KR', '첫방문2', '반갑습니다.2', 0, '2020-04-14');
INSERT INTO BOARD(PASS, NAME, EMAIL, TITLE, CONTENT, READCOUNT, WRITEDATE)
VALUES('1234', '이유영', 'TEST3@TEST.CO.KR', '첫방문3', '반갑습니다.3', 0, '2020-05-14');


