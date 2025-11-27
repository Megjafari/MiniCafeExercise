IF OBJECT_ID('dbo.CoffeeMenu', 'U') IS NOT NULL
    DROP TABLE dbo.CoffeeMenu;
GO
CREATE TABLE CoffeeMenu(
  Id INTEGER PRIMARY KEY,
  Name TEXT,
  Price REAL,
  IsIced BIT -- 0 = warm, 1 = cold
);

INSERT INTO CoffeeMenu (Id, Name, Price, IsIced)
VALUES
    (1, 'Espresso', 25.00, 0),
    (2, 'Iced Latte', 35.00, 1),
    (3, 'Cappuccino', 30.00, 0),
    (4, 'Cold Brew', 40.00, 1),
    (5, 'Hot Chocolate', 28.50, 0);

SELECT * FROM CoffeeMenu
WHERE Price < 40; -- show all drinks under 40

SELECT * FROM CoffeeMenu
WHERE IsIced = 1; -- show all cold drinks

SELECT * FROM CoffeeMenu
ORDER BY Price; -- Order the list by price

SELECT TOP 1 * FROM CoffeeMenu
ORDER BY Price DESC; -- Find the most expensive drink

SELECT COUNT(*) AS ANTALDRYCKER FROM CoffeeMenu
WHERE Price >30; -- count how many drinks cost more than 30
