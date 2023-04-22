## 데이터 구조
# 벡터 = 1가지 변수 타입으로 구성
# 데이터프레임 = 다양한 변수 타입으로 구성
# 매트릭스 = 한가지 변수 타입으로 구성
# 어레이 = 2차원 이상의 매트릭스
# 리스트 = 서로 다른 데이터 구조 포함


## 데이터프레임
var1 <- c(1:3)
var2 <- c('a','b','c')
x1 <- data.frame(var1,var2)


### 매트릭스
# 직사각형이여야함(값이 다 채워져있어야함)
x2 <- matrix(c(1:12),ncol=2,nrow = 6)
x2


## Factor
# factor 데이터 값
bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
# 변수 타입 확인 
class(bt.new)
# 데이터 수정
bt.new[2] <- 'O'
bt.new
# levels=값들의 종류 확인(번호로 표기)
levels(bt.new)

## [강제전환]
# as.numeric() 모든 값 숫자로 변경
# as.character() 모든 값 문자로 변경
# as.integer() levels번호로 표기
bt.new.num <- as.integer(bt.new)


## vector와 factor의 차이
#벡터_(연속변수)numeric타입/산술가능
# ex.키, 몸무게 등
#팩터_(범주변수)factor타입입/산술불가능
# ex.성별,거주지 등


# str() 전체적인 타입 확인(detail하게)
str(mpg)
class(mpg)

class(mpg$drv)
f <- as.factor(mpg$drv)
class(f)
levels(f)



## csv 파일 불러오기
rm(list=ls())

setwd("c:/R_TEMP/yeewon")
getwd()
exam <- read.csv('../data/csv_exam.csv');exam
exam[1,]
exam[2,]

# (행번호!) 속성으로 변수 추출하기
exam[exam$class ==1,]
exam[exam$math >= 80,]
# '&' =그리고
exam[exam$class==1 & exam$math>=60,]
# '|' = 또는
exam[exam$class==1 | exam$math>=60,]

# (열번호!) 변수명으로 변수 추출하기
exam[,'class']
exam[,c('class','math','english')]


accident <- c(31,26,42,47,50,54,70,66,43,32,32,22)
names(accident) <- c('m1','m2','m3','m4','m5','m6','m7','m8','m9','m10','m11','m12')
month_50 <- accident[accident>=50]
# month_50 엑셀로 저장(month_50.csv)
# 엑셀로 저장하는 법
## write.csv(변환하고자하는 데이터,'../data/mon.csv')
write.csv(month_50,'../R_TEMP/data/mon.csv')
# 뒤에 ,row.names=F하면 선택적 저장가능
## read.csv(경로)
# 확인하는 법(R로 불러오기)
read.csv('../R_TEMP/data/mon.csv')
# 휘발성이라, 항상 변수에 할당해줘야함
m_csv <- read.csv('../R_TEMP/data/mon.csv')
## View()함수 사용하여 엑셀처럼 표 불러오기
View(m_csv)
