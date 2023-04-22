# 전에 변수명 지우기
rm(list=ls())


# 벡터의 인덱스/원소값
return <- c(4,11,5,3,2)
names(return) <- c('shoes','shirt','pants','scarf','belt')
return


d <- c(1,4,3,7,8)
# 특정/해당 자리의 원소 추출할때
d[4]
# 특정 원소 제외하고 추출할때
d[-2]
# 여러개 제외하고 추출할때
d[-c(1,3)]
# 제외시에는 무조건 인덱싱 번호!
# 떨어져있는 원소 추출할때
d[c(1,3)]


# paste()함수 = 띄어쓰기, 공백 등 추가
# Ex.
str5 <- c('hello','world','is','good')
paste(str5, collapse = ',')


# 패키지 확인 및 불러오기
search()
library(ggplot2)
# 내장되어있는 data set 상위 6개 추출
head(mpg)
# 내장되어있는 data set 하위 6개 추출
tail(mpg)
# 데이터 구조/속성 확인
class(mpg)
# 행 개수 확인
nrow(mpg)
# 열 개수 확인
ncol(mpg)


# ?하고 궁금한거 치면 help창에서 상세설명
? mpg


# ggplot2의 mpg 데이터로 그래프 만들기
qplot(data = mpg,x=drv,y=hwy)


# Dataframe _열=속성/행=하나의 정보
# 실습 EX.
english <- c(90,80,60,70)
math <- c(50,60,100,20)
class <- c(1,1,2,2)
df_midterm <- data.frame(english,math,class)
# df_midterm데이터 셋에서 영어점수 평균과 수학점수 합계 구하기
# $ 사용 -!
mean(df_midterm$math)
sum(df_midterm$math)


play <- c(421,298,254,232,239,368,465)
names(play) <- c('sun','mon','tue','wed','thu','fri','add');pl
# 데이터 변경 및 수정 (2가지 방법)
play[c(3,5)] <- c(267,241)
play[c('tue','thu')] <- c

# 열추가를 위한 벡터 추가
# 데이터셋(프레임)을 $로 묶으면 추가됨
df_midterm$report <- c('a','b','a','a')
# df_midterm의 englsh의 두번째 원소의 값을 100으로 변경
df_midterm$english[2] <- 100
# table()함수로 report 집계
table(df_midterm$report)
# sort()함수를 이용한 english 오름차순
sort(df_midterm$english)
# sort()함수를 이용한 math 내림차순
sort(df_midterm$math, decreasing = T)


# paste()함수 =합치기
# sep=seperate(분류)
# Ex.
a <- 1:12
b <- '월'
c <- paste(a,b,sep='');c



## 중요

# 결측값 골라내기
x<- c(5,2,3,NA,6,9,8,NA,11,7)
y1 <- sum(x,na.rm=T)
# ps. 기본적으로 F임
y2 <- sum(x,na.rm=F)


# 결측값 확인 방법
table(is.na(df$sex))
table(is.na(df$score))
# 결측치가 있을 때, 아래와 같이 나타남
sum(df$score)
# 결측값 빼고 계산하는 방법(해당변수 값만)
# na.rm() = 통계분석시 사용
# 급히 평균이나 합계를 구할때 사용
sum(df$score,na.rm = T)
# 또는 원본 자료 백업
df_naomit <- df
# NA 값이 존재할 때 그 행은 생략하는 방법
# na.omit = 모든 변수에서 na가 존재할때 그 행자체를 삭제
df_naomit <- na.omit(df_naomit);df_naomit
