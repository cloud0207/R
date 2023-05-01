# readLines - �ؽ�Ʈ (.xtx)
# read.csv - �����ڰ� �ִ� c

rm(list=ls())
# �ѱ� ������ ������
Sys.setlocale(category = "LC_ALL", locale = "Korean")
# ������ �ҷ�����
getwd()
# ������������ �ҷ�����
txt1 <- readLines('C:/R_TEMP/data/�����ı�.txt', encoding = )
txt1

txt4_0 <- read.table('c:/R_TEMP/data/data_ex.txt',header=T, encoding = 'UTF-8',skip=3)
View(txt4_0)
head(txt4_0)

txt4_3 <- read.table('c:/R_TEMP/data/data_ex.txt',header=T,nrows = 3)
View(txt4_3)
# 3������� ��������

txt4_4 <- read.table('c:/R_TEMP/data/data_ex1.txt',sep='',header = T,encoding = 'UTF-8')
View(txt4_4)
head(txt4_4)
s
# excel(csv)���� �ҷ����� ��
# csv������ �и��� ������
txt5 <- read.csv('c:/R_TEMP/data/txt14.csv')
txt5

# csv �ҷ��ö� �ѱ��� ��� ���� �� ������,
# ���ڵ� CP949 -> UTF-8�� ����
library(dplyr)
library(tidyverse)
# �� library�� ������Ѿ� apply()�Լ� ��밡��
exam <- read.csv("c:/R_TEMP/data/csv_exam.csv")
head(exam)
arrange(exam,math)          # ��������(�⺻)
arrange(exam,desc(math))    # ��������

## ���ǹ� ��� (3���� ���)
# �ݺ� ���������� ���� �л� ������ ��
arrange(exam, class, desc(math))
filter(exam, class == 1)
# ������ �����ڷ� �ۼ��ϸ�,
exam %>% filter(class==1)
exam %>% filter(class==1 | class==3)
# �ε���
exam[exam$class==1,]
exam[exam$class==1 | exam$class==3 ,]
# subset()
subset(exam,class=='1')
subset(exam,class=='1'| class=='3')


## %in%
# filter �ȿ��� ���ǿ� ������ �������ִ� ���
exam %>% filter(class %in% c(1,3))


# ��� ����
c1 <- exam %>% filter(class==1)
c2 <- exam %>% filter(class==2)
mean(c1$math)
mean(c2$math)

# summary ������踦 ���� 1,2���� �������� ��
summary(c1$math)
summary(c2$math)

# ǥ������ (��հ��� �Ÿ�)
sd(c1$math)
sd(c2$math)

boxplot(c1$math, c2$math)

# ���� ���� �ǽ�
# �������� 50 �ʰ�, �������� 90 �̻�
exam %>% filter(math > 50 & english >= 90)

# ����, ���� ���� ������ ���� 2���� ����
exam %>% select(id,english,math) %>% head(2)
# ���� 90�� �̸�, ���� 50�� �̸� ������ ����
exam %>% select(id,english,science) %>% 
  filter(english < 90 | science < 50)

## mutate() = �Ļ����� ���� �Լ� 
# mutate�Լ��� �̿��Ͽ� total�Ļ����� ������, ��+��+�� ������ �� ���ϱ�
# library(dplyr)
exam %>% mutate(total = math + english + science)
# �ڿ� �� �߰��� ���� ����
exam %>% mutate(total = math + english + science,
                mean = (math + english + science)/3)



## summarise ��� ��跮 �Լ�

mpg %>%        # compact ����
  filter(class == ) %>% 
  # manufacturer�� �и�
  group_by(manufacturer) %>% 
  # �� ���ϱ�
  summarise(count = ) %>% 
  # �������� ����
  arrange(desc(count))


# summarise = �Լ�(ex. mean()) �������� ���������
## group_by()
exam %>% group_by(class) %>% 
  filter(english >= 80) %>% 
  mutate(tot=(math+english)/2) %>% 
  summarise(en_tot = mean(tot)) %>% 
  arrange(desc(en_tot))


# �������� : x (������ �ִ�)
# ���Ӻ��� : y (������ �޴�)
# �͹����� = ������ :������ ���� x
# ��������: ����/���Ӻ���: ���


v <- c(10,20,30)
names(v) <- c('Moe','Larry','Curly')

# mode() �Լ� : �������� �ڷ���
mode(iris)
# class() �Լ� : �߻����� �ڷ���
class(iris)

# dim()�Լ� : ��,�� ���� ����
a <- 1:6
dim(a) <- c(2,3)
a

b <- list(1,2,3,4,5,6)
dim(b) <- c(2,3)
b


# ���ܰ��� ���̿� ���� �л�м�(anova) ����
freshmen <- c(1,2,1,1,5)
sophomores <- c(3,2,3,3,5)
juniors <- c(5,3,4,3,3)
# stack() �Լ��� ���� ��ħ
comb <- stack(list(fresh=freshmen,soph=sophomores,jrs=juniors))
comb
# anova() : �Ϲ�ȭ ���� ���� �м� ������� �л� �м��� ����� ����ϴ� �Լ�
a <- aov(values ~ ind, data=comb)
a
summary(a)
plot(a)