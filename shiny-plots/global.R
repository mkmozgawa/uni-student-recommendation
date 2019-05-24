library(tidyverse)

score_board <- read_csv("../data/score_board.csv")
grads_boolean <- read_csv("../data/graduates.csv")

candidates <- merge(x=score_board, y=grads_boolean, by="id", all=TRUE)
students <- candidates %>%
  filter(accepted == TRUE)
students_grad_status <- students$graduated

students_acc_status <- candidates$accepted
students <- subset(students, select=-c(accepted, year, graduated, id))

students_columns <- colnames(students)
