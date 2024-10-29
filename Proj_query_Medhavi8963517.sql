--dimension table
create table Movies (

MovieID int primary key,
Title varchar(255),
Genre varchar(100),
ReleaseYear int,
Rating float,
RuntimeMinutes int
);

--dimension table
create table Actors (
ActorID int primary key,
FirstName varchar(50),
LastName varchar(50),
BirthYear int
);

--dimension table
create table Directors (
DirectorID int primary key,
FirstName varchar(50),
LastName varchar(50),
BirthYear int
);

--dimension table
create table Customers (
CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
Phone varchar(20),
Address varchar(200)
);

--fact table
create table Rentals (
RentalID int primary key,
CustomerID int,
MovieID int,
RentalDate date,
ReturnDate date,
foreign key (CustomerID) references Customers(CustomerID),
foreign key (MovieID) references Movies(MovieID)
);

--fact table
Create table MovieActors (
MovieActorID int primary key,
MovieID int,
ActorID int,
foreign key (MovieID) references Movies(MovieID),
foreign key (ActorID) references Actors(ActorID)
);

--fact table
create table MovieDirectors (
MovieDirectorID int primary key,
MovieID int,
DirectorID int,
foreign key (MovieID) references Movies(MovieID),
foreign key (DirectorID) references Directors(DirectorID)
);

--Populating the table

INSERT INTO Movies (MovieID, Title, Genre, ReleaseYear, Rating, RuntimeMinutes)
VALUES
(1, 'Inception', 'Sci-Fi', 2010, 8.8, 148),
(2, 'The Dark Knight', 'Action', 2008, 9.0, 152),
(3, 'Interstellar', 'Sci-Fi', 2014, 8.6, 169),
(4, 'Avatar', 'Fantasy', 2009, 7.8, 162),
(5, 'Titanic', 'Romance', 1997, 7.8, 195),
(6, 'The Matrix', 'Sci-Fi', 1999, 8.7, 136),
(7, 'Gladiator', 'Action', 2000, 8.5, 155),
(8, 'Joker', 'Drama', 2019, 8.4, 122),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', 2001, 8.8, 178),
(10, 'The Godfather', 'Crime', 1972, 9.2, 175);

INSERT INTO Actors (ActorID, FirstName, LastName, BirthYear)
VALUES
(1, 'Leonardo', 'DiCaprio', 1974),
(2, 'Christian', 'Bale', 1974),
(3, 'Matthew', 'McConaughey', 1969),
(4, 'Sam', 'Worthington', 1976),
(5, 'Kate', 'Winslet', 1975),
(6, 'Keanu', 'Reeves', 1964),
(7, 'Russell', 'Crowe', 1964),
(8, 'Joaquin', 'Phoenix', 1974),
(9, 'Elijah', 'Wood', 1981),
(10, 'Al', 'Pacino', 1940);

INSERT INTO Directors (DirectorID, FirstName, LastName, BirthYear)
VALUES
(1, 'Christopher', 'Nolan', 1970),
(2, 'James', 'Cameron', 1954),
(3, 'Lana', 'Wachowski', 1965),
(4, 'Lilly', 'Wachowski', 1967),
(5, 'Ridley', 'Scott', 1937),
(6, 'Todd', 'Phillips', 1970),
(7, 'Peter', 'Jackson', 1961),
(8, 'Francis Ford', 'Coppola', 1939);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Elm St'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '555-987-6543', '456 Oak St'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', '234-567-8901', '789 Maple St'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '345-678-9012', '101 Pine St'),
(5, 'Chris', 'Brown', 'chris.brown@example.com', '456-789-0123', '202 Cedar St'),
(6, 'Olivia', 'Wilson', 'olivia.wilson@example.com', '567-890-1234', '303 Birch St'),
(7, 'James', 'Taylor', 'james.taylor@example.com', '678-901-2345', '404 Fir St'),
(8, 'Sophia', 'Moore', 'sophia.moore@example.com', '789-012-3456', '505 Spruce St'),
(9, 'David', 'Anderson', 'david.anderson@example.com', '890-123-4567', '606 Poplar St'),
(10, 'Emma', 'Thomas', 'emma.thomas@example.com', '901-234-5678', '707 Redwood St');


INSERT INTO Rentals (RentalID, CustomerID, MovieID, RentalDate, ReturnDate)
VALUES
(1, 1, 1, '2024-10-01', '2024-10-05'),
(2, 2, 2, '2024-10-02', '2024-10-06'),
(3, 3, 3, '2024-10-03', '2024-10-07'),
(4, 4, 4, '2024-10-04', '2024-10-08'),
(5, 5, 5, '2024-10-05', '2024-10-09'),
(6, 6, 6, '2024-10-06', '2024-10-10'),
(7, 7, 7, '2024-10-07', '2024-10-11'),
(8, 8, 8, '2024-10-08', '2024-10-12'),
(9, 9, 9, '2024-10-09', '2024-10-13'),
(10, 10, 10, '2024-10-10', '2024-10-14'),
(11, 1, 2, '2024-10-11', '2024-10-15'),
(12, 2, 3, '2024-10-12', '2024-10-16'),
(13, 3, 4, '2024-10-13', '2024-10-17'),
(14, 4, 5, '2024-10-14', '2024-10-18'),
(15, 5, 6, '2024-10-15', '2024-10-19'),
(16, 6, 7, '2024-10-16', '2024-10-20'),
(17, 7, 8, '2024-10-17', '2024-10-21'),
(18, 8, 9, '2024-10-18', '2024-10-22'),
(19, 9, 10, '2024-10-19', '2024-10-23'),
(20, 10, 1, '2024-10-20', '2024-10-24'),
(21, 1, 3, '2024-10-21', '2024-10-25'),
(22, 2, 4, '2024-10-22', '2024-10-26'),
(23, 3, 5, '2024-10-23', '2024-10-27'),
(24, 4, 6, '2024-10-24', '2024-10-28'),
(25, 5, 7, '2024-10-25', '2024-10-29'),
(26, 6, 8, '2024-10-26', '2024-10-30'),
(27, 7, 9, '2024-10-27', '2024-10-31'),
(28, 8, 10, '2024-10-28', '2024-11-01'),
(29, 9, 1, '2024-10-29', '2024-11-02'),
(30, 10, 2, '2024-10-30', '2024-11-03');


INSERT INTO MovieActors (MovieActorID, MovieID, ActorID)
VALUES
(1, 1, 1), -- Leonardo DiCaprio in Inception
(2, 2, 2), -- Christian Bale in The Dark Knight
(3, 3, 3), -- Matthew McConaughey in Interstellar
(4, 4, 4), -- Sam Worthington in Avatar
(5, 5, 1), -- Leonardo DiCaprio in Titanic
(6, 5, 5), -- Kate Winslet in Titanic
(7, 6, 6), -- Keanu Reeves in The Matrix
(8, 7, 7), -- Russell Crowe in Gladiator
(9, 8, 8), -- Joaquin Phoenix in Joker
(10, 9, 9), -- Elijah Wood in LOTR: Fellowship of the Ring
(11, 10, 10), -- Al Pacino in The Godfather
(12, 1, 1), -- Leonardo DiCaprio in Inception
(13, 2, 2), -- Christian Bale in The Dark Knight
(14, 3, 3), -- Matthew McConaughey in Interstellar
(15, 4, 4), -- Sam Worthington in Avatar
(16, 5, 1), -- Leonardo DiCaprio in Titanic
(17, 5, 5), -- Kate Winslet in Titanic
(18, 6, 6), -- Keanu Reeves in The Matrix
(19, 7, 7), -- Russell Crowe in Gladiator
(20, 8, 8), -- Joaquin Phoenix in Joker
(21, 9, 9), -- Elijah Wood in LOTR: Fellowship of the Ring
(22, 10, 10), -- Al Pacino in The Godfather
(23, 1, 1), -- Leonardo DiCaprio in Inception
(24, 2, 2), -- Christian Bale in The Dark Knight
(25, 3, 3), -- Matthew McConaughey in Interstellar
(26, 4, 4), -- Sam Worthington in Avatar
(27, 5, 1), -- Leonardo DiCaprio in Titanic
(28, 5, 5), -- Kate Winslet in Titanic
(29, 6, 6), -- Keanu Reeves in The Matrix
(30, 7, 7); -- Russell Crowe in Gladiator


INSERT INTO MovieDirectors (MovieDirectorID, MovieID, DirectorID)
VALUES
(1, 1, 1), -- Christopher Nolan directed Inception
(2, 2, 1), -- Christopher Nolan directed The Dark Knight
(3, 3, 1), -- Christopher Nolan directed Interstellar
(4, 4, 2), -- James Cameron directed Avatar
(5, 5, 2), -- James Cameron directed Titanic
(6, 6, 3), -- Wachowski directed The Matrix
(7, 6, 4), -- Wachowski directed The Matrix
(8, 7, 5), -- Ridley Scott directed Gladiator
(9, 8, 6), -- Todd Phillips directed Joker
(10, 9, 7), -- Peter Jackson directed LOTR: Fellowship of the Ring
(11, 10, 8), -- Francis Ford Coppola directed The Godfather
(12, 1, 1), -- Christopher Nolan directed Inception
(13, 2, 1), -- Christopher Nolan directed The Dark Knight
(14, 3, 1), -- Christopher Nolan directed Interstellar
(15, 4, 2), -- James Cameron directed Avatar
(16, 5, 2), -- James Cameron directed Titanic
(17, 6, 3), -- Wachowski directed The Matrix
(18, 6, 4), -- Wachowski directed The Matrix
(19, 7, 5), -- Ridley Scott directed Gladiator
(20, 8, 6), -- Todd Phillips directed Joker
(21, 9, 7), -- Peter Jackson directed LOTR: Fellowship of the Ring
(22, 10, 8), -- Francis Ford Coppola directed The Godfather
(23, 1, 1), -- Christopher Nolan directed Inception
(24, 2, 1), -- Christopher Nolan directed The Dark Knight
(25, 3, 1), -- Christopher Nolan directed Interstellar
(26, 4, 2), -- James Cameron directed Avatar
(27, 5, 2), -- James Cameron directed Titanic
(28, 6, 3), -- Wachowski directed The Matrix
(29, 6, 4), -- Wachowski directed The Matrix
(30, 7, 5); -- Ridley Scott directed Gladiator


---Creating views for analyzing the data

--view 1, customer rental history

CREATE VIEW CustomerRentalHistory AS
SELECT C.FirstName, 
       C.LastName,
	   M.Title,
	   R.RentalDate,
	   R.ReturnDate
FROM Customers C

JOIN Rentals R ON C.CustomerID = R.CustomerID
JOIN Movies M ON R.MovieID = M.MovieID;

SELECT * FROM CustomerRentalHistory;

--view 2, actor movie appearances

create view ActorMovies as
select A.FirstName,
       A.LastName,
	   M.Title,
	   M.ReleaseYear
from Actors A

join MovieActors MA on A.ActorID = MA.ActorID
join Movies M on MA.MovieID = M.MovieID;

SELECT * FROM ActorMovies;

--view 3, movie director listing

create view MovieDirectorsList as
select 
    M.Title,
	D.FirstName AS DirectorFirstName,
	D.LastName AS DirectorLastName
	
from Movies M

join MovieDirectors MD on M.MovieID = MD.MovieID
join Directors D on MD.DirectorID = D.DirectorID;

select * from MovieDirectorsList;

--Queries using SQL Functions

--join

select C.FirstName, C.LastName, M.Title, R.RentalDate, R.ReturnDate
from Rentals R
join Customers C on R.CustomerID = C.CustomerID
join Movies M on R.MovieID = M.MovieID;

--where(filter)

select * from Movies 
where Genre = 'Sci-Fi';

--listing all movies that have been rented by 'John Doe'

select M.Title 
from Movies M
where M.MovieID in (
    select R.MovieID from Rentals R
    join Customers C on R.CustomerID = C.CustomerID
    where C.FirstName = 'John' and C.LastName = 'Doe'
);

--counting how many movies each customer has rented.

select C.FirstName, C.LastName, count(R.RentalID) as TotalRentals
from Customers C
join Rentals R on C.CustomerID = R.CustomerID
group by C.FirstName, C.LastName;

--movies with more than one rental

with RentalCount as (
    select MovieID, count(*) as RentalsCount 
    from Rentals 
    group by MovieID
)
select M.Title, RC.RentalsCount
from Movies M
join RentalCount RC on M.MovieID = RC.MovieID
where RC.RentalsCount > 1;

--range movies based on their rating

select M.Title, M.Rating, 
    (select count(*) 
     from Movies 
     where Rating > M.Rating) + 1 as rank
from Movies M;

--genres with more than two movies

select Genre, count(*) as MovieCount
from Movies
group by Genre
having count(*) > 2;

--customer with no rental

select * 
from Customers 
where CustomerID not in  (select distinct CustomerID from Rentals);


--average rating of movies

SELECT AVG(Rating) AS AverageRating 
FROM Movies;



















