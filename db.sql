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

desc address;