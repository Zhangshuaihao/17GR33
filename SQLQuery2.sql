create table yhb
(yid int primary key identity(1,1),
yname nvarchar(10) not null,
ysfz nvarchar(50) unique 
)
create table hmb
(hid int primary key identity(1,1),
sjh nvarchar(20)unique ,
hmzt int not null
)
create table yghmb
(hid int foreign  key references hmb(hid ),
yid int foreign  key references yhb(yid ),
zcsj date ,
zxsj date ,
czsj date,
ye decimal default 0

)

insert into yhb values('张三',412726199805155853)
insert into yhb values('李四',412726200012286666)
insert into yhb values('王五',412726201212280646)
insert into yhb values('刘六',4127262008120602525)

insert into hmb values(17633546559,1)
insert into hmb values(17633550540,1)
insert into hmb values(13643949610,2)
insert into hmb values(3427483,0)


select *from yghmb 
insert into yghmb values(1,1,'2010-05-15','2015-06-25','2018-03-26',80)
insert into yghmb values(2,2,'2010-06-21','2015-09-23','2018-07-14',90)
insert into yghmb values(3,3,'2010-08-11','2011-10-13','2018-09-25',90)
insert into yghmb values(5,5,'2014-09-01','2011-10-19','2018-09-28',90)

--3,

update yghmb  set ye =ye+100 where  hid =1 and yid =1

--4,
delete from yghmb  where hid =(select hid  from hmb where hmzt  =2)

--5,
select *from yghmb where hid =(select hid from hmb  where  hmzt=1)

select *from hmb 
select *from yhb
select *from yghmb
--6,
select hid from hmb where hmzt  =2

select *from yghmb where hid =(select hid from hmb where hmzt  =0)
--7,
select hid from hmb   where hmzt  =1
select *from yghmb where hid =(select hid from hmb where hmzt  =0) and ye >100

select yname, hmb.sjh   ,MAX (ye )'余额'  from hmb ,yhb ,yghmb where  hmb .hid= yghmb .hid and yhb .yid=yghmb .yid  group by  yname, hmb.sjh order by  '余额'desc 



select *from hmb 
select *from yhb
select *from yghmb