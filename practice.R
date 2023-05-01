##### practice


library(dplyr)
library(tidyr)
## ������ ������ %>% (����Ű ctrl + shift + m)
# select() : ���ϴ� �� ��������
# filter() : ���ǿ� �°� ��������
# ' & ' = ��� TRUE ���� �� ��ȯ
# ' | ' = �ϳ��� TRUE���� �� ��ȯ

iris
# ������ ������ ���� select ���
# select(iris, Sepal.Length, Sepal.Width)

# ������ ������ ���� filter ���
# filter(iris,sepal.Length >= 6, Sepal.Width >= 3)
# ���� ���� �ϳ��ϳ� �� �Է��ؾ�������,
# filter �Լ��� �̿��Ͽ� �����Ͽ� ������ �ۼ��� �� ���� 
iris %>% select(Sepal.Length, Sepal.Width) %>% 
  filter(Sepal.Length >= 6 | Sepal.Width >= 3) %>% 
  head(10)
# �̶� ������ head�� ���� ����
## 

# ���� ��� Ȯ�� = ls( dataset )
# dataset�� ���� ���� Ȯ�� = ls( dataset $ )
# dataset ����س�����(�׸��̸� �ҹ��� ���� ���)
# names(����� dataset) <-  tolower(names(dataset))
# �빮�ڷ� �ٲٴ� �� = toupper()


##
# ����ġ Ȯ��
table(is.na(df$score))
# ����ġ ����
df_nomiss <- df %>% filter(!is.na(score))
# ���� ���� ���ÿ� ����ġ ����
df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
# �Լ��� ����ġ ���� ��� �̿��ϱ�
mean(df$score, na.rm = T)
exam %>% summarise(mean_math = mean(math, na.rm = T))
# ����ġ�� �ϳ��� ������ �����ϱ�
df <- na.omit(df) # ��� ������ ����ġ ���� ������ ����


# �̻�ġ Ȯ��
table(outlier$sex)
# ���� ó��
outlier$sex <- ifelse(outlier$sex >= 5, NA, outlier$sex)
# boxplot���� �ش�ġ ���� ã��
boxplot(mpg$hwy)
# �ش�ġ ���� ó��
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)

## ifelse(���ǹ�, ��, ����)