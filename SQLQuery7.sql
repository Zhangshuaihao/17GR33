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
insert into types values( '食品')
insert into types values( '电器')
insert into types values( '饮料')

select *from ware 
insert into ware  values(1,'面包',2.5,6,5)
insert into ware  values(1,'方便面',2,4,5)

insert into ware  values(2,'电视',10,16,5)
insert into ware  values(2,'冰箱',20,40,5)

insert into ware  values(3,'红牛',5,6,5)
insert into ware  values(3,'哇哈哈',3,4,5)

insert into sale values( 1,1,'2018-1521',2)
select  *from person 
insert into person values('张三',123)
insert into person values('李四',456)
select *from sale 
insert into sale values( 1,2,'2018-1520',1)
update ware set wcnt=wcnt -2 where wid =1
select *from ware 

select wid ,wnam,wout-wjin  from ware order by wout-wjin desc
select wnam ,SUM ((wout - wjin)*scnt )'利润总额' from ware ,sale  where ware .wid =sale.wid  group by wnam order by SUM ((wout - wjin)*scnt ) desc
select wnam ,SUM (scnt )'销售量'from  ware ,sale  where ware.wid=sale .wid group by wnam order by SUM (scnt )
select *from ware 
select *from sale  
 select wnam ,SUM(scnt )  from  ware  ,sale where ware .wid =sale .sid  group by wnam order by   SUM(scnt ) desc
 
 select   top 2 wnam ,SUM ((wout -wjin)*scnt) as '利润' from ware ,sale  where  ware .wid =sale .sid  group by wnam order by '利润' desc 
 select  wnam ,SUM (scnt )'销售数量'from  ware  , sale where ware .wid =sale .sid   group by wnam order by '销售数量'desc
 select   wcnt , SUM (scnt )'销售数量'from  ware , sale where ware.wid =sale.wid group by wcnt  order by '销售数量'desc

 select *from types  order by tid 
 select wnam ,SUM ((wout-wjin )*scnt )'利润'from ware ,sale where  ware .wid =sale .sid  group by wnam  order by '利润' desc
  
  select top  2  wnam ,SUM (scnt )from  ware  ,sale  where  ware .wid =sale .wid  group by wnam order by SUM (scnt )desc
   select pnam ,SUM (scnt )'销售量' from  person ,sale  where  person .pid =sale.pid  group by pnam order by '销售量'desc
   select SUM ((wout-wjin)*scnt )'利润'from sale ,ware  where sale .wid =ware .wid  and stime  between '2018-01-01' and '2018-12-31'  
    select *from ware  where  wcnt <30
    
    
    
    --查询每件商品编号,名称,单品利润,并按照单品利润排序
     select SUM ((wout-wjin)*scnt )'利润'from ware,sale where ware.wid=sale .wid group by wnam  order by '利润'desc
   
   
   