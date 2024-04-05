--Exercice 2

--1.13 Créer les tables de la BD ’cinema’ : DDL 
    --Creation de la Base de Donnée Cinema
    CREATE DATABASE Cinema CHARACTER SET 'utf8';
    --1.13.1 MLD Bases Cinema 
    --Creation Table Acteur
    CREATE TABLE Acteur(
        num_act INT,
        nom_act VARCHAR(40) NOT NULL,
        anNais_act INT,
        CONSTRAINT PK_num_act_Acteur PRIMARY KEY(num_act)
    );
    --Creation Table Realisateur
    CREATE TABLE Realisateur(
        num_real INT,
        nom_real VARCHAR(40) NOT NULL,
        anNais_real INT,
        CONSTRAINT PK_num_real_Realisateur PRIMARY KEY(num_real)
    );
    --Creation Table Film
    CREATE TABLE Film(
        num_film INT,
        tite_film VARCHAR(40) NOT NULL,
        anSortie INT,
        budget_film INT,
        genre_film VARCHAR(40),
        num_real INT NOT NULL,
        resume_film TEXT(2000),
        CONSTRAINT FK_num_real_Film FOREIGN KEY(num_real) REFERENCES Realisateur(num_real),
        CONSTRAINT PK_num_film_Film PRIMARY KEY(num_film)
    );
    --Creation Table Jouer
    CREATE TABLE Jouer(
        num_act INT NOT NULL,
        num_film INT,
        role_jouer VARCHAR(40),
        cachet_jouer INT,
        CONSTRAINT FK_num_act_Jouer FOREIGN KEY(num_act) REFERENCES Acteur(num_act),
        CONSTRAINT FK_num_film_Jouer FOREIGN Key(num_film) REFERENCES Film(num_film)
    );
    --Creation Table Projection
    CREATE TABLE Projection(
        date_projection DATE,
        heure_projection TIME,
        tarif_projection DECIMAL(4,2),
        CONSTRAINT PK_date_projection_Projection PRIMARY KEY(date_projection),
        CONSTRAINT UK_heure_projection_Projection UNIQUE KEY(heure_projection) 
    );
    --Creation Table Salle
    CREATE TABLE Salle(
        num_salle INT,
        nbPlaces_salle INT NOT NULL,
        CONSTRAINT PK_num_salle_Salle PRIMARY KEY(num_salle)
    );
    --Creation Table Projeter
    CREATE TABLE Projeter(
        num_salle INT,
        date_projection DATE,
        heure_projection TIME,
        num_film INT,
        nbSpectateurs_proj INT,
        CONSTRAINT FK_num_salle_Projeter FOREIGN KEY(num_salle) REFERENCES Salle(num_salle),
        CONSTRAINT FK_num_film_Projeter FOREIGN KEY(num_film) REFERENCES Film(num_film),
        CONSTRAINT FK_date_projection_Projeter FOREIGN KEY(date_projection) REFERENCES Projection(date_projection),
        CONSTRAINT FK_heure_projection_Projeter FOREIGN KEY(heure_projection) REFERENCES Projection(heure_projection)
    );
--1.14 Ajouter des données (DML) 
    --1.Insérez des lignes en tenant compte des éléments	suivants :   
    --La salle 1 possède 100 places
    INSERT INTO Salle VALUES(1,100);
    --La salle 2 possède 200
    INSERT INTO Salle VALUES(2,200);
    --Ajouter la salle 4 sans nombre de place
    INSERT INTO Salle (num_salle) VALUES(4);
    --Ajouter la salle 4 avec nombre de place
    INSERT INTO Salle VALUES(4,300);
    --Ajouter une salle avec 400 places (sans numero de salle)
    INSERT INTO Salle (nbPlaces_salle) VALUES(400);
    --Ajouter une salle 5 avec 400 places
    INSERT INTO Salle VALUES(5,400);
    --Ajout de la salle 6
    INSERT INTO Salle VALUES(6,99999999999);
    --Ajouter la salle 6 avec 500 places
    INSERT INTO Salle VALUES(6,500);
--2.vérifiez si les données sont correctes en	utilisant une requête	d’interrogation	3.	modifiez	des	valeurs	de	colonnes
    --Verification des données
    SELECT * FROM Salle;
    --(a) modifiez le nombre de	places de la salle 1 : le nouveau nombre de	places est	150	
    UPDATE Salle SET nbPlaces_salle=150 WHERE num_salle=1;
    --(b) effacez le nombre de places de la salle 2 (mettre à la valeur NULL)	
    UPDATE Salle SET nbPlaces_salle=NULL WHERE num_salle=2;
    --(c) ajoutez 50 places	à toutes les salles après la salle 1
    UPDATE Salle SET nbPlaces_salle=nbPlaces_salle+50 WHERE num_salle>1;
    --4.vérifiez si les données sont correctes en	utilisant une requête	d’interrogation	
    SELECT * FROM Salle;
    --5. supprimez les salles qui ont plus de 300 places
    DELETE FROM Salle WHERE nbPlaces_salle>300;
    --6.vérifiez si les données sont correctes en	utilisant une requête d’interrogation
    SELECT * FROM Salle;
    --7.Supprimer toutes les salles
    DELETE FROM Salle;

