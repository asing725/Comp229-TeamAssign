USE [Comp229TeamAssign]

/* Object: Table Comp229TeamAssign.[dbo].[Member] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Member](
	[MemberID] [int] IDENTITY (400000, 1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO



/* Object: Table Comp229TeamAssign.[dbo].[Books] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Books](
	[BookID] [int] IDENTITY (100000, 1) NOT NULL,
	[ISBN] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](Max) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[BookLanguage] [varchar](50) NOT NULL,
	[DateOfPublication] [date] NOT NULL,
	[link] [varchar](Max)  NULL,
	[image] [varchar](Max) NOT NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table Comp229TeamAssign.[dbo].[Books] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[LoanedBooks](
	[LoanID] [int] IDENTITY (500000, 1) NOT NULL,
	[BookID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[DateOfBorrow] [date] NOT NULL,
	[DateOfReturn] [date] NOT NULL,
 CONSTRAINT [PK_LoanedBooks] PRIMARY KEY CLUSTERED 
(
	[LoanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table Comp229TeamAssign.[dbo].[AdminUser] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[AdminUser](
	[AdminID] [int] IDENTITY (600000, 1) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdminUser] PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO




ALTER TABLE Comp229TeamAssign.[dbo].LoanedBooks
ADD CONSTRAINT FK_LoanedBooks_BookID FOREIGN KEY (BookID) REFERENCES Books(BookID)

ALTER TABLE Comp229TeamAssign.[dbo].LoanedBooks
ADD CONSTRAINT FK_LoanedBooks_MemberID FOREIGN KEY (MemberID) REFERENCES Member(MemberID)


--Books
INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN,Name,Description,Status,BookLanguage,DateOfPublication,link,image)
VALUES ('1400079144','Archie comics spectacular: rock on!','THE ARCHIE SUPERSTARS are the impressive line-up of talented writers and artists who have brought Archie, his friends and his world to life for more than 70 years ...','Available','English', '2015-09-09','http://www.torontopubliclibrary.ca/detail.jsp?Entt=RDM3318089&R=3318089','https://syndetics.com/index.aspx?isbn=9781627389686/LC.gif')

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN,Name,Description,Status,BookLanguage,DateOfPublication,link,image)
VALUES ('140007654','Superman unchained: deluxe edition ','From the skies above Metropolis to the four corners of the globe to the star-streaked spaceways beyond, one man is synonymous with the word hero ... ','Loaned','English', '2014-11-03','http://www.torontopubliclibrary.ca/detail.jsp?Entt=RDM3358158&R=3358158','https://syndetics.com/index.aspx?isbn=1401257046/LC.gif')

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN,Name,Description,Status,BookLanguage,DateOfPublication,link,image)
VALUES ('436779144','Spider-man : an origin story ','This new edition of the beautifully illustrated and kid-friendly interpretation of Spider-Man origin will feature an amazing new case cover showing everyone favorite ...','Loaned','English', '2013-02-11','http://www.torontopubliclibrary.ca/detail.jsp?Entt=RDM2953059&R=2953059','https://syndetics.com/index.aspx?isbn=9781423183068/LC.gif')

INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN,Name,Description,Status,BookLanguage,DateOfPublication,link,image)
VALUES ('14056774',' Batman/Superman. Volume 1, Cross world','The Dark Knight and the Man of Steel are close friends in the modern day-but the two werent always such close allies. Discover how two of the Worlds Finest ... ','Available','English', '2014-09-04','http://www.torontopubliclibrary.ca/detail.jsp?Entt=RDM3369535&R=3369535','https://syndetics.com/index.aspx?isbn=9781401247041/LC.gif')


--Member
INSERT INTO Comp229TeamAssign.[dbo].Member (UserName,LastName, FirstName,Email,Password)
Values('ashish','Kumar','Ashish','ashish@gmail.com', '12345')
INSERT INTO Comp229TeamAssign.[dbo].Member (UserName,LastName, FirstName,Email,Password)
Values('arsh','Singh','Arshdeep','arsh@gmail.com', '12345')



INSERT INTO Comp229TeamAssign.[dbo].AdminUser (Password)
VALUES ('123123')


