use [master];  -- Stop using the COMP10204_FINAL database (just in case this is a re-create)

DROP DATABASE IF EXISTS COMP10204_FINAL 

USE [master]
GO
/****** Object:  Database [COMP10204_FINAL]    Script Date: 12/03/2020 3:30:44 PM ******/
CREATE DATABASE [COMP10204_FINAL]
GO

use [COMP10204_FINAL]
GO

CREATE TABLE [Movie](
  [MovieID] [int] NOT NULL,
  [Title] [varchar](60) NOT NULL,
  [Director] [varchar](30) NOT NULL,
  [ReleaseYear] [int] NOT NULL,
  [RunTime] [int] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [Robot](
  [RobotName] [varchar](30) NOT NULL,
  [MovieID] [int] NOT NULL
) ON [PRIMARY]
GO 

CREATE TABLE [Ship](
  [ShipName] [varchar](20) NOT NULL,
  [MovieID] [int] NOT NULL
) ON [PRIMARY]
GO 

CREATE TABLE [Alien](
  [AlienName] [varchar](20) NOT NULL,
  [MovieID] [int] NOT NULL
) ON [PRIMARY]
GO 

CREATE TABLE [Planet](
  [PlanetName] [varchar](20) NOT NULL,
  [MovieID] [int] NOT NULL
) ON [PRIMARY]
GO 

INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (9, N'Forbidden Planet', N'Fred M. Wilcox', 1956, 98)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (6, N'Battlestar Galactica', N'Richard A. Coola', 1978, 148)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (15, N'Santa Claus Conquers the Martians', N'Nicholas Webster', 1964, 81)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (11, N'Lost in Space', N'Stephen Hopkins', 1998, 130)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (1, N'2001: A Space Odyssey', N'Stanley Kubrick', 1968, 142)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (7, N'Dune', N'David Lynch', 1984, 136)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (8, N'Flash Gordon', N'Mike Hodges', 1980, 114)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (14, N'Planet of the Apes', N'Franklin J. Schaffner', 1968, 112)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (12, N'Masters of the Universe', N'Gary Goddard', 1987, 106)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (13, N'Metropolis', N'Fritz Lang', 1927, 157)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (16, N'Serenity', N'Joss Whedon', 2005, 119)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (20, N'Star Wars', N'George Lucas', 1977, 121)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (21, N'Star Wars: The Force Awakens', N'J. J. Abrams', 2015, 135)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (22, N'The Adventures of Buckaroo Banzai Across the Eight Dimension', N'W. D. Richter', 1984, 102)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (2, N'2010: The Year We Make Contact', N'Peter Hyams', 1984, 116)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (3, N'Alien', N'Ridley Scott', 1979, 117)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (4, N'Alien Nation', N'Graham Baker', 1988, 91)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (5, N'Avatar', N'James Cameron', 2009, 162)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (10, N'Galaxy Quest', N'Dean Parisot', 1999, 102)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (27, N'Transformers', N'Michael Bay', 2007, 143)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (17, N'Short Circuit', N'John Badham', 1986, 98)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (18, N'Silent Running', N'Douglas Trumbull', 1972, 89)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (23, N'The Day the Earth Stood Still', N'Robert Wise', 1951, 92)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (25, N'The Last Starfighter', N'Nick Castle', 1984, 101)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (26, N'The Rocky Horror Picture Show', N'Jim Sharman', 1975, 100)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (24, N'The Hitchhiker''s Guide to the Galaxy', N'Garth Jennings', 2005, 109)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (19, N'Star Trek: The Motion Picture', N'Robert Wise', 1979, 132)
GO 
INSERT [dbo].[Movie] ([MovieID], [Title], [Director], [ReleaseYear], [RunTime]) VALUES (28, N'WALL-E', N'Andrew Stanton', 2008, 97)
GO 

INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Krell', 9)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Na''vi', 5)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Cybertronians', 27)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Thermians', 10)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Rodians', 20)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Transylvanians', 26)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Cylons', 6)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Tenctonese', 4)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Jawas', 20)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Lectroids', 22)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Klingons', 19)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Wookies', 20)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Vulcans', 19)
GO 
INSERT [dbo].[Alien] ([AlienName], [MovieID]) VALUES (N'Sand People', 20)
GO 

INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Giedi Prime', 7)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Jakku', 21)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Jupiter', 1)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Jupiter', 2)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Pandora', 5)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Rylos', 25)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Altair IV', 9)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Arrakis', 7)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Cybertron', 27)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Alderaan', 20)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Eternia', 12)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Kobol', 6)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Takodana', 21)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Mars', 15)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Mongo', 8)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Tatooine', 20)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Yavin', 20)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Saturn', 18)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'D''Qar', 21)
GO 
INSERT [dbo].[Planet] ([PlanetName], [MovieID]) VALUES (N'Caladan', 7)
GO 

INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Huey', 18)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Ash', 3)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Marvin the Paranoid Android', 24)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'R2-D2', 20)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Dewey', 18)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Gort', 23)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'BB-8', 21)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'C-3PO', 20)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Louie', 18)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Robby the Robot', 9)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Torg', 15)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Maria', 13)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Johnny', 17)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'Robot', 11)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'WALL-E', 28)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'R2-D2', 21)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'C-3P0', 21)
GO 
INSERT [dbo].[Robot] ([RobotName], [MovieID]) VALUES (N'EVE', 28)
GO 

INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Millennium Falcon', 20)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Protector', 10)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Discovery', 1)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Enterprise', 19)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Icarus', 14)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Serenity', 16)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Bellerophon', 9)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Leonov', 02)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Jupiter II', 11)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Nostromo', 3)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Valley Forge', 18)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Heart of Gold', 24)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Discovery', 2)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'Proteus', 11)
GO 
INSERT [dbo].[Ship] ([ShipName], [MovieID]) VALUES (N'V''Ger', 19)
GO 

ALTER TABLE [dbo].[Movie] ADD CONSTRAINT Movie_primary_key PRIMARY KEY (MovieID)
GO 

ALTER TABLE [dbo].[Alien]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Planet]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Ship]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Robot]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([MovieID])
ON DELETE CASCADE
GO

USE [master]
GO
ALTER DATABASE [COMP10204_FINAL] SET  READ_WRITE 
GO
