use quanlysinhvien;
-- cau 1
select subname,max(credit) from `subject`
group by subname;
-- cau 2
select s.SubId,SubName,max(mark)from mark m join `subject` s on m.subid = s.subid
group by s.subid,s.subname;
-- cau 3
select s.studentid,s.studentname,avg(mark) from student s join mark m on s.studentid = m.studentid 
group by  s.studentid,s.studentname
order by avg(mark) desc;




