# else가 있는 if문
job.type <- 'A'
if (job.type=='B'){
  bonus <- 200
} else {
  bonus <- 100
}
print(bonus)

# {}의위치 중요!!

# else가 없는 if문 
# 초기값을 세팅
job.type <- 'A'
bonus <- 100
if(job.type=='B'){
  bonus <- 200
}
print(bonus)

# ifelse() 문 사용시
ifelse(job.type=='B',200,100)


# 다중 if 문 (is-else의 반복)
score <- 84
ifelse(score>90,grade <- 'A',
       ifelse(score>90,grade <- 'B',
              ifelse(score>90,grade <- 'C',
                     ifelse(score>90,grade <- 'D',
                            'F'))))
print(grade)

# p.241 예제실습
age <- 5
group <- ifelse(age >= 19, '성인',
                ifelse(age >= 13, '청소년',
                       ifelse(age >= 6, '어린이',
                              ifelse(age < 6, '영유아'))))
print(group)

# p.242
install.packages('svDialogs')
library(svDialogs)
purchase <- dlgInput('Enter the purchase amout')$res
purchase <- as.numeric(purchase)
type <- NULL
ratio <- NULL
if(purchase>=300000){
  type <- '플래티넘'
  ratio <- 0.07
} else if (purchase>=200000){
  type <- '골드'
  ratio <- 0.05
} else if (purchase>=100000){
  type <- '실버'
  ratio <- 0.03
} else{
  type <- '프렌즈'
  ratio <- 0.01
}

cat('고객님은', type, '회원으로 구매액의', ratio*100, '%가 적립됩니다.')
# cat은 줄바꿈/띄기가 안됨 주의
# print는 paste를 이용하여 붙임
# 조건이 2개이상일 때는 ifelse보다 위와같이 작성.

## for문
# for(반복해서 사용할 변수 in 범위){
#     실행문
# }

# Ex.
for (i in 1:10){
  print(i)
}

# 실습 (p.245-246)
for (i in 1:9) {
  cat('2*',i,'=',2*i,'\n')
}

for (i in 1:20){
  if(i%%2==0){
    cat(i, ' ')
  }
}

# 연산자 짚고 넘어가기!
# 짝수는 %%
# 홀수는 !=


