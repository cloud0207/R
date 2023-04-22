# R의 단축키
 
# 전체주석 ( ctrl + shift + c )
# 화살표 단축키 ( alt + - )
# ';' 넣으면 바로 결과 추출
# 변수제거 ( rm() )
# install.packages('') 로 패키지 설치 후 반드시 library() 실행 _설치했어도 매번 해야함
# 현재 실행 중인 패키지 확인하는 방법 ( search() ) 
# 패키지 지우는 법 ( remove.packages('') )
# ctrl+2 큰솔창
# ctrl+1 스크립트
# ctrl+o 스크립트 열기
# r의 설치경로 확인 ( .libPaths() )
# 스크립트 재오픈시, 한글 깨질면 file>reopen with encoding클릭 후 UF로 변경


# 사칙연산
# %% = 나눗셈의 나머지
# ^ = 제곱
# 루트 = ( sqrt() )
# 합계 = ( sum() )
# 평균값 = ( mean() )
# 중앙값 = ( median() )
# 최소값 = ( min() )
# 최대값 = ( max() )
# 최소값과 최대값 범위 = ( range() )
# 분산 = ( var() )
# 표준편차 = ( sd() )

# 문자와 숫자를 혼합된 벡터일 경우, 문자를 숫자로 변환하는 방법
A <- c(1,'2',3,4)
as.numeric(A)

# 요약통계 = ( summary() )
# 집계 = ( table() )
# Ex.
weight <- c(62.5,63,62.5,61.5,62.5,63,62)
sum(weight)
mean(weight)
median(weight)
min(weight)
max(weight)
summary(weight)
plot(weight)
table(weight)


# seq함수 (시작, 종료, 간격)
# Ex.
v <- seq(1,101,3);v


# rep함수 (rep(x,times=y))
# x를 y번 반복
# Ex.
v2 <- rep(1:5,times=3);v2


# each는 각각의 숫자
# Ex.
p1 <- rep(c(3,6,9),each=5);p1


# sample() = 표본 추출
# Ex.
sample(1:100,20,replace=T)
# 이때, replace = 중복 허용 여부
# prob의 개수는 n의 개수에 맞추어 비율조절
# Ex.
b=sample(1:3,size=1000,replace=T,prob=c(.30,.60,.100))
table(b)


# runif(개수, 최소값, 최대값) 난수 발생
# Ex. (30개 data로 최소70 최대90)
runif(30,70,90)
# 앞에 round()함수 사용 = 정수 표현
round(runif(30,70,90))


# 전체실습
# 1~30까지/ 중복허용/5개 추출/DB에 저장
DB <- sample(1:30,replace = T,5)

#오름차순
sort(DB)
#내림차순
sort(DB, decreasing = T)
#최대값을 갖는 원소 인덱스(번호) 출력_값X
which.max(DB)
#최소값을 갖는 원소 인덱스(번호) 출력_값X
which.min(DB)
#10보다 작은 값의 원소 출력
DB[which(DB<10)]
#20보다 작은 값의 원소 출력
DB[which(DB>=20)]
