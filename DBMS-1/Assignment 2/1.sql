.open assignment2.db
SELECT substr(ARTIST.Name, 1, 1) as first_letter, COUNT(*) counts
FROM artists ARTIST LEFT JOIN albums ALBUM ON ALBUM.ArtistID = ARTIST.ArtistID
Group BY first_letter;
