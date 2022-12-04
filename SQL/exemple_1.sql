SELECT name, groupe_number, hw_number, status, obligatory
FROM students
JOIN hw_progress
ON name = studentsname
JOIN works
ON hw_number = idworks;