# else�� �ִ� if��
job.type <- 'A'
if (job.type=='B'){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

# {}����ġ �߿�!!

# else�� ���� if�� 
# �ʱⰪ�� ����
job.type <- 'A'
bonus <- 100
if(job.type=='B'){
  bonus <- 200
}
print(bonus)

# ifelse() �� ����
ifelse(job.type=='B',200,100)


# ���� if �� (is-else�� �ݺ�)
score <- 84
ifelse(score>90,grade <- 'A',
       ifelse(score>90,grade <- 'B',
              ifelse(score>90,grade <- 'C',
                     ifelse(score>90,grade <- 'D',
                            'F'))))
print(grade)

# p.241 �����ǽ�
age <- 5
group <- ifelse(age >= 19, '����',
                ifelse(age >= 13, 'û�ҳ�',
                       ifelse(age >= 6, '���',
                              ifelse(age < 6, '������'))))
print(group)

# p.242
install.packages('svDialogs')
library(svDialogs)
purchase <- dlgInput('Enter the purchase amout')$res
purchase <- as.numeric(purchase)
type <- NULL
ratio <- NULL
if(purchase>=300000){
  type <- '�÷�Ƽ��'
  ratio <- 0.07
} else if (purchase>=200000){
  type <- '���'
  ratio <- 0.05
} else if (purchase>=100000){
  type <- '�ǹ�'
  ratio <- 0.03
} else{
  type <- '������'
  ratio <- 0.01
}

cat('��������', type, 'ȸ������ ���ž���', ratio*100, '%�� �����˴ϴ�.')
# cat�� �ٹٲ�/��Ⱑ �ȵ� ����
# print�� paste�� �̿��Ͽ� ����
# ������ 2���̻��� ���� ifelse���� ���Ͱ��� �ۼ�.

## for��
# for(�ݺ��ؼ� ����� ���� in ����){
#     ���๮
# }

# Ex.
for (i in 1:10){
  print(i)
}

# �ǽ� (p.245-246)
for (i in 1:9) {
  cat('2*',i,'=',2*i,'\n')
}

for (i in 1:20){
  if(i%%2==0){
    cat(i, ' ')
  }
}

# ������ ¤�� �Ѿ��!
# ¦���� %%
# Ȧ���� !=

