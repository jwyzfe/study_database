-- 테이블 생성
CREATE TABLE `QUESTION` (
    `QPK_A` VARCHAR(50) NOT NULL,
    `QUESTION` VARCHAR(50) NULL,
    `ANSWER` VARCHAR(50) NULL,
    `CAR_YEAR` VARCHAR(50) NULL
);

CREATE TABLE `OPTION_TABLE` (
    `OPK_B` VARCHAR(50) NOT NULL,
    `OFK_A` VARCHAR(50) NULL,
    `OPTIONS` VARCHAR(50) NULL
);

DROP TABLE `OPTION_TABLE`;


INSERT INTO `QUESTION` (QPK_A, QUESTION, ANSWER)
VALUES 
('QPK_01', '정기 예금의 주요 특징은 무엇인가요?', 'B'),
('QPK_02', '다음 중 정부가 발행하는 증권 유형은 무엇인가요?', 'A'),
('QPK_03', '대출에서 APR은 무엇의 약자인가요?', 'A'),
('QPK_04', '다음 중 가장 안전한 투자 옵션은 무엇인가요?', 'C'),
('QPK_05', '복리의 주요 이점은 무엇인가요?', 'B');

-- OPTION_TABLE 데이터 삽입
INSERT INTO `OPTION_TABLE` (OPK_B, OFK_A, OPTIONS)
VALUES 
('OPK_01', 'OFK_01', 'A. 높은 유동성'),
('OPK_05', 'OFK_01', 'B. 고정 금리'),
('OPK_06', 'OFK_01', 'C. 만기 기간 없음'),
('OPK_07', 'OFK_01', 'D. 높은 위험'),
('OPK_02', 'OFK_02', 'A. 국채'),
('OPK_08', 'OFK_02', 'B. 회사채'),
('OPK_09', 'OFK_02', 'C. 뮤추얼 펀드'),
('OPK_10', 'OFK_02', 'D. 정기 예금'),
('OPK_03', 'OFK_03', 'A. 연이율'),
('OPK_11', 'OFK_03', 'B. 평균 지급률'),
('OPK_12', 'OFK_03', 'C. 누적 지급 비율'),
('OPK_13', 'OFK_03', 'D. 연간 지급 비율'),
('OPK_04', 'OFK_04', 'A. 주식'),
('OPK_14', 'OFK_04', 'B. 채권'),
('OPK_15', 'OFK_04', 'C. 저축 계좌'),
('OPK_16', 'OFK_04', 'D. 부동산'),
('OPK_05', 'OFK_05', 'A. 세금 절감'),
('OPK_17', 'OFK_05', 'B. 빠른 자산 축적'),
('OPK_18', 'OFK_05', 'C. 유동성 증가'),
('OPK_19', 'OFK_05', 'D. 고정 금리');
