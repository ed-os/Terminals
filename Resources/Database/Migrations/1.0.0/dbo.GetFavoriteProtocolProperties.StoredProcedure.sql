USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[GetFavoriteProtocolProperties]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFavoriteProtocolProperties]
	(
	@FavoriteId int
	)
AS
select ProtocolProperties from Favorites
  where Id = @FavoriteId
GO
