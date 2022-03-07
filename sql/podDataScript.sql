USE [master]
GO
/****** Object:  Database [dungpeo]    Script Date: 3/5/2022 11:45:09 PM ******/
CREATE DATABASE [dungpeo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dungpeo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dungpeo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dungpeo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dungpeo_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dungpeo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dungpeo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dungpeo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dungpeo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dungpeo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dungpeo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dungpeo] SET ARITHABORT OFF 
GO
ALTER DATABASE [dungpeo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dungpeo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dungpeo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dungpeo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dungpeo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dungpeo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dungpeo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dungpeo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dungpeo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dungpeo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dungpeo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dungpeo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dungpeo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dungpeo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dungpeo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dungpeo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dungpeo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dungpeo] SET RECOVERY FULL 
GO
ALTER DATABASE [dungpeo] SET  MULTI_USER 
GO
ALTER DATABASE [dungpeo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dungpeo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dungpeo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dungpeo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dungpeo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dungpeo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'dungpeo', N'ON'
GO
ALTER DATABASE [dungpeo] SET QUERY_STORE = OFF
GO
USE [dungpeo]
GO
/****** Object:  Table [dbo].[action]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[action](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[feature] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[podId] [int] NULL,
	[quantity] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[groupId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[email] [nvarchar](200) NULL,
	[phone] [nvarchar](20) NULL,
	[address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NULL,
	[podId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[customerId] [int] NULL,
	[stateId] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[price] [money] NULL,
	[discount] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[podId] [int] NULL,
	[orderId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_state]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission_action]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission_action](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[licensed] [bit] NOT NULL,
	[permissionId] [int] NULL,
	[actionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pod]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pod](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[brand] [nvarchar](255) NULL,
	[price] [money] NULL,
	[quantity] [int] NULL,
	[description] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[isSale] [bit] NULL,
	[discount] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[categoryId] [int] NULL,
	[state] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[state]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[state](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[first_name] [nvarchar](255) NULL,
	[last_name] [nvarchar](255) NULL,
	[birthday] [date] NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](20) NULL,
	[gender] [bit] NULL,
	[is_super] [bit] NULL,
	[is_active] [bit] NULL,
	[permission] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_permission]    Script Date: 3/5/2022 11:45:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[licensed] [bit] NOT NULL,
	[userId] [int] NULL,
	[permissionId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[action] ON 
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (1, N'Read group', N'READ', N'GROUP')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (2, N'Create group', N'CREATE', N'GROUP')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (3, N'Edit group', N'EDIT', N'GROUP')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (4, N'Delete group', N'DELETE', N'GROUP')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (5, N'Read category', N'READ', N'CATEGORY')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (6, N'Create category', N'CREATE', N'CATEGORY')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (7, N'Edit category', N'EDIT', N'CATEGORY')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (8, N'Delete category', N'DELETE', N'CATEGORY')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (9, N'Read pod', N'READ', N'POD')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (10, N'Create pod', N'CREATE', N'POD')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (11, N'Edit pod', N'EDIT', N'POD')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (12, N'Delete pod', N'DELETE', N'POD')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (13, N'Read image', N'READ', N'IMAGE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (14, N'Create image', N'CREATE', N'IMAGE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (15, N'Edit image', N'EDIT', N'IMAGE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (16, N'Delete image', N'DELETE', N'IMAGE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (17, N'Read color', N'READ', N'COLOR')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (18, N'Create color', N'CREATE', N'COLOR')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (19, N'Edit color', N'EDIT', N'COLOR')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (20, N'Delete color', N'DELETE', N'COLOR')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (21, N'Read state', N'READ', N'STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (22, N'Create state', N'CREATE', N'STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (23, N'Edit state', N'EDIT', N'STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (24, N'Delete state', N'DELETE', N'STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (25, N'Read order state', N'READ', N'ORDER_STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (26, N'Create state', N'CREATE', N'ORDER_STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (27, N'Edit state', N'EDIT', N'ORDER_STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (28, N'Delete state', N'DELETE', N'ORDER_STATE')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (29, N'Read order', N'READ', N'ORDER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (30, N'Create order', N'CREATE', N'ORDER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (31, N'Edit order', N'EDIT', N'ORDER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (32, N'Delete order', N'DELETE', N'ORDER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (33, N'Read customer', N'READ', N'CUSTOMER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (34, N'Create customer', N'CREATE', N'CUSTOMER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (35, N'Edit customer', N'EDIT', N'CUSTOMER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (36, N'Delete customer', N'DELETE', N'CUSTOMER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (37, N'Read user', N'READ', N'USER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (38, N'Create user', N'CREATE', N'USER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (39, N'Edit user', N'EDIT', N'USER')
GO
INSERT [dbo].[action] ([id], [title], [code], [feature]) VALUES (40, N'Delete user', N'DELETE', N'USER')
GO
SET IDENTITY_INSERT [dbo].[action] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (1, N'NASTY SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (2, N'ICY FRUITY SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (3, N'SUMMER SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (4, N'GOLD LEAF SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (5, N'STEAMWORKS SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (6, N'Alternativ saltnic', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (7, N'TOKYO SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (8, N'SWEET 21 SALTNIC', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (9, N'TROPICAL SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (10, N'THE MYTH SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (11, N'Juice Head Salt', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (12, N'YOGI DELIGHTS SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (13, N'SUPER SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (14, N'7 DAZE SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (15, N'HI DRIP SALT', 2)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (16, N'SMOK', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (17, N'VOOPOO', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (18, N'LOST VAPE', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (19, N'SMOANT', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (20, N'VLADDIN', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (21, N'GEEK VAPE', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (22, N'UWELL', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (23, N'VAPORESSO', 3)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (24, N'RELX', 4)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (25, N'JUUL', 4)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (26, N'SUMMER', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (27, N'POP VAPORS', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (28, N'YOGI DELIGHTS', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (29, N'ICY FRUITY', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (30, N'NASTY', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (31, N'TROPICAL', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (32, N'THE MYTH VAPOR', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (33, N'GOLD LEAF LIQUIDS', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (34, N'STEAMWORKS', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (35, N'Sweet 21 Vape', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (36, N'7 DAZE', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (37, N'SUA VAPORS', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (38, N'Juice Head', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (39, N'HI-DRIP', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (40, N'Alternativ', 5)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (41, N'iQOS DEVICE', 6)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (42, N'iQOS HEETS', 6)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (43, N'iQOS HEATSTICKS (MARLBORO)', 6)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (44, N'TEREA for IQOS ILUMA', 6)
GO
INSERT [dbo].[category] ([id], [name], [groupId]) VALUES (54, N'Pod system', 1)
GO
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[customer] ON 
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (1, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (2, N'giakinh0823', N'Ha Gia Kinh', N'giakinh2000@gmail.com', N'+84972141556', N'HN')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (3, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (4, N'Lan Anh', N'Nguyễn Thị', N'anhntlhe153111@fpt.edu.vn', N'0983306694', N'Ba Vì, Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (5, N'Lan Anh', N'Nguyễn Thị', N'anhntlhe150434@fpt.edu.vn', N'0983306694', N'Ba Vì, Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (6, N'Lan Anh', N'Nguyễn Thị', N'anhntlhe150434@fpt.edu.vn', N'0983306694', N'Ba Vì, Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (7, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (8, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (9, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (10, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (11, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (12, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (13, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (14, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (15, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (16, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (17, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (18, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (19, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (20, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (21, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (22, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (23, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (24, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (25, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (26, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (27, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
INSERT [dbo].[customer] ([id], [first_name], [last_name], [email], [phone], [address]) VALUES (28, N'Kính', N'Hà Gia', N'giakinh2000@gmail.com', N'+84972141556', N'Hà Nội, Việt Nam')
GO
SET IDENTITY_INSERT [dbo].[customer] OFF
GO
SET IDENTITY_INSERT [dbo].[group] ON 
GO
INSERT [dbo].[group] ([id], [name]) VALUES (1, N'Máy pod system')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (2, N'Tinh dầu saltnic')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (3, N'Phụ kiện pod')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (4, N'Pod dùng 1lần')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (5, N'Dầu vape')
GO
INSERT [dbo].[group] ([id], [name]) VALUES (6, N'IQOS-LIL')
GO
SET IDENTITY_INSERT [dbo].[group] OFF
GO
SET IDENTITY_INSERT [dbo].[image] ON 
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (30, N'nevoks_pagee_silver_63ccf9c858be429aa1ec8ad6bf400526_master.jpg', 14)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (31, N'nevoks_pagee_green_0f4292202c0147f7984295eb448aa416_master.jpg', 14)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (32, N'nevoks_pagee_rainbow_c3b6ec2405b043f5a0c7d35fc35d3549_master.jpg', 14)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (33, N'nevoks_pagee_black_698f82156612410e8263b275376e3ebc_master.jpg', 14)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (34, N'nevoks_pagee_fullcolor_fdf0e095c7204ff2b84d58ad0206e406_master.jpg', 14)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (35, N'leaflet_c17af7d8eabd426f82b0961fc1bc1e03_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (36, N'1.nevoks_feelin_mini_rose_pink_288754392f4a446aada0438e3c1a15d9_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (37, N'1.nevoks_feelin_mini_red_48c8ea516fa5454699fed3bcce45efdc_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (38, N'1.nevoks_feelin_mini_grey_a7b13018a08f4aca9cc5cf726f3394c3_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (39, N'1.nevoks_feelin_mini_blue_c9742e994643459bbc8f1c97bb67a496_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (40, N'1.nevoks_feelin_mini_black_3a31d06001a14e7aa08b76298071d696_master.jpg', 15)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (41, N'vaporesso-zero-2-pod-kit_06_owke7_2c20302513f844ccabe8029e3c810ea0_master.jpeg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (42, N'vaporesso-zero-2-pod-kit_05_zbdqi_2084d2afbcd64ff9b61d07b4f39d4f34_master.jpeg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (43, N'vaporesso-zero-2-pod-kit_04_dv1ln_6307fb9c922241b18e31c3e2da5989c0_master.jpeg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (44, N'1.vaporesso_zero_2_pod_kit_800mah_green_d4b7134262bc4b94a8cdf1578e945b4e_master.jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (45, N'1.vaporesso_zero_2_pod_kit_800mah_red_b105e762ef8b4020b11c621024b9a5f3_master.jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (46, N'1.vaporesso_zero_2_pod_kit_800mah_purple_c1450fc371c1449fab9e9ca59d3e9931_master.jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (47, N'1.vaporesso_zero_2_pod_kit_800mah_carbon_b6e02a4833354a2a874d8c78f4b9fc95_master.jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (48, N'1.vaporesso_zero_2_pod_kit_800mah_blue_52076af0b0304ff1a3dd5efafee9e4f0_master (1).jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (49, N'1.vaporesso_zero_2_pod_kit_800mah_black_d3b25f89ff7e443692608e43efa69be6_master (1).jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (50, N'zero_2_all_color_vaporesso_85bfc9e4d8ee48218ed23b4e4b94f594_master (1).jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (51, N'1.vaporesso_zero_2_pod_kit_800mah_full_color_c4c0e63a99934d959e16504c117a552a_master.jpg', 16)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (52, N'1.smok_fetch_pro_80w_pod_system_-_red_06626534adc344dfba076b8d72f1857b_master (3).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (53, N'1.smok_fetch_pro_80w_pod_system_-_black_8abc0af0a18146f09df7cb2c48832aaa_master (3).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (54, N'1.smok_fetch_pro_80w_pod_system_-_all_colors_c1844f52d47740e4a8ce86b84afe3761_master (3).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (55, N'1.smok_fetch_pro_80w_pod_system_-package_contents_f9ebd123019d469d925185e5de6fb6e9_master (1).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (56, N'1.smok_fetch_pro_80w_pod_system_-_silver_43a1f170be724073a8edda52a50e4244_master (2).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (57, N'1.smok_fetch_pro_80w_pod_system_-_red_06626534adc344dfba076b8d72f1857b_master (2).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (58, N'1.smok_fetch_pro_80w_pod_system_-_black_8abc0af0a18146f09df7cb2c48832aaa_master (2).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (59, N'1.smok_fetch_pro_80w_pod_system_-_all_colors_c1844f52d47740e4a8ce86b84afe3761_master (2).jpg', 17)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (60, N'7_aeeb113bb098489da487237a124cb0b4_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (61, N'uwell_caliburn_g_1_e940b1cda0474dbb82b4f51ac8c3c585_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (62, N'5_1b47817017e0438e8515e565ac372e18_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (63, N'uwell_caliburn_g_boxx_241b1542c02943f8bce16cf90477ef86_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (64, N'uwell_caliburn_g_2_a2c886e5e46843ca8b2a7bdb740e3f77_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (65, N'uwell_caliburn_g_rosy_brown_7b93c581e4c848f3adaf6a3215c40c6c_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (66, N'uwell_caliburn_g_green_0d5b49aa5123475f8526f62246ca2b3b_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (67, N'uwell_caliburn_g_red_8ea1a859fc5649bb8d8dfeccb6f8fd39_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (68, N'uwell_caliburn_g_grey_04bf8ac82a0d494d81870227b7246c2a_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (69, N'uwell_caliburn_g_blue_805452ece90140f689104d08060c6b7c_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (70, N'uwell_caliburn_g_black_9340d3c90805497eaffc5b82256975ac_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (71, N'uwell_caliburn_g_all_color_1855bc376aca4c7abf18c445ac360f8d_master.jpg', 18)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (72, N'cartridge_pod_knight_80_smoant_1_copy_1eba29d92d054331bc84075908b02fcc_master.jpg', 19)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (73, N'cartridge_pod_knight_80_smoant_2_b9f1b4f932f34743bff0c82e9a8d8a39_master.jpg', 19)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (74, N'cartridge_pod_knight_80_smoant_7d6dfc59b74a4097ab8bdadf0527ab62_master.jpg', 19)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (75, N'1.smoant_knight_replacement_pods_-_box_and_pod__1__e5dd284209854ea4ad46b113ebdfa155_master.jpg', 19)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (76, N'1.smok_fetch_pro_80w_pod_system_-package_contents_f9ebd123019d469d925185e5de6fb6e9_master.jpg', 20)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (77, N'1.smok_fetch_pro_80w_pod_system_-_silver_43a1f170be724073a8edda52a50e4244_master (1).jpg', 20)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (78, N'1.smok_fetch_pro_80w_pod_system_-_red_06626534adc344dfba076b8d72f1857b_master (1).jpg', 20)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (79, N'1.smok_fetch_pro_80w_pod_system_-_black_8abc0af0a18146f09df7cb2c48832aaa_master (1).jpg', 20)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (80, N'1.smok_fetch_pro_80w_pod_system_-_all_colors_c1844f52d47740e4a8ce86b84afe3761_master (1).jpg', 20)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (81, N'lil_solid_2.0_box_2_89d31dd47a634ad7b74f874d2fc62b57_master.jpg', 21)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (82, N'lil_solid_2.0_stone_grey_3653c9fd231a434fb6e1ac9bc5ea1bc1_master.jpg', 21)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (83, N'lil_solid_2.0_box_1_f6ac161d68904a1eb813ebddf90c97b2_master.jpg', 21)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (84, N'lil_solid_2.0_cosmic_blue_b8976d4188be4b42ae2ff917edccbcfe_master.jpg', 21)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (89, N'icy_fruity_salt_30ml_tropical_fruit_1d6f3028e48d400084c02481f6dd2124_grande.jpg', 23)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (90, N'icy_fruity_salt_30ml_lemon_berries_58af20253b654ef1afdf1ab205404e31_grande.jpg', 24)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (91, N'voopoo_drag_x_plus_box_7a1dad64fa2545cc8ad6069bf55f3175_master.jpg', 25)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (92, N'voopoo_drag_x_plus_cartridge_d06b84dd17b34f63af8071c4f75287fc_master.jpg', 25)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (93, N'voopoo_drag_x_plus_smoky_grey_f93c7c60d4d749e7a73d804bfdb1346e_master.jpg', 25)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (94, N'voopoo_drag_x_plus_classic_black_a24923b4647b4bf482829fb9bbfb67d0_master.jpg', 25)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (95, N'voopoo_drag_x_plus_5d62ad58ed0f43cd847944e0f148ad64_master.jpg', 25)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (96, N'1.voopoo_drag_x_80w_pod_mod_kit_-_back_side_and_side_front_view_4f476a29c85f4f3d8653fb48e7e6fc80_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (97, N'1.voopoo_drag_x_80w_pod_mod_kit_-_package_contents_afe6e1a3949c492f83f2c447ce8bc2a6_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (98, N'1.voopoo_drag_x_80w_pod_mod_kit_-_retro_c383404cb78e490a970f0f6a1c81720f_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (99, N'1.voopoo_drag_x_80w_pod_mod_kit_-_mashup_6efb41e473d14e0c85c28ddf0daf8a9c_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (100, N'1.voopoo_drag_x_80w_pod_mod_kit_-_marsala_27a1ef543adc428fa8596de697a42dca_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (101, N'1.voopoo_drag_x_80w_pod_mod_kit_-_galaxy_blue_8a3c2e5617ac4d9d9ec8d434660d91a6_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (102, N'1.voopoo_drag_x_80w_pod_mod_kit_-_classic_5e4784f2a51f496ebbe1cca46d79f62d_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (103, N'1.voopoo_drag_x_80w_pod_mod_kit_-_chestnut_8f45ee0d629c49c2904f7c17b7990f27_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (104, N'1.voopoo_drag_x_80w_pod_mod_kit_-_carbon_fiber_f5a9d47679d948d4991435544542e49f_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (105, N'1.voopoo_drag_x_80w_pod_mod_kit_-_all_colors_74ed6a319b8d453aa1bfaae54ed75bc6_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (106, N'voopoo_drag_x_bronze_knight_9c138c4676844fb789935b94bc5ee147_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (107, N'voopoo_drag_x_dark_knight_be4bcff30cbd449489979473c9f6a3e9_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (108, N'voopoo_drag_x_iron_knight_47e39e0f69a045a782f893832b9a7caa_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (109, N'voopoo_drag_x_silver_knight_1_598886f341804f7cbf364ea37db67ae8_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (110, N'voopoo_drag_x_new_color_8c076a345aaf4a5996502d66d280284e_master.jpg', 26)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (111, N'smok_scar_p5_fluid_blue_0a1010f0756240088766280995d51417_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (112, N'smok_scar_p5_fluid_black_white_9d65a6c575f840c3837c988797d7615f_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (113, N'smok_scar_p5_red_stabilizing_wood_f07ee6585192487f83445ba32bbcb742_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (114, N'smok_scar_p5_black_77d84974f2454313bfbf13d132755937_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (115, N'smok_scar_p5_1_c8e7e4faf0534e3189a8ba673f5735e4_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (116, N'smok_scar_p5_2ecaa737d5eb4d58a128334396014a03_master.jpg', 27)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (117, N'voopoo_vinci_pod_15w_aurora_silver_fded45decf5e4ccb832fee21f1233a73_master.jpg', 28)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (118, N'voopoo_vinci_pod_15w_pine_grey_ac55c1414a294641ab5d2476617fb210_master.jpg', 28)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (119, N'voopoo_vinci_pod_15w_aurora_neon_7170ac220c9a435e873eba1173844852_master.jpg', 28)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (120, N'voopoo_vinci_pod_15w_2e56c24a428d4efc931fbb723bff4f3b_master.jpg', 28)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (121, N'voopoo_vinci_pod_15w_all_color_049c70eedd23431896cdf973882d9abf_master.jpg', 28)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (122, N'vladdin_chopin_box_pod_system_8d0b37f3f59b40529fbdbd43b274e384_master (1).jpg', 29)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (123, N'vladdin_chopin_all_color_1eff9a087c5849798e5fe2c268f682f7_master.jpg', 29)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (124, N'vladdin_chopin_pod_system_1_ca350965a22b4c97916d044dd7faac5d_master.jpg', 29)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (125, N'vladdin_chopin_box_pod_system_8d0b37f3f59b40529fbdbd43b274e384_master.jpg', 29)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (126, N'1.smok_scar-p3_80w_pod_mod_kit_-_fluid_gold_c8f4a276af4d466f95ba33a7e80e3110_master.jpg', 30)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (127, N'1.smok_scar-p3_80w_pod_mod_kit_-_fluid_black_white_a06c4ccec9e742d0ad9803efb31e913b_master.jpg', 30)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (128, N'1.smok_scar-p3_80w_pod_mod_kit_-_fluid_7-color_63f71fe8ae594141aa9a5cee06f1bbe8_master.jpg', 30)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (129, N'1.smok_scar-p3_80w_pod_mod_kit_-_fluid_blue_2b8a73640f6a44d49db5913a23e86d24_master.jpg', 30)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (130, N'1.smok_scar-p3_80w_pod_mod_kit_-_black_1_852a229b0be3499198b967ab2debec4f_master.jpg', 30)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (131, N'1.smok_nord_x_60w_pod_system_-_fluid_blue_1329ec879a1044dea9ca85e7ed55dac3_master.jpg', 31)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (132, N'1.smok_nord_x_60w_pod_system_-_fluid_red_32dab058d1c4416aa69ef79d592ab93e_master.jpg', 31)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (133, N'1.smok_nord_x_60w_pod_system_-_side_dual_view_cf6fb6481f354bfc807920fd70bd1871_master.jpg', 31)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (134, N'1.smok_nord_x_60w_pod_system_-_all_colors_177fcf87116a4217839974a293624b94_master.jpg', 31)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (135, N'1.smok_nord_2_40w_pod_system_-_gold_a58078289eb0421a8e110d5cb5d0db96_master.jpg', 32)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (136, N'1.smok_nord_2_40w_pod_system_-_black_stabilized_wood_8513ad6c35f34fc8894e5056c0edc288_master.jpg', 32)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (137, N'11.smok_nord_2_40w_pod_system_-_black_stabilized_wood_395d0f57b6984a96ba12e0d5f1a01e26_master.jpg', 32)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (138, N'1.smok_nord_2_40w_pod_system_-_default_2_cff2be047df9463c8e959dcaa4c1014c_master.jpg', 32)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (139, N'voopoo_argus_air_25w_pod_system_-_red_and_black_4aebb2696fc645b3b3a89ea837aa23bb_master.jpg', 33)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (140, N'voopoo_argus_air_25w_pod_system_-_package_contents_820a328cf6e04e5a8cfc486c33e11dea_master.jpg', 33)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (141, N'voopoo_argus_air_25w_pod_system_07d8416b4e57455ea5c0350cc44f514b_master.jpg', 33)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (142, N'1.voopoo_argus_air_25w_pod_system_-_all_colors_1_995984de59da4905821dc3c44f431c2d_master.jpg', 33)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (143, N'smok-pozz-x-black_b717c080ebe04ec2a2370849572d8877_master.jpeg', 34)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (144, N'smok-pozz-x-purple_3808214bc20f40349cb63df61b00a9b4_master.jpeg', 34)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (145, N'smok-pozz-x-black-green_camouflage_ebaa30b97c084ddb8fc36c47fcaced1d_master.jpeg', 34)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (146, N'smok-pozz-x-blue_97ab5a40772e46988383a1205e9be98a_master.jpeg', 34)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (147, N'smok-pozz-x-black-white_camouflage_befbaae22ba4456f81548ed0ece80f09_master.jpeg', 34)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (148, N'1.relx-pod-device-mystic-aurora_9361892948534df48f95add0c0321990_master.png', 35)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (149, N'1.relx-pod-device-sunset-glow_c6a6c8812db7440db191eb47df7bfa6c_master.png', 35)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (150, N'1._relx-pod-device-black_f9ad9a7222d941d8b3422a6c76eb885f_master.png', 35)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (151, N'relx_pod_system_full_color_c1bada9cbd0842d5a351480a249ea370_master.jpg', 35)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (152, N'1.vaporesso_xros_16w_pod_system_-_sky_blue_67a1c863f5c2408e97cdad0cdcd563bc_master.jpg', 36)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (153, N'1.vaporesso_xros_16w_pod_system_-_silver_1_dea384b552d0422193caadd66f933c8e_master.jpg', 36)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (154, N'1.vaporesso_xros_16w_pod_system_-_blue_49194a6f67794b8088501173e7d62d97_master.jpg', 36)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (155, N'1.vaporesso_xros_16w_pod_system_-_front_and_side_view_ec957aa3bc4d49ae989e3f728ad7bd0b_master.jpg', 36)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (156, N'1.smok_rpm_40_purple_b472cb68f51041e1aaab25b3302574bd_master.jpg', 37)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (157, N'1.smok_rpm_40_pod_mod_kit_-_red_camo_5c924b6c2dcc4446b1fe5918c962ea9c_master.jpg', 37)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (158, N'1.smok_rpm_40_pod_mod_kit_-_7_color_31ce5c8591664d8388ca4f7d2e173bd8_master.jpg', 37)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (159, N'1.smok_rpm_40_pod_mod_kit_1_90f62e5d72604abd96be4181cc00805a_master.jpg', 37)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (160, N'vladdin_jet_silver_prism_2443db32d12b462d8b33d7591618be6e_master.jpg', 38)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (161, N'vladdin_jet_black_prism_b9ef1112b1b242d69e78d8326be42230_master.jpg', 38)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (162, N'vladdin_jet_full_color_338c62584b3d4341b4b4715c54cf661b_master.jpg', 38)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (163, N'vladdin_jet_kit_1_9869b63d95234c2d8e783d9757adc27c_master.jpg', 38)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (164, N'smok_x_ofrf_nexmesh_30w_pod_kit_-_black_bbf7d5e8d2074b6e8abe2bc344bc6422_master.jpg', 39)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (165, N'smok_x_ofrf_nexmesh_30w_pod_kit_-all_color_398fe3f6a9c14c2da6317804d3707cae_master.jpg', 39)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (166, N'smok_x_ofrf_nexmesh_30w_pod_kit__2_96300c147cd64316a5347100ab43b248_master.jpg', 39)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (167, N'smok_x_ofrf_nexmesh_30w_pod_kit__1_8b087242bf474379b9e48b4d085c378d_master.jpg', 39)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (168, N'1.joyetech_exceed_grip_pro_blue_star_trail_7cff381fdfcf42a3a4558756151bac33_master.jpg', 40)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (169, N'1.joyetech_exceed_grip_pro_red_star_trail_92c9b24b924f424abcff52cdaae4c37a_master.jpg', 40)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (170, N'1.joyetech_exceed_grip_pro_rainbow_star_trail_198214796d5f43198555353ec4ee2f89_master.jpg', 40)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (171, N'1.joyetech_exceed_grip_pro_orange_star_trail_b117af472edc4a5b8d66e16e915fc35f_master.jpg', 40)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (172, N'1.joyetech_exceed_grip_pro_all_color_8bf720f4de8c4ccfb7026cf11dd019ff_master.jpg', 40)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (173, N'hotcig_marvel_40_pod_system_purple_rainbow_91ee26f892eb46a1a27d2696a5f192af_master.jpg', 41)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (174, N'hotcig_marvel_40_pod_system_blue_rainbow_9c11b6b26f7a4d7696035c794b33c005_master.jpg', 41)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (175, N'hotcig_marvel_40_pod_system_black_rainbow_07966e9a791e46eeb41bf174b0f92c36_master.jpg', 41)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (176, N'hotcig_marvel_40_pod_system_all_color_097ed0c7fe9a43feb97af1b404afe3ad_master.jpg', 41)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (177, N'voopoo_vinci_x_70w_pod__scarlet_kit_cf11f99192bc4e43b18105fd7e1d8f5f_master.jpeg', 42)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (178, N'voopoo_vinci_x_70w_pod__dazzling_green_kit_8067f3f8da2742589011d1dabab25333_master.jpeg', 42)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (179, N'voopoo_vinci_x_70w_pod__space_gray_kit_b78976cdf7d14635836961934c994717_master.jpeg', 42)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (180, N'voopoo_vinci_x_70w_pod__carbon_fiber_kit_d51c1ae72c9d4f56b14baaaa47b89e9d_master.jpeg', 42)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (181, N'vinci_x_full_color_5320742b772042c78c485bb324513fd2_master.jpeg', 42)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (182, N'1.smok_alike_40w_pod_mod_kit_-_matte_blue_b10408fc7e604b4a8d8e4a0a537a6b68_master.jpg', 43)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (183, N'1.smok_alike_40w_pod_mod_kit_-_green_f31dbc00b3db42809e312d0d68376ef9_master.jpg', 43)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (184, N'1.smok_alike_40w_pod_mod_kit_-_matte_gunmetal_ad184c4da4294c07b3bc2cfe7d6b35bd_master.jpg', 43)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (185, N'1.smok_alike_40w_pod_mod_kit_-_matte_gold_f97d71e60c964070bc8e081011f6ba5e_master.jpg', 43)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (186, N'smoant-knight-80-kit-bronze_blue_0a3bb3eb8c584735b2305e3caa702e5c_master.jpeg', 44)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (187, N'smoant-knight-80-kit-black_d82da94ec65c492a8675ef42ecff0157_master.jpeg', 44)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (188, N'1.smoant_knight_80w_pod_mod_kit_-_all_colors_c0de7f2260554d2995bf448e7d802e2e_master.jpg', 44)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (189, N'herakles-pod-mod_hand_a0dc4d0bc2d5430c825873fe6a74c649_master.jpg', 45)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (190, N'1.sense_herakles_40w_pod_mod_kit_-_prism_red_1_8cf3fa2e0d9c4e3c9f158e3d34cb78db_master.jpg', 45)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (191, N'1.sense_herakles_40w_pod_mod_kit_-_prism_grey_1_b51fd649068a478c8f97ad0350bb8830_master.jpg', 45)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (192, N'1.sense_herakles_40w_pod_mod_kit_-_rainbow_1_0d6e320585d34779a605e198978cfb9c_master.jpg', 45)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (193, N'1._sense_herakles_40w_pod_mod_kit_-_gunmetal_1_7c1602682e7e4d249d7d0d62f6ff17a0_master.jpg', 45)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (194, N'1.orion_q_black_abalone_bd6066b2492e41b88cee6229a2e83033_master.jpg', 46)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (195, N'1.orion_q_blue_white_pearl_d10a0dd5dc904474a757608797afe018_master.jpg', 46)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (196, N'1.orion_q_rainbow_abalone_e7a48ef4a83140b193d34b4ab5296e6c_master.jpg', 46)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (197, N'1.orion_q_abalone_collection_copy_66ecab1468ed4396967fb24e3ed35688_master.jpg', 46)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (198, N'1.geek_vape_frenzy_pod_system_black_ghost_f7933c4664394ba095230a7e96576736_master.jpg', 47)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (199, N'1.geek_vape_frenzy_pod_system_blue_azure_911f5ddcada34a02b1a445ebd2802b0c_master.jpg', 47)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (200, N'1.geek_vape_frenzy_pod_system_8a95f051b1b84453a08c59be31cb9d71_master.jpg', 47)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (201, N'11.lostvape_orion_plus_dna_stabwood_gold_pod_system_262fe4660a504d6799501a15b4bbbbef_master.jpg', 48)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (202, N'11.lostvape_orion_plus_dna_stabwood_blue_pod_system_2d45ebee911e4c5f94092b8774cd79eb_master.jpg', 48)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (203, N'11.lostvape_orion_plus_dna_silver_ocean_scallop_pod_system_df26dc59752c4af58137fa046abc4039_master.jpg', 48)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (204, N'lostvape_orion_plus_dna_fullcolor_c80f5dc973044366afc78e2e80058bda_master.jpg', 48)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (205, N'1.red-pasito_pod-3ml_6c6c810b9726480e93aef914f95b0c75_master.jpg', 49)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (206, N'11.-blue-pasito-pod-blue-3ml_c9f8f336e43d4996ae7bec3491317df5_master.jpg', 49)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (207, N'1.metal-pasito--pod-3ml_e87a35f0420745c3aabe8474afc7868e_master.jpg', 49)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (208, N'pasito_full_color_701293f56dee4471aa48e9c6981057d7_master.jpg', 49)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (209, N'1._smok_novo_2_25w_pod_system_-_purple_shell_963f5d25cfac45e390ae7e4a7b0504be_master.jpeg', 50)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (210, N'11.smok_novo_2_pod_system_7_color_rainbow_bc368f5b7d9842b3bc31dd1bdf23c5f0_master.jpg', 50)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (211, N'11.smok_novo_2_25w_pod_system_rainbow_shell_236866acb76c48bd999dd54a72c5143c_master.jpg', 50)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (212, N'1.smok_novo_2_25w_pod_system_-_love_4bc2e9821b4142648f01a703c3162183_master.jpg', 50)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (213, N'104410080_272472910636795_8792653262200938689_n_cc054ce3731842538d8a2bed44e83b2f_master.jpg', 51)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (214, N'104288103_114657223424329_3385179056436919933_n_c4a1bd517bd44c96a43d8d06c1cd9b58_master.jpg', 51)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (215, N'vapor_storm_v-pm-40w-grey_eb27f155756b4f00915d869c334baea0_master.jpg', 51)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (216, N'vapor_storm_v-pm-40w-black_9be242cbafe24e63a3e87ae72e542857_master.jpg', 51)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (217, N'sense_oribi_cyan_3588987d4fc3479d9bfe5806cd561642_master.jpg', 52)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (218, N'vapepro_sense_oribi_wine_red_20a8d346cac94fdaadf80575cf3711b5_master.jpg', 52)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (219, N'vapepro_sense_oribi_rainbow_005c99bd111d4dc2bcc33456d5e119c7_master.jpg', 52)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (220, N'sense_full_color_e2848cf61a574081b33aa9eb052769ea_master.jpg', 52)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (221, N'1_vladdin_re_blue_usalt_10ml_656fe804d11a4729b5a2f1483f4dadd3_master.jpg', 53)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (222, N'1_vladdin_re_red_usalt_10ml_c6b02cf9fb7f42e4b1f097740452985c_master.jpg', 53)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (223, N'vladdin_re_black_tang_salt_nic_10ml_master.jpg', 53)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (224, N'1_vladdin_full_color1_e6a04b7409fe472e884e3cddd6e73899_master.jpg', 53)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (248, N'186367834-1.geek_vape_frenzy_pod_system_8a95f051b1b84453a08c59be31cb9d71_master.jpg', 49)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (265, N'355989302-1_vladdin_re_blue_usalt_10ml_656fe804d11a4729b5a2f1483f4dadd3_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (266, N'783703179-1_vladdin_re_red_usalt_10ml_c6b02cf9fb7f42e4b1f097740452985c_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (267, N'884456851-vladdin_re_black_tang_salt_nic_10ml_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (268, N'171289112-1_vladdin_full_color1_e6a04b7409fe472e884e3cddd6e73899_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (269, N'656774264-sense_oribi_cyan_3588987d4fc3479d9bfe5806cd561642_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (270, N'394209809-vapepro_sense_oribi_wine_red_20a8d346cac94fdaadf80575cf3711b5_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (271, N'643366515-vapepro_sense_oribi_rainbow_005c99bd111d4dc2bcc33456d5e119c7_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (272, N'981015347-sense_full_color_e2848cf61a574081b33aa9eb052769ea_master.jpg', 59)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (273, N'434873472-1.smok_alike_40w_pod_mod_kit_-_matte_gunmetal_ad184c4da4294c07b3bc2cfe7d6b35bd_master.jpg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (274, N'960867586-1.smok_alike_40w_pod_mod_kit_-_matte_gold_f97d71e60c964070bc8e081011f6ba5e_master.jpg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (275, N'891049063-voopoo_vinci_x_70w_pod__scarlet_kit_cf11f99192bc4e43b18105fd7e1d8f5f_master.jpeg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (276, N'401012307-voopoo_vinci_x_70w_pod__dazzling_green_kit_8067f3f8da2742589011d1dabab25333_master.jpeg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (277, N'845065215-voopoo_vinci_x_70w_pod__space_gray_kit_b78976cdf7d14635836961934c994717_master.jpeg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (278, N'420305998-voopoo_vinci_x_70w_pod__carbon_fiber_kit_d51c1ae72c9d4f56b14baaaa47b89e9d_master.jpeg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (279, N'524435628-vinci_x_full_color_5320742b772042c78c485bb324513fd2_master.jpeg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (280, N'142741742-hotcig_marvel_40_pod_system_purple_rainbow_91ee26f892eb46a1a27d2696a5f192af_master.jpg', 22)
GO
INSERT [dbo].[image] ([id], [image], [podId]) VALUES (281, N'36130992-hotcig_marvel_40_pod_system_blue_rainbow_9c11b6b26f7a4d7696035c794b33c005_master.jpg', 22)
GO
SET IDENTITY_INSERT [dbo].[image] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (3, 1, 3, 4, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-05T16:18:24.927' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (5, NULL, 6, 4, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-05T16:18:22.677' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (6, 1, 7, 3, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T16:18:21.257' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (7, 1, 8, 5, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T16:18:18.727' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (8, NULL, 9, 3, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T16:18:17.557' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (9, NULL, 10, 4, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T16:18:16.090' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (10, NULL, 11, 2, CAST(N'2022-03-05T14:47:34.507' AS DateTime), CAST(N'2022-03-05T16:18:14.370' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (11, NULL, 12, 3, CAST(N'2022-03-05T14:48:36.427' AS DateTime), CAST(N'2022-03-05T16:18:13.100' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (12, NULL, 13, 4, CAST(N'2022-03-05T14:54:54.477' AS DateTime), CAST(N'2022-03-05T16:18:11.733' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (13, NULL, 14, 2, CAST(N'2022-03-05T14:59:40.350' AS DateTime), CAST(N'2022-03-05T16:18:10.690' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (14, NULL, 15, 3, CAST(N'2022-03-05T14:59:40.997' AS DateTime), CAST(N'2022-03-05T16:18:08.907' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (15, NULL, 16, 4, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T16:18:08.097' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (16, NULL, 17, 2, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T16:18:03.107' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (17, NULL, 18, 4, CAST(N'2022-03-05T15:08:27.663' AS DateTime), CAST(N'2022-03-05T16:18:01.817' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (18, NULL, 19, 3, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T16:18:01.043' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (19, NULL, 20, 2, CAST(N'2022-03-05T15:09:35.467' AS DateTime), CAST(N'2022-03-05T16:17:59.693' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (20, NULL, 21, 3, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T16:17:58.870' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (21, NULL, 22, 2, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T16:17:57.657' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (22, NULL, 23, 3, CAST(N'2022-03-05T17:15:26.333' AS DateTime), CAST(N'2022-03-05T17:15:49.660' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (23, NULL, 24, 2, CAST(N'2022-03-05T17:32:10.183' AS DateTime), CAST(N'2022-03-05T17:33:07.777' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (24, 1, 25, 3, CAST(N'2022-03-05T17:32:39.217' AS DateTime), CAST(N'2022-03-05T17:33:06.420' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (25, 1, 26, 5, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T22:47:56.217' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (26, 1, 27, 4, CAST(N'2022-03-05T21:20:22.880' AS DateTime), CAST(N'2022-03-05T22:47:53.640' AS DateTime))
GO
INSERT [dbo].[order] ([id], [userId], [customerId], [stateId], [created_at], [updated_at]) VALUES (27, NULL, 28, 3, CAST(N'2022-03-05T21:56:45.463' AS DateTime), CAST(N'2022-03-05T22:47:52.157' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[order_detail] ON 
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (17, 3, 990000.0000, 5, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 14, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (18, 4, 350000.0000, 5, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 15, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (19, 2, 599000.0000, 10, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 16, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (20, 2, 650000.0000, 10, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 17, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (21, 2, 550000.0000, 25, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 20, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (23, 1, 179000.0000, 3, CAST(N'2022-03-04T22:42:55.107' AS DateTime), CAST(N'2022-03-04T22:42:55.107' AS DateTime), 19, 3)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (24, 3, 990000.0000, 5, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 14, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (25, 3, 350000.0000, 5, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 15, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (26, 2, 599000.0000, 10, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 16, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (27, 2, 650000.0000, 10, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 17, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (28, 2, 179000.0000, 3, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 19, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (29, 2, 550000.0000, 10, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 18, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (30, 2, 550000.0000, 25, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 20, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (31, 2, 1500000.0000, 4, CAST(N'2022-03-04T22:51:06.030' AS DateTime), CAST(N'2022-03-04T22:51:06.030' AS DateTime), 21, 5)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (32, 1, 650000.0000, 10, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T13:46:10.367' AS DateTime), 17, 6)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (33, 1, 179000.0000, 3, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T13:46:10.367' AS DateTime), 19, 6)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (34, 1, 550000.0000, 0, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T13:46:10.367' AS DateTime), 20, 6)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (35, 1, 1500000.0000, 5, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T13:46:10.367' AS DateTime), 22, 6)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (36, 1, 350000.0000, 7, CAST(N'2022-03-05T13:46:10.367' AS DateTime), CAST(N'2022-03-05T13:46:10.367' AS DateTime), 23, 6)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (37, 6, 650000.0000, 10, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 17, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (38, 6, 599000.0000, 10, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 16, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (39, 3, 350000.0000, 5, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 15, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (40, 3, 550000.0000, 10, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 18, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (41, 3, 1500000.0000, 4, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 21, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (42, 4, 320000.0000, 10, CAST(N'2022-03-05T14:25:04.720' AS DateTime), CAST(N'2022-03-05T14:25:04.720' AS DateTime), 24, 7)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (43, 2, 350000.0000, 5, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 15, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (44, 2, 599000.0000, 10, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 16, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (45, 1, 650000.0000, 10, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 17, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (46, 2, 550000.0000, 10, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 18, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (47, 2, 179000.0000, 3, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 19, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (48, 4, 1500000.0000, 4, CAST(N'2022-03-05T14:25:58.470' AS DateTime), CAST(N'2022-03-05T14:25:58.470' AS DateTime), 21, 8)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (49, 2, 179000.0000, 3, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T14:26:45.847' AS DateTime), 19, 9)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (50, 2, 550000.0000, 10, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T14:26:45.847' AS DateTime), 18, 9)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (51, 2, 550000.0000, 0, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T14:26:45.847' AS DateTime), 20, 9)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (52, 2, 1500000.0000, 4, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T14:26:45.847' AS DateTime), 21, 9)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (53, 2, 320000.0000, 10, CAST(N'2022-03-05T14:26:45.847' AS DateTime), CAST(N'2022-03-05T14:26:45.847' AS DateTime), 24, 9)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (54, 19, 350000.0000, 5, CAST(N'2022-03-05T14:47:34.507' AS DateTime), CAST(N'2022-03-05T14:47:34.507' AS DateTime), 15, 10)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (55, 12, 599000.0000, 10, CAST(N'2022-03-05T14:47:34.507' AS DateTime), CAST(N'2022-03-05T14:47:34.507' AS DateTime), 16, 10)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (56, 2, 650000.0000, 10, CAST(N'2022-03-05T14:47:34.507' AS DateTime), CAST(N'2022-03-05T14:47:34.507' AS DateTime), 17, 10)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (57, 12, 599000.0000, 10, CAST(N'2022-03-05T14:48:36.427' AS DateTime), CAST(N'2022-03-05T14:48:36.427' AS DateTime), 16, 11)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (58, 3, 650000.0000, 10, CAST(N'2022-03-05T14:48:36.427' AS DateTime), CAST(N'2022-03-05T14:48:36.427' AS DateTime), 17, 11)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (59, 3, 350000.0000, 5, CAST(N'2022-03-05T14:48:36.427' AS DateTime), CAST(N'2022-03-05T14:48:36.427' AS DateTime), 15, 11)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (60, 3, 990000.0000, 0, CAST(N'2022-03-05T14:48:36.427' AS DateTime), CAST(N'2022-03-05T14:48:36.427' AS DateTime), 14, 11)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (61, 5, 350000.0000, 5, CAST(N'2022-03-05T14:54:54.477' AS DateTime), CAST(N'2022-03-05T14:54:54.477' AS DateTime), 15, 12)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (62, 4, 599000.0000, 10, CAST(N'2022-03-05T14:54:54.477' AS DateTime), CAST(N'2022-03-05T14:54:54.477' AS DateTime), 16, 12)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (63, 2, 650000.0000, 10, CAST(N'2022-03-05T14:54:54.477' AS DateTime), CAST(N'2022-03-05T14:54:54.477' AS DateTime), 17, 12)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (64, 2, 990000.0000, 0, CAST(N'2022-03-05T14:54:54.477' AS DateTime), CAST(N'2022-03-05T14:54:54.477' AS DateTime), 14, 12)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (65, 2, 350000.0000, 5, CAST(N'2022-03-05T14:59:40.350' AS DateTime), CAST(N'2022-03-05T14:59:40.350' AS DateTime), 15, 13)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (66, 2, 599000.0000, 10, CAST(N'2022-03-05T14:59:40.350' AS DateTime), CAST(N'2022-03-05T14:59:40.350' AS DateTime), 16, 13)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (67, 2, 650000.0000, 10, CAST(N'2022-03-05T14:59:40.350' AS DateTime), CAST(N'2022-03-05T14:59:40.350' AS DateTime), 17, 13)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (68, 2, 350000.0000, 5, CAST(N'2022-03-05T14:59:40.997' AS DateTime), CAST(N'2022-03-05T14:59:40.997' AS DateTime), 15, 14)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (69, 2, 599000.0000, 10, CAST(N'2022-03-05T14:59:40.997' AS DateTime), CAST(N'2022-03-05T14:59:40.997' AS DateTime), 16, 14)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (70, 2, 650000.0000, 10, CAST(N'2022-03-05T14:59:40.997' AS DateTime), CAST(N'2022-03-05T14:59:40.997' AS DateTime), 17, 14)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (71, 6, 550000.0000, 0, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 20, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (72, 13, 1500000.0000, 4, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 21, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (73, 13, 179000.0000, 3, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 19, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (74, 2, 550000.0000, 10, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 18, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (75, 2, 320000.0000, 10, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 24, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (76, 2, 990000.0000, 20, CAST(N'2022-03-05T15:05:02.130' AS DateTime), CAST(N'2022-03-05T15:05:02.130' AS DateTime), 25, 15)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (77, 5, 350000.0000, 5, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 15, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (78, 6, 500000.0000, 3, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 39, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (79, 5, 300000.0000, 4, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 40, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (80, 4, 400000.0000, 3, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 41, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (81, 2, 450000.0000, 3, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 44, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (82, 2, 460000.0000, 2, CAST(N'2022-03-05T15:06:45.453' AS DateTime), CAST(N'2022-03-05T15:06:45.453' AS DateTime), 43, 16)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (83, 2, 350000.0000, 5, CAST(N'2022-03-05T15:08:27.663' AS DateTime), CAST(N'2022-03-05T15:08:27.663' AS DateTime), 15, 17)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (84, 2, 599000.0000, 10, CAST(N'2022-03-05T15:08:27.663' AS DateTime), CAST(N'2022-03-05T15:08:27.663' AS DateTime), 16, 17)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (85, 4, 650000.0000, 10, CAST(N'2022-03-05T15:08:27.663' AS DateTime), CAST(N'2022-03-05T15:08:27.663' AS DateTime), 17, 17)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (86, 2, 550000.0000, 0, CAST(N'2022-03-05T15:08:27.663' AS DateTime), CAST(N'2022-03-05T15:08:27.663' AS DateTime), 20, 17)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (87, 4, 990000.0000, 0, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 14, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (88, 4, 350000.0000, 5, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 15, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (89, 8, 599000.0000, 10, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 16, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (90, 7, 650000.0000, 10, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 17, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (91, 2, 550000.0000, 0, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 20, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (92, 2, 179000.0000, 3, CAST(N'2022-03-05T15:09:16.803' AS DateTime), CAST(N'2022-03-05T15:09:16.803' AS DateTime), 19, 18)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (93, 4, 599000.0000, 10, CAST(N'2022-03-05T15:09:35.467' AS DateTime), CAST(N'2022-03-05T15:09:35.467' AS DateTime), 16, 19)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (94, 3, 650000.0000, 10, CAST(N'2022-03-05T15:09:35.467' AS DateTime), CAST(N'2022-03-05T15:09:35.467' AS DateTime), 17, 19)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (95, 2, 550000.0000, 0, CAST(N'2022-03-05T15:09:35.467' AS DateTime), CAST(N'2022-03-05T15:09:35.467' AS DateTime), 20, 19)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (96, 2, 179000.0000, 3, CAST(N'2022-03-05T15:09:35.467' AS DateTime), CAST(N'2022-03-05T15:09:35.467' AS DateTime), 19, 19)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (97, 5, 650000.0000, 10, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T15:10:07.177' AS DateTime), 17, 20)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (98, 4, 1500000.0000, 4, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T15:10:07.177' AS DateTime), 21, 20)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (99, 2, 550000.0000, 0, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T15:10:07.177' AS DateTime), 20, 20)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (100, 2, 179000.0000, 3, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T15:10:07.177' AS DateTime), 19, 20)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (101, 2, 550000.0000, 10, CAST(N'2022-03-05T15:10:07.177' AS DateTime), CAST(N'2022-03-05T15:10:07.177' AS DateTime), 18, 20)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (102, 1, 350000.0000, 5, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 15, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (103, 1, 599000.0000, 10, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 16, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (104, 2, 650000.0000, 10, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 17, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (105, 2, 990000.0000, 0, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 14, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (106, 1, 550000.0000, 10, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 18, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (107, 1, 179000.0000, 3, CAST(N'2022-03-05T15:18:11.160' AS DateTime), CAST(N'2022-03-05T15:18:11.160' AS DateTime), 19, 21)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (108, 1, 350000.0000, 5, CAST(N'2022-03-05T17:15:26.333' AS DateTime), CAST(N'2022-03-05T17:15:26.333' AS DateTime), 15, 22)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (109, 3, 599000.0000, 10, CAST(N'2022-03-05T17:15:26.333' AS DateTime), CAST(N'2022-03-05T17:15:26.333' AS DateTime), 16, 22)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (110, 3, 650000.0000, 10, CAST(N'2022-03-05T17:15:26.333' AS DateTime), CAST(N'2022-03-05T17:15:26.333' AS DateTime), 17, 22)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (111, 11, 350000.0000, 5, CAST(N'2022-03-05T17:32:10.183' AS DateTime), CAST(N'2022-03-05T17:32:10.183' AS DateTime), 15, 23)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (112, 1, 650000.0000, 10, CAST(N'2022-03-05T17:32:10.183' AS DateTime), CAST(N'2022-03-05T17:32:10.183' AS DateTime), 17, 23)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (113, 3, 990000.0000, 20, CAST(N'2022-03-05T17:32:10.183' AS DateTime), CAST(N'2022-03-05T17:32:10.183' AS DateTime), 25, 23)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (114, 7, 1500000.0000, 5, CAST(N'2022-03-05T17:32:39.217' AS DateTime), CAST(N'2022-03-05T17:32:39.217' AS DateTime), 22, 24)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (115, 4, 179000.0000, 3, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 19, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (116, 4, 1500000.0000, 4, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 21, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (117, 2, 550000.0000, 0, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 20, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (118, 2, 990000.0000, 20, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 25, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (119, 3, 650000.0000, 5, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 32, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (120, 6, 299000.0000, 5, CAST(N'2022-03-05T21:16:57.583' AS DateTime), CAST(N'2022-03-05T21:16:57.583' AS DateTime), 33, 25)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (121, 5, 550000.0000, 0, CAST(N'2022-03-05T21:20:22.880' AS DateTime), CAST(N'2022-03-05T21:20:22.880' AS DateTime), 20, 26)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (122, 5, 990000.0000, 20, CAST(N'2022-03-05T21:20:22.880' AS DateTime), CAST(N'2022-03-05T21:20:22.880' AS DateTime), 25, 26)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (123, 4, 460000.0000, 2, CAST(N'2022-03-05T21:20:22.880' AS DateTime), CAST(N'2022-03-05T21:20:22.880' AS DateTime), 43, 26)
GO
INSERT [dbo].[order_detail] ([id], [quantity], [price], [discount], [created_at], [updated_at], [podId], [orderId]) VALUES (124, 1, 350000.0000, 5, CAST(N'2022-03-05T21:56:45.463' AS DateTime), CAST(N'2022-03-05T21:56:45.463' AS DateTime), 15, 27)
GO
SET IDENTITY_INSERT [dbo].[order_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[order_state] ON 
GO
INSERT [dbo].[order_state] ([id], [name]) VALUES (1, N'Chờ liên hệ')
GO
INSERT [dbo].[order_state] ([id], [name]) VALUES (2, N'Chờ lấy hàng')
GO
INSERT [dbo].[order_state] ([id], [name]) VALUES (3, N'Đang giao hàng')
GO
INSERT [dbo].[order_state] ([id], [name]) VALUES (4, N'Đã giao hàng')
GO
INSERT [dbo].[order_state] ([id], [name]) VALUES (5, N'Trả lại hàng')
GO
SET IDENTITY_INSERT [dbo].[order_state] OFF
GO
SET IDENTITY_INSERT [dbo].[permission] ON 
GO
INSERT [dbo].[permission] ([id], [name]) VALUES (1, N'admin')
GO
INSERT [dbo].[permission] ([id], [name]) VALUES (2, N'user')
GO
SET IDENTITY_INSERT [dbo].[permission] OFF
GO
SET IDENTITY_INSERT [dbo].[permission_action] ON 
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (2, 1, 1, 2)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (3, 1, 1, 3)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (4, 1, 1, 4)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (5, 1, 1, 5)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (6, 1, 1, 6)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (7, 1, 1, 7)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (8, 1, 1, 8)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (9, 1, 1, 9)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (10, 1, 1, 10)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (11, 1, 1, 11)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (12, 1, 1, 12)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (13, 1, 1, 13)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (14, 1, 1, 14)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (15, 1, 1, 15)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (16, 1, 1, 16)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (17, 1, 1, 17)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (18, 1, 1, 18)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (19, 1, 1, 19)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (20, 1, 1, 20)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (21, 1, 1, 21)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (22, 1, 1, 22)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (23, 1, 1, 23)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (24, 1, 1, 24)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (25, 1, 1, 25)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (26, 1, 1, 26)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (27, 1, 1, 27)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (28, 1, 1, 28)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (29, 1, 1, 29)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (30, 1, 1, 30)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (31, 1, 1, 31)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (32, 1, 1, 32)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (33, 1, 1, 33)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (34, 1, 1, 34)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (35, 1, 1, 35)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (36, 1, 1, 36)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (37, 1, 1, 37)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (38, 1, 1, 38)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (39, 1, 1, 39)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (40, 1, 1, 40)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (41, 1, 2, 37)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (42, 1, 2, 38)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (43, 1, 2, 39)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (44, 1, 2, 40)
GO
SET IDENTITY_INSERT [dbo].[permission_action] OFF
GO
SET IDENTITY_INSERT [dbo].[pod] ON 
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (14, N'BỘ POD SYSTEM PAGEE 30W 950mAh KIT BY NEVOKS', N'NEVOKS', 990000.0000, 120, N'BỘ POD SYSTEM PAGEE  30W 950mAh KIT BY NEVOKS
Combo1:  Máy + tinh dầu Saltnic: 800k
Combo2:  Máy + tinh dầu Freebase: 850k
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM PAGEE 30W 950mAh KIT BY NEVOKS</h1><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-1.2_59e42bd8b7974466a11d5d08c2f76ce0_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/pagee-1.2_59e42bd8b7974466a11d5d08c2f76ce0_grande.jpg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-0"></a></p><p style="margin-left:0px;">Nevoks Pagee 30w có pin&nbsp; liền máy với&nbsp; dung lượng 950mAh, có 2 tính&nbsp; năng&nbsp; bấm&nbsp; hút và&nbsp; hút &nbsp;tự động đốt cảm biến hơi cực kỳ tiện lợi.&nbsp; Pagee 30W được đánh giá rất cao không chỉ nhờ ngoại hình đẹp mà&nbsp; chipset&nbsp; NX CHIP của máy thật sự rất tốt cho công suất đốt đều và ổn định.</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-7_a25c401ed96b49719a6a30369f5b0181_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-7_a25c401ed96b49719a6a30369f5b0181_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-1"></a></p><p style="margin-left:0px;text-align:center;">Pagee Pod Nevoks có ngoại hình nhỏ gọn và họa tiết resin bóng&nbsp;sang trọng.&nbsp;Phần thiết kế hệ thống gió đã được tối ưu khả năng chống leak dầu hiệu quả và dễ dàng điều chỉnh để hút được cả 2 kiểu MTL và DTL.</p><p style="margin-left:0px;">Đi kèm máy là đầu pod dung tích lên tới 2,2ml và sử dụng loại occ SPL-10 0.6 ohm (Mesh coil), SPL-1 1.0 ohm (Mesh coil) cho bạn có thể trải nghiệm cả tinh dầu&nbsp;freebase,&nbsp;salt nicotine.</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-4_6e613c5fd4cf4c489def39e62aac9a02_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-4_6e613c5fd4cf4c489def39e62aac9a02_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-2"></a></p><h3 style="margin-left:0px;">Thông số kỹ thuật :</h3><p style="margin-left:0px;">Kích thước: 77.6 x 44.6 x 1 2.6mm<br>Dung lượng pin: 950mAh<br>Công suất : 5-30W<br>Tốc độ đốt: 0.001s<br>Cổng sạc: Type – C 5V/2A<br>Thời gian sạc: 40 mins<br>Dung tích Pod : 2.2ml</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-11-1_646abf5840684c1fbe3ab55b33fc7b33_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-11-1_646abf5840684c1fbe3ab55b33fc7b33_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-3"></a></p><h2 style="margin-left:0px;">Bộ sản phẩm bao gồm :</h2><p style="margin-left:0px;">1 Máy NEVOKS Pagee 30w<br>1 Đầu pod đi kèm (2.2ml)<br>1 Cuộn dây điện lưới 0,6Ω<br>1 Xảy ra cuộn dây thông thường 1.0Ω<br>1 Cáp sạc USB<br>1&nbsp;Hướng dẫn sử dụng</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-___-12_5b6b15c23b4049b8af059c54e1ae6ae0_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-___-12_5b6b15c23b4049b8af059c54e1ae6ae0_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-4"></a></p>', 0, 5, CAST(N'2022-03-02T20:24:32.063' AS DateTime), CAST(N'2022-03-02T20:24:32.063' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (15, N'BỘ POD SYSTEM FEELIN MINI 18W 750mAh BY NEVOKS', N'NEVOKS', 350000.0000, 345, N'BỘ POD SYSTEM FEELIN MINI 18W 750mAh BY NEVOKS
Combo máy + tinh dầu Saltnic 30ml: 600k
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 2222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM FEELIN MINI 18W 750mAh BY NEVOKS</h1><p style="margin-left:0px;">Bộ Pod System Feelin Mini 18W có pin tích hợp 7500mAh và đầu chứa dầu dung tích 2ml. Có thể điều chỉnh lỗ gió để phù hợp với MTL hoặc&nbsp; DL . Có chế độ hút tự động hoặc bấm nút. Được trang bị cổng USB Type-C phía dưới sạc nhanh sẽ giảm thời gian sạc.&nbsp;</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/dsc03302_2166ad30f84044d889b2d707cbe2b5c8_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/dsc03302_2166ad30f84044d889b2d707cbe2b5c8_grande.jpg" alt="bo-pod-system-feelin-mini-18w-750mah-by-nevoks-0"></a></p><p style="margin-left:0px;">&nbsp;</p><p style="margin-left:0px;">Thông số kỹ thuật:</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/leaflet_32b9991da44941258816f74db7504f3f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/leaflet_32b9991da44941258816f74db7504f3f_grande.jpg" alt="bo-pod-system-feelin-mini-18w-750mah-by-nevoks-1"></a></p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/feelin_mini_poster__3__a15420f77aeb49a48653848964abfa9d_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/feelin_mini_poster__3__a15420f77aeb49a48653848964abfa9d_grande.jpg" alt="bo-pod-system-feelin-mini-18w-750mah-by-nevoks-2"></a></p><p style="margin-left:0px;">\</p><p style="margin-left:0px;"><a href="https://file.hstatic.net/1000250387/file/feelin-14-1_d191d5c7b32b4523b7404be0d9cc7358_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/feelin-14-1_d191d5c7b32b4523b7404be0d9cc7358_grande.jpg" alt="bo-pod-system-feelin-mini-18w-750mah-by-nevoks-3"></a></p>', 1, 5, CAST(N'2022-03-02T22:48:32.840' AS DateTime), CAST(N'2022-03-02T22:48:32.840' AS DateTime), 2, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (16, N'BỘ POD SYSTEM ZERO 2 BY VAPORESSO', N'Vaporesso', 599000.0000, 234, N'BỘ POD SYSTEM ZERO 2 BY VAPORESSO
Combo máy + tinh dầu Saltnic 30ml: 850k
Combo máy + tinh dầu Freebase: 900k
vị tinh dầu tùy chọn
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 2222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM ZERO 2 BY VAPORESSO</h1><p style="margin-left:0px;">Bộ Pod System Vaporesso ZERO 2, có pin tích hợp với dung lượng 800mAh, Dung tích 3mL và đi kèm với đầu pod Mesh 1.0ohm hoặc 1.3ohm CCELL Pod. Được trang bị Chipset AXON, bộ Pod ZERO 2 là sự kế thừa tuyệt vời của Vaporesso RENOVA Zero Pod, khung máy được làm từ hợp kim kẽm bền và cung cấp khả năng bảo vệ tốt cho viên pin 800mAh bên trong. Ngoài ra ZERO 2 hoạt động dựa trên cơ chế hút tự động đốt, cho phép sử dụng dễ dàng và đơn giản cho những người đang di chuyển.</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2021-11-02_luc_14.33.05_03f81368d07a4397bda13c22a31e644d_grande.png"><img class="image_resized" style="width:654px;" src="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2021-11-02_luc_14.33.05_03f81368d07a4397bda13c22a31e644d_grande.png" alt="bo-pod-system-zero-2-by-vaporesso-0"></a></p><p style="margin-left:0px;"><strong>Thông số kỹ thuật Vaporesso ZERO 2 Pod System Features:</strong><br>AXON Chipset<br>Kích thước &nbsp;89mm * 31.8mm * 19mm<br>Dung lượng pin Integrated 800mAh Battery<br>Trở kháng Resistance Range: 1.0-1.3ohms<br>Chất liệu Zinc-Alloy Chassis Construction<br>Cơ chế hút tự động Draw-Activated Firing Mechanism<br>Đèn LED Indicator Light<br>Dung tích buồng chứa dầu 3mL Pod Capacity<br>Bottom Press-To-Fill System<br>Đầu pod 1.0ohm Mesh Coil Pod<br>Đầu pod 1.3ohm CCELL Coil Pod<br>Kết nối từ tính Magnetic Pod Connection</p><p style="margin-left:0px;">Các chế độ an toàn<br>Short Circuit Protection<br>No Load Protection<br>Low Voltage Protection<br>Low Resistance Protection<br>Overtime Vaping Protection<br>Overcharge Protection<br>Cổng sạc Type-C USB Port</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_05_zbdqi_05f64c6ad6a64e029912db23f9ef17ba_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_05_zbdqi_05f64c6ad6a64e029912db23f9ef17ba_grande.jpeg" alt="bo-pod-system-zero-2-by-vaporesso-1"></a></p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_04_dv1ln_73a64cee64fa4f509a11ca8c02e2e989_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_04_dv1ln_73a64cee64fa4f509a11ca8c02e2e989_grande.jpeg" alt="bo-pod-system-zero-2-by-vaporesso-2"></a></p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 Vaporesso Zero 2 Battery<br>1 1.0ohm Mesh Pod<br>1 1.3ohm CCELL Pod<br>1 E-Liquid Fill Bottle<br>1 Type-C Cable<br>1 User Manual<br>1 Warranty Card</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_06_owke7_1936fda4afea42c4bc44beaf40df7fe2_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/vaporesso-zero-2-pod-kit_06_owke7_1936fda4afea42c4bc44beaf40df7fe2_grande.jpeg" alt="bo-pod-system-zero-2-by-vaporesso-3"></a></p>', 1, 10, CAST(N'2022-03-02T22:51:51.730' AS DateTime), CAST(N'2022-03-02T22:51:51.730' AS DateTime), 2, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (17, N'BỘ POD SYSTEM FETCH PRO 80W BY SMOK', N'SMOK', 650000.0000, 89, N'BỘ POD SYSTEM FETCH PRO 80W BY SMOK
Bộ Pod System FETCH PRO có hai mặt kính phản chiếu AG tuyệt đẹp với dải trang trí và kết hợp với Màn hình hiển thị LCD 0,96 ". Bên dưới màn hình là một bộ nút điều chỉnh để Điều hướng menu và điều chỉnh công suất.
Combo máy + tinh dầu Saltnic 30ml: 900k
Combo máy + tinh dầu Freebase: 950k
vị tinh dầu tùy chọn combo chưa bao gồm pin
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM FETCH PRO 80W BY SMOK</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_fetch_pro_80w_pod_system_-_all_colors_3831da0a481a473e8371f2e17e8be41b_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_fetch_pro_80w_pod_system_-_all_colors_3831da0a481a473e8371f2e17e8be41b_grande.jpg" alt="bo-pod-system-fetch-pro-80w-by-smok-1-0"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK FETCH PRO Pod System Features:</strong><br>Kích thước: 93.5mm * 46mm * 22mm<br>Sử dụng pin 18650 Battery - Not Included (không kèm theo máy)<br>Công suất: 5-80W<br>Trở kháng: 0.1-2.5ohms<br>Chất liệu: Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Màn hình: 0.96" TFT Display Screen<br>Dung tích đầu pod: 4.3mL Refillable Fetch Pro RPM Pod<br>Loại coil phù hợp: SMOK RPM Coil Series và&nbsp;SMOK RGC Coil Series<br>Cảnh báo Pin yếu, quá nhiệt, đoản mạch...<br>Drip Tip 510 Delrin&nbsp;<br>Cổng sạc: USB Type-C Port</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/fetch_pro_kit_2_infographic__1__b5b7c1bf614842d3a92422e87bdc3ea4_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/fetch_pro_kit_2_infographic__1__b5b7c1bf614842d3a92422e87bdc3ea4_grande.jpg" alt="bo-pod-system-fetch-pro-80w-by-smok-1-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 Fetch Pro Device<br>1 Fetch Pro RPM Pod<br>1 Fetch Pro RGC Pod<br>1 0.4ohm RPM Mesh Coil<br>1 0.17ohm RGC Conical Mesh Coil<br>1 Type-C Cable<br>1 User Manual</p><p style="margin-left:0px;"><a href="https://file.hstatic.net/1000250387/file/1.smok_fetch_pro_80w_pod_system_-package_contents_f6f7cb8b9d444e599727e2d2aa4aeecf_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_fetch_pro_80w_pod_system_-package_contents_f6f7cb8b9d444e599727e2d2aa4aeecf_grande.jpg" alt="bo-pod-system-fetch-pro-80w-by-smok-1-2"></a></p><h2 style="margin-left:0px;text-align:center;">BẠN CÓ THẮC MẮC VỀ SẢN PHẨM NÀY?</h2><p style="margin-left:0px;">&nbsp;</p>', 1, 10, CAST(N'2022-03-02T22:57:52.827' AS DateTime), CAST(N'2022-03-02T22:57:52.827' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (18, N'BỘ POD SYSTEM CALIBURN G 15W by UWELL', N'UWELL', 550000.0000, 423, N'BỘ POD SYSTEM CALIBURN G 15W by UWELL
Bộ Pod System Uwell CALIBURN G 15W mới, có pin liền dung lượng 690mAh, có thể điều chỉnh lỗ gió và buồng chứa dầu 2mL.
Combo máy + dầu saltnic 30ml:800k
Combo máy + dầu Freebase:850k
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM CALIBURN G 15W by UWELL</h1><figure class="image image_resized" style="width:39.42%;"><a href="https://file.hstatic.net/1000250387/file/1.poster_ins__112a4c6fe96b4e2bbba091829ca9d37c_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.poster_ins__112a4c6fe96b4e2bbba091829ca9d37c_grande.jpg" alt="bo-pod-system-caliburn-g-15w-by-uwell-0"></a></figure><p style="margin-left:0px;text-align:right;">Bộ Pod system Uwell CALIBURN G 15W mới được làm từ hợp kim kẽm, khung của Caliburn G có khả năng chống rơi và rớt nhẹ. Được trang bị pin liền dung lượng 690mAh, CALIBURN G có thể dùng cả ngày với công suất lên đến 15W. Đầu pod có dung tích 2mL kết nối từ tính. Ngoài ra, cổng USB Type-C phía dưới sạc nhanh sẽ giảm thời gian sạc.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1_37b8b59a629f41d2aae8e87933a51699_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1_37b8b59a629f41d2aae8e87933a51699_grande.jpg" alt="bo-pod-system-caliburn-g-15w-by-uwell-1"></a></figure><p style="margin-left:0px;text-align:center;"><strong>Thông số kỹ thuật Uwell CALIBURN G 15W Pod System Features:</strong><br>Kích thước Dimensions - 108.3mm * 22.5mm * 12.6mm<br>Dung lượng Pin Integrated 690mAh Rechargeable Battery<br>Công suất Max. Wattage Output: 15W<br>Điều chỉnh lỗ gió 2 Different Airflow - MTL &amp; DTL<br>Chất liệu hợp kim kẽm Zinc-Alloy Chassis Construction<br>Có thể hút tự động hoặc bấm nút Intuitive Firing Button - Dual Firing System<br>Draw-Activated Firing Mechanism<br>Dung tích đầu pod 2mL Pod Capacity<br>Sử dụng OCC Uwell Caliburn G Coil Series<br>Kết nối từ tính Magnetic Pod Connection<br>Cổng sạc Type-C Port</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/exploded_drawing_7b7f96c792e34017b786a5e117b37b30_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/exploded_drawing_7b7f96c792e34017b786a5e117b37b30_grande.jpg" alt="bo-pod-system-caliburn-g-15w-by-uwell-2"></a></figure><p style="margin-left:0px;text-align:center;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 Uwell Caliburn G Kit<br>1 Uwell Caliburn Pod Cartridge<br>2 0.8ohm Caliburn G Coil<br>1 USB Type-C Cable<br>1 User Manua</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/uwell_caliburn_g_boxx_4db6b2dc10ff45a18bc8faeb440f30f3_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/uwell_caliburn_g_boxx_4db6b2dc10ff45a18bc8faeb440f30f3_grande.jpg" alt="bo-pod-system-caliburn-g-15w-by-uwell-3"></a></figure>', 1, 10, CAST(N'2022-03-02T23:01:45.310' AS DateTime), CAST(N'2022-03-02T23:01:45.310' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (19, N'Đầu Pod Cartridge thay thế cho KNIGHT 80W Pod System By Smoant (kèm 2 OCC 0.3ohm & 0.4ohm)', N'SMOANT', 179000.0000, 34, N'Đầu Pod Cartridge thay thế cho KNIGHT 80W Pod System By Smoant (kèm 2 OCC 0.3ohm & 0.4ohm)
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 
', N'<h1>Đầu Pod Cartridge thay thế cho KNIGHT 80W Pod System By Smoant (kèm 2 OCC 0.3ohm &amp; 0.4ohm)</h1><p><a href="https://file.hstatic.net/1000250387/file/m-kit-replacement-pod-cartridge-w-03ohm-04ohm-mesh-coils-black-4ml__2__53f321bc78cd4ba59ef3bfda2037532f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/m-kit-replacement-pod-cartridge-w-03ohm-04ohm-mesh-coils-black-4ml__2__53f321bc78cd4ba59ef3bfda2037532f_grande.jpg" alt="dau-pod-cartridge-thay-the-cho-knight-80w-pod-system-by-smoant-kem-2-occ-0-3ohm-0-4ohm-0"></a></p>', 1, 3, CAST(N'2022-03-02T23:07:09.410' AS DateTime), CAST(N'2022-03-02T23:07:09.410' AS DateTime), 3, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (20, N'BỘ POD SYSTEM PAGEE 30W 950mAh KIT BY NEVOKS', N'NEVOKS', 550000.0000, 234, N'BỘ POD SYSTEM PAGEE  30W 950mAh KIT BY NEVOKS
Combo1:  Máy + tinh dầu Saltnic: 800k
Combo2:  Máy + tinh dầu Freebase: 850k
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM PAGEE 30W 950mAh KIT BY NEVOKS</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/pagee-1.2_59e42bd8b7974466a11d5d08c2f76ce0_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/pagee-1.2_59e42bd8b7974466a11d5d08c2f76ce0_grande.jpg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-0"></a></figure><p style="margin-left:0px;">Nevoks Pagee 30w có pin&nbsp; liền máy với&nbsp; dung lượng 950mAh, có 2 tính&nbsp; năng&nbsp; bấm&nbsp; hút và&nbsp; hút &nbsp;tự động đốt cảm biến hơi cực kỳ tiện lợi.&nbsp; Pagee 30W được đánh giá rất cao không chỉ nhờ ngoại hình đẹp mà&nbsp; chipset&nbsp; NX CHIP của máy thật sự rất tốt cho công suất đốt đều và ổn định.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/pagee-7_a25c401ed96b49719a6a30369f5b0181_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-7_a25c401ed96b49719a6a30369f5b0181_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-1"></a></figure><p style="margin-left:0px;text-align:center;">Pagee Pod Nevoks có ngoại hình nhỏ gọn và họa tiết resin bóng&nbsp;sang trọng.&nbsp;Phần thiết kế hệ thống gió đã được tối ưu khả năng chống leak dầu hiệu quả và dễ dàng điều chỉnh để hút được cả 2 kiểu MTL và DTL.</p><p style="margin-left:0px;">Đi kèm máy là đầu pod dung tích lên tới 2,2ml và sử dụng loại occ SPL-10 0.6 ohm (Mesh coil), SPL-1 1.0 ohm (Mesh coil) cho bạn có thể trải nghiệm cả tinh dầu&nbsp;freebase,&nbsp;salt nicotine.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/pagee-4_6e613c5fd4cf4c489def39e62aac9a02_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-4_6e613c5fd4cf4c489def39e62aac9a02_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-2"></a></figure><h3 style="margin-left:0px;">Thông số kỹ thuật :</h3><p style="margin-left:0px;">Kích thước: 77.6 x 44.6 x 1 2.6mm<br>Dung lượng pin: 950mAh<br>Công suất : 5-30W<br>Tốc độ đốt: 0.001s<br>Cổng sạc: Type – C 5V/2A<br>Thời gian sạc: 40 mins<br>Dung tích Pod : 2.2ml</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/pagee-11-1_646abf5840684c1fbe3ab55b33fc7b33_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-11-1_646abf5840684c1fbe3ab55b33fc7b33_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-3"></a></figure><h2 style="margin-left:0px;">Bộ sản phẩm bao gồm :</h2><p style="margin-left:0px;">1 Máy NEVOKS Pagee 30w<br>1 Đầu pod đi kèm (2.2ml)<br>1 Cuộn dây điện lưới 0,6Ω<br>1 Xảy ra cuộn dây thông thường 1.0Ω<br>1 Cáp sạc USB<br>1&nbsp;Hướng dẫn sử dụng</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/pagee-___-12_5b6b15c23b4049b8af059c54e1ae6ae0_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/pagee-___-12_5b6b15c23b4049b8af059c54e1ae6ae0_grande.jpeg" alt="bo-pod-system-pagee-30w-950mah-kit-by-nevoks-4"></a></p>', 0, 25, CAST(N'2022-03-02T23:11:04.560' AS DateTime), CAST(N'2022-03-02T23:11:04.560' AS DateTime), 4, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (21, N'LIL SOLID 2.0 (Màu Xanh) By KT&G IQOS', N'KT&G', 1500000.0000, 34, N'Thiết kế mới với nắp sườn có thể thay thế mix màu
Lưỡi nung nóng được cải tiến cho hương vị thuốc tốt hơn
Thời gian sử dụng lâu hơn, mỗi lần sạc có thể sử dụng 25 điếu
Có 4 lần rung báo hiệu: bật máy, sẵn sàng để hút, thuốc sắp hết, tắt máy', N'<h1>LIL SOLID 2.0 (Màu Xanh) By KT&amp;G IQOS</h1><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/huong_dan_su_dung_lil_solid_2.0_bae1a29fa1a343bfa0300b38acb64f96_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/huong_dan_su_dung_lil_solid_2.0_bae1a29fa1a343bfa0300b38acb64f96_grande.jpg" alt="lil-solid-2-0-mau-xanh-by-kt-g-iqos-0"></a></p><p style="margin-left:0px;"><br>Bộ sản phẩm bao gồm:</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/bo_san_pham_lil_solid_2.0_bao_gom_88dbb592cd15425da15e24db651f6ec1_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/bo_san_pham_lil_solid_2.0_bao_gom_88dbb592cd15425da15e24db651f6ec1_grande.jpg" alt="lil-solid-2-0-mau-xanh-by-kt-g-iqos-1"></a></p>', 1, 4, CAST(N'2022-03-03T14:56:21.857' AS DateTime), CAST(N'2022-03-03T14:56:21.857' AS DateTime), 2, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (22, N'LIL SOLID 2.0 (Màu đen) By KT&G IQOS', N'KT&G', 1500000.0000, 234, N'Thiết kế mới với nắp sườn có thể thay thế mix màu
Lưỡi nung nóng được cải tiến cho hương vị thuốc tốt hơn
Thời gian sử dụng lâu hơn, mỗi lần sạc có thể sử dụng 25 điếu
Có 4 lần rung báo hiệu: bật máy, sẵn sàng để hút, thuốc sắp hết, tắt máy', N'<h1>LIL SOLID 2.0 (Màu đen) By KT&amp;G IQOS</h1><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/huong_dan_su_dung_lil_solid_2.0_bae1a29fa1a343bfa0300b38acb64f96_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/huong_dan_su_dung_lil_solid_2.0_bae1a29fa1a343bfa0300b38acb64f96_grande.jpg" alt="lil-solid-2-0-mau-den-by-kt-g-iqos-0"></a></p><p style="margin-left:0px;"><br>Bộ sản phẩm bao gồm:</p><p style="margin-left:0px;text-align:center;"><a href="https://file.hstatic.net/1000250387/file/bo_san_pham_lil_solid_2.0_bao_gom_88dbb592cd15425da15e24db651f6ec1_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/bo_san_pham_lil_solid_2.0_bao_gom_88dbb592cd15425da15e24db651f6ec1_grande.jpg" alt="lil-solid-2-0-mau-den-by-kt-g-iqos-1"></a></p>', 1, 5, CAST(N'2022-03-03T14:57:34.087' AS DateTime), CAST(N'2022-03-03T22:23:47.707' AS DateTime), 3, 3)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (23, N'Tropical Fruit (Hoa quả trộn lạnh) Icy Fruity Salt 30ML', N'Icy Fruity Salt', 350000.0000, 543, N'Tropical Fruit (Hoa quả trộn lạnh) Icy Fruity Salt 30ML
Size: 30ml
Hàm lượng Nic: 35mg - 50mg
Hương vị: Hoa quả trộn lạnh
Dùng cho Pod System
 ', N'<h1>Tropical Fruit (Hoa quả trộn lạnh) Icy Fruity Salt 30ML</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/icy_fruity_salt_30ml_tropical_fruit_1d6f3028e48d400084c02481f6dd2124_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/icy_fruity_salt_30ml_tropical_fruit_1d6f3028e48d400084c02481f6dd2124_grande.jpg" alt="tropical-fruit-hoa-qua-tron-lanh-icy-fruity-salt-30ml-0"></a></figure>', 1, 7, CAST(N'2022-03-03T14:58:58.963' AS DateTime), CAST(N'2022-03-03T14:58:58.963' AS DateTime), 4, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (24, N'Lemon Berries (Chanh việt quất lạnh) Icy Fruity Salt 30ML', N'Icy Fruity Salt', 320000.0000, 324, N'Size: 30ml
Hàm lượng Nic: 35mg - 50mg
Hương vị: Chanh việt quất lạnh
Dùng cho Pod System
 ', N'<h1>Lemon Berries (Chanh việt quất lạnh) Icy Fruity Salt 30ML</h1><p><a href="https://file.hstatic.net/1000250387/file/icy_fruity_salt_30ml_lemon_berries_58af20253b654ef1afdf1ab205404e31_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/icy_fruity_salt_30ml_lemon_berries_58af20253b654ef1afdf1ab205404e31_grande.jpg" alt="lemon-berries-chanh-viet-quat-lanh-icy-fruity-salt-30ml-0"></a></p>', 1, 10, CAST(N'2022-03-03T15:01:06.957' AS DateTime), CAST(N'2022-03-03T15:01:06.957' AS DateTime), 4, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (25, N'BỘ POD SYSTEM DRAG X PLUS 100W POD MOD KIT BY VOOPOO', N'VOOPOO', 990000.0000, 435, N'BỘ POD SYSTEM DRAG X PLUS 100W POD MOD KIT BY VOOPOO
Combo máy + tinh dầu Saltnic 30ml: 1.250k (chưa  bao  gồm  pin)
Combo máy + tinh dầu Freebase: 1.300k (chưa  bao  gồm  pin)
vị tinh dầu tùy chọn combo chưa bao gồm pin
Liên hệ mua hàng và tư vấn sản phẩm
Hotline: Hà Nội: 090 348 22222 | HCM: 090 464 8689', N'<h1>BỘ POD SYSTEM DRAG X PLUS 100W POD MOD KIT BY VOOPOO</h1><p style="margin-left:0px;">Bộ Podsystem Voopoo DRAG X PLUS 100W, có Chipset GENE.FAN 2.0 tiên tiến, công suất 5-100W và đầu chứa dầu sử dụng coil TPP mới. Được chế tạo từ hợp kim kẽm khung của DRAG X PLUS Pod Mod Kit có khả năng chống va đập. Được trang bị Chế độ thông minh để tự động phát hiện điện trở của coil, DRAG X PLUS Kit rất thông minh và tuyệt vời cho các vapers. Được trang bị Chế độ RBA DRAG X PLUS có thể được ghép nối với các đầu tank qua cổng 510.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/drag_x_plus_1_3610c1222a944ff586033a091212c603_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/drag_x_plus_1_3610c1222a944ff586033a091212c603_grande.jpg" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-0"></a></figure><p style="margin-left:0px;"><strong>Thông&nbsp; số kỹ thuật Voopoo DRAG X PLUS 100W Pod Mod Kit Features:</strong><br>Chip mới&nbsp; nhất&nbsp; GENE.FAN 2.0 Chipset<br>Kích&nbsp; thước&nbsp; Dimensions - 141mm * 35mm * 29mm<br>Sử&nbsp; dụng&nbsp; 2 loại&nbsp; pin&nbsp;<strong>18650</strong> Battery&nbsp;và&nbsp; <strong>21700</strong> Battery (không&nbsp; kèm theo máy Not Included)<br>Công&nbsp; suất&nbsp; Wattage Output Range: 5-100W<br>Trở&nbsp; kháng&nbsp; Voltage Output Range: 0.1-3.0ohm<br>Chế&nbsp; độ&nbsp; Smart Mode<br>Chế&nbsp; độ&nbsp;RBA Mode<br>Chất&nbsp; liệu&nbsp; hợp&nbsp; kim&nbsp; kẽm Zinc-Alloy Chassis Construction<br>Intuitive Firing Button<br>Màn&nbsp; hình&nbsp; 0.96" TFT Color Display Screen<br>Các&nbsp; chế độ an toàn<br>Overtime Protection&nbsp;</p><p style="margin-left:0px;">Short-Circuit Protection<br>Overcharge Protection<br>Overcurrent Protection<br>Overdischarge Protection<br>Over Temperature Protection</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/drag_x_plus_2_1dc82cade45d4244b5236a4186ba4b03_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/drag_x_plus_2_1dc82cade45d4244b5236a4186ba4b03_grande.jpg" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-1"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/drag_x_plus_5_b2d2c829b01443a2aff418ffaec0f7d3_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/drag_x_plus_5_b2d2c829b01443a2aff418ffaec0f7d3_grande.jpg" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-2"></a></figure><p style="margin-left:0px;"><strong>Thông&nbsp; số kỹ thuật đầu&nbsp; chứa dầu Voopoo TTP Pod Tank Features:</strong><br>Dung&nbsp; tích&nbsp; 5.5mL Tank Capacity<br>Các loại&nbsp; coil Voopoo TPP Coil Series<br>0.15ohm TPP DM1 Coils<br>0.2ohm TPP DM2 Coils<br>Kết&nbsp; nối&nbsp; từ&nbsp; tính&nbsp; Magnetic Connection To AFC<br>Điều chỉnh luồng gió Adjustable Dual Slotted Airflow Control Ring<br>Cổng&nbsp; kết nối Threaded 510 Connection<br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_bottom_tank_f5b3dbb9626b41298aaff691663e7716_grande.png"><img src="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_bottom_tank_f5b3dbb9626b41298aaff691663e7716_grande.png" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-3"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_45_breakdown_f62a40581e25489f9a1ad40e088da0e9_grande.png"><img src="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_45_breakdown_f62a40581e25489f9a1ad40e088da0e9_grande.png" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-4"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 Thân&nbsp; máy&nbsp; DRAG X PLUS Device<br>1 Đầu&nbsp; chứa dầu TPP Pod Tank<br>1 Coil&nbsp; 0.15ohm TPP-DM1 Coil<br>1 Coil&nbsp; 0.2ohm TPP-DM2 Coil<br>1 Dây&nbsp; sạc&nbsp; Type-C Cable<br>1 Hướng&nbsp; dẫn sử dụng&nbsp;User Manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_packaging_a888afb6862340d7a00f61f702db7283_grande.png"><img src="https://file.hstatic.net/1000250387/file/voopoo_drag_x_plus_packaging_a888afb6862340d7a00f61f702db7283_grande.png" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-5"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/drag_x_plus_3_9b1887f89aae41cca53d933746868958_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/drag_x_plus_3_9b1887f89aae41cca53d933746868958_grande.jpg" alt="bo-pod-system-drag-x-plus-100w-pod-mod-kit-by-voopoo-6"></a></figure>', 1, 20, CAST(N'2022-03-03T15:03:05.777' AS DateTime), CAST(N'2022-03-03T15:03:05.777' AS DateTime), 5, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (26, N'BỘ POD SYSTEM DRAG X 80W POD MOD KIT BY VOOPOO', N'VOOPOO', 0.0000, 10, N'BỘ POD SYSTEM DRAG X 80W POD MOD KIT BY VOOPOO
VOOPOO Drag X Pod Mod sử dụng 1 pin 18650, tương thích với các loại coil PnP và RBA, sở hữu Chipset GENE.TT thông minh. VOOPOO Drag X có công suất từ 5-80W, bình chứa dầu 4,5mL và đảm bảo kết nối an toàn, chắc chắn với khung máy thông qua kết nối từ tính. Thân máy được làm từ chất liệu hợp kim kẽm kết hợp với da là một nỗ lực táo bạo của Drag X. Chất liệu da không chỉ mềm mại và thoải mái mà còn có những ưu điểm tự nhiên là chống trầy xước, chống mồ hôi và chống vân tay. Cảm giác tuyệt vời, thanh lịch, và vẻ ngoài tinh tế.
Combo máy + tinh dầu Saltnic 30ml: 950k
Combo máy + tinh dầu Freebase: 1.000k
vị tinh dầu tùy chọn combo chưa bao gồm pin
Liên hệ mua hàng và tư vấn sản phẩm', N'<h1>BỘ POD SYSTEM DRAG X 80W POD MOD KIT BY VOOPOO</h1><p>&nbsp;</p>', 1, 0, CAST(N'2022-03-03T15:05:52.557' AS DateTime), CAST(N'2022-03-03T15:05:52.557' AS DateTime), 5, 2)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (27, N'BỘ POD SYSTEM SCAR-P5 80W POD MOD KIT BY SMOK', N'SMOK', 599000.0000, 345, N'BỘ POD SYSTEM SCAR-P5 80W POD MOD KIT BY SMOK
 Bộ pod system SMOK SCAR-P5 80W, có công suất 5-80W, sử dụng pin rời 18650 (không kèm theo máy) và sử dụng OCC SMOK RPM nổi tiếng. Được chế tạo từ hợp kim kẽm, SMOK SCAR-P5 có chống nước và chống shock nhẹ.
Combo Máy + dầu saltnic 30ml: 850k
Combo Máy + dầu Freebase: 900k', N'<h1>BỘ POD SYSTEM SCAR-P5 80W POD MOD KIT BY SMOK</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_scar_p5_2222_3037b29e07b341ca8a00435eb93fd370_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_scar_p5_2222_3037b29e07b341ca8a00435eb93fd370_grande.jpg" alt="bo-pod-system-scar-p5-80w-pod-mod-kit-by-smok-0"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_scar_p5_1221_ed22cf5b6b4f46a0b9310477ddeb4e1e_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_scar_p5_1221_ed22cf5b6b4f46a0b9310477ddeb4e1e_grande.jpg" alt="bo-pod-system-scar-p5-80w-pod-mod-kit-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK SCAR-P5 80W Pod Mod Kit Features:</strong><br>Chip IQ-80 Chipset<br>Kích thước Dimensions - 117.6mm by 35.8mm by 28mm<br>Pin 18650 (không kèm theo máy)Single High-Amp 18650 Battery - Not Included<br>Công suất Wattage Output Range: 5-80W<br>Trở kháng Resistance Range: 0.15-2.5ohm<br>Tốc độ đốt Firing Speed - 0.0015s<br>Chất liệu Zinc-Alloy Chassis Construction<br>Màn hình 0.96" TFT Color Screen<br>Dung tích 5mL Refillable Pod Capacity<br>Side Fill System - Silicone Stoppered<br>Coil SMOK RPM Coil Series<br>0.4ohm RPM Mesh Coil<br>0.16ohm RPM 2 Mesh Coil<br>Press Fit Coil Installation<br>Dual Airflow System - MTL &amp; DTL Vaping<br>Magnetic Pod Connection<br>Intelligent Atomizer Recognition<br>Low Voltage Protection<br>Short-Circuit Protection<br>Timeout Protection<br>High-Temperature Protection<br>MicroUSB Port</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_scar_p5_1221_ed22cf5b6b4f46a0b9310477ddeb4e1e_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_scar_p5_1221_ed22cf5b6b4f46a0b9310477ddeb4e1e_grande.jpg" alt="bo-pod-system-scar-p5-80w-pod-mod-kit-by-smok-2"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_scar_p5_222_7383891a83eb4b2498ecb8dd364a183a_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_scar_p5_222_7383891a83eb4b2498ecb8dd364a183a_grande.jpg" alt="bo-pod-system-scar-p5-80w-pod-mod-kit-by-smok-3"></a></figure><p style="margin-left:0px;">&nbsp;</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 SCAR-P5 Pod Mod<br>1 0.4ohm RPM Mesh Coil<br>1 0.16ohm RPM 2 Coil<br>1 SCAR P-5 RPM Pod<br>1 SCAR P-5 RPM 2 Pod<br>1 MicroUSB Cable<br>1 User Manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_scar_p5_2_976a88a75b334cbfab97ddc20958ce28_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_scar_p5_2_976a88a75b334cbfab97ddc20958ce28_grande.jpg" alt="bo-pod-system-scar-p5-80w-pod-mod-kit-by-smok-4"></a></figure>', 1, 10, CAST(N'2022-03-03T15:20:26.247' AS DateTime), CAST(N'2022-03-03T15:20:26.247' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (28, N'BỘ POD SYSTEM VINCI 15W 800mAh POD MOD KIT BY VOOPOO', N'VOOPOO', 499000.0000, 345, N'BỘ POD SYSTEM VINCI 15W 800mAh POD MOD KIT BY VOOPOO
VOOPOO Vinci pod kit tích hợp pin liền máy 800mAh có thể sạc qua Cổng Type-C, sở hữu Chipset GENE mới nhất . Vinci pod kit có công suất tối đa 15W, bình chứa dầu 2mL và đảm bảo kết nối an toàn, chắc chắn với khung máy thông qua kết nối từ tính. 
Combo máy + tinh dầu Saltnic 30ml:  750k', N'<h1>BỘ POD SYSTEM VINCI 15W 800mAh POD MOD KIT BY VOOPOO</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/banner1234111_7b02d15e4b0040b580aa713b7af0f5b6_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/banner1234111_7b02d15e4b0040b580aa713b7af0f5b6_grande.jpeg" alt="bo-pod-system-vinci-15w-800mah-pod-mod-kit-by-voopoo-0"></a></figure><p style="margin-left:0px;">VINCI POD KIT đã trở lại với một diện mạo hoàn toàn mới, nhỏ gọn hơn, đường viền được làm sắc nét, đẹp mắt sang trọng. Sử dụng pin tích hợp 800mAh được trang bị Chipset GENE AI tiên tiến hiện đại nhất có nhiều tính năng thông minh như bảo vệ cuộn dây đốt, ngăn chặn sự khô bông gòn đáp ứng nhu cầu sử dụng cả ngày ,vape được trang bị đầy đủ các thông số kỹ thuật được hiển thị trên Màn hình màu 0.96 ” TFT. Công nghệ Mesh Coil cuộn dây lưới đốt 0,8ohm, cho hương vị đậm đà thơm ngon nhất. Vừa vặn kiểu dáng thân máy là một đầu pod có thể chứa đến 2mL, chứa một lượng lớn tinh dầu thơm ngon yêu thích của bạn. Kích hoạt trên cơ thông minh cảm biến hơi tự động hút, tiện lợi cho người sử dụng.</p><p style="margin-left:0px;"><strong>Thông số kỹ thuật VOOPOO VINCI POD KIT&nbsp;15W Features:</strong></p><ul><li>Zinc Alloy Body</li><li>800mah Internal Battery</li><li>Power Output 15w</li><li>Resistance Range 0.6ohm-3.0ohm</li><li>Charging Voltage 5v/1a</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/specificationsvinci73737_2c47e3c0fd9746e097344fd3ad4ed146_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/specificationsvinci73737_2c47e3c0fd9746e097344fd3ad4ed146_grande.jpeg" alt="bo-pod-system-vinci-15w-800mah-pod-mod-kit-by-voopoo-1"></a></figure><p style="margin-left:0px;text-align:center;">&nbsp;</p><p style="margin-left:0px;"><br><strong>Bộ sản phẩm bao gồm Includes:</strong></p><ul><li>1 x Voopoo Vinci&nbsp;Pod Kit</li><li>1 x Voopoo&nbsp;PO56 0.8ohm Pod (2ml)</li><li>1 x USB-C Charging Cable</li><li>1 x User Manual</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/boxcontentsvinci73737_7ba681cc9e7d485194dd7ede68edcc57_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/boxcontentsvinci73737_7ba681cc9e7d485194dd7ede68edcc57_grande.jpeg" alt="bo-pod-system-vinci-15w-800mah-pod-mod-kit-by-voopoo-2"></a></figure>', 1, 10, CAST(N'2022-03-03T15:26:06.977' AS DateTime), CAST(N'2022-03-03T15:26:06.977' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (29, N'BỘ POD SYSTEM CHOPIN BY VLADDIN', N'VLADDIN', 349000.0000, 345, N'BỘ POD SYSTEM CHOPIN BY VLADDIN

Bộ Pod system chopin Vladdin, có thiết kế thân máy cực kỳ mỏng được làm từ chất liệu hợp kim kẽm bền bỉ, Vladdin Chopin được chế tạo chắc chắn với sự gia công tỉ mỉ bên ngoài để tạo sự thoải mái cho đôi tay của bạn và dễ dàng cất giấu trong túi. Được tích hợp pin 500mAh kết hợp với cổng USB-C để tận dụng tối đa sức mạnh và mang lại thời lượng vaping lâu dài. Ngoài ra bình chứa dầu có dung tích 1,5ml và cuộn dây Kanthal 1.0ohm cho hương vị và lượng khói tốt.', N'<h1>BỘ POD SYSTEM CHOPIN BY VLADDIN</h1><h2 style="margin-left:0px;"><strong>Thông số kỹ thuật Vladdin Chopin Vape Pod System Kit Features:</strong></h2><p style="margin-left:0px;">Có thiết kế nhỏ gọn Extremely Slim Body Ratio&nbsp;21.5 * 14.5 * 91.7mm<br>Dung lượng pin 500mAh Interior Rechargeable Battery<br>Cổng sạc USB-C Charging Port<br>Dung tích buồng chứa dầu 1.5ml Refillable Pod Cartridge<br>Trở kháng Knathal 1.0ohm OCC Coil<br>Chất liệu hợp kim kẽm Durable Zinc Alloy Construction<br>Đèn Led báo dung lượng pin Trio LED Indicator Configuration</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/2020-09-08__7__0ee31d526cf847ce97e90aa2507622ed_grande.png"><img src="https://file.hstatic.net/1000250387/file/2020-09-08__7__0ee31d526cf847ce97e90aa2507622ed_grande.png" alt="bo-pod-system-chopin-by-vladdin-1"></a></figure><h2 style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Packaging Includes:</strong></h2><p style="margin-left:0px;">1 x VLADDIN CHOPIN Device<br>2 x VLADDIN CHOPIN Pod<br>1 x Type-C charging cable<br>1 x User manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/2020-09-08__5__858d4f97d37949a8bdaa4a668d5deb08_grande.png"><img src="https://file.hstatic.net/1000250387/file/2020-09-08__5__858d4f97d37949a8bdaa4a668d5deb08_grande.png" alt="bo-pod-system-chopin-by-vladdin-2"></a></figure>', 1, 12, CAST(N'2022-03-03T15:28:58.163' AS DateTime), CAST(N'2022-03-03T15:28:58.163' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (30, N'BỘ POD SYSTEM SCAR-P3 80W 2000mAh POD MOD KIT BY SMOK', N'SMOK', 500000.0000, 345, N'MÃ SẢN PHẨM

TINH TRẠNG Cháy hàng

LOẠI SẢN PHẨMPod Mod

THƯƠNG HIỆUSMOK

BỘ POD SYSTEM SCAR-P3 80W 2000mAh POD MOD KIT BY SMOK

 Bộ pod system SMOK SCAR-P3 80W, có công suất 5-80W, pin dung lượng 2000mAh tích hợp và sử dụng OCC SMOK RPM nổi tiếng. Được chế tạo từ hợp kim kẽm, SMOK SCAR-P3 có chống nước và chống shock nhẹ.

Combo Máy + dầu saltnic 30ml: 1.100k

Combo Máy + dầu Freebase: 1.150k', N'<h1>BỘ POD SYSTEM SCAR-P3 80W 2000mAh POD MOD KIT BY SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK SCAR-P3 80W Pod Mod Kit Features:</strong><br>Chip IQ-80 Chipset<br>Kích thước - 110mm by 32.3mm by 27mm<br>Pin liền tích hợp Integrated 2000mAh Rechargeable Battery<br>Công suất Wattage Output Range: 5-80W<br>Trở kháng Resistance Range: 0.2-2.5ohm<br>Chất liệu Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Màn hình 0.96" TFT Color Screen<br>Dung tích đầu pod 5.5mL Refillable Pod Capacity<br>Coil sử dụng SMOK RPM Coil Series<br>0.4ohm RPM Mesh Coils - rated for 25W<br>0.16ohm RPM 2 Mesh Coils - rated for 25-50W<br>Lỗ gió Dual Airflow System - MTL &amp; DTL Vaping<br>Kết nối nam châm Magnetic Pod Connection<br>Cổng sạc MicroUSB Type-C Port</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_8_104c29de77404378b8c16b4234a39d04_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_8_104c29de77404378b8c16b4234a39d04_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 SCAR-P3 Pod Mod<br>1 0.4ohm RPM Mesh Coil<br>1 0.16ohm RPM 2 Coil<br>1 SCAR P-3 RPM Pod<br>1 SCAR P-3 RPM 2 Pod<br>1 USB. Type-C Cable<br>1 User Manua</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_-_package_contents_43ae7785d70141a7ab352fa76d1c8a61_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_-_package_contents_43ae7785d70141a7ab352fa76d1c8a61_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-2"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_6_8ee9755398b44a70881e4370968357c4_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_6_8ee9755398b44a70881e4370968357c4_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-3"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_5_2579362f921c4700bd329d28318bc8a5_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_5_2579362f921c4700bd329d28318bc8a5_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-4"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_4_1b074862880d426ab494bb290552878b_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_4_1b074862880d426ab494bb290552878b_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-5"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_2_bd2cdfafd1ff4db3b62fcb8cfbbc53ed_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_scar-p3_80w_pod_mod_kit_2_bd2cdfafd1ff4db3b62fcb8cfbbc53ed_grande.jpg" alt="bo-pod-system-scar-p3-80w-2000mah-pod-mod-kit-by-smok-6"></a></figure>', 1, 9, CAST(N'2022-03-03T15:31:57.317' AS DateTime), CAST(N'2022-03-03T15:31:57.317' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (31, N'BỘ POD SYSTEM NORD X 60W BY SMOK', N'SMOK', 199000.0000, 345, N'BỘ POD SYSTEM NORD X 60W BY SMOK

Bộ Pod system SMOK NORD X với công suất tối đa 60W và sử dụng các loại coil RPM & RPM 2. Pin tích hợp theo máy có dung lượng 1500mAh đầu pod với dung tích lên đến 6ml. Được chế tạo từ hợp kim kẽm bền bỉ, NORD X có khả năng chống nước IP67, ngăn chặn sự xâm nhập của bụi hoặc nước và chống va đập, giúp bảo vệ chống rơi và rớt nhẹ. Màn hình hiển thị OLED ở cạnh bên của máy', N'<h1>BỘ POD SYSTEM NORD X 60W BY SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK NORD X 60W Pod System Features:</strong><br>Kích thước Dimensions - 100mm by 31mm by 23mm<br>Pin tích hợp Integrated 1500mAh Rechargeable Battery<br>Công suất Wattage Output Range: 5-60W<br>Trở kháng Resistance Range: 0.2-3.0ohm<br>Chất liệu Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Chống nước Chống Shock IP67 Rating - Water/Dust/Shock Proofing<br>Màn hình LED Indicator Light<br>Kết nối nam châm Magnetic Pod Connection<br>Dung tích bình chứa dầu 6mL Nord X RPM &amp; RPM 2 Pod Capacity<br>Các loại coil sử dụng SMOK RPM &amp; RPM 2 Coil Series<br>0.16ohm RPM 2 Mesh Coil - rated for 25-50W<br>0.4ohm RPM Mesh Coil - rated for 25W<br>Bảo vệ quá nhiệt Overheating Protection<br>Bảo vệ hút quá 8S Cut-Off Protection<br>Bảo vệ đoản mạch Short-Circuit Protection<br>Cảnh báo pin yếuLow Battery Warning<br>MicroUSB Port Type C</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1597220881961_e4eea60871b94a07a20057d03fc2bdfa_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1597220881961_e4eea60871b94a07a20057d03fc2bdfa_grande.jpg" alt="bo-pod-system-nord-x-60w-by-smok-1"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1597220951244_af56f0986a564662abed1401a65b8cc1_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1597220951244_af56f0986a564662abed1401a65b8cc1_grande.jpg" alt="bo-pod-system-nord-x-60w-by-smok-2"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 NORD X Device<br>1 NORD X RPM 2 Pod<br>1 NORD X RPM Pod<br>1 0.16ohm RPM 2 Mesh Coil<br>1 0.4ohm RPM Mesh Coil<br>1 USB Cable<br>1 User Manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_nord_x_60w_pod_system_-_package_contents_a5833aec324a47b0bd91e42401de7a18_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_nord_x_60w_pod_system_-_package_contents_a5833aec324a47b0bd91e42401de7a18_grande.jpg" alt="bo-pod-system-nord-x-60w-by-smok-3"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1597220896730_556f5fdef10a4833b0caaee80b72c74b_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1597220896730_556f5fdef10a4833b0caaee80b72c74b_grande.jpg" alt="bo-pod-system-nord-x-60w-by-smok-4"></a></figure>', 1, 5, CAST(N'2022-03-03T15:35:03.360' AS DateTime), CAST(N'2022-03-03T15:35:03.360' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (32, N'BỘ POD SYSTEM NORD 2 40W POD SYSTEM BY SMOK', N'SMOK', 650000.0000, 345, N'BỘ POD SYSTEM NORD 2 40W POD SYSTEM BY SMOK

Bộ Pod system SMOK NORD 2 Pod, tích hợp màn hình OLED 0,69 "với pin liền dung lượng 1500mAh và công suất tối đa 40W  sử dụng được 2 loại OCC RPM và Nord.', N'<h1>BỘ POD SYSTEM NORD 2 40W POD SYSTEM BY SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK NORD 2 40W Pod System Features:</strong><br>Proprietary Intelligent Chipset<br>Kích thước:95mm * 30.5mm * 20mm<br>Pin liền: 1500mAh Rechargeable Battery<br>Công suất: 1-40W<br>Trở kháng: 0.3-3.0ohm<br>Chất liệu: Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Màn hình: 0.69"" OLED Display Screen<br>4.5mL NORD Pod - Supports NORD Coils<br>4.5mL RPM Pod - Supports RPM Coils<br>Ergonomic Mouthpiece<br>Side Fill System - Silicone Stoppered<br>SMOK Nord &amp; RPM Coil Series<br>0.4ohm RPM Mesh Coil<br>0.8ohm Nord DC MTL Coil<br>Plug ''n'' Play Coil Installation<br>Magnetic Pod Connection<br>Pod Detection<br>Short-Circuit Protection<br>8 Seconds Cut-Off<br>Low Voltage Protection<br>MicroUSB Port<br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_nord_2_40w_pod_system_-_pod_connection_and_pod_removed_9c1b680d3702491389c749cffa329df2_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_nord_2_40w_pod_system_-_pod_connection_and_pod_removed_9c1b680d3702491389c749cffa329df2_grande.jpg" alt="bo-pod-system-nord-2-40w-pod-system-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>&nbsp;Bộ sản phẩm bao gồm:</strong><br>1 Nord 2 Device<br>1 Nord 2 RPM Pod<br>1 Nord 2 Nord Pod<br>1 0.4ohm RPM Mesh Coil<br>1 0.8ohm Nord DC MTL Coil<br>1 MicroUSB Cable<br>1 User Manual</p><p style="margin-left:0px;"><br>&nbsp;</p>', 1, 5, CAST(N'2022-03-03T15:37:47.977' AS DateTime), CAST(N'2022-03-03T15:37:47.977' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (33, N'BỘ POD SYSTEM ARGUS AIR 25W POD MOD KIT BY VOOPOO', N'VOOPOO', 299000.0000, 345, N'BỘ POD SYSTEM ARGUS AIR 25W POD MOD KIT BY VOOPOO

Bộ Pod ARGUS AIR 25W, có pin liền 900mAh. ARGUS AIR sử dụng Chipset GENE.AI. Có 2 cơ chế hút, bằng nút bấm hoặc tự động.', N'<h1>BỘ POD SYSTEM ARGUS AIR 25W POD MOD KIT BY VOOPOO</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật Voopoo ARGUS AIR 25W Pod System Features:</strong><br>Kích thước Dimensions - 95.3mm by 31.4mm by 19.3mm<br>Dung lượng pin liền Integrated 900mAh Rechargeable Batteries<br>Công suất Wattage Output Range: 5-25W<br>Trở kháng Resistance Range: 0.6-3.0ohm<br>Chất liệu Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Chế độ hút: Tự động và nút bấm Dual Firing Modes - Button and Breath Activated<br>Màn hình hiển thị 0.54" OLED Display Screen<br>Kết nối Magnetic Pod Connection<br>Dung tích buồng chứa dầu 3.8mL Standard Pod<br>Coil sử dụng VOOPOO PnP Coil Series<br>0.6ohm PnP-TM1 Coil<br>Press Fit Coil Connection<br>3.8mL Pod Cartridge<br>Side Fill System<br>1.2ohm Integrated Coil<br>Magnetic Pod Connection<br>Overtime Protection<br>Short-Circuit Protection<br>Overcharge Protection<br>Max Power Protection<br>Over Current Output Protection<br>Over Discharge Protection<br>Over Temperature Protection<br>Type-C USB Port<br>&nbsp;</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 ARGUS Air Device<br>1 3.8mL Pod Cartridge (coil liền cartridge không thay được coil)<br>1 3.8mL Standard Cartridge(Có thể thay được coil)<br>1 Type-C Cable<br>1 0.6ohm PnP-TM1 Coil<br>1 User Manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo_argus_air_25w_pod_system_-_package_contents_e21b1f29784146fe8e357e6f1a5f1bbd_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/voopoo_argus_air_25w_pod_system_-_package_contents_e21b1f29784146fe8e357e6f1a5f1bbd_grande.jpg" alt="bo-pod-system-argus-air-25w-pod-mod-kit-by-voopoo-1"></a></figure>', 1, 5, CAST(N'2022-03-03T15:40:50.403' AS DateTime), CAST(N'2022-03-03T15:40:50.403' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (34, N'Bộ Pod System Pozz X 40W Kit 1400mAh by SMOK', N'SMOK', 350000.0000, 345, N'Bộ Pod System Pozz X 40W Kit 1400mAh by SMOK

SMOK Pozz X 40W Pod System Kit có  dung lượng pin lên tới 1400mAh đầu pod 4.5ml và màn hình hiển thị 0,96 ", công suất đầu ra tối đa 40W và có thể điều chỉnh, điều chỉnh lỗ gió, sử dụng được tất cả các  loại coil của RPM40 và RBA', N'<h1>Bộ Pod System Pozz X 40W Kit 1400mAh by SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật:</strong><br>&nbsp;Kích thước: 97.3x 33.6x 22mm<br>&nbsp;Dung tích: 4.5ml<br>&nbsp;Công suất: 5W-40W<br>&nbsp;Màn hình: 0.96" TFT Display Screen<br>&nbsp;Trở kháng: 0.3ohm-2.5ohm<br>&nbsp;Dung lượng pin: Built-in 1400mAh<br>&nbsp;Các chế độ an toàn: Atomizer recognition, puff monitor, 8s cut-off,<br>Short circuit/ over-heat/ low-battery protection</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1579252368239_83f73bf8dfb64cb39234d154ba35dc5c_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1579252368239_83f73bf8dfb64cb39234d154ba35dc5c_grande.jpg" alt="bo-pod-system-pozz-x-40w-kit-1400mah-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong><br>1 x POZZ X Device<br>1 x POZZ X RPM Pod<br>(RPM Mesh 0.4ohm Coil Preinstalled)<br>1 x RPM Triple Coil 0.6ohm<br>1 x User Manual<br>1 x USB Cable</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok-pozz-x-3_464f4c63544b4fad8a79bfbab1cd37ef_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/smok-pozz-x-3_464f4c63544b4fad8a79bfbab1cd37ef_grande.jpeg" alt="bo-pod-system-pozz-x-40w-kit-1400mah-by-smok-2"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1579244402849_7b83c01725114ea6a8e41de50141005e_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1579244402849_7b83c01725114ea6a8e41de50141005e_grande.jpg" alt="bo-pod-system-pozz-x-40w-kit-1400mah-by-smok-3"></a></figure>', 1, 5, CAST(N'2022-03-03T15:46:33.730' AS DateTime), CAST(N'2022-03-03T15:46:33.730' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (35, N'BỘ POD SYSTEM RELX STARTER KIT (Kèm 1 đầu Pod)', N'RELX', 799000.0000, 345, N'BỘ POD SYSTEM RELX STARTER KIT (Kèm 1 đầu Pod)

Bộ sản phẩm bao gồm:

1 Thân máy RELX 350mAh
1 Cổng sạc USB
1 đầu Pod Mint
Hàm lượng nic: 5%
Dung tích: 2ml
* Đầu pod không châm được tinh dầu', N'<h1>BỘ POD SYSTEM RELX STARTER KIT (Kèm 1 đầu Pod)</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1_2050834088724f65b765b0298db796ac_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1_2050834088724f65b765b0298db796ac_grande.jpg" alt="bo-pod-system-relx-starter-kit-kem-1-dau-pod-0"></a></figure>', 1, 5, CAST(N'2022-03-03T15:49:48.813' AS DateTime), CAST(N'2022-03-03T15:49:48.813' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (36, N'BỘ POD SYSTEM XROS 16W BY VAPORESSO', N'Vaporesso', 359000.0000, 345, N'BỘ POD SYSTEM XROS 16W BY VAPORESSO

Bộ Pod Vaporesso XROS 16W, có pin tích hợp 800mAh, có thể điều chỉnh lỗ gió. Được chế tạo từ hợp kim kẽm, bộ Pod system XROS có bình chứa dầu dung tích 2mL. Sử dụng coil 0,8ohm hoặc 1,2ohm.', N'<h1>BỘ POD SYSTEM XROS 16W BY VAPORESSO</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật Vaporesso XROS 16W Pod System Features:</strong><br>Chip AXON Chipset<br>Kích thước Dimensions - 112mm by 23mm by 13mm<br>Dung lượng pin Integrated 800mAh Rechargeable Battery<br>Công suất Wattage Output Range: 11-16W<br>Chất liệu Hợp kim kẽm Zinc-Alloy Chassis Construction<br>Cơ chế hút: Tự động và nút bấm Auto-Draw or Button Firing Design<br>Đèn led báo mức pin 3 Color LED Battery Indicator<br>Adjustable Airflow Control Switch<br>Dung tích bình chứa dầu 2mL Pod Capacity<br>Top Fill System - Hidden By Mouthpiece<br>Transparent Juice Viewing Window<br>Loại coil sử dụng Vaporesso XROS Pod Series<br>0.8ohm XROS Mesh Pod<br>1.2ohm XROS Mesh Pod<br>Kết nối nam châm Magnetic Pod Connection<br>Overtime Protection<br>Overdischarge Protection<br>Short-Circuit Protection<br>Low Voltage Protection<br>No Load Protection<br>Overcharging Protection<br>Resistance Protection<br>Over Voltage Protection<br>Cổng sạc Type-C Port</p><p style="margin-left:0px;">&nbsp;</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 Vaporesso XROS Battery<br>1 0.8ohm XROS Pod<br>1 1.2ohm XROS Pod<br>1 Type-C USB Cable<br>1 User Manual<br>1 Warranty Card<br>1 Reminder Card</p>', 1, 3, CAST(N'2022-03-03T16:02:16.097' AS DateTime), CAST(N'2022-03-03T16:02:16.097' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (37, N'BỘ POD SYSTEM RPM 40W BY SMOK', N'SMOK', 450000.0000, 256, N'BỘ POD SYSTEM RPM 40W BY SMOK

SMOK RPM40 40W được tích hợp pin 1500mAh, Chipset IQ-R thông minh tiên tiến và Cartridge 4mL sử dụng OCC RPM & OCC NORD.', N'<h1>BỘ POD SYSTEM RPM 40W BY SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK RPM40 40W Pod Mod Kit:</strong></p><ul><li>Chipset: IQ-R Chipset</li><li>Kích thước: 99mm * 25mm * 25mm</li><li>Pin tích hợp: 1500mAh Rechargeable Battery</li><li>Công suất: 1-40W<br>&nbsp;</li><li>Trở kháng: 0.2-2.5ohm<br>&nbsp;</li><li>Chất liệu: Zinc-Alloy Chassis Construction<br>&nbsp;</li><li>Màn hình led: 0.96"" TFT Display Screen</li><li>4.3mL RPM Coil Pod Capacity<br>&nbsp;</li><li>4.5mL Nord Coil Pod Capacity<br>&nbsp;</li><li>Cổng sạc MicroUSB Port</li><li>Màu sắc: Bright Black, Prism Chrome, Purple Red, Prism Gold, Prism Rainbow, White, Orange, and Green</li></ul><figure class="image"><a href="https://file.hstatic.net/1000404295/file/front_rpm_40_pod_system_by_smok_01c0a69d6d134f6eb14e5bf462d8a126_grande.jpg"><img src="https://file.hstatic.net/1000404295/file/front_rpm_40_pod_system_by_smok_01c0a69d6d134f6eb14e5bf462d8a126_grande.jpg" alt="bo-pod-system-rpm-40w-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong><br>&nbsp;</p><ul><li>1 RPM40 Device</li><li>1 RPM Standard Pod</li><li>1 RPM Nord Pod</li><li>1 0.4ohm RPM Mesh Coil</li><li>1 0.6ohm Nord DC Coil</li><li>1&nbsp; dây sạc MicroUSB Charging Cable</li><li>1 Hướng dẫn sử dụng User Manual</li></ul><figure class="image"><a href="https://file.hstatic.net/1000404295/file/box_rpm_40_pod_system_by_smok_318a4fca171140fb898ee30fefe9a4b7_grande.jpg"><img src="https://file.hstatic.net/1000404295/file/box_rpm_40_pod_system_by_smok_318a4fca171140fb898ee30fefe9a4b7_grande.jpg" alt="bo-pod-system-rpm-40w-by-smok-2"></a></figure>', 1, 3, CAST(N'2022-03-03T16:06:35.740' AS DateTime), CAST(N'2022-03-03T16:06:35.740' AS DateTime), 16, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (38, N'BỘ POD SYSTEM VLADDIN JET KIT 40W 1500mAh', N'VLADDIN ', 456000.0000, 345, N'BỘ POD SYSTEM VLADDIN JET KIT 40W 1500mAh

JET KIT là bộ pod system đến từ hãng Vladdin với công suất tối đa 40W cùng dung lượng pin 1500mAh, sử dụng meshcoil cùng thiết kế nhỏ gọn hiện đại', N'<h1>BỘ POD SYSTEM VLADDIN JET KIT 40W 1500mAh</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.33.56_84db2c282ecc44d98f5db0cb5e37deee_grande.png"><img src="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.33.56_84db2c282ecc44d98f5db0cb5e37deee_grande.png" alt="bo-pod-system-vladdin-jet-kit-40w-1500mah-0"></a></figure><p style="margin-left:0px;">&nbsp;</p><p style="margin-left:0px;"><strong>Thông số kỹ thuật:</strong></p><p style="margin-left:0px;">&nbsp;Kích thước：100*28.5*28mm</p><p style="margin-left:0px;">&nbsp;Công suất:5-40W</p><p style="margin-left:0px;">&nbsp;Dung lượng pin:1500mAH</p><p style="margin-left:0px;">&nbsp;Dung tích đầu pod:4.5ML</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.32.12_68b557986fcc4a95851f5c794f93a91c_grande.png"><img src="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.32.12_68b557986fcc4a95851f5c794f93a91c_grande.png" alt="bo-pod-system-vladdin-jet-kit-40w-1500mah-1"></a></figure><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm</strong>.&nbsp;</p><ul><li>1*Vladdin Jet</li><li>1*Vladdin Jet Pod (4.5ml)</li><li>1*Vladdin Jet 0.6 ohm mesh coil &nbsp;(Pre-Installed)</li><li>1*Vladdin Jet 0.3ohm mesh coil</li><li>1*Vladdin Jet Type-C charging cable</li><li>1*User Manual</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.32.22_a48ebcd3c2634a51b1ac46f405fd82b3_grande.png"><img src="https://file.hstatic.net/1000250387/file/anh_chup_man_hinh_2020-05-23_luc_18.32.22_a48ebcd3c2634a51b1ac46f405fd82b3_grande.png" alt="bo-pod-system-vladdin-jet-kit-40w-1500mah-2"></a></figure><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;">&nbsp;</p>', 1, 3, CAST(N'2022-03-03T16:11:32.027' AS DateTime), CAST(N'2022-03-03T16:11:32.027' AS DateTime), 20, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (39, N'BỘ POD SYSTEM OFRF NEXMESH 30W 1200mAh by SMOK', N' SMOK', 500000.0000, 345, N'BỘ POD SYSTEM OFRF NEXMESH 30W 1200mAh by SMOK

NexMesh Pod Kit là bộ pod AIO siêu nhỏ gọn do Smok và OFRF hợp tác sản xuất. Thân máy bằng kim loại cùng pin trong dung lượng 1200mAh, nexMesh là lựa chọn lý tưởng nếu bạn đang cần một chiếc pod system nhỏ gọn có hương vị tốt.', N'<h1>BỘ POD SYSTEM OFRF NEXMESH 30W 1200mAh by SMOK</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK OFRF NexMesh Pod Kit Features:</strong><br>Hợp tác sản xuất Collaboration between SMOK &amp; OFRF<br>Kích thước Dimensions - 80.5mm * 45mm * 17.5mm<br>Dung lượng pin liền Integrated 1200mAh Rechargeable Battery<br>Công suất Wattage Output Range: 5-30W<br>Max Voltage Output: 4.2V<br>Trở kháng Resistance Range: 0.4ohm-3.0ohm<br>Chất liệu Hợp kim nhôm Aluminium Alloy Chassis Construction<br>Nút bấm hút Intuitive Firing Button<br>Hai nút điều chỉnhTwo Adjustment Buttons<br>Màn hình OLED 0.69" Display Screen<br>Đầu pod kết nối từ tính Magnetic Pod Connection<br>Dung tích đầu pod 2mL Refillable Pod Capacity<br>NexMesh Coil Series<br>0.4ohm SS316 Coil<br>0.4ohm Kanthal Coil<br>PressFit Coil Installation<br>Magnetic Pod Connection<br>Over Time Protection<br>Check Atomizer Protection<br>Low Resistance Protection<br>Low Battery Protection<br>Over Charge Protection<br>MicroUSB Port</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1583289384547_d984bde357e14cc98831f3783d3d5577_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1583289384547_d984bde357e14cc98831f3783d3d5577_grande.jpg" alt="bo-pod-system-ofrf-nexmesh-30w-1200mah-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 NexMesh Pod Device<br>1 NexMesh Pod Cartridge<br>1 0.4ohm SS316 NexMesh Coil<br>1 0.4ohm Kanthal A1 NexMesh Coil<br>1 User Manual<br>1 MicroUSB Cable</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_x_ofrf_nexmesh_30w_pod_kit_box_b6d020593f8a48e5b04bc801cde02035_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_x_ofrf_nexmesh_30w_pod_kit_box_b6d020593f8a48e5b04bc801cde02035_grande.jpg" alt="bo-pod-system-ofrf-nexmesh-30w-1200mah-by-smok-2"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/smok_nexmesh_pod_system_infographic_798b11649557488387784ac60d413e73_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/smok_nexmesh_pod_system_infographic_798b11649557488387784ac60d413e73_grande.jpg" alt="bo-pod-system-ofrf-nexmesh-30w-1200mah-by-smok-3"></a></figure>', 1, 3, CAST(N'2022-03-03T16:18:14.920' AS DateTime), CAST(N'2022-03-03T16:18:14.920' AS DateTime), 16, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (40, N'BỘ POD SYSTEM EXCEED GRIP PRO 40W 1000mAh BY JOYETECH', N'JOYETECH', 300000.0000, 345, N'BỘ POD SYSTEM EXCEED GRIP PRO 40W 1000mAh BY JOYETECH

Joyetech Exceed Grip Pro là bản nâng cấp của Exceed Grip. Exceed Grip Pro được thiết kế nhỏ gọn với kết cấu chắc chắn. Exceed Grip Pro có pin tích hợp 1000mAh với công suất tối đa 40W. Với dung lượng pin lên đến 1000mAh bạn có thể thoải mái sử dụng cả ngày. Máy được trang bị màn hình LED 0,69 inch. Đầu chứa dầu của Exceed Grip Pro có dung tích là 2,6ml đổ đầy một cách dễ dàng bằng cách mở nút silicone ở cạnh bên. Đầu pod của EZ đã áp dụng công nghệ bằng sáng chế mới nhất từ ​​Joyetech, giúp ngăn chặn rò rỉ bằng thiết kế luồng gió bên. Được hỗ trợ bởi các cuộn dây EZ hoàn toàn mới sẽ mang lại cho bạn trải nghiệm vaping hoàn toàn khác biệt.', N'<h1>BỘ POD SYSTEM EXCEED GRIP PRO 40W 1000mAh BY JOYETECH</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-mod-08_2edf879fdb27429f9c604d0a83f02d6e_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-mod-08_2edf879fdb27429f9c604d0a83f02d6e_grande.jpg" alt="bo-pod-system-joyetech-exceed-grip-pro-pod-system-kit-40wjoyetech-exceed-grip-pro-pod-system-kit-40w-gunmetaljoyetech-exceed-grip-pro-pod-system-kit-40w-brushed-silverjoyetech-exceed-grip-pro-pod-system-kit-40w-red-sta-0"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật EXCEED GRIP PRO 40W Pod System Features:</strong></p><p style="margin-left:0px;">Kích thước Size: 74mm(Height) x 40mm(Width) x 21mm(Depth)</p><p style="margin-left:0px;">Pin tích hợp Battery Capacity: Built-in 1000mAh Battery</p><p style="margin-left:0px;">Công suất Output Power: 1-40W</p><p style="margin-left:0px;">Dung tích buồng chứa E-liquid Capacity: 2.6ml<br>&nbsp;</p><p style="margin-left:0px;">Trở kháng Resistance: 0.15-3ohm</p><p style="margin-left:0px;">Màn hình Screen: 0.69" LED Screen</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-kit-1000mah_04_ca8663_333152ded87946f7b1b5e647f979018a_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-kit-1000mah_04_ca8663_333152ded87946f7b1b5e647f979018a_grande.jpg" alt="bo-pod-system-joyetech-exceed-grip-pro-pod-system-kit-40wjoyetech-exceed-grip-pro-pod-system-kit-40w-gunmetaljoyetech-exceed-grip-pro-pod-system-kit-40w-brushed-silverjoyetech-exceed-grip-pro-pod-system-kit-40w-red-sta-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm&nbsp;Includes:</strong><br>&nbsp;</p><p style="margin-left:0px;">1 x EXCEED Grip Pro Battery</p><p style="margin-left:0px;">1 x EZ Cartridge</p><p style="margin-left:0px;">1 x EZ 0.4ohm Coil</p><p style="margin-left:0px;">1 x EZ 1.2ohm Coil</p><p style="margin-left:0px;">1 x 510 Drip tip</p><p style="margin-left:0px;">1 x USB Cable</p><p style="margin-left:0px;">1 x Lanyard</p><p style="margin-left:0px;">1 x User manual</p><p style="margin-left:0px;">1 x Warranty Card</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-kit-1000mah_09_48ad57_c461206214c74100867088f499fbb53f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/joyetech-exceed-grip-pro-40w-pod-kit-1000mah_09_48ad57_c461206214c74100867088f499fbb53f_grande.jpg" alt="bo-pod-system-joyetech-exceed-grip-pro-pod-system-kit-40wjoyetech-exceed-grip-pro-pod-system-kit-40w-gunmetaljoyetech-exceed-grip-pro-pod-system-kit-40w-brushed-silverjoyetech-exceed-grip-pro-pod-system-kit-40w-red-sta-2"></a></figure>', 1, 4, CAST(N'2022-03-03T16:24:58.870' AS DateTime), CAST(N'2022-03-03T16:24:58.870' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (41, N'BỘ POD SYSTEM MARVEL 40W 1200mAh by HOTCIG', N'HOTCIG', 400000.0000, 345, N'BỘ POD SYSTEM MARVEL 40W 1200mAh by HOTCIG

Marvel 40W là thiết bị mới nhất của hãng Hotcig. Được trang bị pin liền 1200mAh, sử dụng chipset HM có công suất tối đa 40W và lỗ gió có thể điều chỉnh.', N'<h1>BỘ POD SYSTEM MARVEL 40W 1200mAh by HOTCIG</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/hotcig-marvel-pod-kit-40w-1200mah-auth-vaporshop-6583-jpeg_6fde2976a7214dd0883bdba775260205_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/hotcig-marvel-pod-kit-40w-1200mah-auth-vaporshop-6583-jpeg_6fde2976a7214dd0883bdba775260205_grande.jpg" alt="bo-pod-system-marvel-40w-1200mah-by-hotcig-0"></a></figure><h2 style="margin-left:0px;">Thông số kỹ thuật Hotcig Marvel 40W AIO Pod Kit</h2><ul><li>Kích thước: 91 x 40,2 x 20 mm</li><li>Công suất tối đa: 40W</li><li>Pin: Tích hợp 1200mAh</li><li>Màn hình OLED 0,91 inch</li><li>Dung tích Pod: 2ml</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/13459655-1_2fda643b48a646fca3a624e331d6dce4_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/13459655-1_2fda643b48a646fca3a624e331d6dce4_grande.jpg" alt="bo-pod-system-marvel-40w-1200mah-by-hotcig-1"></a></figure><h3 style="margin-left:0px;">Bộ sản phẩm bao gồm</h3><ul><li>1 x Hotcig Marvel Pod kit</li><li>1 x&nbsp; Occ lưới 0,4ohm</li><li>1 x Occ lưới 0,4ohm</li><li>1 x cáp USB</li><li>1 x Hướng dẫn sử dụng</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/13459655-2_d98ef4afc63f43d898c603b0e728cb37_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/13459655-2_d98ef4afc63f43d898c603b0e728cb37_grande.jpg" alt="bo-pod-system-marvel-40w-1200mah-by-hotcig-2"></a></figure>', 1, 3, CAST(N'2022-03-03T16:28:09.790' AS DateTime), CAST(N'2022-03-03T16:28:09.790' AS DateTime), 16, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (42, N'BỘ POD SYSTEM VINCI X 70W By VOOPOO', N'VOOPOO', 700000.0000, 345, N'BỘ POD SYSTEM VINCI X 70W By VOOPOO

VOOPOO VINCI X là một bộ Pod System có công suất tối đa 70W sử dụng 1 pin 18650 chipset Gene.', N'<h1>BỘ POD SYSTEM VINCI X 70W By VOOPOO</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/vinci_x_full_color_5617c680b1f64f59b7d129f3eeea5361_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/vinci_x_full_color_5617c680b1f64f59b7d129f3eeea5361_grande.jpeg" alt="bo-pod-system-vinci-x-70w-by-voopoo-0"></a></figure><p style="margin-left:0px;">VOOPOO VINCI X có công suất tối đa 70W với một pin 18650 bên ngoài. VINCI X sử dụng cartridge có dung tích 5,5ml và tính năng PUFF Curve có thể ghi lại dữ liệu vaping 14 ngày của bạn.&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo-vinci-x-70w-pod-kit_06_210057_abdb2cb657a8490ca5f435617f09166b_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/voopoo-vinci-x-70w-pod-kit_06_210057_abdb2cb657a8490ca5f435617f09166b_grande.jpg" alt="bo-pod-system-vinci-x-70w-by-voopoo-1"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật:</strong></p><p style="margin-left:0px;">Kích thước: 117 x 29.5 x 25.3mm<br>Công suất: 5 - 70W<br>Dung tích: 5.5ml<br>Trở kháng: 0.1 - 3.0Ω<br>Battery: Single 18650 (<strong>chưa bao gồm</strong>)<br>Chất liệu: Zinc Alloy + PCTG<br>Coils: OCC Suitable for PnP coils<br>&nbsp;</p><p style="margin-left:0px;">Màn hình:0.96-inch TFT color screen</p><p style="margin-left:0px;">&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo_vinci_x_70w_pod_kt_kit_92f89924c99d4c4da3ca3dbb8cceee9c_grande.jpeg"><img src="https://file.hstatic.net/1000250387/file/voopoo_vinci_x_70w_pod_kt_kit_92f89924c99d4c4da3ca3dbb8cceee9c_grande.jpeg" alt="bo-pod-system-vinci-x-70w-by-voopoo-2"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong></p><p style="margin-left:0px;">&nbsp;</p><ul><li>1 x VOOPOO VINCI X Device</li><li>1 x VINCI&nbsp;Pod(5.5ml)</li><li>1 x PnP 0.6ohm Coil</li><li>1 x PnP 0.3ohm Coil</li><li>1 x&nbsp;USB Cable</li><li>1 x Warranty Card</li><li>1 x User Manual</li><li>1 x GENE CHIP Card</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/voopoo-vinci-x-pod-mod-packaging_16de12f61f574604a86bae45e831f840_grande.png"><img src="https://file.hstatic.net/1000250387/file/voopoo-vinci-x-pod-mod-packaging_16de12f61f574604a86bae45e831f840_grande.png" alt="bo-pod-system-vinci-x-70w-by-voopoo-3"></a></figure>', 1, 3, CAST(N'2022-03-03T16:32:11.287' AS DateTime), CAST(N'2022-03-03T16:32:11.287' AS DateTime), 17, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (43, N'BỘ POD SYSTEM ALIKE 40W 1600mAh BY SMOK', N'SMOK', 460000.0000, 345, N'BỘ POD SYSTEM ALIKE 40W 1600mAh BY SMOK

SMOK ALIKE mới được chế tạo từ hợp kim kẽm và da bền, với dung lượng pin lên đến 1600mAh,  tương thích với các loại coil RPM, bình chứa tinh dầu 5,5ml.', N'<h1>BỘ POD SYSTEM ALIKE 40W 1600mAh BY SMOK</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_alike_40w_pod_mod_kit_-_all_colors_8d84eeb47b344ff693f4e9285b739986_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_alike_40w_pod_mod_kit_-_all_colors_8d84eeb47b344ff693f4e9285b739986_grande.jpg" alt="bo-pod-system-alike-40w-1600mah-by-smok-0"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật SMOK ALIKE Pod System Features:</strong><br>Kích thước: 77mm * 43mm * 23mm<br>Dung lượng pin: 1600mAh Rechargeable Battery<br>Công suất: 1-40W<br>Trở kháng: 0.2-2.5ohms<br>Chống nước: IPX7 Rated Protection<br>Chất liệu: Hợp kim kẽm và da Zinc-Alloy and Leather Construction<br>Màn hình: 0.96" OLED Color Screen<br>Dung tích bình chứa dầu: 5.5mL Refillable Pod Capacity<br>Coil tương thích: SMOK RPM Coil Series<br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/alike_infographic_2_7a8e0ff87b2741ceadbe75a8ed96f716_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/alike_infographic_2_7a8e0ff87b2741ceadbe75a8ed96f716_grande.jpg" alt="bo-pod-system-alike-40w-1600mah-by-smok-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong><br>1 ALIKE Device<br>1 ALIKE Empty Pod<br>1 0.4ohm RPM Mesh Coil<br>1 0.8ohm RPM DC MTL Coil<br>1 MicroUSB Cable<br>1 User Manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_alike_40w_pod_mod_kit_-_package_contents_8f01c3c74a6e489ba3abc3ad38881b1d_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_alike_40w_pod_mod_kit_-_package_contents_8f01c3c74a6e489ba3abc3ad38881b1d_grande.jpg" alt="bo-pod-system-alike-40w-1600mah-by-smok-2"></a></figure>', 1, 2, CAST(N'2022-03-03T16:40:08.717' AS DateTime), CAST(N'2022-03-03T16:40:08.717' AS DateTime), 16, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (44, N'BỘ POD SYSTEM KNIGHT 80 BY SMOANT', N'SMOANT', 450000.0000, 345, N'BỘ POD SYSTEM KNIGHT 80 BY SMOANT

Smoant Knight 80 Pod System là Pod Kit sử dụng được cả Saltnic và Freebase. Nó đi kèm với chip ANT thông minh tiên tiến và chip buck boost, màn hình 0,96 inch, với hệ thống kiểm soát luồng không khí, hệ thống khóa trẻ em và nhiều biện pháp bảo vệ. Dùng được coil RBA. Sử dụng 1 pin 18650(không kèm theo máy)', N'<h1>BỘ POD SYSTEM KNIGHT 80 BY SMOANT</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smoant_knight_80w_pod_mod_kit_-_front_tilted_firing_button_f70f6a945b734f76b49e1a7382db7367_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smoant_knight_80w_pod_mod_kit_-_front_tilted_firing_button_f70f6a945b734f76b49e1a7382db7367_grande.jpg" alt="bo-pod-system-knight-80-by-smoant-0"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/knight-80-02_a749ac7c9f36413b976c63576834a468_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/knight-80-02_a749ac7c9f36413b976c63576834a468_grande.jpg" alt="bo-pod-system-knight-80-by-smoant-1"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật:</strong><br>Kích thước：90x 45x 27mm<br>Công suất: 1-80W<br>Chất liệu: Hợp kim kẽm Zinc alloy<br>Màn hình: 0.96 OLED Screen<br>Chipset: AI smart ANT-chip<br>Pin rời: 1x 18650 (Không kèm theo máy)<br>Cổng sạc: Type-C port, 5V/1A<br>Các chế độ an toàn: Low voltage/ reverse/ over-heat/ short circuit/ 10s over-time<br><br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/knight-80-03_4fe93835409f4ab9888180eb5d5b8bba_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/knight-80-03_4fe93835409f4ab9888180eb5d5b8bba_grande.jpg" alt="bo-pod-system-knight-80-by-smoant-2"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Package includes:</strong><br>1x Thân máy Knight 80<br>1x Đầu chứa dầu Knight 80 cartridge<br>1x Dây sạc Type-C USB charge cable<br>1x Coil Knight 80 0.3ohm mesh coil (Preinstall)<br>1x Coil Knight 80 0.4ohm dual mesh coil<br>1x Hướng dẫn sử dụng User manual</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/knight-80-13_399346513c4b41c5b82b81b523779fe4_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/knight-80-13_399346513c4b41c5b82b81b523779fe4_grande.jpg" alt="bo-pod-system-knight-80-by-smoant-3"></a></figure><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;">&nbsp;</p>', 1, 3, CAST(N'2022-03-03T16:52:50.500' AS DateTime), CAST(N'2022-03-03T16:52:50.500' AS DateTime), 19, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (45, N'BỘ POD SYSTEM SENSE HERAKLES 40W POD MOD KIT', N'SENSE', 600000.0000, 345, N'BỘ POD SYSTEM SENSE HERAKLES 40W POD MOD KIT

Bộ Pod Mod Sense Herakles 40W mới với dung lượng pin lên đến 1.500mAh, đầu pod có dung tích 6mL  sử dụng occ 0.4 ohm cho hương vị ngon và nhiều khói.', N'<h1>BỘ POD SYSTEM SENSE HERAKLES 40W POD MOD KIT</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/herakles-pod-mod_hand_cc7b9fd9be944649a166db7e7484bb3f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/herakles-pod-mod_hand_cc7b9fd9be944649a166db7e7484bb3f_grande.jpg" alt="bo-pod-system-sense-herakles-40w-pod-mod-kit-0"></a></figure><p style="margin-left:0px;">HERAKLES Pod Mod được thiết kế chế tạo từ vật liệu hợp kim kẽm và PC nhẹ cho cảm giác thoải mái khi cầm. Công suất lên tới 40W và sử dụng OCC Mesh coil 0,4ohm đi kèm và có thể dùng chung OCC với máy Pod SMOK RPM, và cung cấp nhiệt nhanh chóng. Màn hình hiển thị LCD 0,96 ".</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/sense_herakles_40w_pod_mod_kit_full_color_42c0eca6db7f45129576b3608bc4cd4f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/sense_herakles_40w_pod_mod_kit_full_color_42c0eca6db7f45129576b3608bc4cd4f_grande.jpg" alt="bo-pod-system-sense-herakles-40w-pod-mod-kit-1"></a></figure><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;"><strong>Thông số kỹ thuật Sense Herakles 40W Pod Mod Kit:</strong><br>&nbsp;Kích thước:104.5mm * 27mm * 25.2mm<br>&nbsp;Dung lượng pin: 1500mAh Rechargeable Battery<br>&nbsp;Công suất: 5-40W<br>&nbsp;Chất liệu: Hợp kim kẽm Zinc-Alloy Chassis Construction<br>&nbsp;Đèn led: 4 chế độ LED Battery Life Indicator Light - 4 Modes<br>Regular, Flash, Display, OFF Lighting Modes<br>Kích thước màn hình: 0.96" TFT Display<br>Dung tích Cartridge: 6mL Refillable Pod<br>Chế độ an toàn: chống đoản mạch, điện áp thấp, quá tải..<br><br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.sense_herakles_pod_mod_kit_1500mah_11__9092d1a2f1014335a9e5d9e45928948a_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.sense_herakles_pod_mod_kit_1500mah_11__9092d1a2f1014335a9e5d9e45928948a_grande.jpg" alt="bo-pod-system-sense-herakles-40w-pod-mod-kit-2"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong><br>1 Sense HERAKLES Pod Mod<br>1 Sense HERAKLES Replacement Pod<br>2 0.4ohm Mesh Coils<br>1 MicroUSB Cable<br>1 User Manual<br>1 Warranty Card</p>', 1, 3, CAST(N'2022-03-03T16:55:15.653' AS DateTime), CAST(N'2022-03-03T16:55:15.653' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (46, N'Bộ Pod Orion Q 17W Pod System', N'Orion', 850000.0000, 345, N'Bộ Pod Orion Q 17W Pod System', N'<h1>Bộ Pod Orion Q 17W Pod System</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật&nbsp; Orion Quest 17W Pod System:</strong></p><p style="margin-left:0px;">Kích thước: 93mm x 37mm x 13.5mm</p><p style="margin-left:0px;">Pin tích hợp 950mAh</p><p style="margin-left:0px;">Proprietary Onboard Chipset</p><p style="margin-left:0px;">Công suất tối đa: 17W</p><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;">Đầu Pod Refill dung tích 2mL</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong><br>&nbsp;</p><p style="margin-left:0px;">1 x Thân máy Orion Q Edition Mod</p><p style="margin-left:0px;">1 x Đầu Pod Orion Q 1.0ohm</p><p style="margin-left:0px;">1 x Dây sạc MicroUSB</p><p style="margin-left:0px;">1 x Hướng dẫn sử dụng<br>&nbsp;</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.orion_q_abalone_collection_copy_5814a87ff5304d6b82b51667863cf8b1_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.orion_q_abalone_collection_copy_5814a87ff5304d6b82b51667863cf8b1_grande.jpg" alt="orion-q-17w-pod-system-abalone-collection-limited-edition-series-0"></a></figure>', 1, 3, CAST(N'2022-03-03T16:57:54.563' AS DateTime), CAST(N'2022-03-03T16:57:54.563' AS DateTime), 19, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (47, N'BỘ POD SYSTEM FRENZY BY GEEK VAPE 950mAh', N'GEEKVAPE', 580000.0000, 236, N'BỘ POD SYSTEM FRENZY BY GEEK VAPE 950mAh

Bộ Pod Geek Vape FRENZY được chế tạo tinh xảo với khung hợp kim kẽm với các tấm nhựa, sử dụng chipset AS tiên tiến cùng với khả năng xử lý tiện lợi hàng đầu với Chế độ kiểm soát nhiệt độ / đầu ra năng lượng, pin bên trong có dung lượng 950mAh và sử dụng Công nghệ cuộn dây NS. Chipset có thể cung cấp thời gian phản ứng cực nhanh, bên cạnh Chế độ đầu ra thông minh với tính năng phát hiện tự động cho Chế độ điều khiển nhiệt độ và Chế độ đầu ra điện áp có thể điều chỉnh. Đầu Pod FRENZY có dung tích 2mL .', N'<h1>BỘ POD SYSTEM FRENZY BY GEEK VAPE 950mAh</h1><p style="margin-left:0px;"><strong>Thông số kỹ thuật Geek Vape FRENZY Pod System Features:</strong></p><ul><li>Chip AS Chipset</li><li>&nbsp;Kích thước - 86.1mm * 37mm * 15.7mm</li><li>Pin dung lượng 950mAh Rechargeable Battery</li><li>Voltage Output Mode: 2.5V / 2.7V / 2.9V</li><li>Temperature Control Mode: 420°F / 440°F / 460°F</li><li>Resistance Range: 0.7-3.0ohm</li><li>Automatic Output Matching Function</li><li>POWER Mode</li><li>BOOST Mode - Temperature Control Only</li><li>Temperature Control Mode</li><li>Coil Dependent Firing Modes</li><li>LED Battery Life Indicator Light</li><li>LED Battery Charging Indicator Light</li><li>Bottom Ventilation Holes</li><li>Precise Temperature Control</li><li>Magnetized Pod Connection</li><li>MicroUSB Port</li><li>2.0mL Refillable Juice Capacity</li><li>Geek Vape NS Coil Technology</li><li>0.7ohm NS KA Mesh Coil - POWER Mode</li><li>1.2ohm NS SS316L Coil - TEMPERATUR CONTROL Mode</li></ul><p style="margin-left:0px;">&nbsp;</p><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm Includes:</strong></p><ul><li>1 FRENZY Mod Device</li><li>1 FRENZY Pod</li><li>1 0.7ohm NS KA Mesh Coil</li><li>1 1.2ohm Nichrome Coil</li><li>1 MicroUSB Cable</li></ul>', 0, 3, CAST(N'2022-03-03T17:00:18.067' AS DateTime), CAST(N'2022-03-03T17:00:18.067' AS DateTime), 1, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (48, N'BỘ ORION PLUS DNA 22W POD SYSTEM', N'LOSTVAPE', 1000000.0000, 125, N'BỘ ORION PLUS DNA 22W POD SYSTEM

Bộ Pod ORION PLUS DNA 22W tích hợp Chip Evolv DNA GO được cập nhật với 5 chế độ Công suất, Công nghệ giới hạn nhiệt độ, Chức năng REPLY, Pin Li-Po dung lượng 950mAh và đầu Cartridge có thể thay Coil OCC', N'<h1>BỘ ORION PLUS DNA 22W POD SYSTEM</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/lostvape_orion_plus_dna_fullcolor_b7aa6abd1015403fb71971abb0f312e0_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/lostvape_orion_plus_dna_fullcolor_b7aa6abd1015403fb71971abb0f312e0_grande.jpg" alt="bo-orion-plus-dna-22w-pod-system-0"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật Orion PLUS DNA 22W Pod System:</strong></p><ul><li>Chip Advanced DNA GO Chipset</li><li>Kích thước: 93mm * 37mm * 13.5mm</li><li>Pin lipo tích hợp: 950mAh Rechargeable Battery</li><li>Công suất: 22W</li><li>Có thể điều chỉnh 5 mức công suất: White, Blue, Red, Yellow, Purple</li><li>0.25ohm Orion Plus Mesh Coil<br>&nbsp;</li><li>0.5ohm Orion Plus Regular Coil</li><li>Các tính năng: Bảo vệ đoản mạch, quá nhiệt, pin yếu<br>&nbsp;</li><li>Cổng sạc: MicroUSB Port</li><li>Các phiên bản màu hiện có: Gold Stabwood, Silver Stabwood, Blue Stabwood, Black Stabwood, Gold-Gold Abalone, Blue Ocean Scallop, Black Ocean Scallop, Purple Ocean Scallop, and Purple Phoenix&nbsp;</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/orion_plus_dna_box_ec03708d2bbc41cfb941e7927e91db3f_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/orion_plus_dna_box_ec03708d2bbc41cfb941e7927e91db3f_grande.jpg" alt="bo-orion-plus-dna-22w-pod-system-1"></a></figure><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong></p><ul><li>1 Orion PLUS Device</li><li>1 dây đeo Orion PLUS Lanyard</li><li>1 Cáp sạc MicroUSB Cable</li><li>1 0.25ohm MESH OCC Coil&nbsp;<br>&nbsp;</li><li>1 0.5ohm Regular OCC Coil&nbsp;</li><li>1 Hướng dẫn sử dụng User Manual</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/12lostvape_orion_plus_dna_163f66ed1edc41018adcbef3bd39e086_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/12lostvape_orion_plus_dna_163f66ed1edc41018adcbef3bd39e086_grande.jpg" alt="bo-orion-plus-dna-22w-pod-system-2"></a></figure>', 1, 3, CAST(N'2022-03-03T17:02:24.620' AS DateTime), CAST(N'2022-03-03T17:02:24.620' AS DateTime), 18, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (49, N'Bộ Smoant Pasito 25W Pod System', N'SMOANT', 550000.0000, 234, N'Bộ Smoant Pasito Pod System 1100mAh', N'<h1>Bộ Smoant Pasito 25W Pod System</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/pasito_full_color_76b67b6b434e43bab06c763c7f5587a1_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/pasito_full_color_76b67b6b434e43bab06c763c7f5587a1_grande.jpg" alt="bo-smoant-pasito-25w-pod-system-0"></a></figure><p style="margin-left:0px;text-align:center;">Sử dụng RBA có thể build lại được</p><p style="margin-left:0px;text-align:center;">Thông số kỹ thuật:</p><p style="margin-left:0px;text-align:center;">Kích thước: 38 x 18 x 102mm</p><p style="margin-left:0px;text-align:center;">Dung lượng pin: 1.100mAh</p><p style="margin-left:0px;text-align:center;">Điều chỉnh 5 chế độ:&nbsp;10W/13W/16W/20W/25W</p><p style="margin-left:0px;text-align:center;">Chất liệu thân máy: Nhôm</p><p style="margin-left:0px;text-align:center;">Dung tích dầu: 3ml</p><p style="margin-left:0px;text-align:center;">Chân sạc: Type-C 5V/1A sạc nhanh hơn</p><p style="margin-left:0px;text-align:center;">&nbsp;</p><p style="margin-left:0px;text-align:center;">Bộ sản phẩm bao gồm:</p><ul><li style="text-align:center;">1 x Smoant Pasito&nbsp;MOD</li><li style="text-align:center;">1 x&nbsp;Smoant&nbsp;Pasito&nbsp;Cartridge</li><li style="text-align:center;">1 x Coil DTL-Mesh 0.6ohm</li><li style="text-align:center;">1 x Coil MTL-Ni80 1.4ohm</li><li style="text-align:center;">1 x&nbsp; Cáp sạc Type-C</li><li style="text-align:center;">1 x Hướng dẫn sử dụng</li></ul>', 1, 3, CAST(N'2022-03-03T17:04:28.460' AS DateTime), CAST(N'2022-03-03T21:31:49.820' AS DateTime), 19, 3)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (50, N'Bộ Pod NOVO 2 POD SYSTEM 25W', N'SMOK', 345000.0000, 123, N'NOVO 2 là phiên bản nâng cấp của Pod Novo, vẫn giữ được hình dáng thanh lịch  hoàn thiện nổi bật, dung lượng pin 800mAh  và cartridge 2mL', N'<h1>Bộ Pod NOVO 2 POD SYSTEM 25W</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/11.smok_novo_2_25w_pod_system_4271b1b2e6034a24b20e4e597d7807a2_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/11.smok_novo_2_25w_pod_system_4271b1b2e6034a24b20e4e597d7807a2_grande.jpg" alt="bo-pod-novo-2-pod-system-25w-0"></a></figure><p style="margin-left:0px;"><strong>Thông số kỹ thuật NOVO 2 Pod System:</strong></p><ul><li>Kích thước: 88.3mm * 24.5mm * 14.5mm</li><li>Dung lượng pin: 800mAh</li><li>Công suất tối đa:25W<br>&nbsp;</li><li>Đèn LED báo dung lượng pin</li><li>Dung tích đầu Pod 2mL<br>&nbsp;</li></ul><p style="margin-left:0px;"><strong>Bộ sản phẩm bao gồm:</strong></p><ul><li>1 Thân máy NOVO 2&nbsp;</li><li>1 đầu Pod Mesh</li><li>1 đầu Pod MTL</li><li>1 Cáp sạc USB</li><li>1 Hướng dẫn sử dụng</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok-novo2-pod-kit-hand_aea7fbdb12a841b9ae213a18e4ac9fa3_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok-novo2-pod-kit-hand_aea7fbdb12a841b9ae213a18e4ac9fa3_grande.jpg" alt="bo-pod-novo-2-pod-system-25w-1"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1.smok_novo_2_pod_system_3f7a2da9cc684fa39e3c3e62d93c96e2_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1.smok_novo_2_pod_system_3f7a2da9cc684fa39e3c3e62d93c96e2_grande.jpg" alt="bo-pod-novo-2-pod-system-25w-2"></a></figure>', 0, 3, CAST(N'2022-03-03T17:09:11.823' AS DateTime), CAST(N'2022-03-03T17:09:11.823' AS DateTime), 16, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (51, N'BỘ POD SYSTEM V-PM40W KIT BY VAPOR STORM', N'VOOPOO', 380000.0000, 234, N'BỘ POD SYSTEM V-PM40W KIT BY VAPOR STORM
V-Pm 40w đến từ Vapor Storm với thiết kế khoẻ khoắn, chắc chắn, và có hiệu năng cực tốt giúp khi đem lại hiệu quả Vaping tốt nhất có thể. V-Pm 40w là Pod Mod có trọng lượng nhẹ nhất trên thị trường, chỉ nặng 60g khi chưa lắp pin', N'<h1>BỘ POD SYSTEM V-PM40W KIT BY VAPOR STORM</h1><figure class="image"><a href="https://file.hstatic.net/1000250387/file/104288103_114657223424329_3385179056436919933_n_08e0d42b8d0e498a9f13f80dbd225f10_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/104288103_114657223424329_3385179056436919933_n_08e0d42b8d0e498a9f13f80dbd225f10_grande.jpg" alt="bo-pod-system-v-pm40w-kit-by-vapor-storm-0"></a></figure><ul><li><strong>Bộ Vape Kit&nbsp;</strong>giá rẻ này&nbsp;có trọng lượng nhẹ nhất trên thị trường, chỉ nặng 60g khi chưa lắp pin, với chất liệu PCTG mang lại cảm giác chắc chắn khi bạn cầm nắm sản phẩm.</li><li><strong>Vapor Storm PM40</strong>&nbsp;kit sử dụng 1 pin rời 18650 (Không kèm theo máy) có thể sạc lại thông của công sạc USB 1A được tích hợp sẵn trên thân máy. Khi thiết bị được bật nguồn, bấm “+” hoặc “-” để điều chỉnh công suất, phạm vi từ 5w -&gt; 40w.</li><li><strong>Với thiết kế nắp pin</strong>&nbsp;độc đáo, tháo mở dễ dàng và có thể mở và gập thành 1 góc 90 độ</li><li><strong>V-Pm 40w Vape Kit</strong>&nbsp;được tích hợp với màn hình&nbsp;<strong>LCD</strong>&nbsp;đầy mầu sắc 0.96 inch hiển thị các thông số thiết bị từ W, ohm, số lần hút, dung lượng pin hiện tại,…</li><li><strong>Pod rỗng</strong>&nbsp;chứa Juice của&nbsp;<strong>V-Pm 40w</strong>&nbsp;lên tới&nbsp;<strong>4.8ml</strong>, thiết kế tra tinh dầu phía trên, dưới tích hợp nam châm từ tính để giữ đầu đốt và thân máy vô cùng chắc chắn. lỗ gió vô cùng thoáng, đảm bảo ra đủ lượng khói tuyệt vời nhất cho bạn Vaping.</li></ul><figure class="image"><a href="https://file.hstatic.net/1000250387/file/v-pm-40w-specifition_405dc5809c034465bf61ef4f22c007ef_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/v-pm-40w-specifition_405dc5809c034465bf61ef4f22c007ef_grande.jpg" alt="bo-pod-system-v-pm40w-kit-by-vapor-storm-1"></a></figure><p style="margin-left:0px;"><br>&nbsp;</p><p style="margin-left:0px;"><strong>Thông số kĩ thuật Vapor Storm V-Pm 40w :</strong></p><p style="margin-left:0px;">Chất liệu: PCTG<br>Kích thước: 119mm(Height) x 33mm(Width) x 28mm(Thickness)<br>Trọng lượng: 60g<br>Pin: 1 x 18650<br>Chế độ đầu ra: Power<br>Phạm vi công suất: 5-40W<br>Dung tích bình chứa: 4.8ml<br>Cổng sạc: DC 5V/1A<br>Chỉ số Ohm tiếp nhận: 0.18ohm-2.5ohm<br>Màn hình hiển thị: 0.96″ TFT color screen<br>Chế độ bảo vệ: low/ high resistance, over-heating, short circuit, over-charge/ over-discharge protection<br>Mầu có sẵn: Bạc, Đen</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/v-pm-40w-packge_0b3098869666414984f918fc4786b26d_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/v-pm-40w-packge_0b3098869666414984f918fc4786b26d_grande.jpg" alt="bo-pod-system-v-pm40w-kit-by-vapor-storm-2"></a></figure><p style="margin-left:0px;"><strong>Hộp sản phẩm bảo gồm :</strong></p><p style="margin-left:0px;">1 V-Pm 40w<br>1 Đầu rỗng 4.8ml<br>1 Coil 0.6ohm<br>1 Coil 0.35ohm<br>1 Cáp sạc USB<br>1 Sách hướng dẫn sử dụng</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/vapor_storm_v_pm_40_2_d20bb27f47464aeb9ca705b81119f1c5_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/vapor_storm_v_pm_40_2_d20bb27f47464aeb9ca705b81119f1c5_grande.jpg" alt="bo-pod-system-v-pm40w-kit-by-vapor-storm-3"></a></figure><figure class="image"><a href="https://file.hstatic.net/1000250387/file/vapor_storm_v_pm_40_3_55b0efdb5d714a8c981be6813d07dc11_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/vapor_storm_v_pm_40_3_55b0efdb5d714a8c981be6813d07dc11_grande.jpg" alt="bo-pod-system-v-pm40w-kit-by-vapor-storm-4"></a></figure>', 0, 3, CAST(N'2022-03-03T17:11:23.317' AS DateTime), CAST(N'2022-03-03T17:11:23.317' AS DateTime), 17, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (52, N'BỘ POD SYSTEM SENSE ORBIT', N'RELX', 200000.0000, 123, N'Thông số kỹ thuật ORBIT:

Kích thước: 96mm * 30mm * 18mm
Pin liền dung lượng: 1100mAh
Chế độ đốt:Có thể điều chỉnh 3 chế độ Nhẹ/Vừa/Mạnh
Màu sắc: White, Gold, Cyan, Rainbow, Wine Red, Mixed Grey
Bộ sản phẩm ORBIT bao gồm:

1 Sense Orbit Pod
1 Sense Cartridge 2.5ml
1 OCC 0.6ohm Mesh coil - 18W-23W
1 OCC 1.1ohm Coil -  10W-12.5W
1 Cáp sạc MicroUSB
1 nắp cao su
1 hướng dẫn sử dụng', N'<h1>BỘ POD SYSTEM SENSE ORBIT</h1><p style="margin-left:0px;">Sense ORBIT Pod System là bộ vape Pod&nbsp; có Cartridge chứa dầu 2,5mL nhỏ gọn và bắt mắt, tích hợp pin liền dung lượng lớn 1100mAh, có thể cài đặt điều chỉnh 3 chế độ nhẹ, vừa và mạnh và có thể thay đổi Occ 0.6ohm hoặc 1.1ohm để đáp ứng nhu cầu ưa thích của người dùng</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/sense_full_color_cd19127c647e43188074ca25132de4ba_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/sense_full_color_cd19127c647e43188074ca25132de4ba_grande.jpg" alt="bo-pod-system-sense-orbit-0"></a></figure>', 1, 3, CAST(N'2022-03-03T17:13:33.013' AS DateTime), CAST(N'2022-03-03T17:13:33.013' AS DateTime), 24, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (53, N'Bộ Pod VLADDIN RE POD SYSTEM', N'VLADDIN', 240000.0000, 234, N'Bộ Pod System VLADDIN RE tặng kèm 10ml USALT Premium Satlnic

Bộ sản phẩm bao gồm:

1 Vladdin RE Device
1 Vladdin RE Replacement Pod
1 Warning Card
1 User Manual
1 USB Charging Cable
Tặng kèm 1 lọ tinh dầu salt Nic', N'<h1>Bộ Pod VLADDIN RE POD SYSTEM</h1><p style="margin-left:0px;">Bộ thuốc lá điện tử Vape Pod&nbsp;RE Pod của Vladdin là bộ Pod gọn nhẹ, có pin sạc tích hợp 350mAh, coil Sứ&nbsp;giúp coil sử dụng được bền hơn và hệ thống Top Fill độc quyền. Hệ thống RE Pod Vladdin có công suất tối đa 12W để làm bay hơi các muối nic tốt nhất hiện nay.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1_vladdin_full_color_5c7e8190b0264d3d8ad444132e097678_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1_vladdin_full_color_5c7e8190b0264d3d8ad444132e097678_grande.jpg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-0"></a></figure><p style="margin-left:0px;">&nbsp;</p><figure class="image"><a href="https://vn-test-11.slatic.net/shop/d7f0e48438efce3ff1149ba12b49f5c9.jpeg"><img src="https://vn-test-11.slatic.net/shop/d7f0e48438efce3ff1149ba12b49f5c9.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-1"></a></figure><p style="margin-left:0px;">​</p><figure class="image"><a href="https://vn-test-11.slatic.net/shop/3366825a312c37ec711af682cf93e2be.jpeg"><img src="https://vn-test-11.slatic.net/shop/3366825a312c37ec711af682cf93e2be.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-3"></a></figure><p style="margin-left:0px;">​</p><p style="margin-left:0px;">Thông tin sản phẩm:</p><ul><li>Dimensions - 90.32mm by 19.04mm by 11.4mm</li><li>Integrated 350mAh Rechargeable Battery</li><li>Maximum Wattage Output: 12W</li><li>Output Voltage: 3.5V</li><li>Coil Resistance: 1.2-1.5ohms</li><li>Coil Material: Ceramic Coil</li><li>Refillable 1.5mL Pod Juice Capacity</li><li>Proprietary Top Fill Pods - Silicone Stopper</li><li>Magnetic Connection</li><li>Drawing Activated Firing&nbsp;</li><li>LED Battery Indicator Light</li><li>MicroUSB Port</li></ul><figure class="image"><a href="https://vn-test-11.slatic.net/shop/9475b5c2cd11caece2383a7b95b0b2f2.jpeg"><img src="https://vn-test-11.slatic.net/shop/9475b5c2cd11caece2383a7b95b0b2f2.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-5"></a></figure><p style="margin-left:0px;">​</p><p style="margin-left:0px;">Bộ sản phẩm bao gồm:</p><ul><li>1 Vladdin RE Device</li><li>1 Vladdin RE Replacement Pod</li><li>1 Warning Card</li><li>1 User Manual</li><li>1 USB Charging Cable</li></ul><figure class="image"><a href="https://vn-test-11.slatic.net/shop/fdf0368d321b78f3e7cc3993838e27c2.jpeg"><img src="https://vn-test-11.slatic.net/shop/fdf0368d321b78f3e7cc3993838e27c2.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-7"></a></figure>', 0, 4, CAST(N'2022-03-03T17:16:33.470' AS DateTime), CAST(N'2022-03-03T17:16:33.470' AS DateTime), 20, 1)
GO
INSERT [dbo].[pod] ([id], [name], [brand], [price], [quantity], [description], [content], [isSale], [discount], [created_at], [updated_at], [categoryId], [state]) VALUES (59, N'Bộ Pod VLADDIN RE POD SYSTEM 2', N'NEVOKS', 120000.0000, 230, N'Bộ Pod System VLADDIN RE tặng kèm 10ml USALT Premium Satlnic
Bộ sản phẩm bao gồm:
1 Vladdin RE Device
1 Vladdin RE Replacement Pod
1 Warning Card
1 User Manual
1 USB Charging Cable
Tặng kèm 1 lọ tinh dầu salt Nic', N'<h1>Bộ Pod VLADDIN RE POD SYSTEM 2</h1><p style="margin-left:0px;">Bộ thuốc lá điện tử Vape Pod&nbsp;RE Pod của Vladdin là bộ Pod gọn nhẹ, có pin sạc tích hợp 350mAh, coil Sứ&nbsp;giúp coil sử dụng được bền hơn và hệ thống Top Fill độc quyền. Hệ thống RE Pod Vladdin có công suất tối đa 12W để làm bay hơi các muối nic tốt nhất hiện nay.</p><figure class="image"><a href="https://file.hstatic.net/1000250387/file/1_vladdin_full_color_5c7e8190b0264d3d8ad444132e097678_grande.jpg"><img src="https://file.hstatic.net/1000250387/file/1_vladdin_full_color_5c7e8190b0264d3d8ad444132e097678_grande.jpg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-0"></a></figure><p style="margin-left:0px;">&nbsp;</p><figure class="image"><a href="https://vn-test-11.slatic.net/shop/d7f0e48438efce3ff1149ba12b49f5c9.jpeg"><img src="https://vn-test-11.slatic.net/shop/d7f0e48438efce3ff1149ba12b49f5c9.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-1"></a></figure><p style="margin-left:0px;">​</p><p style="margin-left:0px;"><a href="https://vn-test-11.slatic.net/shop/3366825a312c37ec711af682cf93e2be.jpeg"><img src="https://vn-test-11.slatic.net/shop/3366825a312c37ec711af682cf93e2be.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-3"></a>​</p><p style="margin-left:0px;">Thông tin sản phẩm:</p><ul><li>Dimensions - 90.32mm by 19.04mm by 11.4mm</li><li>Integrated 350mAh Rechargeable Battery</li><li>Maximum Wattage Output: 12W</li><li>Output Voltage: 3.5V</li><li>Coil Resistance: 1.2-1.5ohms</li><li>Coil Material: Ceramic Coil</li><li>Refillable 1.5mL Pod Juice Capacity</li><li>Proprietary Top Fill Pods - Silicone Stopper</li><li>Magnetic Connection</li><li>Drawing Activated Firing&nbsp;</li><li>LED Battery Indicator Light</li><li>MicroUSB Port</li></ul><p style="margin-left:0px;"><a href="https://vn-test-11.slatic.net/shop/9475b5c2cd11caece2383a7b95b0b2f2.jpeg"><img src="https://vn-test-11.slatic.net/shop/9475b5c2cd11caece2383a7b95b0b2f2.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-5"></a>​</p><p style="margin-left:0px;">Bộ sản phẩm bao gồm:</p><ul><li>1 Vladdin RE Device</li><li>1 Vladdin RE Replacement Pod</li><li>1 Warning Card</li><li>1 User Manual</li><li>1 USB Charging Cable</li></ul><p style="margin-left:0px;"><a href="https://vn-test-11.slatic.net/shop/fdf0368d321b78f3e7cc3993838e27c2.jpeg"><img src="https://vn-test-11.slatic.net/shop/fdf0368d321b78f3e7cc3993838e27c2.jpeg" alt="bo-thuoc-la-dien-tu-vape-pod-vladdin-re-pod-system-7"></a></p>', 1, 10, CAST(N'2022-03-03T19:03:09.273' AS DateTime), CAST(N'2022-03-03T22:16:52.193' AS DateTime), 3, 1)
GO
SET IDENTITY_INSERT [dbo].[pod] OFF
GO
SET IDENTITY_INSERT [dbo].[state] ON 
GO
INSERT [dbo].[state] ([id], [name]) VALUES (1, N'Còn hàng')
GO
INSERT [dbo].[state] ([id], [name]) VALUES (2, N'Hết hàng')
GO
INSERT [dbo].[state] ([id], [name]) VALUES (3, N'Liên hệ')
GO
SET IDENTITY_INSERT [dbo].[state] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (1, N'giakinh0823', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'Kính', N'Hà Gia', CAST(N'2022-02-23' AS Date), N'giakinh2000@gmail.com', N'+84972141556', 1, 1, 1, N'user', N'Screenshot 2022-02-13 010616.png', CAST(N'2022-02-27T05:14:34.040' AS DateTime), CAST(N'2022-03-05T22:10:28.427' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (2, N'test143534', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'13242', N'Test', CAST(N'2001-08-23' AS Date), N'test1@gmail.com', N'0972141556', 1, 0, 1, N'user', N'006ocnzyly1ghk9aua612j31jk2bd4qp-15969442828151997048604.jpg', CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-03-03T21:19:20.247' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (3, N'test2', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'2', N'Test', CAST(N'2001-08-23' AS Date), N'test2@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (4, N'test3', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'3', N'Test', CAST(N'2001-08-23' AS Date), N'test3@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (5, N'test4', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'4', N'Test', CAST(N'2001-08-23' AS Date), N'test4@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (6, N'test5', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'5', N'Test', CAST(N'2001-08-23' AS Date), N'test5@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (7, N'test6', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'6', N'Test', CAST(N'2001-08-23' AS Date), N'test6@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (8, N'test7', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'7', N'Test', CAST(N'2001-08-23' AS Date), N'test7@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (9, N'test8', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'8', N'Test', CAST(N'2001-08-23' AS Date), N'test8@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (10, N'test9', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'9', N'Test', CAST(N'2001-08-23' AS Date), N'test9@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (11, N'test10', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'10', N'Test', CAST(N'2001-08-23' AS Date), N'test10@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (12, N'test11', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'11', N'Test', CAST(N'2001-08-23' AS Date), N'test11@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (13, N'test12', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'12', N'Test', CAST(N'2001-08-23' AS Date), N'test12@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (14, N'test13', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'13', N'Test', CAST(N'2001-08-23' AS Date), N'test13@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (15, N'test14', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'14', N'Test', CAST(N'2001-08-23' AS Date), N'test14@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (16, N'test15', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'15', N'Test', CAST(N'2001-08-23' AS Date), N'test15@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (17, N'test16', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'16', N'Test', CAST(N'2001-08-23' AS Date), N'test16@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (18, N'test17', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'17', N'Test', CAST(N'2001-08-23' AS Date), N'test17@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (19, N'test18', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'18', N'Test', CAST(N'2001-08-23' AS Date), N'test18@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (20, N'test19', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'19', N'Test', CAST(N'2001-08-23' AS Date), N'test19@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (21, N'test20', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'20', N'Test', CAST(N'2001-08-23' AS Date), N'test20@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (22, N'test21', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'21', N'Test', CAST(N'2001-08-23' AS Date), N'test21@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (23, N'test22', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'22', N'Test', CAST(N'2001-08-23' AS Date), N'test22@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (24, N'test23', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'23', N'Test', CAST(N'2001-08-23' AS Date), N'test23@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (25, N'test24', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'24', N'Test', CAST(N'2001-08-23' AS Date), N'test24@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (26, N'test25', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'25', N'Test', CAST(N'2001-08-23' AS Date), N'test25@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (27, N'test26', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'26', N'Test', CAST(N'2001-08-23' AS Date), N'test26@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (28, N'test27', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'27', N'Test', CAST(N'2001-08-23' AS Date), N'test27@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (29, N'test28', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'28', N'Test', CAST(N'2001-08-23' AS Date), N'test28@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (30, N'test29', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'29', N'Test', CAST(N'2001-08-23' AS Date), N'test29@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (31, N'test30', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'30', N'Test', CAST(N'2001-08-23' AS Date), N'test30@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (32, N'test31', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'31', N'Test', CAST(N'2001-08-23' AS Date), N'test31@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (33, N'test32', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'32', N'Test', CAST(N'2001-08-23' AS Date), N'test32@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (34, N'test33', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'33', N'Test', CAST(N'2001-08-23' AS Date), N'test33@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (35, N'test34', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'34', N'Test', CAST(N'2001-08-23' AS Date), N'test34@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (36, N'test35', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'35', N'Test', CAST(N'2001-08-23' AS Date), N'test35@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (37, N'test36', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'36', N'Test', CAST(N'2001-08-23' AS Date), N'test36@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (38, N'test37', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'37', N'Test', CAST(N'2001-08-23' AS Date), N'test37@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (39, N'test38', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'38', N'Test', CAST(N'2001-08-23' AS Date), N'test38@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (40, N'test39', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'39', N'Test', CAST(N'2001-08-23' AS Date), N'test39@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (41, N'test40', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'40', N'Test', CAST(N'2001-08-23' AS Date), N'test40@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (42, N'test41', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'41', N'Test', CAST(N'2001-08-23' AS Date), N'test41@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (43, N'test42', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'42', N'Test', CAST(N'2001-08-23' AS Date), N'test42@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (44, N'test43', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'43', N'Test', CAST(N'2001-08-23' AS Date), N'test43@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (45, N'test44', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'44', N'Test', CAST(N'2001-08-23' AS Date), N'test44@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (46, N'test45', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'45', N'Test', CAST(N'2001-08-23' AS Date), N'test45@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (47, N'test46', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'46', N'Test', CAST(N'2001-08-23' AS Date), N'test46@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (48, N'test47', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'47', N'Test', CAST(N'2001-08-23' AS Date), N'test47@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (49, N'test48', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'48', N'Test', CAST(N'2001-08-23' AS Date), N'test48@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (50, N'test49', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'49', N'Test', CAST(N'2001-08-23' AS Date), N'test49@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (51, N'test50', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'50', N'Test', CAST(N'2001-08-23' AS Date), N'test50@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (52, N'test51', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'51', N'Test', CAST(N'2001-08-23' AS Date), N'test51@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (53, N'test52', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'52', N'Test', CAST(N'2001-08-23' AS Date), N'test52@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (54, N'test53', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'53', N'Test', CAST(N'2001-08-23' AS Date), N'test53@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (55, N'test54', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'54', N'Test', CAST(N'2001-08-23' AS Date), N'test54@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (56, N'test55', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'55', N'Test', CAST(N'2001-08-23' AS Date), N'test55@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (57, N'test56', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'56', N'Test', CAST(N'2001-08-23' AS Date), N'test56@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (58, N'test57', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'57', N'Test', CAST(N'2001-08-23' AS Date), N'test57@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (59, N'test58', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'58', N'Test', CAST(N'2001-08-23' AS Date), N'test58@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (60, N'test59', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'59', N'Test', CAST(N'2001-08-23' AS Date), N'test59@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (61, N'test60', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'60', N'Test', CAST(N'2001-08-23' AS Date), N'test60@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (62, N'test61', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'61', N'Test', CAST(N'2001-08-23' AS Date), N'test61@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (64, N'test63', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'63', N'Test', CAST(N'2001-08-23' AS Date), N'test63@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (65, N'test64', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'64', N'Test', CAST(N'2001-08-23' AS Date), N'test64@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (66, N'test65', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'65', N'Test', CAST(N'2001-08-23' AS Date), N'test65@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (67, N'test66', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'66', N'Test', CAST(N'2001-08-23' AS Date), N'test66@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (68, N'test67', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'67', N'Test', CAST(N'2001-08-23' AS Date), N'test67@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (69, N'test68', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'68', N'Test', CAST(N'2001-08-23' AS Date), N'test68@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (70, N'test69', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'69', N'Test', CAST(N'2001-08-23' AS Date), N'test69@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (71, N'test70', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'70', N'Test', CAST(N'2001-08-23' AS Date), N'test70@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (72, N'test71', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'71', N'Test', CAST(N'2001-08-23' AS Date), N'test71@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (73, N'test72', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'72', N'Test', CAST(N'2001-08-23' AS Date), N'test72@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (74, N'test73', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'73', N'Test', CAST(N'2001-08-23' AS Date), N'test73@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (75, N'test74', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'74', N'Test', CAST(N'2001-08-23' AS Date), N'test74@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (76, N'test75', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'75', N'Test', CAST(N'2001-08-23' AS Date), N'test75@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (77, N'test76', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'76', N'Test', CAST(N'2001-08-23' AS Date), N'test76@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (78, N'test77', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'77', N'Test', CAST(N'2001-08-23' AS Date), N'test77@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (79, N'test78', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'78', N'Test', CAST(N'2001-08-23' AS Date), N'test78@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (80, N'test79', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'79', N'Test', CAST(N'2001-08-23' AS Date), N'test79@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (81, N'test80', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'80', N'Test', CAST(N'2001-08-23' AS Date), N'test80@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (82, N'test81', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'81', N'Test', CAST(N'2001-08-23' AS Date), N'test81@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (83, N'test82', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'82', N'Test', CAST(N'2001-08-23' AS Date), N'test82@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (84, N'test83', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'83', N'Test', CAST(N'2001-08-23' AS Date), N'test83@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (85, N'test84', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'84', N'Test', CAST(N'2001-08-23' AS Date), N'test84@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (86, N'test85', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'85', N'Test', CAST(N'2001-08-23' AS Date), N'test85@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (87, N'test86', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'86', N'Test', CAST(N'2001-08-23' AS Date), N'test86@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (88, N'test87', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'87', N'Test', CAST(N'2001-08-23' AS Date), N'test87@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (89, N'test88', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'88', N'Test', CAST(N'2001-08-23' AS Date), N'test88@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (90, N'test89', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'89', N'Test', CAST(N'2001-08-23' AS Date), N'test89@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (91, N'test90', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'90', N'Test', CAST(N'2001-08-23' AS Date), N'test90@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (92, N'test91', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'91', N'Test', CAST(N'2001-08-23' AS Date), N'test91@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (93, N'test92', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'92', N'Test', CAST(N'2001-08-23' AS Date), N'test92@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (94, N'test93', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'93', N'Test', CAST(N'2001-08-23' AS Date), N'test93@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (95, N'test94', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'94', N'Test', CAST(N'2001-08-23' AS Date), N'test94@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (96, N'test95', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'95', N'Test', CAST(N'2001-08-23' AS Date), N'test95@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (97, N'test96', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'96', N'Test', CAST(N'2001-08-23' AS Date), N'test96@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (98, N'test97', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'97', N'Test', CAST(N'2001-08-23' AS Date), N'test97@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (99, N'test98', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'98', N'Test', CAST(N'2001-08-23' AS Date), N'test98@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (100, N'test99', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'99', N'Test', CAST(N'2001-08-23' AS Date), N'test99@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (101, N'test100', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'100', N'Test', CAST(N'2001-08-23' AS Date), N'test100@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (102, N'test101', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'101', N'Test', CAST(N'2001-08-23' AS Date), N'test101@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (103, N'test102', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'102', N'Test', CAST(N'2001-08-23' AS Date), N'test102@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (104, N'test103', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'103', N'Test', CAST(N'2001-08-23' AS Date), N'test103@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (105, N'test104', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'104', N'Test', CAST(N'2001-08-23' AS Date), N'test104@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (106, N'test105', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'105', N'Test', CAST(N'2001-08-23' AS Date), N'test105@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (107, N'test106', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'106', N'Test', CAST(N'2001-08-23' AS Date), N'test106@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (108, N'test107', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'107', N'Test', CAST(N'2001-08-23' AS Date), N'test107@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (109, N'test108', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'108', N'Test', CAST(N'2001-08-23' AS Date), N'test108@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (110, N'test109', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'109', N'Test', CAST(N'2001-08-23' AS Date), N'test109@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (111, N'test110', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'110', N'Test', CAST(N'2001-08-23' AS Date), N'test110@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (112, N'test111', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'111', N'Test', CAST(N'2001-08-23' AS Date), N'test111@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (113, N'test112', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'112', N'Test', CAST(N'2001-08-23' AS Date), N'test112@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (114, N'test113', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'113', N'Test', CAST(N'2001-08-23' AS Date), N'test113@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (115, N'test114', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'114', N'Test', CAST(N'2001-08-23' AS Date), N'test114@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (116, N'test115', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'115', N'Test', CAST(N'2001-08-23' AS Date), N'test115@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (117, N'test116', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'116', N'Test', CAST(N'2001-08-23' AS Date), N'test116@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (118, N'test117', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'117', N'Test', CAST(N'2001-08-23' AS Date), N'test117@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (119, N'test118', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'118', N'Test', CAST(N'2001-08-23' AS Date), N'test118@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (120, N'test119', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'119', N'Test', CAST(N'2001-08-23' AS Date), N'test119@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (121, N'test120', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'120', N'Test', CAST(N'2001-08-23' AS Date), N'test120@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (122, N'test121', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'121', N'Test', CAST(N'2001-08-23' AS Date), N'test121@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (123, N'test122', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'122', N'Test', CAST(N'2001-08-23' AS Date), N'test122@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (124, N'test123', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'123', N'Test', CAST(N'2001-08-23' AS Date), N'test123@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (125, N'test124', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'124', N'Test', CAST(N'2001-08-23' AS Date), N'test124@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (126, N'test125', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'125', N'Test', CAST(N'2001-08-23' AS Date), N'test125@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (127, N'test126', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'126', N'Test', CAST(N'2001-08-23' AS Date), N'test126@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (128, N'test127', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'127', N'Test', CAST(N'2001-08-23' AS Date), N'test127@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (129, N'test128', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'128', N'Test', CAST(N'2001-08-23' AS Date), N'test128@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (130, N'test129', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'129', N'Test', CAST(N'2001-08-23' AS Date), N'test129@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (131, N'test130', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'130', N'Test', CAST(N'2001-08-23' AS Date), N'test130@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (132, N'test131', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'131', N'Test', CAST(N'2001-08-23' AS Date), N'test131@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (133, N'test132', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'132', N'Test', CAST(N'2001-08-23' AS Date), N'test132@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (134, N'test133', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'133', N'Test', CAST(N'2001-08-23' AS Date), N'test133@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (135, N'test134', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'134', N'Test', CAST(N'2001-08-23' AS Date), N'test134@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (136, N'test135', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'135', N'Test', CAST(N'2001-08-23' AS Date), N'test135@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (137, N'test136', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'136', N'Test', CAST(N'2001-08-23' AS Date), N'test136@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (138, N'test137', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'137', N'Test', CAST(N'2001-08-23' AS Date), N'test137@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (139, N'test138', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'138', N'Test', CAST(N'2001-08-23' AS Date), N'test138@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (140, N'test139', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'139', N'Test', CAST(N'2001-08-23' AS Date), N'test139@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (141, N'test140', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'140', N'Test', CAST(N'2001-08-23' AS Date), N'test140@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (142, N'test141', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'141', N'Test', CAST(N'2001-08-23' AS Date), N'test141@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (143, N'test142', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'142', N'Test', CAST(N'2001-08-23' AS Date), N'test142@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (144, N'test143', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'143', N'Test', CAST(N'2001-08-23' AS Date), N'test143@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (145, N'test144', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'144', N'Test', CAST(N'2001-08-23' AS Date), N'test144@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (146, N'test145', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'145', N'Test', CAST(N'2001-08-23' AS Date), N'test145@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (147, N'test146', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'146', N'Test', CAST(N'2001-08-23' AS Date), N'test146@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (148, N'test147', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'147', N'Test', CAST(N'2001-08-23' AS Date), N'test147@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (149, N'test148', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'148', N'Test', CAST(N'2001-08-23' AS Date), N'test148@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (150, N'test149', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'149', N'Test', CAST(N'2001-08-23' AS Date), N'test149@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (151, N'test150', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'150', N'Test', CAST(N'2001-08-23' AS Date), N'test150@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (152, N'test151', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'151', N'Test', CAST(N'2001-08-23' AS Date), N'test151@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (153, N'test152', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'152', N'Test', CAST(N'2001-08-23' AS Date), N'test152@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (154, N'test153', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'153', N'Test', CAST(N'2001-08-23' AS Date), N'test153@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (155, N'test154', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'154', N'Test', CAST(N'2001-08-23' AS Date), N'test154@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (156, N'test155', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'155', N'Test', CAST(N'2001-08-23' AS Date), N'test155@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (157, N'test156', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'156', N'Test', CAST(N'2001-08-23' AS Date), N'test156@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (158, N'test157', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'157', N'Test', CAST(N'2001-08-23' AS Date), N'test157@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (159, N'test158', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'158', N'Test', CAST(N'2001-08-23' AS Date), N'test158@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (160, N'test159', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'159', N'Test', CAST(N'2001-08-23' AS Date), N'test159@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (161, N'test160', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'160', N'Test', CAST(N'2001-08-23' AS Date), N'test160@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (162, N'test161', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'161', N'Test', CAST(N'2001-08-23' AS Date), N'test161@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (163, N'test162', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'162', N'Test', CAST(N'2001-08-23' AS Date), N'test162@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (164, N'test163', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'163', N'Test', CAST(N'2001-08-23' AS Date), N'test163@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (165, N'test164', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'164', N'Test', CAST(N'2001-08-23' AS Date), N'test164@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (166, N'test165', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'165', N'Test', CAST(N'2001-08-23' AS Date), N'test165@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (167, N'test166', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'166', N'Test', CAST(N'2001-08-23' AS Date), N'test166@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (168, N'test167', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'167', N'Test', CAST(N'2001-08-23' AS Date), N'test167@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (169, N'test168', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'168', N'Test', CAST(N'2001-08-23' AS Date), N'test168@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (170, N'test169', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'169', N'Test', CAST(N'2001-08-23' AS Date), N'test169@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (171, N'test170', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'170', N'Test', CAST(N'2001-08-23' AS Date), N'test170@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (172, N'test171', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'171', N'Test', CAST(N'2001-08-23' AS Date), N'test171@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (173, N'test172', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'172', N'Test', CAST(N'2001-08-23' AS Date), N'test172@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (174, N'test173', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'173', N'Test', CAST(N'2001-08-23' AS Date), N'test173@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (175, N'test174', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'174', N'Test', CAST(N'2001-08-23' AS Date), N'test174@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (176, N'test175', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'175', N'Test', CAST(N'2001-08-23' AS Date), N'test175@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (177, N'test176', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'176', N'Test', CAST(N'2001-08-23' AS Date), N'test176@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (179, N'test178', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'178', N'Test', CAST(N'2001-08-23' AS Date), N'test178@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (180, N'test179', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'179', N'Test', CAST(N'2001-08-23' AS Date), N'test179@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (181, N'test180', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'180', N'Test', CAST(N'2001-08-23' AS Date), N'test180@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (182, N'test181', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'181', N'Test', CAST(N'2001-08-23' AS Date), N'test181@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (183, N'test182', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'182', N'Test', CAST(N'2001-08-23' AS Date), N'test182@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (185, N'test184', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'184', N'Test', CAST(N'2001-08-23' AS Date), N'test184@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (186, N'test185', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'185', N'Test', CAST(N'2001-08-23' AS Date), N'test185@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (187, N'test186', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'186', N'Test', CAST(N'2001-08-23' AS Date), N'test186@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (188, N'test187', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'187', N'Test', CAST(N'2001-08-23' AS Date), N'test187@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (189, N'test188', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'188', N'Test', CAST(N'2001-08-23' AS Date), N'test188@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (190, N'test189', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'189', N'Test', CAST(N'2001-08-23' AS Date), N'test189@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (191, N'test190', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'190', N'Test', CAST(N'2001-08-23' AS Date), N'test190@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (192, N'test191', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'191', N'Test', CAST(N'2001-08-23' AS Date), N'test191@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (193, N'test192', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'192', N'Test', CAST(N'2001-08-23' AS Date), N'test192@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (194, N'test193', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'193', N'Test', CAST(N'2001-08-23' AS Date), N'test193@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (195, N'test194', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'194', N'Test', CAST(N'2001-08-23' AS Date), N'test194@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (196, N'test195', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'195', N'Test', CAST(N'2001-08-23' AS Date), N'test195@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (197, N'test196', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'196', N'Test', CAST(N'2001-08-23' AS Date), N'test196@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (198, N'test197', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'197', N'Test', CAST(N'2001-08-23' AS Date), N'test197@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (199, N'test198', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'198', N'Test', CAST(N'2001-08-23' AS Date), N'test198@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (200, N'test199', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'199', N'Test', CAST(N'2001-08-23' AS Date), N'test199@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (201, N'test200', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'200', N'Test', CAST(N'2001-08-23' AS Date), N'test200@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (202, N'test201', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'201', N'Test', CAST(N'2001-08-23' AS Date), N'test201@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (203, N'test202', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'202', N'Test', CAST(N'2001-08-23' AS Date), N'test202@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (204, N'test203', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'203', N'Test', CAST(N'2001-08-23' AS Date), N'test203@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (205, N'test204', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'204', N'Test', CAST(N'2001-08-23' AS Date), N'test204@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (206, N'test205', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'205', N'Test', CAST(N'2001-08-23' AS Date), N'test205@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (207, N'test206', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'206', N'Test', CAST(N'2001-08-23' AS Date), N'test206@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (208, N'test207', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'207', N'Test', CAST(N'2001-08-23' AS Date), N'test207@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (209, N'test208', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'208', N'Test', CAST(N'2001-08-23' AS Date), N'test208@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (210, N'test209', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'209', N'Test', CAST(N'2001-08-23' AS Date), N'test209@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (211, N'test210', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'210', N'Test', CAST(N'2001-08-23' AS Date), N'test210@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (212, N'test211', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'211', N'Test', CAST(N'2001-08-23' AS Date), N'test211@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (213, N'test212', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'212', N'Test', CAST(N'2001-08-23' AS Date), N'test212@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (214, N'test213', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'213', N'Test', CAST(N'2001-08-23' AS Date), N'test213@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (215, N'test214', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'214', N'Test', CAST(N'2001-08-23' AS Date), N'test214@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (216, N'test215', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'215', N'Test', CAST(N'2001-08-23' AS Date), N'test215@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (217, N'test216', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'216', N'Test', CAST(N'2001-08-23' AS Date), N'test216@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (218, N'test217', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'217', N'Test', CAST(N'2001-08-23' AS Date), N'test217@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (219, N'test218', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'218', N'Test', CAST(N'2001-08-23' AS Date), N'test218@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (220, N'test219', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'219', N'Test', CAST(N'2001-08-23' AS Date), N'test219@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (221, N'test220', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'220', N'Test', CAST(N'2001-08-23' AS Date), N'test220@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (222, N'test221', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'221', N'Test', CAST(N'2001-08-23' AS Date), N'test221@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (223, N'test222', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'222', N'Test', CAST(N'2001-08-23' AS Date), N'test222@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (224, N'test223', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'223', N'Test', CAST(N'2001-08-23' AS Date), N'test223@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (225, N'test224', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'224', N'Test', CAST(N'2001-08-23' AS Date), N'test224@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (226, N'test225', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'225', N'Test', CAST(N'2001-08-23' AS Date), N'test225@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (227, N'test226', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'226', N'Test', CAST(N'2001-08-23' AS Date), N'test226@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (228, N'test227', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'227', N'Test', CAST(N'2001-08-23' AS Date), N'test227@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (229, N'test228', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'228', N'Test', CAST(N'2001-08-23' AS Date), N'test228@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (230, N'test229', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'229', N'Test', CAST(N'2001-08-23' AS Date), N'test229@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (231, N'test230', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'230', N'Test', CAST(N'2001-08-23' AS Date), N'test230@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (232, N'test231', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'231', N'Test', CAST(N'2001-08-23' AS Date), N'test231@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (233, N'test232', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'232', N'Test', CAST(N'2001-08-23' AS Date), N'test232@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (234, N'test233', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'233', N'Test', CAST(N'2001-08-23' AS Date), N'test233@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (235, N'test234', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'234', N'Test', CAST(N'2001-08-23' AS Date), N'test234@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (236, N'test235', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'235', N'Test', CAST(N'2001-08-23' AS Date), N'test235@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (237, N'test236', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'236', N'Test', CAST(N'2001-08-23' AS Date), N'test236@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (238, N'test237', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'237', N'Test', CAST(N'2001-08-23' AS Date), N'test237@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (239, N'test238', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'238', N'Test', CAST(N'2001-08-23' AS Date), N'test238@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (240, N'test239', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'239', N'Test', CAST(N'2001-08-23' AS Date), N'test239@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (241, N'test240', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'240', N'Test', CAST(N'2001-08-23' AS Date), N'test240@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (242, N'test241', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'241', N'Test', CAST(N'2001-08-23' AS Date), N'test241@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (243, N'test242', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'242', N'Test', CAST(N'2001-08-23' AS Date), N'test242@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (244, N'test243', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'243', N'Test', CAST(N'2001-08-23' AS Date), N'test243@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (245, N'test244', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'244', N'Test', CAST(N'2001-08-23' AS Date), N'test244@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (246, N'test245', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'245', N'Test', CAST(N'2001-08-23' AS Date), N'test245@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (247, N'test246', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'246', N'Test', CAST(N'2001-08-23' AS Date), N'test246@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (248, N'test247', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'247', N'Test', CAST(N'2001-08-23' AS Date), N'test247@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (249, N'test248', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'248', N'Test', CAST(N'2001-08-23' AS Date), N'test248@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (250, N'test249', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'249', N'Test', CAST(N'2001-08-23' AS Date), N'test249@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (251, N'test250', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'250', N'Test', CAST(N'2001-08-23' AS Date), N'test250@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (252, N'test251', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'251', N'Test', CAST(N'2001-08-23' AS Date), N'test251@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (253, N'test252', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'252', N'Test', CAST(N'2001-08-23' AS Date), N'test252@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (254, N'test253', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'253', N'Test', CAST(N'2001-08-23' AS Date), N'test253@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (255, N'test254', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'254', N'Test', CAST(N'2001-08-23' AS Date), N'test254@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (256, N'test255', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'255', N'Test', CAST(N'2001-08-23' AS Date), N'test255@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (257, N'test256', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'256', N'Test', CAST(N'2001-08-23' AS Date), N'test256@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (258, N'test257', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'257', N'Test', CAST(N'2001-08-23' AS Date), N'test257@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (259, N'test258', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'258', N'Test', CAST(N'2001-08-23' AS Date), N'test258@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (260, N'test259', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'259', N'Test', CAST(N'2001-08-23' AS Date), N'test259@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (261, N'test260', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'260', N'Test', CAST(N'2001-08-23' AS Date), N'test260@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (262, N'test261', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'261', N'Test', CAST(N'2001-08-23' AS Date), N'test261@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (263, N'test262', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'262', N'Test', CAST(N'2001-08-23' AS Date), N'test262@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (264, N'test263', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'263', N'Test', CAST(N'2001-08-23' AS Date), N'test263@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (265, N'test264', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'264', N'Test', CAST(N'2001-08-23' AS Date), N'test264@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (266, N'test265', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'265', N'Test', CAST(N'2001-08-23' AS Date), N'test265@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (267, N'test266', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'266', N'Test', CAST(N'2001-08-23' AS Date), N'test266@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (268, N'test267', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'267', N'Test', CAST(N'2001-08-23' AS Date), N'test267@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (269, N'test268', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'268', N'Test', CAST(N'2001-08-23' AS Date), N'test268@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (270, N'test269', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'269', N'Test', CAST(N'2001-08-23' AS Date), N'test269@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (271, N'test270', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'270', N'Test', CAST(N'2001-08-23' AS Date), N'test270@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (272, N'test271', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'271', N'Test', CAST(N'2001-08-23' AS Date), N'test271@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (273, N'test272', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'272', N'Test', CAST(N'2001-08-23' AS Date), N'test272@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (274, N'test273', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'273', N'Test', CAST(N'2001-08-23' AS Date), N'test273@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (275, N'test274', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'274', N'Test', CAST(N'2001-08-23' AS Date), N'test274@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (276, N'test275', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'275', N'Test', CAST(N'2001-08-23' AS Date), N'test275@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (277, N'test276', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'276', N'Test', CAST(N'2001-08-23' AS Date), N'test276@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (278, N'test277', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'277', N'Test', CAST(N'2001-08-23' AS Date), N'test277@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (279, N'test278', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'278', N'Test', CAST(N'2001-08-23' AS Date), N'test278@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (280, N'test279', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'279', N'Test', CAST(N'2001-08-23' AS Date), N'test279@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (281, N'test280', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'280', N'Test', CAST(N'2001-08-23' AS Date), N'test280@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (282, N'test281', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'281', N'Test', CAST(N'2001-08-23' AS Date), N'test281@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (283, N'test282', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'282', N'Test', CAST(N'2001-08-23' AS Date), N'test282@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (284, N'test283', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'283', N'Test', CAST(N'2001-08-23' AS Date), N'test283@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (285, N'test284', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'284', N'Test', CAST(N'2001-08-23' AS Date), N'test284@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (286, N'test285', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'285', N'Test', CAST(N'2001-08-23' AS Date), N'test285@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (287, N'test286', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'286', N'Test', CAST(N'2001-08-23' AS Date), N'test286@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (288, N'test287', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'287', N'Test', CAST(N'2001-08-23' AS Date), N'test287@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (289, N'test288', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'288', N'Test', CAST(N'2001-08-23' AS Date), N'test288@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (290, N'test289', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'289', N'Test', CAST(N'2001-08-23' AS Date), N'test289@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (291, N'test290', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'290', N'Test', CAST(N'2001-08-23' AS Date), N'test290@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (292, N'test291', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'291', N'Test', CAST(N'2001-08-23' AS Date), N'test291@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (293, N'test292', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'292', N'Test', CAST(N'2001-08-23' AS Date), N'test292@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (294, N'test293', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'293', N'Test', CAST(N'2001-08-23' AS Date), N'test293@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (295, N'test294', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'294', N'Test', CAST(N'2001-08-23' AS Date), N'test294@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (296, N'test295', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'295', N'Test', CAST(N'2001-08-23' AS Date), N'test295@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (297, N'test296', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'296', N'Test', CAST(N'2001-08-23' AS Date), N'test296@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (298, N'test297', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'297', N'Test', CAST(N'2001-08-23' AS Date), N'test297@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (299, N'test298', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'298', N'Test', CAST(N'2001-08-23' AS Date), N'test298@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (300, N'test299', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'299', N'Test', CAST(N'2001-08-23' AS Date), N'test299@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (301, N'test300', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'300', N'Test', CAST(N'2001-08-23' AS Date), N'test300@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (302, N'test301', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'301', N'Test', CAST(N'2001-08-23' AS Date), N'test301@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (303, N'test302', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'302', N'Test', CAST(N'2001-08-23' AS Date), N'test302@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (304, N'test303', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'303', N'Test', CAST(N'2001-08-23' AS Date), N'test303@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (305, N'test304', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'304', N'Test', CAST(N'2001-08-23' AS Date), N'test304@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (306, N'test305', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'305', N'Test', CAST(N'2001-08-23' AS Date), N'test305@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (307, N'test306', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'306', N'Test', CAST(N'2001-08-23' AS Date), N'test306@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (308, N'test307', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'307', N'Test', CAST(N'2001-08-23' AS Date), N'test307@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (309, N'test308', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'308', N'Test', CAST(N'2001-08-23' AS Date), N'test308@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (310, N'test309', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'309', N'Test', CAST(N'2001-08-23' AS Date), N'test309@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (311, N'test310', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'310', N'Test', CAST(N'2001-08-23' AS Date), N'test310@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (312, N'test311', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'311', N'Test', CAST(N'2001-08-23' AS Date), N'test311@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (313, N'test312', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'312', N'Test', CAST(N'2001-08-23' AS Date), N'test312@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (314, N'test313', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'313', N'Test', CAST(N'2001-08-23' AS Date), N'test313@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (315, N'test314', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'314', N'Test', CAST(N'2001-08-23' AS Date), N'test314@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (316, N'test315', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'315', N'Test', CAST(N'2001-08-23' AS Date), N'test315@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (317, N'test316', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'316', N'Test', CAST(N'2001-08-23' AS Date), N'test316@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (318, N'test317', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'317', N'Test', CAST(N'2001-08-23' AS Date), N'test317@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (319, N'test318', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'318', N'Test', CAST(N'2001-08-23' AS Date), N'test318@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (320, N'test319', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'319', N'Test', CAST(N'2001-08-23' AS Date), N'test319@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (321, N'test320', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'320', N'Test', CAST(N'2001-08-23' AS Date), N'test320@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (322, N'test321', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'321', N'Test', CAST(N'2001-08-23' AS Date), N'test321@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (323, N'test322', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'322', N'Test', CAST(N'2001-08-23' AS Date), N'test322@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (324, N'test323', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'323', N'Test', CAST(N'2001-08-23' AS Date), N'test323@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (325, N'test324', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'324', N'Test', CAST(N'2001-08-23' AS Date), N'test324@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (326, N'test325', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'325', N'Test', CAST(N'2001-08-23' AS Date), N'test325@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (327, N'test326', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'326', N'Test', CAST(N'2001-08-23' AS Date), N'test326@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (328, N'test327', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'327', N'Test', CAST(N'2001-08-23' AS Date), N'test327@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (329, N'test328', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'328', N'Test', CAST(N'2001-08-23' AS Date), N'test328@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (330, N'test329', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'329', N'Test', CAST(N'2001-08-23' AS Date), N'test329@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (331, N'test330', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'330', N'Test', CAST(N'2001-08-23' AS Date), N'test330@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (332, N'test331', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'331', N'Test', CAST(N'2001-08-23' AS Date), N'test331@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (333, N'test332', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'332', N'Test', CAST(N'2001-08-23' AS Date), N'test332@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (334, N'test333', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'333', N'Test', CAST(N'2001-08-23' AS Date), N'test333@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (335, N'test334', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'334', N'Test', CAST(N'2001-08-23' AS Date), N'test334@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (336, N'test335', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'335', N'Test', CAST(N'2001-08-23' AS Date), N'test335@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (337, N'test336', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'336', N'Test', CAST(N'2001-08-23' AS Date), N'test336@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (338, N'test337', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'337', N'Test', CAST(N'2001-08-23' AS Date), N'test337@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (339, N'test338', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'338', N'Test', CAST(N'2001-08-23' AS Date), N'test338@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (340, N'test339', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'339', N'Test', CAST(N'2001-08-23' AS Date), N'test339@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (341, N'test340', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'340', N'Test', CAST(N'2001-08-23' AS Date), N'test340@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (342, N'test341', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'341', N'Test', CAST(N'2001-08-23' AS Date), N'test341@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (343, N'test342', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'342', N'Test', CAST(N'2001-08-23' AS Date), N'test342@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (344, N'test343', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'343', N'Test', CAST(N'2001-08-23' AS Date), N'test343@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (345, N'test344', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'344', N'Test', CAST(N'2001-08-23' AS Date), N'test344@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (346, N'test345', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'345', N'Test', CAST(N'2001-08-23' AS Date), N'test345@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (347, N'test346', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'346', N'Test', CAST(N'2001-08-23' AS Date), N'test346@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (348, N'test347', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'347', N'Test', CAST(N'2001-08-23' AS Date), N'test347@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (349, N'test348', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'348', N'Test', CAST(N'2001-08-23' AS Date), N'test348@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (350, N'test349', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'349', N'Test', CAST(N'2001-08-23' AS Date), N'test349@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (351, N'test350', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'350', N'Test', CAST(N'2001-08-23' AS Date), N'test350@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (352, N'test351', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'351', N'Test', CAST(N'2001-08-23' AS Date), N'test351@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (353, N'test352', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'352', N'Test', CAST(N'2001-08-23' AS Date), N'test352@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (354, N'test353', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'353', N'Test', CAST(N'2001-08-23' AS Date), N'test353@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (355, N'test354', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'354', N'Test', CAST(N'2001-08-23' AS Date), N'test354@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (356, N'test355', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'355', N'Test', CAST(N'2001-08-23' AS Date), N'test355@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (357, N'test356', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'356', N'Test', CAST(N'2001-08-23' AS Date), N'test356@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (358, N'test357', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'357', N'Test', CAST(N'2001-08-23' AS Date), N'test357@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (359, N'test358', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'358', N'Test', CAST(N'2001-08-23' AS Date), N'test358@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (360, N'test359', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'359', N'Test', CAST(N'2001-08-23' AS Date), N'test359@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (361, N'test360', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'360', N'Test', CAST(N'2001-08-23' AS Date), N'test360@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (362, N'test361', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'361', N'Test', CAST(N'2001-08-23' AS Date), N'test361@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (363, N'test362', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'362', N'Test', CAST(N'2001-08-23' AS Date), N'test362@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (364, N'test363', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'363', N'Test', CAST(N'2001-08-23' AS Date), N'test363@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (365, N'test364', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'364', N'Test', CAST(N'2001-08-23' AS Date), N'test364@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (366, N'test365', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'365', N'Test', CAST(N'2001-08-23' AS Date), N'test365@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (367, N'test366', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'366', N'Test', CAST(N'2001-08-23' AS Date), N'test366@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (368, N'test367', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'367', N'Test', CAST(N'2001-08-23' AS Date), N'test367@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (369, N'test368', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'368', N'Test', CAST(N'2001-08-23' AS Date), N'test368@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (370, N'test369', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'369', N'Test', CAST(N'2001-08-23' AS Date), N'test369@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (371, N'test370', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'370', N'Test', CAST(N'2001-08-23' AS Date), N'test370@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (372, N'test371', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'371', N'Test', CAST(N'2001-08-23' AS Date), N'test371@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (373, N'test372', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'372', N'Test', CAST(N'2001-08-23' AS Date), N'test372@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (374, N'test373', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'373', N'Test', CAST(N'2001-08-23' AS Date), N'test373@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (375, N'test374', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'374', N'Test', CAST(N'2001-08-23' AS Date), N'test374@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (376, N'test375', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'375', N'Test', CAST(N'2001-08-23' AS Date), N'test375@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (377, N'test376', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'376', N'Test', CAST(N'2001-08-23' AS Date), N'test376@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (378, N'test377', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'377', N'Test', CAST(N'2001-08-23' AS Date), N'test377@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (379, N'test378', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'378', N'Test', CAST(N'2001-08-23' AS Date), N'test378@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (380, N'test379', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'379', N'Test', CAST(N'2001-08-23' AS Date), N'test379@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (381, N'test380', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'380', N'Test', CAST(N'2001-08-23' AS Date), N'test380@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (382, N'test381', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'381', N'Test', CAST(N'2001-08-23' AS Date), N'test381@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (383, N'test382', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'382', N'Test', CAST(N'2001-08-23' AS Date), N'test382@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (384, N'test383', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'383', N'Test', CAST(N'2001-08-23' AS Date), N'test383@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (385, N'test384', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'384', N'Test', CAST(N'2001-08-23' AS Date), N'test384@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (386, N'test385', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'385', N'Test', CAST(N'2001-08-23' AS Date), N'test385@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (387, N'test386', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'386', N'Test', CAST(N'2001-08-23' AS Date), N'test386@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (388, N'test387', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'387', N'Test', CAST(N'2001-08-23' AS Date), N'test387@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (389, N'test388', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'388', N'Test', CAST(N'2001-08-23' AS Date), N'test388@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (390, N'test389', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'389', N'Test', CAST(N'2001-08-23' AS Date), N'test389@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (391, N'test390', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'390', N'Test', CAST(N'2001-08-23' AS Date), N'test390@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (392, N'test391', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'391', N'Test', CAST(N'2001-08-23' AS Date), N'test391@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (393, N'test392', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'392', N'Test', CAST(N'2001-08-23' AS Date), N'test392@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (394, N'test393', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'393', N'Test', CAST(N'2001-08-23' AS Date), N'test393@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (395, N'test394', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'394', N'Test', CAST(N'2001-08-23' AS Date), N'test394@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (396, N'test395', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'395', N'Test', CAST(N'2001-08-23' AS Date), N'test395@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (397, N'test396', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'396', N'Test', CAST(N'2001-08-23' AS Date), N'test396@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (398, N'test397', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'397', N'Test', CAST(N'2001-08-23' AS Date), N'test397@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (399, N'test398', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'398', N'Test', CAST(N'2001-08-23' AS Date), N'test398@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (400, N'test399', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'399', N'Test', CAST(N'2001-08-23' AS Date), N'test399@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (401, N'test400', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'400', N'Test', CAST(N'2001-08-23' AS Date), N'test400@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (402, N'test401', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'401', N'Test', CAST(N'2001-08-23' AS Date), N'test401@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (403, N'test402', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'402', N'Test', CAST(N'2001-08-23' AS Date), N'test402@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (404, N'test403', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'403', N'Test', CAST(N'2001-08-23' AS Date), N'test403@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (405, N'test404', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'404', N'Test', CAST(N'2001-08-23' AS Date), N'test404@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (406, N'test405', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'405', N'Test', CAST(N'2001-08-23' AS Date), N'test405@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (407, N'test406', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'406', N'Test', CAST(N'2001-08-23' AS Date), N'test406@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (408, N'test407', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'407', N'Test', CAST(N'2001-08-23' AS Date), N'test407@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (409, N'test408', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'408', N'Test', CAST(N'2001-08-23' AS Date), N'test408@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (410, N'test409', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'409', N'Test', CAST(N'2001-08-23' AS Date), N'test409@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (411, N'test410', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'410', N'Test', CAST(N'2001-08-23' AS Date), N'test410@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (412, N'test411', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'411', N'Test', CAST(N'2001-08-23' AS Date), N'test411@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (413, N'test412', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'412', N'Test', CAST(N'2001-08-23' AS Date), N'test412@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (414, N'test413', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'413', N'Test', CAST(N'2001-08-23' AS Date), N'test413@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (415, N'test414', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'414', N'Test', CAST(N'2001-08-23' AS Date), N'test414@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (416, N'test415', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'415', N'Test', CAST(N'2001-08-23' AS Date), N'test415@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (417, N'test416', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'416', N'Test', CAST(N'2001-08-23' AS Date), N'test416@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (418, N'test417', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'417', N'Test', CAST(N'2001-08-23' AS Date), N'test417@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (419, N'test418', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'418', N'Test', CAST(N'2001-08-23' AS Date), N'test418@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (420, N'test419', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'419', N'Test', CAST(N'2001-08-23' AS Date), N'test419@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (421, N'test420', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'420', N'Test', CAST(N'2001-08-23' AS Date), N'test420@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (422, N'test421', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'421', N'Test', CAST(N'2001-08-23' AS Date), N'test421@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (423, N'test422', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'422', N'Test', CAST(N'2001-08-23' AS Date), N'test422@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (424, N'test423', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'423', N'Test', CAST(N'2001-08-23' AS Date), N'test423@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (425, N'test424', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'424', N'Test', CAST(N'2001-08-23' AS Date), N'test424@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (426, N'test425', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'425', N'Test', CAST(N'2001-08-23' AS Date), N'test425@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (427, N'test426', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'426', N'Test', CAST(N'2001-08-23' AS Date), N'test426@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (428, N'test427', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'427', N'Test', CAST(N'2001-08-23' AS Date), N'test427@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (429, N'test428', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'428', N'Test', CAST(N'2001-08-23' AS Date), N'test428@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (430, N'test429', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'429', N'Test', CAST(N'2001-08-23' AS Date), N'test429@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (431, N'test430', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'430', N'Test', CAST(N'2001-08-23' AS Date), N'test430@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (432, N'test431', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'431', N'Test', CAST(N'2001-08-23' AS Date), N'test431@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (433, N'test432', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'432', N'Test', CAST(N'2001-08-23' AS Date), N'test432@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (434, N'test433', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'433', N'Test', CAST(N'2001-08-23' AS Date), N'test433@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (435, N'test434', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'434', N'Test', CAST(N'2001-08-23' AS Date), N'test434@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (436, N'test435', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'435', N'Test', CAST(N'2001-08-23' AS Date), N'test435@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (437, N'test436', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'436', N'Test', CAST(N'2001-08-23' AS Date), N'test436@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (438, N'test437', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'437', N'Test', CAST(N'2001-08-23' AS Date), N'test437@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (439, N'test438', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'438', N'Test', CAST(N'2001-08-23' AS Date), N'test438@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (440, N'test439', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'439', N'Test', CAST(N'2001-08-23' AS Date), N'test439@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (441, N'test440', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'440', N'Test', CAST(N'2001-08-23' AS Date), N'test440@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (442, N'test441', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'441', N'Test', CAST(N'2001-08-23' AS Date), N'test441@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (443, N'test442', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'442', N'Test', CAST(N'2001-08-23' AS Date), N'test442@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (444, N'test443', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'443', N'Test', CAST(N'2001-08-23' AS Date), N'test443@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (445, N'test444', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'444', N'Test', CAST(N'2001-08-23' AS Date), N'test444@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (446, N'test445', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'445', N'Test', CAST(N'2001-08-23' AS Date), N'test445@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (447, N'test446', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'446', N'Test', CAST(N'2001-08-23' AS Date), N'test446@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (448, N'test447', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'447', N'Test', CAST(N'2001-08-23' AS Date), N'test447@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (449, N'test448', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'448', N'Test', CAST(N'2001-08-23' AS Date), N'test448@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (450, N'test449', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'449', N'Test', CAST(N'2001-08-23' AS Date), N'test449@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (451, N'test450', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'450', N'Test', CAST(N'2001-08-23' AS Date), N'test450@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (452, N'test451', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'451', N'Test', CAST(N'2001-08-23' AS Date), N'test451@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (453, N'test452', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'452', N'Test', CAST(N'2001-08-23' AS Date), N'test452@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (454, N'test453', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'453', N'Test', CAST(N'2001-08-23' AS Date), N'test453@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (455, N'test454', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'454', N'Test', CAST(N'2001-08-23' AS Date), N'test454@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (456, N'test455', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'455', N'Test', CAST(N'2001-08-23' AS Date), N'test455@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (457, N'test456', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'456', N'Test', CAST(N'2001-08-23' AS Date), N'test456@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (458, N'test457', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'457', N'Test', CAST(N'2001-08-23' AS Date), N'test457@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (459, N'test458', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'458', N'Test', CAST(N'2001-08-23' AS Date), N'test458@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (460, N'test459', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'459', N'Test', CAST(N'2001-08-23' AS Date), N'test459@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (461, N'test460', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'460', N'Test', CAST(N'2001-08-23' AS Date), N'test460@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (462, N'test461', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'461', N'Test', CAST(N'2001-08-23' AS Date), N'test461@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (463, N'test462', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'462', N'Test', CAST(N'2001-08-23' AS Date), N'test462@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (464, N'test463', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'463', N'Test', CAST(N'2001-08-23' AS Date), N'test463@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (465, N'test464', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'464', N'Test', CAST(N'2001-08-23' AS Date), N'test464@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (466, N'test465', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'465', N'Test', CAST(N'2001-08-23' AS Date), N'test465@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (467, N'test466', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'466', N'Test', CAST(N'2001-08-23' AS Date), N'test466@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (468, N'test467', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'467', N'Test', CAST(N'2001-08-23' AS Date), N'test467@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (469, N'test468', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'468', N'Test', CAST(N'2001-08-23' AS Date), N'test468@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (470, N'test469', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'469', N'Test', CAST(N'2001-08-23' AS Date), N'test469@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (471, N'test470', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'470', N'Test', CAST(N'2001-08-23' AS Date), N'test470@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (472, N'test471', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'471', N'Test', CAST(N'2001-08-23' AS Date), N'test471@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (473, N'test472', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'472', N'Test', CAST(N'2001-08-23' AS Date), N'test472@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (474, N'test473', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'473', N'Test', CAST(N'2001-08-23' AS Date), N'test473@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (475, N'test474', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'474', N'Test', CAST(N'2001-08-23' AS Date), N'test474@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (476, N'test475', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'475', N'Test', CAST(N'2001-08-23' AS Date), N'test475@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (477, N'test476', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'476', N'Test', CAST(N'2001-08-23' AS Date), N'test476@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (478, N'test477', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'477', N'Test', CAST(N'2001-08-23' AS Date), N'test477@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (479, N'test478', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'478', N'Test', CAST(N'2001-08-23' AS Date), N'test478@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (480, N'test479', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'479', N'Test', CAST(N'2001-08-23' AS Date), N'test479@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (481, N'test480', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'480', N'Test', CAST(N'2001-08-23' AS Date), N'test480@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (482, N'test481', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'481', N'Test', CAST(N'2001-08-23' AS Date), N'test481@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (483, N'test482', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'482', N'Test', CAST(N'2001-08-23' AS Date), N'test482@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (484, N'test483', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'483', N'Test', CAST(N'2001-08-23' AS Date), N'test483@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (485, N'test484', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'484', N'Test', CAST(N'2001-08-23' AS Date), N'test484@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (486, N'test485', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'485', N'Test', CAST(N'2001-08-23' AS Date), N'test485@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (487, N'test486', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'486', N'Test', CAST(N'2001-08-23' AS Date), N'test486@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (488, N'test487', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'487', N'Test', CAST(N'2001-08-23' AS Date), N'test487@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (489, N'test488', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'488', N'Test', CAST(N'2001-08-23' AS Date), N'test488@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (490, N'test489', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'489', N'Test', CAST(N'2001-08-23' AS Date), N'test489@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (491, N'test490', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'490', N'Test', CAST(N'2001-08-23' AS Date), N'test490@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (492, N'test491', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'491', N'Test', CAST(N'2001-08-23' AS Date), N'test491@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (493, N'test492', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'492', N'Test', CAST(N'2001-08-23' AS Date), N'test492@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (494, N'test493', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'493', N'Test', CAST(N'2001-08-23' AS Date), N'test493@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (495, N'test494', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'494', N'Test', CAST(N'2001-08-23' AS Date), N'test494@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (496, N'test495', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'495', N'Test', CAST(N'2001-08-23' AS Date), N'test495@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (497, N'test496', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'496', N'Test', CAST(N'2001-08-23' AS Date), N'test496@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (498, N'test497', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'497', N'Test', CAST(N'2001-08-23' AS Date), N'test497@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (499, N'test498', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'498', N'Test', CAST(N'2001-08-23' AS Date), N'test498@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (500, N'test499', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'499', N'Test', CAST(N'2001-08-23' AS Date), N'test499@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (501, N'test500', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'500', N'Test', CAST(N'2001-08-23' AS Date), N'test500@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (502, N'test501', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'501', N'Test', CAST(N'2001-08-23' AS Date), N'test501@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (503, N'test502', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'502', N'Test', CAST(N'2001-08-23' AS Date), N'test502@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (504, N'test503', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'503', N'Test', CAST(N'2001-08-23' AS Date), N'test503@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (505, N'test504', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'504', N'Test', CAST(N'2001-08-23' AS Date), N'test504@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (506, N'test505', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'505', N'Test', CAST(N'2001-08-23' AS Date), N'test505@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (507, N'test506', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'506', N'Test', CAST(N'2001-08-23' AS Date), N'test506@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (508, N'test507', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'507', N'Test', CAST(N'2001-08-23' AS Date), N'test507@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (509, N'test508', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'508', N'Test', CAST(N'2001-08-23' AS Date), N'test508@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (510, N'test509', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'509', N'Test', CAST(N'2001-08-23' AS Date), N'test509@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (511, N'test510', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'510', N'Test', CAST(N'2001-08-23' AS Date), N'test510@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (512, N'test511', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'511', N'Test', CAST(N'2001-08-23' AS Date), N'test511@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (513, N'test512', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'512', N'Test', CAST(N'2001-08-23' AS Date), N'test512@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (514, N'test513', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'513', N'Test', CAST(N'2001-08-23' AS Date), N'test513@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (515, N'test514', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'514', N'Test', CAST(N'2001-08-23' AS Date), N'test514@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (516, N'test515', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'515', N'Test', CAST(N'2001-08-23' AS Date), N'test515@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (517, N'test516', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'516', N'Test', CAST(N'2001-08-23' AS Date), N'test516@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (518, N'test517', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'517', N'Test', CAST(N'2001-08-23' AS Date), N'test517@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (519, N'test518', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'518', N'Test', CAST(N'2001-08-23' AS Date), N'test518@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (520, N'test519', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'519', N'Test', CAST(N'2001-08-23' AS Date), N'test519@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (521, N'test520', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'520', N'Test', CAST(N'2001-08-23' AS Date), N'test520@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (522, N'test521', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'521', N'Test', CAST(N'2001-08-23' AS Date), N'test521@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (523, N'test522', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'522', N'Test', CAST(N'2001-08-23' AS Date), N'test522@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (524, N'test523', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'523', N'Test', CAST(N'2001-08-23' AS Date), N'test523@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (525, N'test524', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'524', N'Test', CAST(N'2001-08-23' AS Date), N'test524@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (526, N'test525', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'525', N'Test', CAST(N'2001-08-23' AS Date), N'test525@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (527, N'test526', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'526', N'Test', CAST(N'2001-08-23' AS Date), N'test526@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (528, N'test527', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'527', N'Test', CAST(N'2001-08-23' AS Date), N'test527@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (529, N'test528', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'528', N'Test', CAST(N'2001-08-23' AS Date), N'test528@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (530, N'test529', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'529', N'Test', CAST(N'2001-08-23' AS Date), N'test529@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (531, N'test530', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'530', N'Test', CAST(N'2001-08-23' AS Date), N'test530@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (532, N'test531', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'531', N'Test', CAST(N'2001-08-23' AS Date), N'test531@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (533, N'test532', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'532', N'Test', CAST(N'2001-08-23' AS Date), N'test532@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (534, N'test533', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'533', N'Test', CAST(N'2001-08-23' AS Date), N'test533@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (535, N'test534', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'534', N'Test', CAST(N'2001-08-23' AS Date), N'test534@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (536, N'test535', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'535', N'Test', CAST(N'2001-08-23' AS Date), N'test535@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (537, N'test536', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'536', N'Test', CAST(N'2001-08-23' AS Date), N'test536@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (538, N'test537', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'537', N'Test', CAST(N'2001-08-23' AS Date), N'test537@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (539, N'test538', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'538', N'Test', CAST(N'2001-08-23' AS Date), N'test538@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (540, N'test539', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'539', N'Test', CAST(N'2001-08-23' AS Date), N'test539@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (541, N'test540', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'540', N'Test', CAST(N'2001-08-23' AS Date), N'test540@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (542, N'test541', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'541', N'Test', CAST(N'2001-08-23' AS Date), N'test541@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (543, N'test542', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'542', N'Test', CAST(N'2001-08-23' AS Date), N'test542@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (544, N'test543', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'543', N'Test', CAST(N'2001-08-23' AS Date), N'test543@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (545, N'test544', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'544', N'Test', CAST(N'2001-08-23' AS Date), N'test544@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (546, N'test545', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'545', N'Test', CAST(N'2001-08-23' AS Date), N'test545@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (547, N'test546', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'546', N'Test', CAST(N'2001-08-23' AS Date), N'test546@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (548, N'test547', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'547', N'Test', CAST(N'2001-08-23' AS Date), N'test547@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (549, N'test548', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'548', N'Test', CAST(N'2001-08-23' AS Date), N'test548@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (550, N'test549', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'549', N'Test', CAST(N'2001-08-23' AS Date), N'test549@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (551, N'test550', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'550', N'Test', CAST(N'2001-08-23' AS Date), N'test550@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (552, N'test551', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'551', N'Test', CAST(N'2001-08-23' AS Date), N'test551@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (553, N'test552', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'552', N'Test', CAST(N'2001-08-23' AS Date), N'test552@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (554, N'test553', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'553', N'Test', CAST(N'2001-08-23' AS Date), N'test553@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (555, N'test554', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'554', N'Test', CAST(N'2001-08-23' AS Date), N'test554@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (556, N'test555', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'555', N'Test', CAST(N'2001-08-23' AS Date), N'test555@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (557, N'test556', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'556', N'Test', CAST(N'2001-08-23' AS Date), N'test556@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (558, N'test557', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'557', N'Test', CAST(N'2001-08-23' AS Date), N'test557@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (559, N'test558', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'558', N'Test', CAST(N'2001-08-23' AS Date), N'test558@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (560, N'test559', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'559', N'Test', CAST(N'2001-08-23' AS Date), N'test559@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (561, N'test560', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'560', N'Test', CAST(N'2001-08-23' AS Date), N'test560@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (562, N'test561', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'561', N'Test', CAST(N'2001-08-23' AS Date), N'test561@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (563, N'test562', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'562', N'Test', CAST(N'2001-08-23' AS Date), N'test562@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (564, N'test563', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'563', N'Test', CAST(N'2001-08-23' AS Date), N'test563@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (565, N'test564', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'564', N'Test', CAST(N'2001-08-23' AS Date), N'test564@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (566, N'test565', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'565', N'Test', CAST(N'2001-08-23' AS Date), N'test565@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (567, N'test566', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'566', N'Test', CAST(N'2001-08-23' AS Date), N'test566@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (568, N'test567', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'567', N'Test', CAST(N'2001-08-23' AS Date), N'test567@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (569, N'test568', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'568', N'Test', CAST(N'2001-08-23' AS Date), N'test568@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (570, N'test569', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'569', N'Test', CAST(N'2001-08-23' AS Date), N'test569@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (571, N'test570', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'570', N'Test', CAST(N'2001-08-23' AS Date), N'test570@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (572, N'test571', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'571', N'Test', CAST(N'2001-08-23' AS Date), N'test571@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (573, N'test572', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'572', N'Test', CAST(N'2001-08-23' AS Date), N'test572@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (574, N'test573', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'573', N'Test', CAST(N'2001-08-23' AS Date), N'test573@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (575, N'test574', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'574', N'Test', CAST(N'2001-08-23' AS Date), N'test574@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (576, N'test575', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'575', N'Test', CAST(N'2001-08-23' AS Date), N'test575@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (577, N'test576', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'576', N'Test', CAST(N'2001-08-23' AS Date), N'test576@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (578, N'test577', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'577', N'Test', CAST(N'2001-08-23' AS Date), N'test577@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (579, N'test578', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'578', N'Test', CAST(N'2001-08-23' AS Date), N'test578@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (580, N'test579', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'579', N'Test', CAST(N'2001-08-23' AS Date), N'test579@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (581, N'test580', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'580', N'Test', CAST(N'2001-08-23' AS Date), N'test580@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (582, N'test581', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'581', N'Test', CAST(N'2001-08-23' AS Date), N'test581@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (583, N'test582', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'582', N'Test', CAST(N'2001-08-23' AS Date), N'test582@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (584, N'test583', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'583', N'Test', CAST(N'2001-08-23' AS Date), N'test583@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (585, N'test584', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'584', N'Test', CAST(N'2001-08-23' AS Date), N'test584@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (586, N'test585', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'585', N'Test', CAST(N'2001-08-23' AS Date), N'test585@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (587, N'test586', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'586', N'Test', CAST(N'2001-08-23' AS Date), N'test586@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (588, N'test587', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'587', N'Test', CAST(N'2001-08-23' AS Date), N'test587@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (589, N'test588', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'588', N'Test', CAST(N'2001-08-23' AS Date), N'test588@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (590, N'test589', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'589', N'Test', CAST(N'2001-08-23' AS Date), N'test589@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (591, N'test590', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'590', N'Test', CAST(N'2001-08-23' AS Date), N'test590@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (592, N'test591', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'591', N'Test', CAST(N'2001-08-23' AS Date), N'test591@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (593, N'test592', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'592', N'Test', CAST(N'2001-08-23' AS Date), N'test592@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (594, N'test593', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'593', N'Test', CAST(N'2001-08-23' AS Date), N'test593@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (595, N'test594', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'594', N'Test', CAST(N'2001-08-23' AS Date), N'test594@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (596, N'test595', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'595', N'Test', CAST(N'2001-08-23' AS Date), N'test595@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (597, N'test596', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'596', N'Test', CAST(N'2001-08-23' AS Date), N'test596@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (598, N'test597', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'597', N'Test', CAST(N'2001-08-23' AS Date), N'test597@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (599, N'test598', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'598', N'Test', CAST(N'2001-08-23' AS Date), N'test598@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (600, N'test599', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'599', N'Test', CAST(N'2001-08-23' AS Date), N'test599@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (601, N'test600', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'600', N'Test', CAST(N'2001-08-23' AS Date), N'test600@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (602, N'test601', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'601', N'Test', CAST(N'2001-08-23' AS Date), N'test601@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (603, N'test602', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'602', N'Test', CAST(N'2001-08-23' AS Date), N'test602@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (604, N'test603', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'603', N'Test', CAST(N'2001-08-23' AS Date), N'test603@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (605, N'test604', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'604', N'Test', CAST(N'2001-08-23' AS Date), N'test604@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (606, N'test605', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'605', N'Test', CAST(N'2001-08-23' AS Date), N'test605@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (607, N'test606', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'606', N'Test', CAST(N'2001-08-23' AS Date), N'test606@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (608, N'test607', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'607', N'Test', CAST(N'2001-08-23' AS Date), N'test607@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (609, N'test608', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'608', N'Test', CAST(N'2001-08-23' AS Date), N'test608@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (610, N'test609', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'609', N'Test', CAST(N'2001-08-23' AS Date), N'test609@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (611, N'test610', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'610', N'Test', CAST(N'2001-08-23' AS Date), N'test610@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (612, N'test611', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'611', N'Test', CAST(N'2001-08-23' AS Date), N'test611@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (613, N'test612', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'612', N'Test', CAST(N'2001-08-23' AS Date), N'test612@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (614, N'test613', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'613', N'Test', CAST(N'2001-08-23' AS Date), N'test613@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (615, N'test614', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'614', N'Test', CAST(N'2001-08-23' AS Date), N'test614@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (616, N'test615', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'615', N'Test', CAST(N'2001-08-23' AS Date), N'test615@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (617, N'test616', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'616', N'Test', CAST(N'2001-08-23' AS Date), N'test616@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (618, N'test617', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'617', N'Test', CAST(N'2001-08-23' AS Date), N'test617@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (619, N'test618', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'618', N'Test', CAST(N'2001-08-23' AS Date), N'test618@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (620, N'test619', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'619', N'Test', CAST(N'2001-08-23' AS Date), N'test619@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (621, N'test620', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'620', N'Test', CAST(N'2001-08-23' AS Date), N'test620@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (622, N'test621', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'621', N'Test', CAST(N'2001-08-23' AS Date), N'test621@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (623, N'test622', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'622', N'Test', CAST(N'2001-08-23' AS Date), N'test622@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (624, N'test623', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'623', N'Test', CAST(N'2001-08-23' AS Date), N'test623@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (625, N'test624', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'624', N'Test', CAST(N'2001-08-23' AS Date), N'test624@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (626, N'test625', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'625', N'Test', CAST(N'2001-08-23' AS Date), N'test625@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (627, N'test626', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'626', N'Test', CAST(N'2001-08-23' AS Date), N'test626@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (628, N'test627', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'627', N'Test', CAST(N'2001-08-23' AS Date), N'test627@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (629, N'test628', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'628', N'Test', CAST(N'2001-08-23' AS Date), N'test628@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (630, N'test629', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'629', N'Test', CAST(N'2001-08-23' AS Date), N'test629@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (631, N'test630', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'630', N'Test', CAST(N'2001-08-23' AS Date), N'test630@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (632, N'test631', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'631', N'Test', CAST(N'2001-08-23' AS Date), N'test631@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (633, N'test632', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'632', N'Test', CAST(N'2001-08-23' AS Date), N'test632@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (634, N'test633', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'633', N'Test', CAST(N'2001-08-23' AS Date), N'test633@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (635, N'test634', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'634', N'Test', CAST(N'2001-08-23' AS Date), N'test634@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (636, N'test635', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'635', N'Test', CAST(N'2001-08-23' AS Date), N'test635@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (637, N'test636', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'636', N'Test', CAST(N'2001-08-23' AS Date), N'test636@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (638, N'test637', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'637', N'Test', CAST(N'2001-08-23' AS Date), N'test637@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (639, N'test638', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'638', N'Test', CAST(N'2001-08-23' AS Date), N'test638@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (640, N'test639', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'639', N'Test', CAST(N'2001-08-23' AS Date), N'test639@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (641, N'test640', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'640', N'Test', CAST(N'2001-08-23' AS Date), N'test640@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (642, N'test641', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'641', N'Test', CAST(N'2001-08-23' AS Date), N'test641@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (643, N'test642', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'642', N'Test', CAST(N'2001-08-23' AS Date), N'test642@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (644, N'test643', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'643', N'Test', CAST(N'2001-08-23' AS Date), N'test643@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (645, N'test644', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'644', N'Test', CAST(N'2001-08-23' AS Date), N'test644@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (646, N'test645', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'645', N'Test', CAST(N'2001-08-23' AS Date), N'test645@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (647, N'test646', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'646', N'Test', CAST(N'2001-08-23' AS Date), N'test646@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (648, N'test647', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'647', N'Test', CAST(N'2001-08-23' AS Date), N'test647@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (649, N'test648', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'648', N'Test', CAST(N'2001-08-23' AS Date), N'test648@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (650, N'test649', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'649', N'Test', CAST(N'2001-08-23' AS Date), N'test649@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (651, N'test650', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'650', N'Test', CAST(N'2001-08-23' AS Date), N'test650@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (652, N'test651', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'651', N'Test', CAST(N'2001-08-23' AS Date), N'test651@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (653, N'test652', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'652', N'Test', CAST(N'2001-08-23' AS Date), N'test652@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (654, N'test653', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'653', N'Test', CAST(N'2001-08-23' AS Date), N'test653@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (655, N'test654', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'654', N'Test', CAST(N'2001-08-23' AS Date), N'test654@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (656, N'test655', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'655', N'Test', CAST(N'2001-08-23' AS Date), N'test655@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (657, N'test656', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'656', N'Test', CAST(N'2001-08-23' AS Date), N'test656@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (658, N'test657', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'657', N'Test', CAST(N'2001-08-23' AS Date), N'test657@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (659, N'test658', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'658', N'Test', CAST(N'2001-08-23' AS Date), N'test658@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (660, N'test659', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'659', N'Test', CAST(N'2001-08-23' AS Date), N'test659@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (661, N'test660', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'660', N'Test', CAST(N'2001-08-23' AS Date), N'test660@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (662, N'test661', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'661', N'Test', CAST(N'2001-08-23' AS Date), N'test661@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (663, N'test662', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'662', N'Test', CAST(N'2001-08-23' AS Date), N'test662@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (664, N'test663', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'663', N'Test', CAST(N'2001-08-23' AS Date), N'test663@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (665, N'test664', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'664', N'Test', CAST(N'2001-08-23' AS Date), N'test664@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (666, N'test665', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'665', N'Test', CAST(N'2001-08-23' AS Date), N'test665@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (667, N'test666', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'666', N'Test', CAST(N'2001-08-23' AS Date), N'test666@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (668, N'test667', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'667', N'Test', CAST(N'2001-08-23' AS Date), N'test667@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (669, N'test668', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'668', N'Test', CAST(N'2001-08-23' AS Date), N'test668@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (670, N'test669', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'669', N'Test', CAST(N'2001-08-23' AS Date), N'test669@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (671, N'test670', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'670', N'Test', CAST(N'2001-08-23' AS Date), N'test670@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (672, N'test671', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'671', N'Test', CAST(N'2001-08-23' AS Date), N'test671@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (673, N'test672', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'672', N'Test', CAST(N'2001-08-23' AS Date), N'test672@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (674, N'test673', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'673', N'Test', CAST(N'2001-08-23' AS Date), N'test673@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (675, N'test674', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'674', N'Test', CAST(N'2001-08-23' AS Date), N'test674@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (676, N'test675', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'675', N'Test', CAST(N'2001-08-23' AS Date), N'test675@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (677, N'test676', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'676', N'Test', CAST(N'2001-08-23' AS Date), N'test676@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (678, N'test677', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'677', N'Test', CAST(N'2001-08-23' AS Date), N'test677@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (679, N'test678', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'678', N'Test', CAST(N'2001-08-23' AS Date), N'test678@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (680, N'test679', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'679', N'Test', CAST(N'2001-08-23' AS Date), N'test679@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (681, N'test680', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'680', N'Test', CAST(N'2001-08-23' AS Date), N'test680@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (682, N'test681', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'681', N'Test', CAST(N'2001-08-23' AS Date), N'test681@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (683, N'test682', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'682', N'Test', CAST(N'2001-08-23' AS Date), N'test682@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (684, N'test683', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'683', N'Test', CAST(N'2001-08-23' AS Date), N'test683@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (685, N'test684', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'684', N'Test', CAST(N'2001-08-23' AS Date), N'test684@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (686, N'test685', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'685', N'Test', CAST(N'2001-08-23' AS Date), N'test685@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (687, N'test686', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'686', N'Test', CAST(N'2001-08-23' AS Date), N'test686@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (688, N'test687', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'687', N'Test', CAST(N'2001-08-23' AS Date), N'test687@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (689, N'test688', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'688', N'Test', CAST(N'2001-08-23' AS Date), N'test688@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (690, N'test689', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'689', N'Test', CAST(N'2001-08-23' AS Date), N'test689@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (691, N'test690', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'690', N'Test', CAST(N'2001-08-23' AS Date), N'test690@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (692, N'test691', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'691', N'Test', CAST(N'2001-08-23' AS Date), N'test691@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (693, N'test692', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'692', N'Test', CAST(N'2001-08-23' AS Date), N'test692@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (694, N'test693', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'693', N'Test', CAST(N'2001-08-23' AS Date), N'test693@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (695, N'test694', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'694', N'Test', CAST(N'2001-08-23' AS Date), N'test694@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (696, N'test695', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'695', N'Test', CAST(N'2001-08-23' AS Date), N'test695@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (697, N'test696', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'696', N'Test', CAST(N'2001-08-23' AS Date), N'test696@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (698, N'test697', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'697', N'Test', CAST(N'2001-08-23' AS Date), N'test697@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (699, N'test698', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'698', N'Test', CAST(N'2001-08-23' AS Date), N'test698@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (700, N'test699', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'699', N'Test', CAST(N'2001-08-23' AS Date), N'test699@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (701, N'test700', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'700', N'Test', CAST(N'2001-08-23' AS Date), N'test700@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (702, N'test701', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'701', N'Test', CAST(N'2001-08-23' AS Date), N'test701@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (703, N'test702', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'702', N'Test', CAST(N'2001-08-23' AS Date), N'test702@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (704, N'test703', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'703', N'Test', CAST(N'2001-08-23' AS Date), N'test703@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (705, N'test704', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'704', N'Test', CAST(N'2001-08-23' AS Date), N'test704@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (706, N'test705', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'705', N'Test', CAST(N'2001-08-23' AS Date), N'test705@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (707, N'test706', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'706', N'Test', CAST(N'2001-08-23' AS Date), N'test706@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (708, N'test707', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'707', N'Test', CAST(N'2001-08-23' AS Date), N'test707@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (709, N'test708', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'708', N'Test', CAST(N'2001-08-23' AS Date), N'test708@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (710, N'test709', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'709', N'Test', CAST(N'2001-08-23' AS Date), N'test709@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (711, N'test710', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'710', N'Test', CAST(N'2001-08-23' AS Date), N'test710@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (712, N'test711', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'711', N'Test', CAST(N'2001-08-23' AS Date), N'test711@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (713, N'test712', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'712', N'Test', CAST(N'2001-08-23' AS Date), N'test712@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (714, N'test713', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'713', N'Test', CAST(N'2001-08-23' AS Date), N'test713@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (715, N'test714', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'714', N'Test', CAST(N'2001-08-23' AS Date), N'test714@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (716, N'test715', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'715', N'Test', CAST(N'2001-08-23' AS Date), N'test715@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (717, N'test716', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'716', N'Test', CAST(N'2001-08-23' AS Date), N'test716@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (718, N'test717', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'717', N'Test', CAST(N'2001-08-23' AS Date), N'test717@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (719, N'test718', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'718', N'Test', CAST(N'2001-08-23' AS Date), N'test718@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (720, N'test719', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'719', N'Test', CAST(N'2001-08-23' AS Date), N'test719@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (721, N'test720', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'720', N'Test', CAST(N'2001-08-23' AS Date), N'test720@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (722, N'test721', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'721', N'Test', CAST(N'2001-08-23' AS Date), N'test721@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (723, N'test722', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'722', N'Test', CAST(N'2001-08-23' AS Date), N'test722@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (724, N'test723', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'723', N'Test', CAST(N'2001-08-23' AS Date), N'test723@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (725, N'test724', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'724', N'Test', CAST(N'2001-08-23' AS Date), N'test724@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (726, N'test725', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'725', N'Test', CAST(N'2001-08-23' AS Date), N'test725@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (727, N'test726', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'726', N'Test', CAST(N'2001-08-23' AS Date), N'test726@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (728, N'test727', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'727', N'Test', CAST(N'2001-08-23' AS Date), N'test727@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (729, N'test728', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'728', N'Test', CAST(N'2001-08-23' AS Date), N'test728@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (730, N'test729', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'729', N'Test', CAST(N'2001-08-23' AS Date), N'test729@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (731, N'test730', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'730', N'Test', CAST(N'2001-08-23' AS Date), N'test730@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (732, N'test731', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'731', N'Test', CAST(N'2001-08-23' AS Date), N'test731@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (733, N'test732', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'732', N'Test', CAST(N'2001-08-23' AS Date), N'test732@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (734, N'test733', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'733', N'Test', CAST(N'2001-08-23' AS Date), N'test733@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (735, N'test734', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'734', N'Test', CAST(N'2001-08-23' AS Date), N'test734@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (736, N'test735', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'735', N'Test', CAST(N'2001-08-23' AS Date), N'test735@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (737, N'test736', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'736', N'Test', CAST(N'2001-08-23' AS Date), N'test736@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (738, N'test737', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'737', N'Test', CAST(N'2001-08-23' AS Date), N'test737@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (739, N'test738', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'738', N'Test', CAST(N'2001-08-23' AS Date), N'test738@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (740, N'test739', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'739', N'Test', CAST(N'2001-08-23' AS Date), N'test739@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (741, N'test740', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'740', N'Test', CAST(N'2001-08-23' AS Date), N'test740@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (742, N'test741', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'741', N'Test', CAST(N'2001-08-23' AS Date), N'test741@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (743, N'test742', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'742', N'Test', CAST(N'2001-08-23' AS Date), N'test742@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (744, N'test743', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'743', N'Test', CAST(N'2001-08-23' AS Date), N'test743@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (745, N'test744', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'744', N'Test', CAST(N'2001-08-23' AS Date), N'test744@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (746, N'test745', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'745', N'Test', CAST(N'2001-08-23' AS Date), N'test745@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (747, N'test746', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'746', N'Test', CAST(N'2001-08-23' AS Date), N'test746@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (748, N'test747', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'747', N'Test', CAST(N'2001-08-23' AS Date), N'test747@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (749, N'test748', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'748', N'Test', CAST(N'2001-08-23' AS Date), N'test748@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (750, N'test749', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'749', N'Test', CAST(N'2001-08-23' AS Date), N'test749@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (751, N'test750', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'750', N'Test', CAST(N'2001-08-23' AS Date), N'test750@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (752, N'test751', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'751', N'Test', CAST(N'2001-08-23' AS Date), N'test751@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (753, N'test752', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'752', N'Test', CAST(N'2001-08-23' AS Date), N'test752@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (754, N'test753', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'753', N'Test', CAST(N'2001-08-23' AS Date), N'test753@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (755, N'test754', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'754', N'Test', CAST(N'2001-08-23' AS Date), N'test754@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (756, N'test755', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'755', N'Test', CAST(N'2001-08-23' AS Date), N'test755@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (757, N'test756', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'756', N'Test', CAST(N'2001-08-23' AS Date), N'test756@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (758, N'test757', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'757', N'Test', CAST(N'2001-08-23' AS Date), N'test757@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (759, N'test758', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'758', N'Test', CAST(N'2001-08-23' AS Date), N'test758@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (760, N'test759', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'759', N'Test', CAST(N'2001-08-23' AS Date), N'test759@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (761, N'test760', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'760', N'Test', CAST(N'2001-08-23' AS Date), N'test760@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (762, N'test761', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'761', N'Test', CAST(N'2001-08-23' AS Date), N'test761@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (763, N'test762', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'762', N'Test', CAST(N'2001-08-23' AS Date), N'test762@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (764, N'test763', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'763', N'Test', CAST(N'2001-08-23' AS Date), N'test763@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (765, N'test764', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'764', N'Test', CAST(N'2001-08-23' AS Date), N'test764@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (766, N'test765', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'765', N'Test', CAST(N'2001-08-23' AS Date), N'test765@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (767, N'test766', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'766', N'Test', CAST(N'2001-08-23' AS Date), N'test766@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (768, N'test767', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'767', N'Test', CAST(N'2001-08-23' AS Date), N'test767@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (769, N'test768', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'768', N'Test', CAST(N'2001-08-23' AS Date), N'test768@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (770, N'test769', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'769', N'Test', CAST(N'2001-08-23' AS Date), N'test769@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (771, N'test770', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'770', N'Test', CAST(N'2001-08-23' AS Date), N'test770@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (772, N'test771', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'771', N'Test', CAST(N'2001-08-23' AS Date), N'test771@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (773, N'test772', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'772', N'Test', CAST(N'2001-08-23' AS Date), N'test772@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (774, N'test773', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'773', N'Test', CAST(N'2001-08-23' AS Date), N'test773@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (775, N'test774', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'774', N'Test', CAST(N'2001-08-23' AS Date), N'test774@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (776, N'test775', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'775', N'Test', CAST(N'2001-08-23' AS Date), N'test775@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (777, N'test776', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'776', N'Test', CAST(N'2001-08-23' AS Date), N'test776@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (778, N'test777', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'777', N'Test', CAST(N'2001-08-23' AS Date), N'test777@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (779, N'test778', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'778', N'Test', CAST(N'2001-08-23' AS Date), N'test778@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (780, N'test779', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'779', N'Test', CAST(N'2001-08-23' AS Date), N'test779@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (781, N'test780', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'780', N'Test', CAST(N'2001-08-23' AS Date), N'test780@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (782, N'test781', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'781', N'Test', CAST(N'2001-08-23' AS Date), N'test781@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (783, N'test782', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'782', N'Test', CAST(N'2001-08-23' AS Date), N'test782@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (784, N'test783', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'783', N'Test', CAST(N'2001-08-23' AS Date), N'test783@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (785, N'test784', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'784', N'Test', CAST(N'2001-08-23' AS Date), N'test784@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (786, N'test785', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'785', N'Test', CAST(N'2001-08-23' AS Date), N'test785@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (787, N'test786', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'786', N'Test', CAST(N'2001-08-23' AS Date), N'test786@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (788, N'test787', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'787', N'Test', CAST(N'2001-08-23' AS Date), N'test787@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (789, N'test788', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'788', N'Test', CAST(N'2001-08-23' AS Date), N'test788@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (790, N'test789', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'789', N'Test', CAST(N'2001-08-23' AS Date), N'test789@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (791, N'test790', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'790', N'Test', CAST(N'2001-08-23' AS Date), N'test790@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (792, N'test791', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'791', N'Test', CAST(N'2001-08-23' AS Date), N'test791@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (793, N'test792', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'792', N'Test', CAST(N'2001-08-23' AS Date), N'test792@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (794, N'test793', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'793', N'Test', CAST(N'2001-08-23' AS Date), N'test793@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (795, N'test794', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'794', N'Test', CAST(N'2001-08-23' AS Date), N'test794@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (796, N'test795', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'795', N'Test', CAST(N'2001-08-23' AS Date), N'test795@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (797, N'test796', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'796', N'Test', CAST(N'2001-08-23' AS Date), N'test796@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (798, N'test797', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'797', N'Test', CAST(N'2001-08-23' AS Date), N'test797@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (799, N'test798', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'798', N'Test', CAST(N'2001-08-23' AS Date), N'test798@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (800, N'test799', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'799', N'Test', CAST(N'2001-08-23' AS Date), N'test799@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (801, N'test800', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'800', N'Test', CAST(N'2001-08-23' AS Date), N'test800@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (802, N'test801', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'801', N'Test', CAST(N'2001-08-23' AS Date), N'test801@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (803, N'test802', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'802', N'Test', CAST(N'2001-08-23' AS Date), N'test802@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (804, N'test803', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'803', N'Test', CAST(N'2001-08-23' AS Date), N'test803@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (805, N'test804', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'804', N'Test', CAST(N'2001-08-23' AS Date), N'test804@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (806, N'test805', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'805', N'Test', CAST(N'2001-08-23' AS Date), N'test805@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (807, N'test806', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'806', N'Test', CAST(N'2001-08-23' AS Date), N'test806@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (808, N'test807', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'807', N'Test', CAST(N'2001-08-23' AS Date), N'test807@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (809, N'test808', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'808', N'Test', CAST(N'2001-08-23' AS Date), N'test808@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (810, N'test809', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'809', N'Test', CAST(N'2001-08-23' AS Date), N'test809@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (811, N'test810', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'810', N'Test', CAST(N'2001-08-23' AS Date), N'test810@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (812, N'test811', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'811', N'Test', CAST(N'2001-08-23' AS Date), N'test811@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (813, N'test812', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'812', N'Test', CAST(N'2001-08-23' AS Date), N'test812@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (814, N'test813', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'813', N'Test', CAST(N'2001-08-23' AS Date), N'test813@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (815, N'test814', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'814', N'Test', CAST(N'2001-08-23' AS Date), N'test814@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (816, N'test815', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'815', N'Test', CAST(N'2001-08-23' AS Date), N'test815@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (817, N'test816', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'816', N'Test', CAST(N'2001-08-23' AS Date), N'test816@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (818, N'test817', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'817', N'Test', CAST(N'2001-08-23' AS Date), N'test817@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (819, N'test818', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'818', N'Test', CAST(N'2001-08-23' AS Date), N'test818@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (820, N'test819', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'819', N'Test', CAST(N'2001-08-23' AS Date), N'test819@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (821, N'test820', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'820', N'Test', CAST(N'2001-08-23' AS Date), N'test820@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (822, N'test821', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'821', N'Test', CAST(N'2001-08-23' AS Date), N'test821@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (823, N'test822', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'822', N'Test', CAST(N'2001-08-23' AS Date), N'test822@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (824, N'test823', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'823', N'Test', CAST(N'2001-08-23' AS Date), N'test823@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (825, N'test824', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'824', N'Test', CAST(N'2001-08-23' AS Date), N'test824@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (826, N'test825', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'825', N'Test', CAST(N'2001-08-23' AS Date), N'test825@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (827, N'test826', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'826', N'Test', CAST(N'2001-08-23' AS Date), N'test826@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (828, N'test827', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'827', N'Test', CAST(N'2001-08-23' AS Date), N'test827@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (829, N'test828', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'828', N'Test', CAST(N'2001-08-23' AS Date), N'test828@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (830, N'test829', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'829', N'Test', CAST(N'2001-08-23' AS Date), N'test829@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (831, N'test830', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'830', N'Test', CAST(N'2001-08-23' AS Date), N'test830@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (832, N'test831', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'831', N'Test', CAST(N'2001-08-23' AS Date), N'test831@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (833, N'test832', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'832', N'Test', CAST(N'2001-08-23' AS Date), N'test832@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (834, N'test833', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'833', N'Test', CAST(N'2001-08-23' AS Date), N'test833@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (835, N'test834', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'834', N'Test', CAST(N'2001-08-23' AS Date), N'test834@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (836, N'test835', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'835', N'Test', CAST(N'2001-08-23' AS Date), N'test835@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (837, N'test836', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'836', N'Test', CAST(N'2001-08-23' AS Date), N'test836@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (838, N'test837', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'837', N'Test', CAST(N'2001-08-23' AS Date), N'test837@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (839, N'test838', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'838', N'Test', CAST(N'2001-08-23' AS Date), N'test838@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (840, N'test839', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'839', N'Test', CAST(N'2001-08-23' AS Date), N'test839@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (841, N'test840', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'840', N'Test', CAST(N'2001-08-23' AS Date), N'test840@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (842, N'test841', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'841', N'Test', CAST(N'2001-08-23' AS Date), N'test841@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (843, N'test842', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'842', N'Test', CAST(N'2001-08-23' AS Date), N'test842@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (844, N'test843', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'843', N'Test', CAST(N'2001-08-23' AS Date), N'test843@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (845, N'test844', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'844', N'Test', CAST(N'2001-08-23' AS Date), N'test844@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (846, N'test845', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'845', N'Test', CAST(N'2001-08-23' AS Date), N'test845@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (847, N'test846', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'846', N'Test', CAST(N'2001-08-23' AS Date), N'test846@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (848, N'test847', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'847', N'Test', CAST(N'2001-08-23' AS Date), N'test847@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (849, N'test848', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'848', N'Test', CAST(N'2001-08-23' AS Date), N'test848@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (850, N'test849', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'849', N'Test', CAST(N'2001-08-23' AS Date), N'test849@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (851, N'test850', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'850', N'Test', CAST(N'2001-08-23' AS Date), N'test850@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (852, N'test851', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'851', N'Test', CAST(N'2001-08-23' AS Date), N'test851@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (853, N'test852', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'852', N'Test', CAST(N'2001-08-23' AS Date), N'test852@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (854, N'test853', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'853', N'Test', CAST(N'2001-08-23' AS Date), N'test853@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (855, N'test854', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'854', N'Test', CAST(N'2001-08-23' AS Date), N'test854@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (856, N'test855', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'855', N'Test', CAST(N'2001-08-23' AS Date), N'test855@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (857, N'test856', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'856', N'Test', CAST(N'2001-08-23' AS Date), N'test856@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (858, N'test857', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'857', N'Test', CAST(N'2001-08-23' AS Date), N'test857@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (859, N'test858', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'858', N'Test', CAST(N'2001-08-23' AS Date), N'test858@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (860, N'test859', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'859', N'Test', CAST(N'2001-08-23' AS Date), N'test859@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (861, N'test860', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'860', N'Test', CAST(N'2001-08-23' AS Date), N'test860@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (862, N'test861', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'861', N'Test', CAST(N'2001-08-23' AS Date), N'test861@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (863, N'test862', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'862', N'Test', CAST(N'2001-08-23' AS Date), N'test862@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (864, N'test863', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'863', N'Test', CAST(N'2001-08-23' AS Date), N'test863@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (865, N'test864', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'864', N'Test', CAST(N'2001-08-23' AS Date), N'test864@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (866, N'test865', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'865', N'Test', CAST(N'2001-08-23' AS Date), N'test865@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (867, N'test866', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'866', N'Test', CAST(N'2001-08-23' AS Date), N'test866@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (868, N'test867', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'867', N'Test', CAST(N'2001-08-23' AS Date), N'test867@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (869, N'test868', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'868', N'Test', CAST(N'2001-08-23' AS Date), N'test868@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (870, N'test869', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'869', N'Test', CAST(N'2001-08-23' AS Date), N'test869@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (871, N'test870', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'870', N'Test', CAST(N'2001-08-23' AS Date), N'test870@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (872, N'test871', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'871', N'Test', CAST(N'2001-08-23' AS Date), N'test871@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (873, N'test872', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'872', N'Test', CAST(N'2001-08-23' AS Date), N'test872@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (874, N'test873', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'873', N'Test', CAST(N'2001-08-23' AS Date), N'test873@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (875, N'test874', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'874', N'Test', CAST(N'2001-08-23' AS Date), N'test874@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (876, N'test875', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'875', N'Test', CAST(N'2001-08-23' AS Date), N'test875@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (877, N'test876', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'876', N'Test', CAST(N'2001-08-23' AS Date), N'test876@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (878, N'test877', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'877', N'Test', CAST(N'2001-08-23' AS Date), N'test877@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (879, N'test878', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'878', N'Test', CAST(N'2001-08-23' AS Date), N'test878@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (880, N'test879', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'879', N'Test', CAST(N'2001-08-23' AS Date), N'test879@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (881, N'test880', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'880', N'Test', CAST(N'2001-08-23' AS Date), N'test880@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (882, N'test881', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'881', N'Test', CAST(N'2001-08-23' AS Date), N'test881@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (883, N'test882', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'882', N'Test', CAST(N'2001-08-23' AS Date), N'test882@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (884, N'test883', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'883', N'Test', CAST(N'2001-08-23' AS Date), N'test883@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (885, N'test884', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'884', N'Test', CAST(N'2001-08-23' AS Date), N'test884@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (886, N'test885', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'885', N'Test', CAST(N'2001-08-23' AS Date), N'test885@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (887, N'test886', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'886', N'Test', CAST(N'2001-08-23' AS Date), N'test886@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (888, N'test887', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'887', N'Test', CAST(N'2001-08-23' AS Date), N'test887@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (889, N'test888', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'888', N'Test', CAST(N'2001-08-23' AS Date), N'test888@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (890, N'test889', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'889', N'Test', CAST(N'2001-08-23' AS Date), N'test889@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (891, N'test890', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'890', N'Test', CAST(N'2001-08-23' AS Date), N'test890@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (892, N'test891', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'891', N'Test', CAST(N'2001-08-23' AS Date), N'test891@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (893, N'test892', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'892', N'Test', CAST(N'2001-08-23' AS Date), N'test892@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (894, N'test893', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'893', N'Test', CAST(N'2001-08-23' AS Date), N'test893@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (895, N'test894', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'894', N'Test', CAST(N'2001-08-23' AS Date), N'test894@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (896, N'test895', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'895', N'Test', CAST(N'2001-08-23' AS Date), N'test895@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (897, N'test896', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'896', N'Test', CAST(N'2001-08-23' AS Date), N'test896@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (898, N'test897', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'897', N'Test', CAST(N'2001-08-23' AS Date), N'test897@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (899, N'test898', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'898', N'Test', CAST(N'2001-08-23' AS Date), N'test898@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (900, N'test899', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'899', N'Test', CAST(N'2001-08-23' AS Date), N'test899@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (901, N'test900', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'900', N'Test', CAST(N'2001-08-23' AS Date), N'test900@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (902, N'test901', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'901', N'Test', CAST(N'2001-08-23' AS Date), N'test901@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (903, N'test902', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'902', N'Test', CAST(N'2001-08-23' AS Date), N'test902@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (904, N'test903', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'903', N'Test', CAST(N'2001-08-23' AS Date), N'test903@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (905, N'test904', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'904', N'Test', CAST(N'2001-08-23' AS Date), N'test904@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (906, N'test905', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'905', N'Test', CAST(N'2001-08-23' AS Date), N'test905@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (907, N'test906', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'906', N'Test', CAST(N'2001-08-23' AS Date), N'test906@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (908, N'test907', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'907', N'Test', CAST(N'2001-08-23' AS Date), N'test907@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (909, N'test908', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'908', N'Test', CAST(N'2001-08-23' AS Date), N'test908@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (910, N'test909', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'909', N'Test', CAST(N'2001-08-23' AS Date), N'test909@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (911, N'test910', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'910', N'Test', CAST(N'2001-08-23' AS Date), N'test910@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (912, N'test911', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'911', N'Test', CAST(N'2001-08-23' AS Date), N'test911@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (913, N'test912', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'912', N'Test', CAST(N'2001-08-23' AS Date), N'test912@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (914, N'test913', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'913', N'Test', CAST(N'2001-08-23' AS Date), N'test913@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (915, N'test914', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'914', N'Test', CAST(N'2001-08-23' AS Date), N'test914@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (916, N'test915', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'915', N'Test', CAST(N'2001-08-23' AS Date), N'test915@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (917, N'test916', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'916', N'Test', CAST(N'2001-08-23' AS Date), N'test916@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (918, N'test917', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'917', N'Test', CAST(N'2001-08-23' AS Date), N'test917@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (919, N'test918', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'918', N'Test', CAST(N'2001-08-23' AS Date), N'test918@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (920, N'test919', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'919', N'Test', CAST(N'2001-08-23' AS Date), N'test919@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (921, N'test920', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'920', N'Test', CAST(N'2001-08-23' AS Date), N'test920@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (922, N'test921', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'921', N'Test', CAST(N'2001-08-23' AS Date), N'test921@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (923, N'test922', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'922', N'Test', CAST(N'2001-08-23' AS Date), N'test922@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (924, N'test923', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'923', N'Test', CAST(N'2001-08-23' AS Date), N'test923@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (925, N'test924', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'924', N'Test', CAST(N'2001-08-23' AS Date), N'test924@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (926, N'test925', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'925', N'Test', CAST(N'2001-08-23' AS Date), N'test925@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (927, N'test926', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'926', N'Test', CAST(N'2001-08-23' AS Date), N'test926@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (928, N'test927', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'927', N'Test', CAST(N'2001-08-23' AS Date), N'test927@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (929, N'test928', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'928', N'Test', CAST(N'2001-08-23' AS Date), N'test928@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (930, N'test929', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'929', N'Test', CAST(N'2001-08-23' AS Date), N'test929@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (931, N'test930', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'930', N'Test', CAST(N'2001-08-23' AS Date), N'test930@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (932, N'test931', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'931', N'Test', CAST(N'2001-08-23' AS Date), N'test931@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (933, N'test932', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'932', N'Test', CAST(N'2001-08-23' AS Date), N'test932@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (934, N'test933', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'933', N'Test', CAST(N'2001-08-23' AS Date), N'test933@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (935, N'test934', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'934', N'Test', CAST(N'2001-08-23' AS Date), N'test934@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (936, N'test935', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'935', N'Test', CAST(N'2001-08-23' AS Date), N'test935@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (937, N'test936', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'936', N'Test', CAST(N'2001-08-23' AS Date), N'test936@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (938, N'test937', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'937', N'Test', CAST(N'2001-08-23' AS Date), N'test937@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (939, N'test938', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'938', N'Test', CAST(N'2001-08-23' AS Date), N'test938@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (940, N'test939', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'939', N'Test', CAST(N'2001-08-23' AS Date), N'test939@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (941, N'test940', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'940', N'Test', CAST(N'2001-08-23' AS Date), N'test940@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (942, N'test941', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'941', N'Test', CAST(N'2001-08-23' AS Date), N'test941@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (943, N'test942', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'942', N'Test', CAST(N'2001-08-23' AS Date), N'test942@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (944, N'test943', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'943', N'Test', CAST(N'2001-08-23' AS Date), N'test943@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (945, N'test944', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'944', N'Test', CAST(N'2001-08-23' AS Date), N'test944@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (946, N'test945', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'945', N'Test', CAST(N'2001-08-23' AS Date), N'test945@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (947, N'test946', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'946', N'Test', CAST(N'2001-08-23' AS Date), N'test946@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (948, N'test947', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'947', N'Test', CAST(N'2001-08-23' AS Date), N'test947@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (949, N'test948', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'948', N'Test', CAST(N'2001-08-23' AS Date), N'test948@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (950, N'test949', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'949', N'Test', CAST(N'2001-08-23' AS Date), N'test949@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (951, N'test950', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'950', N'Test', CAST(N'2001-08-23' AS Date), N'test950@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (952, N'test951', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'951', N'Test', CAST(N'2001-08-23' AS Date), N'test951@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (953, N'test952', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'952', N'Test', CAST(N'2001-08-23' AS Date), N'test952@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (954, N'test953', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'953', N'Test', CAST(N'2001-08-23' AS Date), N'test953@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (955, N'test954', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'954', N'Test', CAST(N'2001-08-23' AS Date), N'test954@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (956, N'test955', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'955', N'Test', CAST(N'2001-08-23' AS Date), N'test955@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (957, N'test956', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'956', N'Test', CAST(N'2001-08-23' AS Date), N'test956@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (958, N'test957', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'957', N'Test', CAST(N'2001-08-23' AS Date), N'test957@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (959, N'test958', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'958', N'Test', CAST(N'2001-08-23' AS Date), N'test958@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (960, N'test959', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'959', N'Test', CAST(N'2001-08-23' AS Date), N'test959@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (961, N'test960', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'960', N'Test', CAST(N'2001-08-23' AS Date), N'test960@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (962, N'test961', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'961', N'Test', CAST(N'2001-08-23' AS Date), N'test961@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (963, N'test962', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'962', N'Test', CAST(N'2001-08-23' AS Date), N'test962@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (964, N'test963', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'963', N'Test', CAST(N'2001-08-23' AS Date), N'test963@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (965, N'test964', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'964', N'Test', CAST(N'2001-08-23' AS Date), N'test964@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (966, N'test965', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'965', N'Test', CAST(N'2001-08-23' AS Date), N'test965@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (967, N'test966', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'966', N'Test', CAST(N'2001-08-23' AS Date), N'test966@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (968, N'test967', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'967', N'Test', CAST(N'2001-08-23' AS Date), N'test967@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (969, N'test968', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'968', N'Test', CAST(N'2001-08-23' AS Date), N'test968@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (970, N'test969', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'969', N'Test', CAST(N'2001-08-23' AS Date), N'test969@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (971, N'test970', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'970', N'Test', CAST(N'2001-08-23' AS Date), N'test970@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (972, N'test971', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'971', N'Test', CAST(N'2001-08-23' AS Date), N'test971@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (973, N'test972', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'972', N'Test', CAST(N'2001-08-23' AS Date), N'test972@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (974, N'test973', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'973', N'Test', CAST(N'2001-08-23' AS Date), N'test973@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (975, N'test974', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'974', N'Test', CAST(N'2001-08-23' AS Date), N'test974@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (976, N'test975', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'975', N'Test', CAST(N'2001-08-23' AS Date), N'test975@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (977, N'test976', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'976', N'Test', CAST(N'2001-08-23' AS Date), N'test976@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (978, N'test977', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'977', N'Test', CAST(N'2001-08-23' AS Date), N'test977@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (979, N'test978', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'978', N'Test', CAST(N'2001-08-23' AS Date), N'test978@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (980, N'test979', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'979', N'Test', CAST(N'2001-08-23' AS Date), N'test979@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (981, N'test980', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'980', N'Test', CAST(N'2001-08-23' AS Date), N'test980@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (982, N'test981', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'981', N'Test', CAST(N'2001-08-23' AS Date), N'test981@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (983, N'test982', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'982', N'Test', CAST(N'2001-08-23' AS Date), N'test982@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (984, N'test983', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'983', N'Test', CAST(N'2001-08-23' AS Date), N'test983@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (985, N'test984', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'984', N'Test', CAST(N'2001-08-23' AS Date), N'test984@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (986, N'test985', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'985', N'Test', CAST(N'2001-08-23' AS Date), N'test985@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (987, N'test986', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'986', N'Test', CAST(N'2001-08-23' AS Date), N'test986@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (988, N'test987', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'987', N'Test', CAST(N'2001-08-23' AS Date), N'test987@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (989, N'test988', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'988', N'Test', CAST(N'2001-08-23' AS Date), N'test988@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (990, N'test989', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'989', N'Test', CAST(N'2001-08-23' AS Date), N'test989@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (991, N'test990', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'990', N'Test', CAST(N'2001-08-23' AS Date), N'test990@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (992, N'test991', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'991', N'Test', CAST(N'2001-08-23' AS Date), N'test991@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (993, N'test992', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'992', N'Test', CAST(N'2001-08-23' AS Date), N'test992@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (994, N'test993', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'993', N'Test', CAST(N'2001-08-23' AS Date), N'test993@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (995, N'test994', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'994', N'Test', CAST(N'2001-08-23' AS Date), N'test994@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (996, N'test995', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'995', N'Test', CAST(N'2001-08-23' AS Date), N'test995@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (997, N'test996', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'996', N'Test', CAST(N'2001-08-23' AS Date), N'test996@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (998, N'test997', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'997', N'Test', CAST(N'2001-08-23' AS Date), N'test997@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (999, N'test998', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'998', N'Test', CAST(N'2001-08-23' AS Date), N'test998@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (1000, N'test999', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'999', N'Test', CAST(N'2001-08-23' AS Date), N'test999@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (1001, N'test1000', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'1000', N'Test', CAST(N'2001-08-23' AS Date), N'test1000@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
SET IDENTITY_INSERT [dbo].[user_permission] ON 
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1, 1, 2, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (2, 1, 3, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (3, 1, 4, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (4, 1, 5, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (5, 1, 6, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (6, 1, 7, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (7, 1, 8, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (8, 1, 9, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (9, 1, 10, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (10, 1, 11, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (11, 1, 12, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (12, 1, 13, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (13, 1, 14, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (14, 1, 15, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (15, 1, 16, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (16, 1, 17, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (17, 1, 18, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (18, 1, 19, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (19, 1, 20, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (20, 1, 21, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (21, 1, 22, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (22, 1, 23, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (23, 1, 24, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (24, 1, 25, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (25, 1, 26, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (26, 1, 27, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (27, 1, 28, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (28, 1, 29, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (29, 1, 30, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (30, 1, 31, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (31, 1, 32, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (32, 1, 33, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (33, 1, 34, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (34, 1, 35, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (35, 1, 36, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (36, 1, 37, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (37, 1, 38, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (38, 1, 39, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (39, 1, 40, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (40, 1, 41, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (41, 1, 42, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (42, 1, 43, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (43, 1, 44, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (44, 1, 45, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (45, 1, 46, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (46, 1, 47, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (47, 1, 48, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (48, 1, 49, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (49, 1, 50, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (50, 1, 51, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (51, 1, 52, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (52, 1, 53, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (53, 1, 54, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (54, 1, 55, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (55, 1, 56, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (56, 1, 57, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (57, 1, 58, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (58, 1, 59, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (59, 1, 60, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (60, 1, 61, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (61, 1, 62, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (63, 1, 64, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (64, 1, 65, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (65, 1, 66, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (66, 1, 67, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (67, 1, 68, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (68, 1, 69, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (69, 1, 70, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (70, 1, 71, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (71, 1, 72, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (72, 1, 73, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (73, 1, 74, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (74, 1, 75, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (75, 1, 76, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (76, 1, 77, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (77, 1, 78, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (78, 1, 79, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (79, 1, 80, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (80, 1, 81, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (81, 1, 82, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (82, 1, 83, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (83, 1, 84, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (84, 1, 85, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (85, 1, 86, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (86, 1, 87, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (87, 1, 88, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (88, 1, 89, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (89, 1, 90, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (90, 1, 91, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (91, 1, 92, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (92, 1, 93, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (93, 1, 94, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (94, 1, 95, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (95, 1, 96, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (96, 1, 97, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (97, 1, 98, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (98, 1, 99, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (99, 1, 100, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (100, 1, 101, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (101, 1, 102, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (102, 1, 103, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (103, 1, 104, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (104, 1, 105, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (105, 1, 106, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (106, 1, 107, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (107, 1, 108, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (108, 1, 109, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (109, 1, 110, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (110, 1, 111, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (111, 1, 112, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (112, 1, 113, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (113, 1, 114, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (114, 1, 115, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (115, 1, 116, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (116, 1, 117, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (117, 1, 118, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (118, 1, 119, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (119, 1, 120, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (120, 1, 121, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (121, 1, 122, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (122, 1, 123, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (123, 1, 124, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (124, 1, 125, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (125, 1, 126, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (126, 1, 127, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (127, 1, 128, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (128, 1, 129, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (129, 1, 130, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (130, 1, 131, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (131, 1, 132, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (132, 1, 133, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (133, 1, 134, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (134, 1, 135, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (135, 1, 136, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (136, 1, 137, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (137, 1, 138, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (138, 1, 139, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (139, 1, 140, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (140, 1, 141, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (141, 1, 142, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (142, 1, 143, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (143, 1, 144, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (144, 1, 145, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (145, 1, 146, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (146, 1, 147, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (147, 1, 148, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (148, 1, 149, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (149, 1, 150, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (150, 1, 151, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (151, 1, 152, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (152, 1, 153, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (153, 1, 154, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (154, 1, 155, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (155, 1, 156, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (156, 1, 157, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (157, 1, 158, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (158, 1, 159, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (159, 1, 160, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (160, 1, 161, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (161, 1, 162, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (162, 1, 163, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (163, 1, 164, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (164, 1, 165, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (165, 1, 166, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (166, 1, 167, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (167, 1, 168, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (168, 1, 169, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (169, 1, 170, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (170, 1, 171, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (171, 1, 172, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (172, 1, 173, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (173, 1, 174, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (174, 1, 175, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (175, 1, 176, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (176, 1, 177, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (178, 1, 179, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (179, 1, 180, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (180, 1, 181, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (181, 1, 182, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (182, 1, 183, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (184, 1, 185, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (185, 1, 186, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (186, 1, 187, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (187, 1, 188, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (188, 1, 189, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (189, 1, 190, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (190, 1, 191, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (191, 1, 192, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (192, 1, 193, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (193, 1, 194, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (194, 1, 195, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (195, 1, 196, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (196, 1, 197, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (197, 1, 198, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (198, 1, 199, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (199, 1, 200, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (200, 1, 201, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (201, 1, 202, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (202, 1, 203, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (203, 1, 204, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (204, 1, 205, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (205, 1, 206, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (206, 1, 207, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (207, 1, 208, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (208, 1, 209, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (209, 1, 210, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (210, 1, 211, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (211, 1, 212, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (212, 1, 213, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (213, 1, 214, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (214, 1, 215, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (215, 1, 216, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (216, 1, 217, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (217, 1, 218, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (218, 1, 219, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (219, 1, 220, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (220, 1, 221, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (221, 1, 222, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (222, 1, 223, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (223, 1, 224, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (224, 1, 225, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (225, 1, 226, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (226, 1, 227, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (227, 1, 228, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (228, 1, 229, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (229, 1, 230, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (230, 1, 231, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (231, 1, 232, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (232, 1, 233, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (233, 1, 234, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (234, 1, 235, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (235, 1, 236, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (236, 1, 237, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (237, 1, 238, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (238, 1, 239, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (239, 1, 240, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (240, 1, 241, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (241, 1, 242, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (242, 1, 243, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (243, 1, 244, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (244, 1, 245, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (245, 1, 246, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (246, 1, 247, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (247, 1, 248, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (248, 1, 249, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (249, 1, 250, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (250, 1, 251, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (251, 1, 252, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (252, 1, 253, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (253, 1, 254, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (254, 1, 255, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (255, 1, 256, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (256, 1, 257, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (257, 1, 258, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (258, 1, 259, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (259, 1, 260, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (260, 1, 261, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (261, 1, 262, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (262, 1, 263, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (263, 1, 264, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (264, 1, 265, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (265, 1, 266, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (266, 1, 267, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (267, 1, 268, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (268, 1, 269, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (269, 1, 270, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (270, 1, 271, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (271, 1, 272, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (272, 1, 273, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (273, 1, 274, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (274, 1, 275, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (275, 1, 276, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (276, 1, 277, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (277, 1, 278, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (278, 1, 279, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (279, 1, 280, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (280, 1, 281, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (281, 1, 282, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (282, 1, 283, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (283, 1, 284, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (284, 1, 285, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (285, 1, 286, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (286, 1, 287, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (287, 1, 288, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (288, 1, 289, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (289, 1, 290, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (290, 1, 291, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (291, 1, 292, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (292, 1, 293, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (293, 1, 294, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (294, 1, 295, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (295, 1, 296, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (296, 1, 297, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (297, 1, 298, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (298, 1, 299, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (299, 1, 300, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (300, 1, 301, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (301, 1, 302, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (302, 1, 303, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (303, 1, 304, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (304, 1, 305, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (305, 1, 306, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (306, 1, 307, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (307, 1, 308, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (308, 1, 309, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (309, 1, 310, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (310, 1, 311, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (311, 1, 312, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (312, 1, 313, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (313, 1, 314, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (314, 1, 315, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (315, 1, 316, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (316, 1, 317, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (317, 1, 318, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (318, 1, 319, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (319, 1, 320, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (320, 1, 321, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (321, 1, 322, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (322, 1, 323, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (323, 1, 324, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (324, 1, 325, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (325, 1, 326, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (326, 1, 327, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (327, 1, 328, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (328, 1, 329, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (329, 1, 330, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (330, 1, 331, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (331, 1, 332, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (332, 1, 333, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (333, 1, 334, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (334, 1, 335, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (335, 1, 336, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (336, 1, 337, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (337, 1, 338, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (338, 1, 339, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (339, 1, 340, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (340, 1, 341, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (341, 1, 342, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (342, 1, 343, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (343, 1, 344, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (344, 1, 345, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (345, 1, 346, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (346, 1, 347, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (347, 1, 348, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (348, 1, 349, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (349, 1, 350, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (350, 1, 351, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (351, 1, 352, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (352, 1, 353, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (353, 1, 354, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (354, 1, 355, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (355, 1, 356, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (356, 1, 357, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (357, 1, 358, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (358, 1, 359, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (359, 1, 360, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (360, 1, 361, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (361, 1, 362, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (362, 1, 363, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (363, 1, 364, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (364, 1, 365, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (365, 1, 366, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (366, 1, 367, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (367, 1, 368, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (368, 1, 369, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (369, 1, 370, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (370, 1, 371, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (371, 1, 372, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (372, 1, 373, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (373, 1, 374, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (374, 1, 375, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (375, 1, 376, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (376, 1, 377, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (377, 1, 378, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (378, 1, 379, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (379, 1, 380, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (380, 1, 381, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (381, 1, 382, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (382, 1, 383, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (383, 1, 384, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (384, 1, 385, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (385, 1, 386, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (386, 1, 387, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (387, 1, 388, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (388, 1, 389, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (389, 1, 390, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (390, 1, 391, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (391, 1, 392, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (392, 1, 393, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (393, 1, 394, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (394, 1, 395, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (395, 1, 396, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (396, 1, 397, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (397, 1, 398, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (398, 1, 399, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (399, 1, 400, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (400, 1, 401, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (401, 1, 402, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (402, 1, 403, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (403, 1, 404, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (404, 1, 405, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (405, 1, 406, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (406, 1, 407, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (407, 1, 408, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (408, 1, 409, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (409, 1, 410, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (410, 1, 411, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (411, 1, 412, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (412, 1, 413, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (413, 1, 414, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (414, 1, 415, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (415, 1, 416, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (416, 1, 417, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (417, 1, 418, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (418, 1, 419, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (419, 1, 420, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (420, 1, 421, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (421, 1, 422, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (422, 1, 423, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (423, 1, 424, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (424, 1, 425, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (425, 1, 426, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (426, 1, 427, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (427, 1, 428, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (428, 1, 429, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (429, 1, 430, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (430, 1, 431, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (431, 1, 432, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (432, 1, 433, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (433, 1, 434, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (434, 1, 435, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (435, 1, 436, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (436, 1, 437, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (437, 1, 438, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (438, 1, 439, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (439, 1, 440, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (440, 1, 441, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (441, 1, 442, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (442, 1, 443, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (443, 1, 444, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (444, 1, 445, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (445, 1, 446, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (446, 1, 447, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (447, 1, 448, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (448, 1, 449, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (449, 1, 450, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (450, 1, 451, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (451, 1, 452, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (452, 1, 453, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (453, 1, 454, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (454, 1, 455, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (455, 1, 456, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (456, 1, 457, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (457, 1, 458, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (458, 1, 459, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (459, 1, 460, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (460, 1, 461, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (461, 1, 462, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (462, 1, 463, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (463, 1, 464, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (464, 1, 465, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (465, 1, 466, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (466, 1, 467, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (467, 1, 468, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (468, 1, 469, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (469, 1, 470, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (470, 1, 471, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (471, 1, 472, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (472, 1, 473, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (473, 1, 474, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (474, 1, 475, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (475, 1, 476, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (476, 1, 477, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (477, 1, 478, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (478, 1, 479, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (479, 1, 480, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (480, 1, 481, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (481, 1, 482, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (482, 1, 483, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (483, 1, 484, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (484, 1, 485, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (485, 1, 486, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (486, 1, 487, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (487, 1, 488, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (488, 1, 489, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (489, 1, 490, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (490, 1, 491, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (491, 1, 492, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (492, 1, 493, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (493, 1, 494, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (494, 1, 495, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (495, 1, 496, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (496, 1, 497, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (497, 1, 498, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (498, 1, 499, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (499, 1, 500, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (500, 1, 501, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (501, 1, 502, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (502, 1, 503, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (503, 1, 504, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (504, 1, 505, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (505, 1, 506, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (506, 1, 507, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (507, 1, 508, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (508, 1, 509, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (509, 1, 510, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (510, 1, 511, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (511, 1, 512, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (512, 1, 513, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (513, 1, 514, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (514, 1, 515, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (515, 1, 516, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (516, 1, 517, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (517, 1, 518, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (518, 1, 519, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (519, 1, 520, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (520, 1, 521, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (521, 1, 522, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (522, 1, 523, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (523, 1, 524, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (524, 1, 525, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (525, 1, 526, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (526, 1, 527, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (527, 1, 528, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (528, 1, 529, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (529, 1, 530, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (530, 1, 531, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (531, 1, 532, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (532, 1, 533, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (533, 1, 534, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (534, 1, 535, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (535, 1, 536, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (536, 1, 537, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (537, 1, 538, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (538, 1, 539, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (539, 1, 540, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (540, 1, 541, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (541, 1, 542, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (542, 1, 543, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (543, 1, 544, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (544, 1, 545, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (545, 1, 546, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (546, 1, 547, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (547, 1, 548, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (548, 1, 549, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (549, 1, 550, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (550, 1, 551, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (551, 1, 552, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (552, 1, 553, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (553, 1, 554, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (554, 1, 555, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (555, 1, 556, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (556, 1, 557, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (557, 1, 558, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (558, 1, 559, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (559, 1, 560, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (560, 1, 561, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (561, 1, 562, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (562, 1, 563, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (563, 1, 564, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (564, 1, 565, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (565, 1, 566, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (566, 1, 567, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (567, 1, 568, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (568, 1, 569, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (569, 1, 570, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (570, 1, 571, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (571, 1, 572, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (572, 1, 573, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (573, 1, 574, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (574, 1, 575, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (575, 1, 576, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (576, 1, 577, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (577, 1, 578, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (578, 1, 579, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (579, 1, 580, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (580, 1, 581, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (581, 1, 582, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (582, 1, 583, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (583, 1, 584, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (584, 1, 585, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (585, 1, 586, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (586, 1, 587, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (587, 1, 588, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (588, 1, 589, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (589, 1, 590, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (590, 1, 591, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (591, 1, 592, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (592, 1, 593, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (593, 1, 594, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (594, 1, 595, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (595, 1, 596, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (596, 1, 597, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (597, 1, 598, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (598, 1, 599, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (599, 1, 600, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (600, 1, 601, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (601, 1, 602, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (602, 1, 603, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (603, 1, 604, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (604, 1, 605, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (605, 1, 606, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (606, 1, 607, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (607, 1, 608, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (608, 1, 609, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (609, 1, 610, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (610, 1, 611, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (611, 1, 612, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (612, 1, 613, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (613, 1, 614, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (614, 1, 615, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (615, 1, 616, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (616, 1, 617, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (617, 1, 618, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (618, 1, 619, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (619, 1, 620, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (620, 1, 621, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (621, 1, 622, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (622, 1, 623, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (623, 1, 624, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (624, 1, 625, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (625, 1, 626, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (626, 1, 627, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (627, 1, 628, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (628, 1, 629, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (629, 1, 630, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (630, 1, 631, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (631, 1, 632, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (632, 1, 633, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (633, 1, 634, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (634, 1, 635, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (635, 1, 636, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (636, 1, 637, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (637, 1, 638, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (638, 1, 639, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (639, 1, 640, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (640, 1, 641, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (641, 1, 642, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (642, 1, 643, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (643, 1, 644, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (644, 1, 645, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (645, 1, 646, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (646, 1, 647, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (647, 1, 648, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (648, 1, 649, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (649, 1, 650, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (650, 1, 651, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (651, 1, 652, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (652, 1, 653, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (653, 1, 654, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (654, 1, 655, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (655, 1, 656, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (656, 1, 657, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (657, 1, 658, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (658, 1, 659, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (659, 1, 660, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (660, 1, 661, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (661, 1, 662, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (662, 1, 663, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (663, 1, 664, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (664, 1, 665, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (665, 1, 666, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (666, 1, 667, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (667, 1, 668, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (668, 1, 669, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (669, 1, 670, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (670, 1, 671, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (671, 1, 672, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (672, 1, 673, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (673, 1, 674, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (674, 1, 675, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (675, 1, 676, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (676, 1, 677, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (677, 1, 678, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (678, 1, 679, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (679, 1, 680, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (680, 1, 681, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (681, 1, 682, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (682, 1, 683, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (683, 1, 684, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (684, 1, 685, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (685, 1, 686, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (686, 1, 687, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (687, 1, 688, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (688, 1, 689, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (689, 1, 690, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (690, 1, 691, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (691, 1, 692, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (692, 1, 693, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (693, 1, 694, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (694, 1, 695, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (695, 1, 696, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (696, 1, 697, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (697, 1, 698, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (698, 1, 699, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (699, 1, 700, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (700, 1, 701, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (701, 1, 702, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (702, 1, 703, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (703, 1, 704, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (704, 1, 705, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (705, 1, 706, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (706, 1, 707, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (707, 1, 708, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (708, 1, 709, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (709, 1, 710, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (710, 1, 711, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (711, 1, 712, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (712, 1, 713, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (713, 1, 714, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (714, 1, 715, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (715, 1, 716, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (716, 1, 717, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (717, 1, 718, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (718, 1, 719, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (719, 1, 720, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (720, 1, 721, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (721, 1, 722, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (722, 1, 723, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (723, 1, 724, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (724, 1, 725, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (725, 1, 726, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (726, 1, 727, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (727, 1, 728, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (728, 1, 729, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (729, 1, 730, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (730, 1, 731, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (731, 1, 732, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (732, 1, 733, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (733, 1, 734, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (734, 1, 735, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (735, 1, 736, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (736, 1, 737, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (737, 1, 738, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (738, 1, 739, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (739, 1, 740, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (740, 1, 741, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (741, 1, 742, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (742, 1, 743, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (743, 1, 744, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (744, 1, 745, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (745, 1, 746, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (746, 1, 747, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (747, 1, 748, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (748, 1, 749, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (749, 1, 750, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (750, 1, 751, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (751, 1, 752, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (752, 1, 753, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (753, 1, 754, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (754, 1, 755, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (755, 1, 756, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (756, 1, 757, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (757, 1, 758, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (758, 1, 759, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (759, 1, 760, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (760, 1, 761, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (761, 1, 762, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (762, 1, 763, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (763, 1, 764, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (764, 1, 765, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (765, 1, 766, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (766, 1, 767, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (767, 1, 768, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (768, 1, 769, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (769, 1, 770, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (770, 1, 771, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (771, 1, 772, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (772, 1, 773, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (773, 1, 774, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (774, 1, 775, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (775, 1, 776, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (776, 1, 777, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (777, 1, 778, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (778, 1, 779, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (779, 1, 780, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (780, 1, 781, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (781, 1, 782, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (782, 1, 783, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (783, 1, 784, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (784, 1, 785, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (785, 1, 786, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (786, 1, 787, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (787, 1, 788, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (788, 1, 789, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (789, 1, 790, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (790, 1, 791, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (791, 1, 792, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (792, 1, 793, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (793, 1, 794, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (794, 1, 795, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (795, 1, 796, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (796, 1, 797, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (797, 1, 798, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (798, 1, 799, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (799, 1, 800, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (800, 1, 801, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (801, 1, 802, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (802, 1, 803, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (803, 1, 804, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (804, 1, 805, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (805, 1, 806, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (806, 1, 807, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (807, 1, 808, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (808, 1, 809, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (809, 1, 810, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (810, 1, 811, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (811, 1, 812, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (812, 1, 813, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (813, 1, 814, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (814, 1, 815, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (815, 1, 816, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (816, 1, 817, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (817, 1, 818, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (818, 1, 819, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (819, 1, 820, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (820, 1, 821, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (821, 1, 822, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (822, 1, 823, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (823, 1, 824, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (824, 1, 825, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (825, 1, 826, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (826, 1, 827, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (827, 1, 828, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (828, 1, 829, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (829, 1, 830, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (830, 1, 831, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (831, 1, 832, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (832, 1, 833, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (833, 1, 834, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (834, 1, 835, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (835, 1, 836, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (836, 1, 837, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (837, 1, 838, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (838, 1, 839, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (839, 1, 840, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (840, 1, 841, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (841, 1, 842, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (842, 1, 843, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (843, 1, 844, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (844, 1, 845, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (845, 1, 846, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (846, 1, 847, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (847, 1, 848, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (848, 1, 849, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (849, 1, 850, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (850, 1, 851, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (851, 1, 852, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (852, 1, 853, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (853, 1, 854, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (854, 1, 855, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (855, 1, 856, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (856, 1, 857, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (857, 1, 858, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (858, 1, 859, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (859, 1, 860, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (860, 1, 861, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (861, 1, 862, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (862, 1, 863, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (863, 1, 864, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (864, 1, 865, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (865, 1, 866, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (866, 1, 867, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (867, 1, 868, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (868, 1, 869, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (869, 1, 870, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (870, 1, 871, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (871, 1, 872, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (872, 1, 873, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (873, 1, 874, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (874, 1, 875, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (875, 1, 876, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (876, 1, 877, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (877, 1, 878, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (878, 1, 879, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (879, 1, 880, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (880, 1, 881, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (881, 1, 882, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (882, 1, 883, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (883, 1, 884, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (884, 1, 885, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (885, 1, 886, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (886, 1, 887, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (887, 1, 888, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (888, 1, 889, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (889, 1, 890, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (890, 1, 891, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (891, 1, 892, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (892, 1, 893, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (893, 1, 894, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (894, 1, 895, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (895, 1, 896, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (896, 1, 897, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (897, 1, 898, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (898, 1, 899, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (899, 1, 900, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (900, 1, 901, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (901, 1, 902, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (902, 1, 903, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (903, 1, 904, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (904, 1, 905, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (905, 1, 906, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (906, 1, 907, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (907, 1, 908, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (908, 1, 909, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (909, 1, 910, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (910, 1, 911, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (911, 1, 912, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (912, 1, 913, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (913, 1, 914, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (914, 1, 915, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (915, 1, 916, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (916, 1, 917, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (917, 1, 918, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (918, 1, 919, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (919, 1, 920, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (920, 1, 921, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (921, 1, 922, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (922, 1, 923, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (923, 1, 924, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (924, 1, 925, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (925, 1, 926, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (926, 1, 927, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (927, 1, 928, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (928, 1, 929, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (929, 1, 930, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (930, 1, 931, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (931, 1, 932, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (932, 1, 933, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (933, 1, 934, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (934, 1, 935, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (935, 1, 936, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (936, 1, 937, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (937, 1, 938, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (938, 1, 939, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (939, 1, 940, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (940, 1, 941, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (941, 1, 942, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (942, 1, 943, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (943, 1, 944, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (944, 1, 945, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (945, 1, 946, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (946, 1, 947, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (947, 1, 948, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (948, 1, 949, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (949, 1, 950, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (950, 1, 951, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (951, 1, 952, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (952, 1, 953, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (953, 1, 954, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (954, 1, 955, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (955, 1, 956, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (956, 1, 957, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (957, 1, 958, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (958, 1, 959, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (959, 1, 960, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (960, 1, 961, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (961, 1, 962, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (962, 1, 963, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (963, 1, 964, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (964, 1, 965, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (965, 1, 966, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (966, 1, 967, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (967, 1, 968, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (968, 1, 969, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (969, 1, 970, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (970, 1, 971, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (971, 1, 972, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (972, 1, 973, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (973, 1, 974, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (974, 1, 975, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (975, 1, 976, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (976, 1, 977, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (977, 1, 978, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (978, 1, 979, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (979, 1, 980, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (980, 1, 981, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (981, 1, 982, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (982, 1, 983, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (983, 1, 984, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (984, 1, 985, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (985, 1, 986, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (986, 1, 987, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (987, 1, 988, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (988, 1, 989, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (989, 1, 990, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (990, 1, 991, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (991, 1, 992, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (992, 1, 993, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (993, 1, 994, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (994, 1, 995, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (995, 1, 996, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (996, 1, 997, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (997, 1, 998, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (998, 1, 999, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (999, 1, 1000, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1000, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[user_permission] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user__AB6E6164B31EE1D3]    Script Date: 3/5/2022 11:45:09 PM ******/
ALTER TABLE [dbo].[user] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [is_super]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('user') FOR [permission]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([podId])
REFERENCES [dbo].[pod] ([id])
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD FOREIGN KEY([groupId])
REFERENCES [dbo].[group] ([id])
GO
ALTER TABLE [dbo].[image]  WITH CHECK ADD FOREIGN KEY([podId])
REFERENCES [dbo].[pod] ([id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([customerId])
REFERENCES [dbo].[customer] ([id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([stateId])
REFERENCES [dbo].[order_state] ([id])
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD FOREIGN KEY([podId])
REFERENCES [dbo].[pod] ([id])
GO
ALTER TABLE [dbo].[permission_action]  WITH CHECK ADD FOREIGN KEY([actionId])
REFERENCES [dbo].[action] ([id])
GO
ALTER TABLE [dbo].[permission_action]  WITH CHECK ADD FOREIGN KEY([permissionId])
REFERENCES [dbo].[permission] ([id])
GO
ALTER TABLE [dbo].[pod]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[pod]  WITH CHECK ADD FOREIGN KEY([state])
REFERENCES [dbo].[state] ([id])
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD FOREIGN KEY([permissionId])
REFERENCES [dbo].[permission] ([id])
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([id])
GO
USE [master]
GO
ALTER DATABASE [dungpeo] SET  READ_WRITE 
GO
