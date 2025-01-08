CREATE TABLE [dbt_mlehtola].[characters] (

	[character_id] varchar(8000) NULL, 
	[name] varchar(8000) NULL, 
	[height] varchar(8000) NULL, 
	[mass] varchar(8000) NULL, 
	[hair_color] varchar(8000) NULL, 
	[skin_color] varchar(8000) NULL, 
	[eye_color] varchar(8000) NULL, 
	[birth_year] varchar(8000) NULL, 
	[gender] varchar(8000) NULL, 
	[created] varchar(8000) NULL, 
	[edited] varchar(8000) NULL, 
	[planet_id] varchar(8000) NULL, 
	[description] varchar(8000) NULL
);


GO
ALTER TABLE [dbt_mlehtola].[characters] ADD CONSTRAINT UQ_e43e9a1f_2209_43f5_b9be_1c538e136ea9 unique NONCLUSTERED ([character_id]);