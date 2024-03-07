# song
C/C++database arduino raspberrypi lot

---
##2024-02-22
---
+
-instruction.
girthub sign up.
githup create setting.
ubuntu hangul setting.
VsCode install
git install
'''shell
sudo apt-get inatall git
git clone https://github.com/shdshdshdshdshdshdshdshdshdshd/song.git

## 2024-02-23
---

-mysql ubuntu 문제해결
- user 을 새로 만들어서 권한을 주어 봤지만 해결되지 않음.
 권한 설정 및 user sreat 시
 - ALTER USTER 'root '@' localhost' IDENTIFIED my sql_native_password BY '0000';' 명령어
 사용
  - 새로운 유저를 만들때 mysql_native_password를 사용하도록 설정
  -우분투 MYWORKBENCH에서 토드를 작성하고 VSCODE에서 GI에 연동
  - 추가한 파일 : 
  - cteste _batabase.sql
  -create_table.sql
  -insert_data.sql
  -create_user.sql
  -select1. sql
  -3장 내용 추가
  - 셀렉트 쓰는 방법
 도메인무결성, 개체무결성, 참조 무결성
 2장 데이터베이스 모델진행
 3장 group by 165p 까지 진행
 원도우 DBMS를 우분투에서 연결
 원도우 DBMS 에 외부 IP 접근 가능한 user 생성
 원도우 방화벽에 3306 포트 열기
 원도우 DBMS에 임이의 데이터 넣고 우분투에서
 우분투 DBMS를 윈도우에서 연결
  우분투 DBMS에 외부 IP 접근 가능한 user 생성
  우분투 반화벽에 전체 포트 열기.
  우분투 DBMS에 임이의 데이터 넣고 윈도우에서 확인
  vertualbox 프로그램에서는 windowf로 가는 ping 이 되지 않음,( 학생들이 직접 확인하지 못함)
  VMware 프고그램에서는 windows로 가는 ping 이 잘 됨.(프로젝트 화면으로 보여만 줌)

  ## 2024-02-29


  TARGET = fahr2Celsius fahr2Celsius2 fahr2Celsius3 literal score triangle

all : ${TARGET} 


fahr2Celsius: $@
fahr2Celsius2:$@
fahr2Celsius3: $@
literal: $@
score: $@
triangle: $@

clean:
	rm -f ${TARGET} celsius2Fahr

    from A,B
    where PK=FA
    null 값이 있는건 삭제
    full join을 하면 전체 열이 다 나타남
를
    집합연산 - union
    -SQl 문의결과는 테이블로 나타난다.


char, varchar
char = n 바이트를 가진문자형 타입입니다.
저장되는 문자의 길이가 n보다 작으면 나머지는 공백으로 채워서 n 바이트를 만들어 저장한다.
varchar = n 바이트를 가진 문자형 타입이지만 저장되는 문자의 길이만큼만 기억장소를 차지라는 가변형이다.

빌드 과정 설명
 -make cmake for linux
 - 전처리 어셈블리 바이너리 링크

 make 실습
 기본문법
 -여러개 명령어등록
 -연속 실행
-생략가능 명령어
-변수 사용

SQL 내장함수
-숫자함수
abs, ceil, floor, round, sign
문자열함수
councat, 

## 2024-03-05
<다차원배열>
arry od array

<포인터 (pointer)>
-주소값을 저장하는 변수 (함수의 입력값을 줄때)
* : 포인터가 가르키는 대상
& : 변수의 시작값을 구해라
chat 역참조 = chart
int 역참조 = int

<다중 pointer>
<이중 pointer>
-단일 포인터를  가르키는 용도
void  순수하게 주소값만 저장 / 포인트 역참조 불가

<pointer & array>
---
포인터와 배열의 관계
1. 배열이름이 식에서 사용하면 첫번쨰 엘리멘트에서 사용.
p = p + 1 다음 엘리멘트을 가르킴
p + 1 == & nums[1]
p + 2 == & nums[2]
p + i == & nums[i]
p + # 배열의 index

*(nums + i) == nums[i]
*(p + i) == p[i]
-포인터로 배열식을 쓸수있고 배열로 포인터식을 쓸수있다.

## 2024-03-07
mysql 내장함수
null ifnull
<부속질의>
    -select 부속질의 (스칼라 부속질의)
    - from 부속질의 (인라인 뷰)
    - where 부속질의
    - 단일 - 비교 (=, >,<,>=, !=, <>, is null, is not null)[비교]
    -다수의 열, 단일 행 (all, some, any)[한정]
    - 다수의 행, 다수의 열( in, not in exists)[집합, 존재]
    
<뷰>
    -뷰 생성 
    -뷰 수정
    -뷰 삭제

<인덱스>
    -인덱스 생성 - 
    -인덱스 삭제
    -인덱스 재구성

