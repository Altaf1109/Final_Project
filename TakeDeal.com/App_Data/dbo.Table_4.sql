CREATE TABLE [dbo].[CarsAddInfo]
(
	[PicID] INT NOT NULL PRIMARY KEY, 
    [PicPaths] NCHAR(10) NOT NULL, 
    [Country ] VARCHAR(50) NULL, 
    [State] VARCHAR(50) NULL, 
    [City] VARCHAR(50) NULL, 
    [CarID] INT NOT NULL
)
