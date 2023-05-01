install.packages('reshape2')
library(reshape2)

# melt()함수
# 가로로 퍼지는 data를 새로로 모아주는 함수
# melt(데이터세트, id.vars='기준열', measure.vars'변화열')
names(airquality) <- tolower(names(airquality))
air_low <- airquality
# 변수목록 확인
ls(air_low)
head(air_low)

# 특정값 solar.r 만 바꿔서 보고 싶을 때 measure.vars='solar.r'
melt_solar.r <- melt(air_low, id.vars= c("month","day"),
                     measure.vars="solar.r")
View(melt_solar.r)
str(melt_solar.r)

# dcast()함수
# 데이터를 wide 하게 펴주는 함수
# dcast 호출, aq_melt 데이터 셋의 월과 일을 식별자로 variable를 열로 변환
aq_dcst <- dcast(aq_melt, month+day ~ variable)
View(aq_dcst)




##### 그래프 시각화
install.packages('lattice')
library(lattice)
library(datasets)
# 산점도 그래프 범주형 변수로 조건을 적용
# layout 쉽게 적용가능 (생략가능)
# xyplot(y ~ x, data)
ls(aq_melt)
xyplot(ozone~wind, data=aq_melt)
# 음(-)이기 때문에 맞지않는다는 뜻

# 상관관계
cor(aq_melt$ozone,aq_melt$wind)

# y ~ x | (month 기준), (1행 5열)
xyplot(ozone ~ wind | month, data=aq_melt, layout=c(5,1))

xyplot(ozone + solar.r ~wind | factor(month), data=aq_melt)
xyplot(ozone + solar.r ~wind | factor(month), data=aq_melt,
       pch='*',col=(c('blue','red')), layout=c(5,1))



#####
# 선 그래프(Line Chart) : 데이터를 선으로 표현한 그래프
# 시계열 그래프(Time Series Chart) : 일정 시간 간격을 두고 나열된 
# 시계열 데이터(Time Series Data)를 선으로 표현한 그래프. 환율, 주가지수 등 
# 경제 지표가 시간에 따라 어떻게 변하는지 표현할 때 활용

# 시계열 그래프 만들기
data('economics')
View(economics)
ls(economics)
ggplot(data=economics,aes(x=date, y=unemploy))+geom_line()



# x축:displ, y축:hwy 지정 배경생성
library(ggplot2)
ggplot(data=mpg, aes(x=displ,y=hwy))

# 배경 설정하기
ggplot(data=mpg, aes(x=displ,y=hwy))+geom_point()
cor(mpg$displ, mpg$hwy)
# 원하는 부분 설정하여 그래프 출력(확대)
ggplot(data=mpg, aes(x=displ,y=hwy))+geom_point()+xlim(3,8)+ylim(10,30)

# cor() 상관관계와 그래프의 관계를 설명
cor(mpg$cty, mpg$hwy)

# 정수표현(지수 지우기)
options(scipen = 99)
# scipen = 0 이면 지수 생성


### 평균막대그래프
library(dplyr)
# df_mpg 데이터를 이용하여 geom_col()를 완성하시오
# reorder = 재배치
# - = 내림차순
ggplot(data=df_mpg, aes(x=reorder(drv, -mean_hwy),y=mean_hwy))+geom_col()

# 중복없이 종류 확인
distinct(mpg,class)
unique(mpg$class)


### 상자 그림(Box Plot) : 
# 데이터의 분포(퍼져 있는 형태)를 직사각형 상자 모양으로 표현한 그래프
#	분포를 알 수 있기 때문에 평균만 볼 때보다 데이터의 특성을 좀 더 자세히 이해할 수 있음
ggplot(data=mpg,aes(x=drv,y=hwy))+ geom_boxplot()



## 번외
df_box <- data.frame(abc=c(110,300,150,280,310),
                     def=c(180,200,210,190,170),
                     dhi=c(210,150,260,210,70))
summary(df_box)
boxplot(df_box, col=cm.colors(3),
        names = c('a_class','b_class','c_class'))
# col=topo.colors(3)
# col=heat.colors(3)
# col=c('red','blue','orange')
