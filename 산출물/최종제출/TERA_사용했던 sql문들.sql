-- 문의 내용 삽입 및 확인
INSERT INTO QUESTION VALUES (SEQ_QT_NO.NEXTVAL, '분실물 문의 더미 데이터4', '분실물 문의 더미 데이터1의 내용', 1234, '010-1234-1234', '임꺽정', '분실물', 'LOST@NAVER.COM', NULL, NULL, NULL, NULL, NULL, 'admin', 'Y', '홍대', '답변 내용', SYSDATE, 'admin', '서울의봄', null);
INSERT INTO QUESTION VALUES (SEQ_QT_NO.NEXTVAL, '1대1 문의 더미 데이터4', '1대1 문의 더미 데이터1의 내용', 1234, '010-1234-1234', '임꺽정', '일대일', 'LOST@NAVER.COM', '일대일 타입', '일대일 사진', NULL, NULL, NULL, 'admin', 'Y', '신촌', '답변 내용', SYSDATE, 'admin', '서울의봄', null);
INSERT INTO QUESTION VALUES (SEQ_QT_NO.NEXTVAL, '대관 문의 더미 데이터4', '대관 문의 더미 데이터1의 내용', 1234, '010-1234-1234', '임꺽정', '대관', 'LOST@NAVER.COM', NULL, NULL, 7, SYSDATE, 30, 'admin', 'Y', '대학로', '답변 내용', SYSDATE, 'admin', '서울의봄', null);
SELECT COUNT(*) FROM QUESTION WHERE QUEST_DIVISION = '분실물';

SELECT ROWNUM, 
QUEST_NO, QUEST_TITLE, QUEST_CONTENT, QUEST_PASS_NO, QUEST_PHONE, QUEST_NAME, QUEST_DIVISION, 
QUEST_EMAIL, MEMBER_ID, ANSW_CHECK, CINEMA_ID, ANSW_CONTENT, ANSW_REG_DTTM, ANSW_MEMBER_ID 
FROM 
    ( 
    SELECT QUEST_NO, QUEST_TITLE, QUEST_CONTENT, QUEST_PASS_NO, QUEST_PHONE, QUEST_NAME, QUEST_DIVISION, 
            QUEST_EMAIL, MEMBER_ID, ANSW_CHECK, CINEMA_ID, ANSW_CONTENT, ANSW_REG_DTTM, ANSW_MEMBER_ID 
    FROM QUESTION 
    WHERE QUEST_DIVISION = '분실물' 
    ORDER BY QUEST_NO DESC
    )
WHERE ROWNUM BETWEEN 1 AND 6;

SELECT ROWNUM, QUEST_NO, QUEST_TITLE, QUEST_CONTENT, QUEST_PASS_NO, QUEST_PHONE, QUEST_NAME, QUEST_DIVISION, 
QUEST_EMAIL, MEMBER_ID, ANSW_CHECK, CINEMA_ID, ANSW_CONTENT, ANSW_REG_DTTM, ANSW_MEMBER_ID 
FROM (
SELECT QUEST_NO, QUEST_TITLE, QUEST_CONTENT, QUEST_PASS_NO, QUEST_PHONE, QUEST_NAME, QUEST_DIVISION, 
QUEST_EMAIL, MEMBER_ID, ANSW_CHECK, CINEMA_ID, ANSW_CONTENT, ANSW_REG_DTTM, ANSW_MEMBER_ID 
FROM QUESTION 
WHERE QUEST_DIVISION = '분실물' 
ORDER BY QUEST_NO DESC) 
WHERE ROWNUM BETWEEN 1 AND 5;

SELECT COUNT(*) FROM QUESTION WHERE QUEST_DIVISION = '분실물';

COMMIT;

SELECT COUNT(*) FROM QUESTION WHERE QUEST_DIVISION IS NOT NULL;


-- PK로 사용할
-- 각 영역 시퀀스 번호 생성
-- 1) 영화: MV
CREATE SEQUENCE SEQ_MV_NO
MAXVALUE 9999;
-- 2) 예매: TK
CREATE SEQUENCE SEQ_TK_NO
MAXVALUE 9999;
-- 3) 극장: CN
CREATE SEQUENCE SEQ_CN_NO
MAXVALUE 9999;
-- 4) 문의: QT
CREATE SEQUENCE SEQ_QT_NO
MAXVALUE 9999;
-- 5) 멤버: MEM
CREATE SEQUENCE SEQ_MEM_NO
MAXVALUE 9999;

SELECT * FROM USER_SEQUENCES;

-- 영화 삽입
INSERT INTO MOVIE 
VALUES (
    SEQ_MV_NO.NEXTVAL, 
    '서울의 봄', 
    '12.12: THE DAY', 
    'https://kobis.or.kr/common/mast/movie/2023/11/thumb_x640/thn_2d4842b5ae044adfaa2769ab51542ab8.jpg',
    '1979년 12월 12일, 수도 서울 군사반란 발생
    그날, 대한민국의 운명이 바뀌었다
    
    대한민국을 뒤흔든 10월 26일 이후, 서울에 새로운 바람이 불어온 것도 잠시
    12월 12일, 보안사령관 전두광이 반란을 일으키고
    군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.',
    '2D',
    '김성수',
    '드라마 / 141분',
    '12세이상관람가',
    '2023.11.22',
    '황정민, 정우성, 이성민, 박해준, 김성균, 김의성'
);
INSERT INTO MOVIE 
VALUES (
    SEQ_MV_NO.NEXTVAL, 
    '어벤져스: 에이지 오브 울트론', 
    'The Avengers: Age of Ultron', 
    'https://www.kobis.or.kr/common/mast/movie/2015/03/c26db862b6a1440bb84459b86b822727.jpg',
    '어벤져스는 끝났다! 희망은 없다!
    어벤져스를 위협하는 사상 최강의 적 ‘울트론’의 등장
    인류를 멸종시키려는 거대한 음모를 가진
    ‘울트론’과 거대한 전쟁이 시작된다!',
    '2D/3D/4D/IMAX',
    '조스 웨던',
    '액션, SF / 141분',
    '12세이상관람가',
    '2015.04.23',
    '로버트 다우니 주니어, 크리스 헴스워스, 마크 러팔로, 크리스 에반스, 스칼렛 요한슨'
);
INSERT INTO MOVIE 
VALUES (
    SEQ_MV_NO.NEXTVAL, 
    '셔터 아일랜드', 
    'Shutter Island', 
    'https://kobis.or.kr/common/mast/movie/2011/12/thumb_x640/thn_4cdb36ba99404c6d8c8f0be74d1ac9ad.jpg',
    '누군가 사라졌다
    
    보스턴 셔터아일랜드의 정신병원에서 환자가 실종되는 사건이 발생한다. 
    연방보안관 테디 다니엘스(레오나르도 디카프리오)는 수사를 위해 동료 척(마크 러팔로)과 함께 셔터아일랜드로 향한다. 
    셔터 아일랜드에 위치한 이 병원은 중범죄를 저지른 정신병자를 격리하는 병동으로 탈출 자체가 불가능하다.',
    '2D',
    '마틴 스코세이지',
    '미스터리, 스릴러 / 138분',
    '15세이상관람가',
    '2010-03-18',
    '마크 러팔로, 레오나르도 디카프리오'
);
INSERT INTO MOVIE 
VALUES (
    SEQ_MV_NO.NEXTVAL, 
    '짱구는 못말려: 엉덩이 폭탄', 
    'Crayon Shin-Chan', 
    'https://www.kobis.or.kr/upload/up_img/cleansing/70/thumb_x192/thn_mov_20090570_1.jpg',
    '제주도에서 오랜만에 평화로운 휴가를 즐기는 짱구네. 
    짱구와 즐거운 한 때를 보내던 흰둥이는 눈 깜짝 할 사이 엉덩이에 의문의 기저귀(?)가 붙어 버린다. 
    짱구네를 찾아 온 U.N.K.A.는 흰둥이 엉덩이의 기저귀가 지구를 날려버릴 폭탄이라고 말하며 흰둥이를 폭탄과 함께 우주로 보내버려야 한다고 하고, 
    짱구는 흰둥이를 보낼 수 없어 몰래 응카를 피해 도망을 친다.',
    '2D',
    '무토우 유지',
    '애니메이션, 코미디, 가족 / 102분',
    '전체관람가',
    '2009-09-24',
    ' 나라하시 미키, 후지와라 케이지, 야지마 아키코'
);
INSERT INTO MOVIE 
VALUES (
    SEQ_MV_NO.NEXTVAL, 
    '존 윅 - 리로드', 
    'John Wick Chapter Two', 
    'https://www.kobis.or.kr/common/mast/movie/2020/08/thumb_x192/thn_a9c3a0eb90ab460bb4b0a67e340f6812.jpg',
    '장전 완료! 준비는 끝났다!

    업계 최고의 레전드 킬러 ‘존 윅’은 과거를 뒤로한 채 은퇴를 선언하지만, 과거 자신의 목숨을 구했던 옛 동료와 피로 맺은 암살자들의 룰에 의해 로마로 향한다.
    ‘국제 암살자 연합’을 탈취하려는 옛 동료의 계획으로 ‘존 윅’은 함정에 빠지게 되고, 전세계 암살자들의 총구는 그를 향하는데...',
    '2D, 4D',
    '채드 스타헬스키',
    '액션, 범죄, 스릴러 / 122분',
    '청소년관람불가',
    '2017-02-22',
    '키아누 리브스, 이안 맥쉐인, 루비 로즈'
);
