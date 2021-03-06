USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[InsertGroup]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertGroup]
	(
  @ParentId int,
  @Name nvarchar(255)
	)
AS
	insert into Groups 
  (ParentId, Name)
  values  
  (@ParentId, @Name)

  select SCOPE_IDENTITY() as Id
GO
