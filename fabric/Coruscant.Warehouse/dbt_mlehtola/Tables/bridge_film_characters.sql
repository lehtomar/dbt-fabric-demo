CREATE TABLE [dbt_mlehtola].[bridge_film_characters] (

	[film_id] varchar(8000) NULL, 
	[character_id] varchar(100) NULL
);


GO
ALTER TABLE [dbt_mlehtola].[bridge_film_characters] ADD CONSTRAINT FK_72e685c8_4676_4e74_887d_3842b2039923 FOREIGN KEY ([film_id]) REFERENCES [dbt_mlehtola].[films]([film_id]);