create table Абоненты
(
Код_абонента int identity (1001,1) primary key not null,
ФИО varchar (100) null ,
Адрес varchar (100) null
)

go

create table Телефон
(
Код_телефон int identity (1001,1) primary key not null,
Номер_договора varchar (50) null,
Дата_установки_тел date null
)

go

create table Разговоры
(
Код_разговора int identity (1001,1) primary key not null,
Дата_разговора date null,
Продолжительсность int null,
Оплата varchar (50) null
)

go

create table Город
(
Код_города int identity (1001,1) primary key not null,
Название_города varchar (50) null,
Тариф int null
)




insert into [dbo].[Абоненты]([Код_абонента],[ФИО],[Адрес])
values
(1,'Орлов Сергей Борисович','г.Омск, ул. Мира, 54,4'),
(3,'Вавилов Сергей Борисович','Г. Омск, пр.Маркса, 34,23'),
(4,'Титова Александра Ивановна','г. Омск, ул. Ленина, 5,24')


select [Номер_телефона],[ФИО], sum ([dbo].[Разговоры].[Дата_разговора]) as Кол_разговров
from [dbo].[Телефон],[dbo].[Абоненты]
