# import the data.table library
library(data.table)

students <- data.table(id = c("A", "B", "C", "D"),
                       Birthdate = c("2001-08-04", "2002-04-28", "2002-06-13", "2002-02-09"))

scores <- data.table(id = c("B", "C", "E"),
                     homework = c(87, 94, 92),
                     quiz = c(91, 90, 87))
# 1. Inner Join
inner_result <- merge(students, scores, by = "id")
print(inner_result)

# 2. Left Join
left_result <- merge(students, scores, by = "id", all.x = TRUE)
print(left_result)

# 3. Right Join
right_result <- merge(students, scores, by = "id", all.y = TRUE)
print(right_result)

# 4. Full Outer Join
full_result <- merge(students, scores, by = "id", all = TRUE)
print(full_result)




