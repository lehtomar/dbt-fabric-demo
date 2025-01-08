CREATE TABLE [prod].[planets] (

	[planet_id] varchar(8000) NULL, 
	[name] varchar(8000) NULL, 
	[diameter] int NULL, 
	[rotation_period] int NULL, 
	[orbital_period] int NULL, 
	[gravity] varchar(8000) NULL, 
	[population] bigint NULL, 
	[climate] varchar(8000) NULL, 
	[terrain] varchar(8000) NULL, 
	[surface_water] decimal(10,2) NULL, 
	[created] datetime2(6) NULL, 
	[edited] datetime2(6) NULL, 
	[description] varchar(8000) NULL
);

