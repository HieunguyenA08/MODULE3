
use quanlysinhvien;
-- cau 1
select * from student
where StudentName like 'h%';
-- cau 2
select * from class
where month(StartDate) = '12';
-- cau 3
select * from subject
where Credit between 3 and 5;
-- cau 4
update student
set CLassID = 2
where StudentName = 'Hung';
select * from student;
-- cau 5 
SELECT  Student.StudentName, Subject.SubName, Mark.Mark
FROM Student , Subject , Mark
where Student.studentid = mark.studentid and subject.subid=mark.subid
order by mark.mark desc


