--this SQL file is based off of this ERD table:  https://www.draw.io/#G0Bw-gU8RWcRQ-VXpqVjVpTkk4Y3M


DELETE FROM Artist;
DELETE FROM Album;
DELETE FROM Song;
DELETE FROM SongAlbum;


Drop Table if Exists Song;
Drop Table if Exists SongAlbum;
Drop Table if Exists Album;
Drop Table if Exists Artist;

Create Table Album (
    AlbumId Integer not null primary key Autoincrement, 
    ArtistId integer not null,
        FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);
Create Table Artist (
    ArtistId Integer not null primary key Autoincrement, 
    Name text not null,
    Albums text not null
);
Create Table SongAlbum (
    SongAlbum Integer not null primary key Autoincrement, 
    ArtistId integer not null,
    AlbumId integer not null,
        FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId),
        FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId)
);
Create Table Song (
SongId Integer not null primary key Autoincrement, 
        nameofsong text not null,
        length integer not null,
        albumid integer not null,
        genre text not null,
        Foreign Key (albumid) REFERENCES Album(AlbumId)
);
