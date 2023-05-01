install.packages('reshape2')
library(reshape2)

# melt()�Լ�
# ���η� ������ data�� ���η� ����ִ� �Լ�
# melt(�����ͼ�Ʈ, id.vars='���ؿ�', measure.vars'��ȭ��')
names(airquality) <- tolower(names(airquality))
air_low <- airquality
# ������� Ȯ��
ls(air_low)
head(air_low)

# Ư���� solar.r �� �ٲ㼭 ���� ���� �� measure.vars='solar.r'
melt_solar.r <- melt(air_low, id.vars= c("month","day"),
                     measure.vars="solar.r")
View(melt_solar.r)
str(melt_solar.r)

# dcast()�Լ�
# �����͸� wide �ϰ� ���ִ� �Լ�
# dcast ȣ��, aq_melt ������ ���� ���� ���� �ĺ��ڷ� variable�� ���� ��ȯ
aq_dcst <- dcast(aq_melt, month+day ~ variable)
View(aq_dcst)




##### �׷��� �ð�ȭ
install.packages('lattice')
library(lattice)
library(datasets)
# ������ �׷��� ������ ������ ������ ����
# layout ���� ���밡�� (��������)
# xyplot(y ~ x, data)
ls(aq_melt)
xyplot(ozone~wind, data=aq_melt)
# ��(-)�̱� ������ �����ʴ´ٴ� ��

# �������
cor(aq_melt$ozone,aq_melt$wind)

# y ~ x | (month ����), (1�� 5��)
xyplot(ozone ~ wind | month, data=aq_melt, layout=c(5,1))

xyplot(ozone + solar.r ~wind | factor(month), data=aq_melt)
xyplot(ozone + solar.r ~wind | factor(month), data=aq_melt,
       pch='*',col=(c('blue','red')), layout=c(5,1))



#####
# �� �׷���(Line Chart) : �����͸� ������ ǥ���� �׷���
# �ð迭 �׷���(Time Series Chart) : ���� �ð� ������ �ΰ� ������ 
# �ð迭 ������(Time Series Data)�� ������ ǥ���� �׷���. ȯ��, �ְ����� �� 
# ���� ��ǥ�� �ð��� ���� ��� ���ϴ��� ǥ���� �� Ȱ��

# �ð迭 �׷��� �����
data('economics')
View(economics)
ls(economics)
ggplot(data=economics,aes(x=date, y=unemploy))+geom_line()



# x��:displ, y��:hwy ���� ������
library(ggplot2)
ggplot(data=mpg, aes(x=displ,y=hwy))

# ��� �����ϱ�
ggplot(data=mpg, aes(x=displ,y=hwy))+geom_point()
cor(mpg$displ, mpg$hwy)
# ���ϴ� �κ� �����Ͽ� �׷��� ���(Ȯ��)
ggplot(data=mpg, aes(x=displ,y=hwy))+geom_point()+xlim(3,8)+ylim(10,30)

# cor() �������� �׷����� ���踦 ����
cor(mpg$cty, mpg$hwy)

# ����ǥ��(���� �����)
options(scipen = 99)
# scipen = 0 �̸� ���� ����


### ��ո���׷���
library(dplyr)
# df_mpg �����͸� �̿��Ͽ� geom_col()�� �ϼ��Ͻÿ�
# reorder = ���ġ
# - = ��������
ggplot(data=df_mpg, aes(x=reorder(drv, -mean_hwy),y=mean_hwy))+geom_col()

# �ߺ����� ���� Ȯ��
distinct(mpg,class)
unique(mpg$class)


### ���� �׸�(Box Plot) : 
# �������� ����(���� �ִ� ����)�� ���簢�� ���� ������� ǥ���� �׷���
#	������ �� �� �ֱ� ������ ��ո� �� ������ �������� Ư���� �� �� �ڼ��� ������ �� ����
ggplot(data=mpg,aes(x=drv,y=hwy))+ geom_boxplot()



## ����
df_box <- data.frame(abc=c(110,300,150,280,310),
                     def=c(180,200,210,190,170),
                     dhi=c(210,150,260,210,70))
summary(df_box)
boxplot(df_box, col=cm.colors(3),
        names = c('a_class','b_class','c_class'))
# col=topo.colors(3)
# col=heat.colors(3)
# col=c('red','blue','orange')