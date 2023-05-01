## Practice again-!

# 행과 열의 개수 dim()
dim(iris)
# 행의 개수 nrow()
nrow(iris)
# 열의 개수 ncol()
ncol(iris)
# 열 이름 보이기/names()함수와 결과 동일 colnames()
colnames(iris)
# dataset의 앞부분 일부 보기 head()
head(iris)
# dataset의 뒷부분 일부 보기 tail()
tail(iris)
# dataset 요약 정보보기 str()
str(iris)
# 품종 데이터 보기
iris[,5]
# 품종의 종류 보기( 중복제거 )
levels(iris[,5])
# 품종의 종류별 행의 개수 세기
table(iris[,"Species"])


# mtcars dataset
head(mtcars)
# 열 합계와 열 평균
colSums(mtcars); colMeans(mtcars)
#  mtcars에 대한 hp가 100이상,200 미만인 데이터 추출
subset(mtcars,hp >= 100 & hp < 200)


# is.__() = 데이터셋의 구조 확인 
# true와 false로 결과 반환
is.factor(iris$species)
# as.__() = 강제로 구조 변환할 때
as.matrix(iris[,-5])



# 가설 _속도는 제동거리와 영향이 없다(귀무가설)
# 영가설 = 귀무가설설
# 연구가설 = 대립가설
# 독립변수(x): 영향을 주는 변수
# 종속변수(y): 영향을 받는 변수

# 회귀식 = 예측
# lm(y~x, data)
cars_lm <- lm(dist~speed, cars)
summary(cars_lm)
plot(cars_lm)
# enter 칠때마다 그래프가 다름 
# 그래프에서 분포도가 중요 -!



install.packages('tidyverse')
tidyverse_update()
library(tidyverse)
# 파이프라인 단축키(ctrl+shift+m)
# filter() 추출할 데이터 가져오기 
iris_vi %>% filter(sepal.width>=3.0 & petal.width>=2.0) %>% head(3)
# 파이프라인을 통해 깔끔하게 정리

# 위명령을 파이프라인( %>% )으로 filter로 변경
trees %>% filter(Girth >= gi_mean & Height>80 & Volume>50)
candidate

# filter 혹은 subset을 이용하여 데이터 가져오기
na_df <- df %>% filter(!is.na(score) & !is.na(sex))
na_df
# 파이프라인 = 가독성
df1 <- subset(df,!is.na(sex) & !is.na(score))
df1

# select() : 원하는 열 가져오기
# filter() : 조건에 맞게 가져오기
# ' & ' = 모두 TRUE 여야 값 반환
# ' | ' = 하나만 TRUE여도 값 반환



# 회귀분석 = 종속/독립변수 둘다 양적변수여야됨
# 종속변수가 질적이고, 독립변수가 양적이면 로지스트 회귀분석을 사용해야됨

# \n = 줄바꿈

name <- '강예원'
cat('제 이름은', name, '입니다.', sep="")
# sep = '' -> 띄어쓰기 하지 않기
# ' ' -> 안에 부호 넣으면 사이사이에 삽입됨
# print와 cat의 차이점 :
# print = 출력 후 자동 줄바꿈
# cat = 줄바꿈 기능이 따로x '\n'을 사용해야함

cat(100,200)
cat(100,200,'\n')

# 변수명 변경 함수 rename(data, new=old)
df_new <- data.frame(var1=c(1,2,1),
                     var2=c(2,3,2))
df_new
library(tidyverse)
library(dplyr)
df_new <- rename(df_new,v1=var1,v2=var2)
df_new

# 변수 추가(파생변수)
df_new$add <- df_new$v1 + df_new$v2
df_new
# database$파생변수명 <- database$속성

# avg 파생변수 생성 후, df_new에 저장
df_new$avg <- (df_new$v1+df_new$v2)/2
df_new

# 파생변수를 삭제하는 법
# 원하는 열만 가져오기
# (이때 원본 삭제될수있으니, 다른 변수로 할당)
df_new3 <- select(df_new,c(1:3))
df_new3

# 해당부분만 기초통계 요약
summary(df_new$avg)
# boxplot() 상자수염 그래프 그리기
boxplot(df_new$avg)
# 이상치 = 혼자 이상한 값
boxplot(df_new)

# 파생변수 logic 생성 후 ifelse를 이용하여 avg>=2.5인 경우 pass출력,or fail출력
df_new$logic <- ifelse(df_new$avg >= 2.5,'pass','fail')
# 비교연산자 (== != >= <= etc.)
## ifelse([조건식(항목, 비교연산자, 값)], [참]출력값, [거짓]조건과 맞지 않을 때 출력값)
