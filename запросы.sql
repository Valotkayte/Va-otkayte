create table ��������
(
���_�������� int identity (1001,1) primary key not null,
��� varchar (100) null ,
����� varchar (100) null
)

go

create table �������
(
���_������� int identity (1001,1) primary key not null,
�����_�������� varchar (50) null,
����_���������_��� date null
)

go

create table ���������
(
���_��������� int identity (1001,1) primary key not null,
����_��������� date null,
������������������ int null,
������ varchar (50) null
)

go

create table �����
(
���_������ int identity (1001,1) primary key not null,
��������_������ varchar (50) null,
����� int null
)




insert into [dbo].[��������]([���_��������],[���],[�����])
values
(1,'����� ������ ���������','�.����, ��. ����, 54,4'),
(3,'������� ������ ���������','�. ����, ��.������, 34,23'),
(4,'������ ���������� ��������','�. ����, ��. ������, 5,24')


select [�����_��������],[���], sum ([dbo].[���������].[����_���������]) as ���_���������
from [dbo].[�������],[dbo].[��������]
