use newschema;

SELECT * FROM Album
WHERE ArtistId = 2;

SELECT ArtistId, COUNT(*) AS TotalAlbums
FROM Album
GROUP BY ArtistId;

SELECT * FROM Album
ORDER BY Title ASC;

SELECT DISTINCT ArtistId FROM Album;

SELECT Album.AlbumId, Album.Title, Artist.Name AS ArtistName
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId;

SELECT Artist.Name, COUNT(*) AS AlbumCount
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY AlbumCount DESC;

SELECT * FROM Customer
WHERE Country = 'USA';

SELECT Country, COUNT(*) AS TotalCustomers
FROM Customer
GROUP BY Country
ORDER BY TotalCustomers DESC;

SELECT * FROM Customer
WHERE Company IS NULL OR Company = '';

CREATE VIEW CustomerLocations AS
SELECT CustomerId, FirstName, LastName, City, Country
FROM Customer;

SELECT * FROM CustomerLocations;

