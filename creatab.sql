--Exercice 1

--1.9 Création des tables d’une base de données : DDL
    --Creation de la Base de Donnnée
    CREATE DATABASE Vols CHARACTER SET 'utf8';
    --1. créer les tables de la base de données des vols à partir du modèle physique de données proposé :
    --Creation Table Pilote
    CREATE TABLE Pilote(
        numpil INT NOT NULL,
        nompil VARCHAR(20) NOT NULL,
        CONSTRAINT PK_numpil_Pilote PRIMARY KEY(numpil)
    );
    --Creation Table Avion 
    CREATE TABLE Avion(
        numavion INT NOT NULL,
        nomvar VARCHAR(20) NOT NULL,
        CONSTRAINT PK_numavion_Avion PRIMARY KEY(numavion)
    );
    --Create Table Vol
    CREATE TABLE Vol(
        numvol INT NOT NULL,
        numpil INT NOT NULL,
        numav INT NOT NULL,
        departvol DATE NOT NULL,
        dureevol DECIMAL(6,2) NOT NULL,
        CONSTRAINT PK_numvol_Vol PRIMARY KEY(numvol),
        CONSTRAINT FK_numpil_Vol FOREIGN KEY(numpil) REFERENCES Pilote(numpil),
        CONSTRAINT FK_numav_Vol FOREIGN KEY(numav) REFERENCES Avion(numav)
    );
    --2. utiliser la commande suivante pour vérifier la liste des tables de votre base de données 
    SHOW TABLES;
    --3. utiliser la commande suivante pour vérifier les colonnes de la table ’pilote’ 
    DESCRIBE Pilote;
--1.10 Découvrir l’intégrité d’entité : DDL/DML 
    --1. ajouter les 2 pilotes suivants	:	
    INSERT INTO Pilote VALUES (1,'Tim'),(1,'John');
    --3.Supprimer les lignes de la table Pilote
    DELETE FROM Pilote;
    --4.Ajouter la clef primaire de la table Pilote(numpil)
    ALTER TABLE Pilote ADD CONSTRAINT PK_numpil_Pilote PRIMARY KEY(numpil);
    --5.Ajouter les 2 pilotes
    INSERT INTO Pilote VALUES (1,'Tim'),(1,'John');
--1.11 Découvrir l’intégrité référentielle : DDL/DML 
    --1.Ajouter la clef primaire de la table Avion(numav)
    ALTER TABLE Avion ADD CONSTRAINT PK_numav_Avion PRIMARY KEY(numav);
    --2.Ajouter la clef primaire de la table Vol(numvo)
    ALTER TABLE Vol ADD CONSTRAINT PK_numvol_Vol PRIMARY KEY(numvol);
    --3.Ajouter le Pilote suivant
    INSERT INTO Pilote VALUES(2,'John');
    --4.Ajouter les 2 avions suivants 
    INSERT INTO Avion VALUES(1,'A320'),(2,'A330');
    --5.Ajouter le vol suivant
    INSERT INTO Vol VALUES(1,3,99,'2017-01-15',3.5);
    --7.Lister les vols
    SELECT * FROM Vol;
    --8.Supprimer le Vol de numero 1
    DELETE FROM Vol WHERE numvol=1;
    --9.Ajouter la contrainte d'integrité référentiel dans vol:numpil doit faire référence à la colonne numpil de avion
    ALTER TABLE Vol ADD CONSTRAINT FK_numpil_Vol FOREIGN KEY(numpil) REFERENCES Pilote(numpil);
    --10.Ajouter la contrainte d'integrité référentiel dans vol:numav doit faire référence à la colonne numav de avion
    ALTER TABLE Vol ADD CONSTRAINT FK_numav_Vol FOREIGN KEY(numav) REFERENCES Avion(numav);
    --11.Ajouter le Vol
    INSERT INTO Vol (numvol,numav,numpil,departvol,dureevol) VALUES (1,3,99,'2017-01-15',3.5);
    --13.Ajouter le Vol suivant
    INSERT INTO Vol VALUES(1,1,2,'2017-01-15',3.5);
--1.12 Modèle Physique de Données complet : DDL
    --Ajout de la colone vilpil dans la table Pilote
    ALTER TABLE Pilote ADD vilpil VARCHAR(20) NOT NULL;
    --Ajout de la colone salairepil dans la table Pilote
    ALTER TABLE Pilote ADD salairepil numeric(10,2) NOT NULL;
    --Ajout de la colone localisav dans la table Avion
    ALTER TABLE Avion ADD localisav VARCHAR(20) NOT NULL;
    --Ajout de la colone capamaxav dans la table Avion
    ALTER TABLE Avion ADD capamaxav INT NOT NULL;
    --Ajout de la colone vildepvol dans la table Vol
    ALTER TABLE Vol ADD vildepvol VARCHAR(20) NOT NULL;
    --Ajout de la colone vilpil dans la table Vol
    ALTER TABLE Vol ADD vilarrvol VARCHAR(20) NOT NULL;
