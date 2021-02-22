create database coupang; --데이터베이스 생성

use coupang; -- 데이터 베이스 사용

create table member(        --회원 테이블 생성
  id varchar(30) not null,
  pw varchar(40),
  email varchar(100),
  date datetime,
  phone varchar(15),
    constraint id_pk primary key (id)
);

desc member;

select * from member;

INSERT INTO MEMBER(id,pw,email,date,phone) VALUES("admin","admin","sample@email.com","20210222","01000000000"); --샘플데이터 생성

select * from member;

create table address(       --주소 테이블 생성
    id varchar(30) not null,
    adrs varchar(200),
    dadrs varchar(100),
    phone varchar(15),
    etc varchar(100),
    foreign key (id) references member (id)
);

drop table address;

desc address;

INSERT INTO address(id,adrs,dadrs,phone,etc) VALUES("admin", "서울특별시 관악구 남부순환로247 나길 11", "102호", "01000000000", "택배는 문앞에 놔주세요"); --샘플데이터 생성

desc address;

select * from address;

create table paymentcard(       --카드 테이블 생성
    cardnumber varchar(20),
    cardmm varchar(2),
    cardyy varchar(2),
    cardcvc varchar(4),
    cardpw varchar(4),
    constraint cardnumber_pk primary key (cardnumber)
);

desc paymentcard;

INSERT INTO paymentcard(cardnumber, cardmm, cardyy, cardcvc, cardpw) VALUES("1111111111111111","03","21","111","0000"); --샘플데이터 생성

select * from paymentcard;