
CREATE PROCEDURE AbonentAdd
	@���_�������� int,
	@��� nvarchar(50),
	@����� nvarchar(50)

AS
BEGIN
insert into [dbo].[��������]([���_��������],[���],[�����])
	values
	(@���_��������, @���, @�����)
END
GO

CREATE PROCEDURE AbonentDelete
	@���_�������� int,
	@��� nvarchar(50),
	@����� nvarchar(50)

AS
BEGIN
delete from [dbo].[��������]([���_��������],[���],[�����])
	
	where [���_��������]= @���_�������� and [���] = @��� and [�����] = @�����
END
GO


