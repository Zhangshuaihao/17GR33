create database Shangping 
create table  types
(
tid int  primary key identity(1,1),
tnam nvarchar(10) not  null unique 


)
create table ware
(
wid int primary  key  identity (1,1),
tid int foreign key references types(tid),
wnam nvarchar(10)not null unique,
wjin decimal(5,2)not null ,
wout decimal(5,2)not null ,
wcnt int not null 
)
create table person 
(
pid int primary key identity(1,1),
pnam nvarchar(10)not null unique, 
pmima nvarchar(10)not null

)
create table sale(
sid int primary key identity(1,1),
wid int foreign key references ware(wid),
pid int foreign key references person (pid),
stime nvarchar(10)not null ,
scnt int  null 

)
insert into types values( 'ʳƷ')
insert into types values( '����')
insert into types values( '����')

select *from ware 
insert into ware  values(1,'���',2.5,6,5)
insert into ware  values(1,'������',2,4,5)

insert into ware  values(2,'����',10,16,5)
insert into ware  values(2,'����',20,40,5)

insert into ware  values(3,'��ţ',5,6,5)
insert into ware  values(3,'�۹���',3,4,5)

insert into sale values( 1,1,'2018-1521',2)
select  *from person 
insert into person values('����',123)
insert into person values('����',456)
select *from sale 
insert into sale values( 1,2,'2018-1520',1)
update ware set wcnt=wcnt -2 where wid =1
select *from ware 

select wid ,wnam,wout-wjin  from ware order by wout-wjin desc
select wnam ,SUM ((wout - wjin)*scnt )'�����ܶ�' from ware ,sale  where ware .wid =sale.wid  group by wnam order by SUM ((wout - wjin)*scnt ) desc
select wnam ,SUM (scnt )'������'from  ware ,sale  where ware.wid=sale .wid group by wnam order by SUM (scnt )
select *from ware 
select *from sale  
 select wnam ,SUM(scnt )  from  ware  ,sale where ware .wid =sale .sid  group by wnam order by   SUM(scnt ) desc
 
 select   top 2 wnam ,SUM ((wout -wjin)*scnt) as '����' from ware ,sale  where  ware .wid =sale .sid  group by wnam order by '����' desc 
 select  wnam ,SUM (scnt )'��������'from  ware  , sale where ware .wid =sale .sid   group by wnam order by '��������'desc
 select   wcnt , SUM (scnt )'��������'from  ware , sale where ware.wid =sale.wid group by wcnt  order by '��������'desc

 select *from types  order by tid 
 select wnam ,SUM ((wout-wjin )*scnt )'����'from ware ,sale where  ware .wid =sale .sid  group by wnam  order by '����' desc
  
  select top  2  wnam ,SUM (scnt )from  ware  ,sale  where  ware .wid =sale .wid  group by wnam order by SUM (scnt )desc
   select pnam ,SUM (scnt )'������' from  person ,sale  where  person .pid =sale.pid  group by pnam order by '������'desc
   select SUM ((wout-wjin)*scnt )'����'from sale ,ware  where sale .wid =ware .wid  and stime  between '2018-01-01' and '2018-12-31'  
    select *from ware  where  wcnt <30
    
    
    
    --��ѯÿ����Ʒ���,����,��Ʒ����,�����յ�Ʒ��������
     select SUM ((wout-wjin)*scnt )'����'from ware,sale where ware.wid=sale .wid group by wnam  order by '����'desc
   
   
   