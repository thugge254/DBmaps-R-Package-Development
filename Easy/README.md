## 📊 R Merge Test with `data.table`

This project demonstrates how to perform **four types of table joins** (`inner`, `left`, `right`, and `full`) using the `merge()` function in R with the `data.table` package.

## 🧪 Data Used

library(data.table)

students <- data.table(
  id = c("A", "B", "C", "D"),
  Birthdate = c("2001-08-04", "2002-04-28", "2002-06-13", "2002-02-09")
)

scores <- data.table(
  id = c("B", "C", "E"),
  homework = c(87, 94, 92),
  quiz = c(91, 90, 87)
)

## Join Operations

### 1. Inner Join
merge(students, scores, by = "id")

#### Output

   id   Birthdate homework quiz
1:  B 2002-04-28       87    91
2:  C 2002-06-13       94    90

### 2. Left Join

merge(students, scores, by = "id", all.x = TRUE)

#### Output

   id   Birthdate homework quiz
1:  A 2001-08-04       NA    NA
2:  B 2002-04-28       87    91
3:  C 2002-06-13       94    90
4:  D 2002-02-09       NA    NA

### 3. Right Join

merge(students, scores, by = "id", all.y = TRUE)

#### Output 

   id   Birthdate homework quiz
1:  B 2002-04-28       87    91
2:  C 2002-06-13       94    90
3:  E        <NA>       92    87

### 4. Full Outer Join

merge(students, scores, by = "id", all = TRUE)

#### Output 

   id   Birthdate homework quiz
1:  A 2001-08-04       NA    NA
2:  B 2002-04-28       87    91
3:  C 2002-06-13       94    90
4:  D 2002-02-09       NA    NA
5:  E        <NA>       92    87

## Requirements

- R

- data.table package

Install if needed:
install.packages("data.table")

## License

This project is open-source and is licensed under the MIT License.
