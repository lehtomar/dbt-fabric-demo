CREATE TABLE [dbt_mlehtola].[films] (

	[film_id] varchar(8000) NULL, 
	[title] varchar(8000) NULL, 
	[episode] bigint NULL, 
	[release_date] varchar(8000) NULL, 
	[producer] varchar(8000) NULL, 
	[opening_crawl] varchar(8000) NULL, 
	[director] varchar(8000) NULL
);


GO
ALTER TABLE [dbt_mlehtola].[films] ADD CONSTRAINT UQ_3d756be0_a8fa_4b63_b2d6_6697f60cb267 unique NONCLUSTERED ([film_id]);