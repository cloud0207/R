## Practice again-!

# ��� ���� ���� dim()
dim(iris)
# ���� ���� nrow()
nrow(iris)
# ���� ���� ncol()
ncol(iris)
# �� �̸� ���̱�/names()�Լ��� ��� ���� colnames()
colnames(iris)
# dataset�� �պκ� �Ϻ� ���� head()
head(iris)
# dataset�� �޺κ� �Ϻ� ���� tail()
tail(iris)
# dataset ��� �������� str()
str(iris)
# ǰ�� ������ ����
iris[,5]
# ǰ���� ���� ����( �ߺ����� )
levels(iris[,5])
# ǰ���� ������ ���� ���� ����
table(iris[,"Species"])


# mtcars dataset
head(mtcars)
# �� �հ�� �� ���
colSums(mtcars); colMeans(mtcars)
#  mtcars�� ���� hp�� 100�̻�,200 �̸��� ������ ����
subset(mtcars,hp >= 100 & hp < 200)


# is.__() = �����ͼ��� ���� Ȯ�� 
# true�� false�� ��� ��ȯ
is.factor(iris$species)
# as.__() = ������ ���� ��ȯ�� ��
as.matrix(iris[,-5])



# ���� _�ӵ��� �����Ÿ��� ������ ����(�͹�����)
# ������ = �͹�������
# �������� = �븳����
# ��������(x): ������ �ִ� ����
# ���Ӻ���(y): ������ �޴� ����

# ȸ�ͽ� = ����
# lm(y~x, data)
cars_lm <- lm(dist~speed, cars)
summary(cars_lm)
plot(cars_lm)
# enter ĥ������ �׷����� �ٸ� 
# �׷������� �������� �߿� -!



install.packages('tidyverse')
tidyverse_update()
library(tidyverse)
# ���������� ����Ű(ctrl+shift+m)
# filter() ������ ������ �������� 
iris_vi %>% filter(sepal.width>=3.0 & petal.width>=2.0) %>% head(3)
# ������������ ���� ����ϰ� ����

# �������� ����������( %>% )���� filter�� ����
trees %>% filter(Girth >= gi_mean & Height>80 & Volume>50)
candidate

# filter Ȥ�� subset�� �̿��Ͽ� ������ ��������
na_df <- df %>% filter(!is.na(score) & !is.na(sex))
na_df
# ���������� = ������
df1 <- subset(df,!is.na(sex) & !is.na(score))
df1

# select() : ���ϴ� �� ��������
# filter() : ���ǿ� �°� ��������
# ' & ' = ��� TRUE ���� �� ��ȯ
# ' | ' = �ϳ��� TRUE���� �� ��ȯ



# ȸ�ͺм� = ����/�������� �Ѵ� �����������ߵ�
# ���Ӻ����� �����̰�, ���������� �����̸� ������Ʈ ȸ�ͺм��� ����ؾߵ�

# \n = �ٹٲ�

name <- '������'
cat('�� �̸���', name, '�Դϴ�.', sep="")
# sep = '' -> ���� ���� �ʱ�
# ' ' -> �ȿ� ��ȣ ������ ���̻��̿� ���Ե�
# print�� cat�� ������ :
# print = ��� �� �ڵ� �ٹٲ�
# cat = �ٹٲ� ����� ����x '\n'�� ����ؾ���

cat(100,200)
cat(100,200,'\n')

# ������ ���� �Լ� rename(data, new=old)
df_new <- data.frame(var1=c(1,2,1),
                     var2=c(2,3,2))
df_new
library(tidyverse)
library(dplyr)
df_new <- rename(df_new,v1=var1,v2=var2)
df_new

# ���� �߰�(�Ļ�����)
df_new$add <- df_new$v1 + df_new$v2
df_new
# database$�Ļ������� <- database$�Ӽ�

# avg �Ļ����� ���� ��, df_new�� ����
df_new$avg <- (df_new$v1+df_new$v2)/2
df_new

# �Ļ������� �����ϴ� ��
# ���ϴ� ���� ��������
# (�̶� ���� �����ɼ�������, �ٸ� ������ �Ҵ�)
df_new3 <- select(df_new,c(1:3))
df_new3

# �ش�κи� ������� ���
summary(df_new$avg)
# boxplot() ���ڼ��� �׷��� �׸���
boxplot(df_new$avg)
# �̻�ġ = ȥ�� �̻��� ��
boxplot(df_new)

# �Ļ����� logic ���� �� ifelse�� �̿��Ͽ� avg>=2.5�� ��� pass���,or fail���
df_new$logic <- ifelse(df_new$avg >= 2.5,'pass','fail')
# �񱳿����� (== != >= <= etc.)
## ifelse([���ǽ�(�׸�, �񱳿�����, ��)], [��]��°�, [����]���ǰ� ���� ���� �� ��°�)