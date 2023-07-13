﻿CREATE FUNCTION [dbo].[CSF_HashPassword]
(
	@Passwd NVARCHAR(30)
)
RETURNS BINARY(64)
AS
BEGIN
	RETURN HASHBYTES('SHA2_512', CONCAT(dbo.CSF_GetPreSalt(), @Passwd,dbo.CSF_GetPostSalt()));
END
