# readLines - 텍스트 (.xtx)
# read.csv - 구분자가 있는 c

rm(list=ls())
# 한글 내용이 깨질때
Sys.setlocale(category = "LC_ALL", locale = "Korean")
# 데이터 불러오기
getwd()
# 비정형데이터 불러오기
txt1 <- readLines('C:/R_TEMP/data/구매후기.txt', encoding = )
txt1

txt4_0 <- read.table('c:/R_TEMP/data/data_ex.txt',header=T, encoding = 'UTF-8',skip=3)
View(txt4_0)
head(txt4_0)

txt4_3 <- read.table('c:/R_TEMP/data/data_ex.txt',header=T,nrows = 3)
View(txt4_3)
# 3행까지만 가져오기

txt4_4 <- read.table('c:/R_TEMP/data/data_ex1.txt',sep='',header = T,encoding = 'UTF-8')
View(txt4_4)
head(txt4_4)
s
# excel(csv)파일 불러오는 법
# csv탭으로 분리된 구분자
txt5 <- read.csv('c:/R_TEMP/data/txt14.csv')
txt5

# csv 불러올때 한글일 경우 깨질 수 있으니,
# 인코딩 CP949 -> UTF-8로 변경
library(dplyr)
library(tidyverse)
# 위 library를 실행시켜야 apply()함수 사용가능
exam <- read.csv("c:/R_TEMP/data/csv_exam.csv")
head(exam)
arrange(exam,math)          # 오름차순(기본)
arrange(exam,desc(math))    # 내림차순

## 조건문 사용 (3가지 방법)
# 반별 수학점수가 높은 학생 추출할 때
arrange(exam, class, desc(math))
filter(exam, class == 1)
# 파이프 연산자로 작성하면,
exam %>% filter(class==1)
exam %>% filter(class==1 | class==3)
# 인덱싱
exam[exam$class==1,]
exam[exam$class==1 | exam$class==3 ,]
# subset()
subset(exam,class=='1')
subset(exam,class=='1'| class=='3')


## %in%
# filter 안에서 조건에 맞으면 추출해주는 기능
exam %>% filter(class %in% c(1,3))


# 평균 산출
c1 <- exam %>% filter(class==1)
c2 <- exam %>% filter(class==2)
mean(c1$math)
mean(c2$math)

# summary 기초통계를 통해 1,2반의 수학점수 비교
summary(c1$math)
summary(c2$math)

# 표준편차 (평균과의 거리)
sd(c1$math)
sd(c2$math)

boxplot(c1$math, c2$math)

# 조건 예제 실습
# 수학점수 50 초과, 영어점수 90 이상
exam %>% filter(math > 50 & english >= 90)

# 영어, 과학 열만 가져와 상위 2개만 추출
exam %>% select(id,english,math) %>% head(2)
# 영어 90점 미만, 과학 50점 미만 데이터 추출
exam %>% select(id,english,science) %>% 
  filter(english < 90 | science < 50)

## mutate() = 파생변수 생성 함수 
# mutate함수를 이용하여 total파생변수 생성후, 수+영+과 점수의 합 구하기
# library(dplyr)
exam %>% mutate(total = math + english + science)
# 뒤에 더 추가할 수도 있음
exam %>% mutate(total = math + english + science,
                mean = (math + english + science)/3)



## summarise 요약 통계량 함수

mpg %>%        # compact 추출
  filter(class == ) %>% 
  # manufacturer별 분리
  group_by(manufacturer) %>% 
  # 빈도 구하기
  summarise(count = ) %>% 
  # 내림차순 정렬
  arrange(desc(count))


# summarise = 함수(ex. mean()) 오류없이 적용시켜줌
## group_by()
exam %>% group_by(class) %>% 
  filter(english >= 80) %>% 
  mutate(tot=(math+english)/2) %>% 
  summarise(en_tot = mean(tot)) %>% 
  arrange(desc(en_tot))


# 독립변수 : x (영향을 주는)
# 종속변수 : y (영향을 받는)
# 귀무가설 = 영가설 :영향을 받지 x
# 독립변수: 원인/종속변수: 결과


v <- c(10,20,30)
names(v) <- c('Moe','Larry','Curly')

# mode() 함수 : 물리적인 자료형
mode(iris)
# class() 함수 : 추상적인 자료형
class(iris)

# dim()함수 : 행,열 개수 지정
a <- 1:6
dim(a) <- c(2,3)
a

b <- list(1,2,3,4,5,6)
dim(b) <- c(2,3)
b


# 집단간의 차이에 대한 분산분석(anova) 수행
freshmen <- c(1,2,1,1,5)
sophomores <- c(3,2,3,3,5)
juniors <- c(5,3,4,3,3)
# stack() 함수로 집단 합침
comb <- stack(list(fresh=freshmen,soph=sophomores,jrs=juniors))
comb
# anova() : 일반화 선형 모형 분석 결과에서 분산 분석의 결과를 계산하는 함수
a <- aov(values ~ ind, data=comb)
a
summary(a)
plot(a)
