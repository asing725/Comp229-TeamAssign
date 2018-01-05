USE [Comp229TeamAssign]

/* Object: Table Comp229TeamAssign.[dbo].[Member] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Member](
	[MemberID] [int] IDENTITY (400000, 1) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstMidName] [varchar](50) NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO

/* Object: Table Comp229TeamAssign.[dbo].[Publisher] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Publisher](
	[PublisherID] [int] IDENTITY (200000, 1) NOT NULL,
	[PublisherName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[PublisherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO


/* Object: Table Comp229TeamAssign.[dbo].[Author] */
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Comp229TeamAssign.[dbo].[Author](
	[AuthorID] [int] IDENTITY (300000, 1) NOT NULL,
	[AuthorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
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
	[AuthorID] [int] NOT NULL,
	[PublisherID] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[BookLanguage] [varchar](50) NOT NULL,
	[DateOfPublication] [date] NOT NULL,
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

ALTER TABLE Comp229TeamAssign.[dbo].Books
ADD CONSTRAINT FK_Books_AuthorID FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)

ALTER TABLE Comp229TeamAssign.[dbo].Books
ADD CONSTRAINT FK_Books_PublisherID FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID)


ALTER TABLE Comp229TeamAssign.[dbo].LoanedBooks
ADD CONSTRAINT FK_LoanedBooks_BookID FOREIGN KEY (BookID) REFERENCES Books(BookID)

ALTER TABLE Comp229TeamAssign.[dbo].LoanedBooks
ADD CONSTRAINT FK_LoanedBooks_MemberID FOREIGN KEY (MemberID) REFERENCES Member(MemberID)

--Publisher
INSERT INTO Comp229TeamAssign.[dbo].Publisher (PublisherName)
VALUES ('Anchor Books')

--Author
INSERT INTO Comp229TeamAssign.[dbo].Author (AuthorName)
VALUES ('Dan Brown')

--Books
INSERT INTO Comp229TeamAssign.[dbo].Books (ISBN,AuthorID,PublisherID,Status,BookLanguage,DateOfPublication)
VALUES ('1400079144',300000,200000,'Available','English', '2010-10-19')

--Member
INSERT INTO Comp229TeamAssign.[dbo].Member (LastName, FirstMidName,EmailAddress,Password)
VALUES ('Kumar','Ashish','ashish@gmail.com', '12345')

INSERT INTO Comp229TeamAssign.[dbo].AdminUser (Password)
VALUES ('123123')


