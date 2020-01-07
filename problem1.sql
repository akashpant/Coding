
create database college;				//data-base created 
Show databases;					//it will show the present databases
use college;
create table college_individual	                /*table named college_individual created */
(
id int not null auto_increment,
name varchar(100) not null,
Email varchar(500) not null,
Mentor_id int,
primary key(id)
);
describe college_individual ;				/* to check the type of elements*/
Insert into college_individual				/*inserting 20 records*/
values(1,'z','z@gmail.com',default),
(default,'y','y@outlook.com',1),
(default,'x','x@outlook.com',1),
(default,'w','w@gmail.com',1),
(default,'v','v@gmail.com',default),
(default,'u','u@gmail.com',1),
(default,'a','a@gmail.com',1),
(default,'b','b@gmail.com',1),
(default,'c','c@gmail.com',default),
(default,'d','d@gmail.com',1),
(default,'e','e@gmail.com',1),
(default,'f','f@gmail.com',1),
(default,'g','g@gmail.com',default),
(default,'h','h@gmail.com',1),
(default,'i','i@gmail.com',1),
(default,'j','j@gmail.com',1),
(default,'k','k@gmail.com',default),
(default,'l','l@gmail.com',1),
(default,'m','m@gmail.com',1),
(default,'n','n@gmail.com',1);
Select *from college_individual;			/*showing all the input records*/

*******************************************************************************************************
-To make the program more efficient we can make mentor_id to be a forign key

alter table college_individual
add forign key(mentor_id) references college_individual(id);                 			
/*with doing this if the someone deletes the mentor_id it will show an error */
Code to list all mentee's in alphabetical order.
select *from college_individual order by name asc;	        /*arrange in   the	     								ascending(alphabetic) order*/
Code to list all mentee's along with their mentors.
select *from college_individual where id<5;
select *from college_individual where id>4 && id<9;
select *from college_individual where id>8 && id<13;
select *from college_individual where id>12 && id<17;
select *from college_individual where id<16 && id<21;

Code to list all mentee's whose mentor's are using `@gmail` email domain.
select *from college_individual where email like ‘%@gmail.com%';



