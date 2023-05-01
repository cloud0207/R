##### practice


library(dplyr)
library(tidyr)
## 파이프 연산자 %>% (단축키 ctrl + shift + m)
# select() : 원하는 열 가져오기
# filter() : 조건에 맞게 가져오기
# ' & ' = 모두 TRUE 여야 값 반환
# ' | ' = 하나만 TRUE여도 값 반환

iris
# 파이프 연산자 없이 select 사용
# select(iris, Sepal.Length, Sepal.Width)

# 파이프 연산자 없이 filter 사용
# filter(iris,sepal.Length >= 6, Sepal.Width >= 3)
# 위와 같이 하나하나 다 입력해야했지만,
# filter 함수를 이용하여 연결하여 간단히 작성할 수 있음 
iris %>% select(Sepal.Length, Sepal.Width) %>% 
  filter(Sepal.Length >= 6 | Sepal.Width >= 3) %>% 
  head(10)
# 이때 마지막 head는 갯수 지정
## 

# 변수 목록 확인 = ls( dataset )
# dataset의 세부 변수 확인 = ls( dataset $ )
# dataset 백업해놔야함(항목이름 소문자 변경 백업)
# names(백업한 dataset) <-  tolower(names(dataset))
# 대문자로 바꾸는 건 = toupper()


##
# 결측치 확인
table(is.na(df$score))
# 결측치 제거
df_nomiss <- df %>% filter(!is.na(score))
# 여러 변수 동시에 결측치 제거
df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))
# 함수의 결측치 제외 기능 이용하기
mean(df$score, na.rm = T)
exam %>% summarise(mean_math = mean(math, na.rm = T))
# 결측치가 하나라도 있으면 제거하기
df <- na.omit(df) # 모든 변수에 결측치 없는 데이터 추출


# 이상치 확인
table(outlier$sex)
# 결측 처리
outlier$sex <- ifelse(outlier$sex >= 5, NA, outlier$sex)
# boxplot으로 극단치 기준 찾기
boxplot(mpg$hwy)
# 극단치 결측 처리
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)

## ifelse(조건문, 참, 거짓)