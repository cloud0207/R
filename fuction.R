# rbind �� ��ġ��
# Ex.
x <- 1:4
y <- 5:8
z <- matrix(1:20,nrow = 4,ncol = 5)
m1 <- rbind(x,y);m1

# cbind ����������
# Ex.
m2 <- cbind(x,y);m2

# levels �ٲٴ¹�
local <- factor(c('����','���','�λ�','����','����','����','���','���','����'));local
# ����� abc ��, �ѱ��� ����������
# ���� �ٲٷ���
local_m <- factor(local,levels = c('���','����','�λ�','����','����'));local_m
plot(local_m)


# ��� ���� �̸� ���̱�
# rownames()
# colnames()
# Ex. 
score <- matrix(c(90,85,69,78,85,96,49,95,90,80,70,60),nrow=4);score
rownames(score) <- c('john','tom','mark','jane')
colnames(score) <- c('english','math','science')
score


# rnorm(����, ���, ǥ������(����)) _����
rnorm()
rnorm(10,40,5)
# round() = ������ ��ȯ
round(rnorm(10,40,5))
# Ex.
# rnorm()�� �̿��Ͽ� 100���� data�� ��� 80,����10
rnorm_D <- round(rnorm(100,80,10))
rnorm_D
mean(rnorm_D)             #���
sum(rnorm_D)              #�հ�
max(rnorm_D)              #�ִ�   
min(rnorm_D)              #�ּ�
sd(rnorm_D)               #ǥ������
# sd() = ��հ��� �Ÿ�
median(rnorm_D)           #�߾Ӱ�
range(rnorm_D)            #����(�ּ�,�ִ�)
head(rnorm_D,10)          #����10�� ����
tail(rnorm_D,5)           #���� 5�� ����
# �⺻������ head�� tail�� 6����
length(rnorm_D)           #������ ����

# rnorm_D 100�̻��� ������ 80�̸��� ����
length(rnorm_D[rnorm_D >= 100])
length(rnorm_D[rnorm_D > 80])



# factor�� ���ָ� Ȯ���� ��(�ð�ȭ) - �������θ��� ���� Ȯ���� ����� 

# �ִ밪�� �̸�ǥ��
which.max(accident)
# �ִ밪�� �̸��� ǥ��
names(accident[which.max(accident)])


# ���� #
a <- 25:150
condi <- a[a<100 & a%%3==0]
condi <- (a<100) & (a%%3==0)
# T/F ��� ī��Ʈ
length(condi)
# ���� T/F
table(condi)
# TRUE�� �ָ� ǥ������
sum(condi)



# <iris> dataset = ��� �빮�ڷ� ����
head(iris,6)
dim(iris)
# unique() =�ߺ����� ���
# Ex.
unique(iris$Species)
# str() =�Ӽ� Ȯ��
str(iris)
# species factor�� ������ ������ ���������Ͱ� ��
View(iris_4)



# apply(data,��/��,�Լ�) =���� �Լ�
# NA���� ������ ���x
apply(iris_4,2,sum)
# 1 = ��, 2 = ��
# ��κ� ���� ���� ���
apply(iris_4,1,mean)
apply(iris_4,2,sd)