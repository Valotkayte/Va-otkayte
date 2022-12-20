
CREATE PROCEDURE AbonentAdd
	@Код_абонента int,
	@ФИО nvarchar(50),
	@Адрес nvarchar(50)

AS
BEGIN
insert into [dbo].[Абоненты]([Код_абонента],[ФИО],[Адрес])
	values
	(@Код_абонента, @ФИО, @Адрес)
END
GO

CREATE PROCEDURE AbonentDelete
	@Код_абонента int,
	@ФИО nvarchar(50),
	@Адрес nvarchar(50)

AS
BEGIN
delete from [dbo].[Абоненты]([Код_абонента],[ФИО],[Адрес])
	
	where [Код_абонента]= @Код_абонента and [ФИО] = @ФИО and [Адрес] = @Адрес
END
GO


