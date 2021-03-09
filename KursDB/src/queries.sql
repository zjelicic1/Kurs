
--DROP TABLE if exists Raum cascade;
DROP TABLE Kurs;
DROP TABLE Teilnahmer;
DROP TABLE Trainer;
DROP TABLE Raum;




    CREATE TABLE Raum(
    Raumnr VARCHAR(4) PRIMARY KEY,
    Stocknr VARCHAR(2)
    );
    
    INSERT INTO Raum values('C515','3');
    
    CREATE TABLE Trainer(
    ID VARCHAR(10) NOT NULL PRIMARY KEY ,
    Vorname VARCHAR(25),
    Nachname VARCHAR(25)
    );
    
    INSERT INTO Trainer values('122','Johan','Matler');
    
    CREATE TABLE Teilnahmer(
    ID VARCHAR(10) NOT NULL PRIMARY KEY,
     Vorname VARCHAR(25),
    Nachname VARCHAR(25),
    Straße VARCHAR(50),
    Hausnr VARCHAR(8),
    PLZ VARCHAR(8),
    Ort VARCHAR(50)
    );
    
    INSERT INTO Teilnahmer(ID,Vorname,Nachname,Straße,Hausnr,PLZ,Ort)VALUES('1','Miroslav','Close','Bulern Straße','120','1220','Wien');
    INSERT INTO Teilnahmer(ID,Vorname,Nachname,Straße,Hausnr,PLZ,Ort)VALUES('2','Borislav','Mase','Achter Straße','145','1020','Wien');
    INSERT INTO Teilnahmer(ID,Vorname,Nachname,Straße,Hausnr,PLZ,Ort)VALUES('3','Lav','Milner','List Straße','5','1030','Wien');
    
    CREATE TABLE Kurs(
    VANR VARCHAR(10) NOT NULL PRIMARY KEY,
    Titel VARCHAR(25),
    TNID VARCHAR(10) REFERENCES Teilnahmer(ID),
    TRNID VARCHAR(10) REFERENCES Trainer(ID),
    RAUMNUM VARCHAR(4) REFERENCES RAUM(Raumnr)
    );
    
    INSERT INTO Kurs values('1122334421','Software Developer Java','1','122','C515');
    
    
    