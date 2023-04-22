# ���� ������ �����
rm(list=ls())


# ������ �ε���/���Ұ�
return <- c(4,11,5,3,2)
names(return) <- c('shoes','shirt','pants','scarf','belt')
return


d <- c(1,4,3,7,8)
# Ư��/�ش� �ڸ��� ���� �����Ҷ�
d[4]
# Ư�� ���� �����ϰ� �����Ҷ�
d[-2]
# ������ �����ϰ� �����Ҷ�
d[-c(1,3)]
# ���ܽÿ��� ������ �ε��� ��ȣ!
# �������ִ� ���� �����Ҷ�
d[c(1,3)]


# paste()�Լ� = ����, ���� �� �߰�
# Ex.
str5 <- c('hello','world','is','good')
paste(str5, collapse = ',')


# ��Ű�� Ȯ�� �� �ҷ�����
search()
library(ggplot2)
# ����Ǿ��ִ� data set ���� 6�� ����
head(mpg)
# ����Ǿ��ִ� data set ���� 6�� ����
tail(mpg)
# ������ ����/�Ӽ� Ȯ��
class(mpg)
# �� ���� Ȯ��
nrow(mpg)
# �� ���� Ȯ��
ncol(mpg)


# ?�ϰ� �ñ��Ѱ� ġ�� helpâ���� �󼼼���
? mpg


# ggplot2�� mpg �����ͷ� �׷��� �����
qplot(data = mpg,x=drv,y=hwy)


# Dataframe _��=�Ӽ�/��=�ϳ��� ����
# �ǽ� EX.
english <- c(90,80,60,70)
math <- c(50,60,100,20)
class <- c(1,1,2,2)
df_midterm <- data.frame(english,math,class)
# df_midterm������ �¿��� �������� ��հ� �������� �հ� ���ϱ�
# $ ��� -!
mean(df_midterm$math)
sum(df_midterm$math)


play <- c(421,298,254,232,239,368,465)
names(play) <- c('sun','mon','tue','wed','thu','fri','add');pl
# ������ ���� �� ���� (2���� ���)
play[c(3,5)] <- c(267,241)
play[c('tue','thu')] <- c

# ���߰��� ���� ���� �߰�
# �����ͼ�(������)�� $�� ������ �߰���
df_midterm$report <- c('a','b','a','a')
# df_midterm�� englsh�� �ι�° ������ ���� 100���� ����
df_midterm$english[2] <- 100
# table()�Լ��� report ����
table(df_midterm$report)
# sort()�Լ��� �̿��� english ��������
sort(df_midterm$english)
# sort()�Լ��� �̿��� math ��������
sort(df_midterm$math, decreasing = T)


# paste()�Լ� =��ġ��
# sep=seperate(�з�)
# Ex.
a <- 1:12
b <- '��'
c <- paste(a,b,sep='');c



## �߿�

# ������ ��󳻱�
x<- c(5,2,3,NA,6,9,8,NA,11,7)
y1 <- sum(x,na.rm=T)
# ps. �⺻������ F��
y2 <- sum(x,na.rm=F)


# ������ Ȯ�� ���
table(is.na(df$sex))
table(is.na(df$score))
# ����ġ�� ���� ��, �Ʒ��� ���� ��Ÿ��
sum(df$score)
# ������ ���� ����ϴ� ���(�ش纯�� ����)
# na.rm() = ���м��� ���
# ���� ����̳� �հ踦 ���Ҷ� ���
sum(df$score,na.rm = T)
# �Ǵ� ���� �ڷ� ���
df_naomit <- df
# NA ���� ������ �� �� ���� �����ϴ� ���
# na.omit = ��� �������� na�� �����Ҷ� �� ����ü�� ����
df_naomit <- na.omit(df_naomit);df_naomit