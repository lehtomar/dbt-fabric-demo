CREATE TABLE [dbt_mlehtola].[bridge_film_planets] (

	[film_id] varchar(8000) NULL, 
	[planet_id] varchar(100) NULL
);


GO
ALTER TABLE [dbt_mlehtola].[bridge_film_planets] ADD CONSTRAINT FK_4bd5c3e6_8289_428e_b5a9_d45546cd7cd2 FOREIGN KEY ([film_id]) REFERENCES [dbt_mlehtola].[films]([film_id]);