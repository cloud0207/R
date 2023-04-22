# rbind 행 합치기
# Ex.
x <- 1:4
y <- 5:8
z <- matrix(1:20,nrow = 4,ncol = 5)
m1 <- rbind(x,y);m1

# cbind 열방향으로
# Ex.
m2 <- cbind(x,y);m2

# levels 바꾸는법
local <- factor(c('서울','경기','부산','강원','제주','서울','경기','경기','제주'));local
# 영어는 abc 순, 한글은 ㄱㄴㄷ순임
# 순서 바꾸려면
local_m <- factor(local,levels = c('경기','서울','부산','제주','강원'));local_m
plot(local_m)


# 행과 열에 이릉 붙이기
# rownames()
# colnames()
# Ex. 
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow=4);score
rownames(score) <- c('john','tom','mark','jane')
colnames(score) <- c('english','math','science')
score


# rnorm(개수, 평균, 표준편차(난수)) _랜덤
rnorm()
rnorm(10,40,5)
# round() = 정수로 변환
round(rnorm(10,40,5))
# Ex.
# rnorm()을 이용하여 100개의 data를 평균 80,편차10
rnorm_D <- round(rnorm(100,80,10))
rnorm_D
mean(rnorm_D)             #평균
sum(rnorm_D)              #합계
max(rnorm_D)              #최대   
min(rnorm_D)              #최소
sd(rnorm_D)               #표준편차
# sd() = 평균과의 거리
median(rnorm_D)           #중앙값
range(rnorm_D)            #범위(최소,최대)
head(rnorm_D,10)          #상위10개 추출
tail(rnorm_D,5)           #하위 5개 추출
# 기본적으로 head와 tail은 6개임
length(rnorm_D)           #값들의 개수

# rnorm_D 100이상인 개수와 80미만인 개수
length(rnorm_D[rnorm_D >= 100])
length(rnorm_D[rnorm_D > 80])



# factor는 범주를 확인할 때(시각화) - 문장으로만은 범주 확인이 어려움 

# 최대값의 이름표시
which.max(accident)
# 최대값의 이름만 표시
names(accident[which.max(accident)])


# 번외 #
a <- 25:150
condi <- a[a<100 & a%%3==0]
condi <- (a<100) & (a%%3==0)
# T/F 모두 카운트
length(condi)
# 집계 T/F
table(condi)
# TRUE인 애만 표현해줌
sum(condi)



# <iris> dataset = 모두 대문자로 시작
iris_m <- iris
# 데이터 모두 소문자로 변경
names(iris_m) <- tolower(names(iris_m))
ls(iris_m)
head(iris,6)
# 행과 열의 개수 dim()
dim(iris)
# unique() =중복없이 출력
# Ex.
unique(iris$Species)
# str() =속성 확인
str(iris)
# species factor가 빠졌기 때문에 정형데이터가 됨
View(iris_4)



# apply(data,행/열,함수) =연산 함수
# NA값이 있으면 계산x
apply(iris_4,2,sum)
# 1 = 행, 2 = 열
# 대부분 열을 많이 사용
apply(iris_4,1,mean)
apply(iris_4,2,sd)
