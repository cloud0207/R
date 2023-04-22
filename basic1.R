# R�� ����Ű
 
# ��ü�ּ� ( ctrl + shift + c )
# ȭ��ǥ ����Ű ( alt + - )
# ';' ������ �ٷ� ��� ����
# �������� ( rm() )
# install.packages('') �� ��Ű�� ��ġ �� �ݵ�� library() ���� _��ġ�߾ �Ź� �ؾ���
# ���� ���� ���� ��Ű�� Ȯ���ϴ� ��� ( search() ) 
# ��Ű�� ����� �� ( remove.packages('') )
# ctrl+2 ū��â
# ctrl+1 ��ũ��Ʈ
# ctrl+o ��ũ��Ʈ ����
# r�� ��ġ��� Ȯ�� ( .libPaths() )
# ��ũ��Ʈ ����½�, �ѱ� ������ file>reopen with encodingŬ�� �� UF�� ����


# ��Ģ����
# %% = �������� ������
# ^ = ����
# ��Ʈ = ( sqrt() )
# �հ� = ( sum() )
#��հ� = ( mean() )
# �߾Ӱ� = ( median() )
# �ּҰ� = ( min() )
# �ִ밪 = ( max() )
# �ּҰ��� �ִ밪 ���� = ( range() )
# �л� = ( var() )
# ǥ������ = ( sd() )

# ���ڿ� ���ڸ� ȥ�յ� ������ ���, ���ڸ� ���ڷ� ��ȯ�ϴ� ���
A <- c(1,'2',3,4)
as.numeric(A)

# ������ = ( summary() )
# ���� = ( table() )
# Ex.
weight <- c(62.5,63,62.5,61.5,62.5,63,62)
sum(weight)
mean(weight)
median(weight)
min(weight)
max(weight)
summary(weight)
plot(weight)
table(weight)


# seq�Լ� (����, ����, ����)
# Ex.
v <- seq(1,101,3);v


# rep�Լ� (rep(x,times=y))
# x�� y�� �ݺ�
# Ex.
v2 <- rep(1:5,times=3);v2


# each�� ������ ����
# Ex.
p1 <- rep(c(3,6,9),each=5);p1


# sample() = ǥ�� ����
# Ex.
sample(1:100,20,replace=T)
# �̶�, replace = �ߺ� ��� ����
# prob�� ������ n�� ������ ���߾� ��������
# Ex.
b=sample(1:3,size=1000,replace=T,prob=c(.30,.60,.100))
table(b)


# runif(����, �ּҰ�, �ִ밪) ���� �߻�
# Ex. (30�� data�� �ּ�70 �ִ�90)
runif(30,70,90)
# �տ� round()�Լ� ��� = ���� ǥ��
round(runif(30,70,90))


# ��ü�ǽ�
# 1~30����/ �ߺ����/5�� ����/DB�� ����
DB <- sample(1:30,replace = T,5)

#��������
sort(DB)
#��������
sort(DB, decreasing = T)
#�ִ밪�� ���� ���� �ε���(��ȣ) ���_��X
which.max(DB)
#�ּҰ��� ���� ���� �ε���(��ȣ) ���_��X
which.min(DB)
#10���� ���� ���� ���� ���
DB[which(DB<10)]
#20���� ���� ���� ���� ���
DB[which(DB>=20)]