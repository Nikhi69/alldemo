create schema payroll;

use payroll;


create table department(
dp_id int primary key auto_increment,
dp_name varchar(45)
);

create table employee(
em_id int primary key auto_increment,
em_name varchar(45),
em_salary decimal(10,2),
em_permanent boolean,
em_date_of_birth date,
em_dp_id int,
foreign key(em_dp_id) references department(dp_id)
);
alter table employee auto_increment = 1000;
create table skill(
sk_id int primary key auto_increment,
sk_name varchar(45)
);

select * from employee_skill;

delete from employee
where em_name="Diganth";
create table employee_skill(
es_id int primary key auto_increment,
es_em_id int,
es_sk_id int,
 foreign key(es_em_id) references employee(em_id),
  foreign key(es_sk_id) references skill(sk_id)
);

insert into department(dp_name)
value("Finance");
insert into department(dp_name)
value("HR");
insert into department(dp_name)
value("Marketing");
insert into department(dp_name)
value("Production");
insert into department(dp_name)
value("Audit");

insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Anup",30000.00,true,"1995-05-06",1);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Rashi",40000.00,true,"1996-03-16",2);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Ramesh",35000.00,false,"1993-04-06",3);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Ganesh",29000.00,true,"1998-08-26",4);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Akshay",30000.00,false,"1995-07-06",5);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Seema",30000.00,true,"1990-02-16",3);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Arjun",60000.00,false,"1992-08-20",1);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Nitin",50000.00,true,"1995-09-06",5);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Sameer",40000.00,true,"1998-09-16",4);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Sourav",60000.00,true,"1995-09-10",3);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Natasha",40000.00,true,"1998-03-15",1);
insert into employee(em_name,em_salary,em_permanent,em_date_of_birth,em_dp_id)
value("Robert",35000.00,true,"1996-05-13",5);

insert into skill(sk_name)
value("HTML");
insert into skill(sk_name)
value("Python");
insert into skill(sk_name)
value("Java");
insert into skill(sk_name)
value("OS");
insert into skill(sk_name)
value("Mysql");
insert into skill(sk_name)
value("Docker");
insert into skill(sk_name)
value("Ruby");
insert into skill(sk_name)
value("Angular");
insert into skill(sk_name)
value("Kotlin");


insert into employee_skill(es_em_id,es_sk_id)
values(1000,1);
insert into employee_skill(es_em_id,es_sk_id)
values(1000,4);
insert into employee_skill(es_em_id,es_sk_id)
values(1000,5);
insert into employee_skill(es_em_id,es_sk_id)
values(1001,3);
insert into employee_skill(es_em_id,es_sk_id)
values(1001,7);
insert into employee_skill(es_em_id,es_sk_id)
values(1001,2);
insert into employee_skill(es_em_id,es_sk_id)
values(1002,6);
insert into employee_skill(es_em_id,es_sk_id)
values(1002,7);
insert into employee_skill(es_em_id,es_sk_id)
values(1002,8);
insert into employee_skill(es_em_id,es_sk_id)
values(1003,2);
insert into employee_skill(es_em_id,es_sk_id)
values(1003,5);
insert into employee_skill(es_em_id,es_sk_id)
values(1004,6);
insert into employee_skill(es_em_id,es_sk_id)
values(1005,3);
insert into employee_skill(es_em_id,es_sk_id)
values(1006,5);
insert into employee_skill(es_em_id,es_sk_id)
values(1007,3);
insert into employee_skill(es_em_id,es_sk_id)
values(1008,6);
insert into employee_skill(es_em_id,es_sk_id)
values(1009,7);
insert into employee_skill(es_em_id,es_sk_id)
values(1010,6);
insert into employee_skill(es_em_id,es_sk_id)
values(1011,4);
insert into employee_skill(es_em_id,es_sk_id)
values(1011,2);
insert into employee_skill(es_em_id,es_sk_id)
values(1010,4);
insert into employee_skill(es_em_id,es_sk_id)
values(1008,4);
insert into employee_skill(es_em_id,es_sk_id)
values(1007,9);

select * from skill;