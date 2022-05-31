SELECT * FROM ProductS_Test

INSERt INTO [ProductS_Test] ([Name])
VALUES('Crunchy'),
('Granola'),
('Regular/soft'),
('Gluten Free'),
('Multigrain'),
('Take away');

SELECT [Name] FROM Products
UNION
SELECT [Name] FROM ProductS_Test


