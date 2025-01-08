CREATE TABLE [dbt_mlehtola].[bridge_film_vehicles] (

	[film_id] varchar(8000) NULL, 
	[vehicle_id] varchar(100) NULL
);


GO
ALTER TABLE [dbt_mlehtola].[bridge_film_vehicles] ADD CONSTRAINT FK_9a3606fb_7222_49f9_aa1a_011327873d1c FOREIGN KEY ([film_id]) REFERENCES [dbt_mlehtola].[films]([film_id]);