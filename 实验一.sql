create database XSGL;
USE XSGL;
create table dept(
	Dno varchar(40) unique not null,
	Dname varchar(40) not null
);
create table student(
	Sno varchar(40) primary key,
	Sname varchar(40),
	Ssex varchar(40) check(Ssex in ('男','女')),
	Sage int,
	Dno varchar(40), 
	foreign key(Dno) references dept(Dno)
);
create table course(
	Cno varchar(40) primary key,
	Cname varchar(40),
	Cpno int,
	Ccredit int
);
create table SC(
	Sno varchar(40),
	Cno VArchar(40),
	Grade varchar(40),
	primary key(Sno,Cno),
	foreign key(Sno) references student(Sno),
	foreign key(Cno) references course(Cno)
);
select * from course;
insert into course values("1","数据库",5,4);
insert into course values("2","数据结构",6,3);
insert into course values("3","操作系统",7,4);
insert into course values("4","数学",5,2);
select * from SC;
insert into SC values("95001","1","92");
insert into SC values("95001","2","85");
insert into SC values("95001","3","88");
insert into SC values("95001","4","90");
insert into SC values("95002","1","96");
insert into SC values("95002","3","80");
insert into SC values("95003","2","98");
select * from student;
insert into student values("95001","李勇","男",20,"001");
insert into student values("95002","刘晨","女",21,"001");
insert into student values("95003","赵敏","女",29,"002");
insert into student values("95004","张三","男",20,"003");
select * from dept;
insert into dept values("001","CS");
insert into dept values("002","LS");
insert into dept values("003","MA");
insert into dept values("004","TL");







