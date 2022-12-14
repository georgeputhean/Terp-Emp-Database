-- script to create Enterprise database
-- revised 10/9/2015 AL
-- revised 10/5/2018 AL

IF EXISTS (
	SELECT *
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_NAME = 'Enterprise.Department' AND TABLE_SCHEMA = 'dbo' )
	ALTER TABLE [Enterprise.Department]
DROP TABLE IF EXISTS [Enterprise.Employee];
		REFERENCES [Enterprise.Department] (dptId)
		ON DELETE CASCADE ON UPDATE CASCADE );
		REFERENCES [Enterprise.Department] (dptId)
		ON DELETE CASCADE ON UPDATE CASCADE );
		REFERENCES [Enterprise.Employee] (empSSN)
		ON DELETE NO ACTION ON UPDATE NO ACTION,
		REFERENCES [Enterprise.Project] (prjId)
		ON DELETE NO ACTION ON UPDATE NO ACTION );
		REFERENCES [Enterprise.Employee] (empSSN)
		ON DELETE CASCADE ON UPDATE CASCADE );