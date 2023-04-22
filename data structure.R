## ������ ����
# ���� = 1���� ���� Ÿ������ ����
# ������������ = �پ��� ���� Ÿ������ ����
# ��Ʈ���� = �Ѱ��� ���� Ÿ������ ����
# ��� = 2���� �̻��� ��Ʈ����
# ����Ʈ = ���� �ٸ� ������ ���� ����


## ������������
var1 <- c(1:3)
var2 <- c('a','b','c')
x1 <- data.frame(var1,var2)


### ��Ʈ����
# ���簢���̿�����(���� �� ä�����־����)
x2 <- matrix(c(1:12),ncol=2,nrow = 6)
x2


## Factor
# factor ������ ��
bt <- c('A','B','B','O','AB','A')
bt.new <- factor(bt)
# ���� Ÿ�� Ȯ�� 
class(bt.new)
# ������ ����
bt.new[2] <- 'O'
bt.new
# levels=������ ���� Ȯ��(��ȣ�� ǥ��)
levels(bt.new)

## [������ȯ]
# as.numeric() ��� �� ���ڷ� ����
# as.character() ��� �� ���ڷ� ����
# as.integer() levels��ȣ�� ǥ��
bt.new.num <- as.integer(bt.new)


## vector�� factor�� ����
#����_(���Ӻ���)numericŸ��/�������
# ex.Ű, ������ ��
#����_(���ֺ���)factorŸ����/����Ұ���
# ex.����,������ ��


# str() ��ü���� Ÿ�� Ȯ��(detail�ϰ�)
str(mpg)
class(mpg)

class(mpg$drv)
f <- as.factor(mpg$drv)
class(f)
levels(f)



## csv ���� �ҷ�����
rm(list=ls())

setwd("c:/R_TEMP/yeewon")
getwd()
exam <- read.csv('../data/csv_exam.csv');exam
exam[1,]
exam[2,]

# (���ȣ!) �Ӽ����� ���� �����ϱ�
exam[exam$class ==1,]
exam[exam$math >= 80,]
# '&' =�׸���
exam[exam$class==1 & exam$math>=60,]
# '|' = �Ǵ�
exam[exam$class==1 | exam$math>=60,]

# (����ȣ!) ���������� ���� �����ϱ�
exam[,'class']
exam[,c('class','math','english')]