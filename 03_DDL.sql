# 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS db_ddl;

# 데이터베이스 사용하기
USE db_ddl;

# 테이블 생성하기 (데이터 저장을 위한 데이터베이스 객체)/1/
# 행(Row), 열(Column)
# 기본 문법: 칼럼명 -> 데이터타입 -> 제약조건 순으로 작성
CREATE TABLE IF NOT EXISTS tbl_product (
product_id   INT             NOT NULL AUTO_INCREMENT PRIMARY KEY, # 기본키 (데이터 식별자)
product_name VARCHAR(50)    NOT NULL, #가변 길이(Variable-Length) 문자열, VARCHAR(n)은 최대 n 글자까지 저장할 수 있는 문자열 컬럼을 정의합니다.
price        DECIMAL(10, 2) NOT NULL, # DECIMAL(p, s)는 총 p자리 숫자 중 소수점 이하를 s자리로 지정해 주는 타입
                                        # p (precision): 전체 숫자의 최대 자리 수, # s (scale): 소수점 이하 자리 수
discount     DECIMAL(10, 2) NULL,
created_at   DATETIME       DEFAULT NOW()
) ENGINE=InnoDB;                       # ENGNINE: SQL이 저장하는 방법(일반적인 웹 개발에서는 InnoDB를 사용합니다.)

# 스토리지 엔진
# Inno DB: 트랜잭션 지원(동시성지원), 외래키 지원(무결성 지원),은행 또는 쇼핑몰등 일반적인 사이트에서 사용.
# MyISAM: 풀텍스트 인덱스 지원(읽기 위주 작업에 특화)

# AUTO_INCREMENT 시작 값을 바꾸는 방법. (설정 안해주면 1부터 시작)
ALTER TABLE tbtbl_productl_product AUTO_INCREMENT = 1000;

# 테이블 삭제하기 (취소 불가능)
 DROP TABLE IF EXISTS tbl_product;
 
 # 데이터베이스 삭제하기 (취소 불가능)
 DROP DATABASE IF EXISTS db_ddl;










