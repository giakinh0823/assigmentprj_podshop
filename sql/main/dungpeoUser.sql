USE [dungpeo]
GO


create table [action](
	id int not null identity(1,1) primary key,
	title nvarchar(255) not null,
	code nvarchar(255) not null,
	feature varchar(200) not null,
)

/****** Object:  Table [dbo].[permission]    Script Date: 2/27/2022 12:52:54 PM ******/
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
/****** Object:  Table [dbo].[permission_action]    Script Date: 2/27/2022 12:52:54 PM ******/
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


/****** Object:  Table [dbo].[user]    Script Date: 2/27/2022 12:52:54 PM ******/
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
/****** Object:  Table [dbo].[user_permission]    Script Date: 2/27/2022 12:52:54 PM ******/
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
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (3, 1, 1, 2)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (5, 1, 1, 4)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (6, 1, 1, 5)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (7, 1, 1, 6)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (8, 1, 1, 7)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (9, 1, 1, 8)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (10, 1, 1, 9)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (11, 1, 1, 10)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (12, 1, 1, 11)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (13, 1, 1, 12)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (14, 1, 1, 13)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (15, 1, 1, 14)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (16, 1, 1, 15)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (17, 1, 1, 16)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (18, 1, 1, 17)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (19, 1, 1, 18)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (20, 1, 1, 19)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (21, 1, 1, 20)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (22, 1, 1, 21)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (23, 1, 1, 22)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (24, 1, 1, 23)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (25, 1, 1, 24)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (26, 1, 1, 25)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (28, 1, 1, 27)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (29, 1, 1, 28)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (30, 1, 1, 29)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (31, 1, 1, 30)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (32, 1, 1, 31)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (33, 1, 1, 32)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (34, 1, 1, 33)
GO
INSERT [dbo].[permission_action] ([id], [licensed], [permissionId], [actionId]) VALUES (35, 1, 1, 34)
GO
SET IDENTITY_INSERT [dbo].[permission_action] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (1, N'giakinh0823', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'Kính', N'Hà Gia', CAST(N'2022-02-23' AS Date), N'giakinh2000@gmail.com', N'+84972141556', 1, 1, 1, N'user', N'Screenshot 2022-02-13 010616.png', CAST(N'2022-02-27T05:14:34.040' AS DateTime), CAST(N'2022-02-27T11:44:27.980' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (2, N'test1', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'1', N'Test', CAST(N'2001-08-23' AS Date), N'test1@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
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
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (15, N'test14', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'14', N'Test', CAST(N'2001-08-23' AS Date), N'test14@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (18, N'test17', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'17', N'Test', CAST(N'2001-08-23' AS Date), N'test17@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
GO
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (19, N'test18', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'18', N'Test', CAST(N'2001-08-23' AS Date), N'test18@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
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
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (63, N'test62', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'62', N'Test', CAST(N'2001-08-23' AS Date), N'test62@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
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
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (178, N'test177', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'177', N'Test', CAST(N'2001-08-23' AS Date), N'test177@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
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
INSERT [dbo].[user] ([id], [username], [password], [first_name], [last_name], [birthday], [email], [phone], [gender], [is_super], [is_active], [permission], [avatar], [created_at], [updated_at]) VALUES (184, N'test183', N'8C29CADC8781CE45B26752B996F12B5901E2E9521EF8FCC48BBF01E17D7955F8', N'183', N'Test', CAST(N'2001-08-23' AS Date), N'test183@gmail.com', N'0972141556', 1, 0, 1, N'user', NULL, CAST(N'2022-02-12T22:43:59.877' AS DateTime), CAST(N'2022-02-23T23:37:59.753' AS DateTime))
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
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1, 1, 1, 1)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1001, 1, 2, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1002, 1, 3, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1003, 1, 4, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1004, 1, 5, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1005, 1, 6, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1006, 1, 7, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1007, 1, 8, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1008, 1, 9, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1009, 1, 10, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1010, 1, 11, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1011, 1, 12, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1012, 1, 13, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1014, 1, 15, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1017, 1, 18, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1018, 1, 19, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1020, 1, 21, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1021, 1, 22, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1022, 1, 23, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1023, 1, 24, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1024, 1, 25, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1025, 1, 26, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1026, 1, 27, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1027, 1, 28, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1028, 1, 29, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1029, 1, 30, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1030, 1, 31, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1031, 1, 32, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1032, 1, 33, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1033, 1, 34, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1034, 1, 35, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1035, 1, 36, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1036, 1, 37, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1037, 1, 38, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1038, 1, 39, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1039, 1, 40, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1040, 1, 41, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1041, 1, 42, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1042, 1, 43, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1043, 1, 44, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1044, 1, 45, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1045, 1, 46, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1046, 1, 47, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1047, 1, 48, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1048, 1, 49, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1049, 1, 50, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1050, 1, 51, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1051, 1, 52, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1052, 1, 53, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1053, 1, 54, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1054, 1, 55, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1055, 1, 56, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1056, 1, 57, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1057, 1, 58, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1058, 1, 59, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1059, 1, 60, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1060, 1, 61, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1061, 1, 62, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1062, 1, 63, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1063, 1, 64, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1064, 1, 65, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1065, 1, 66, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1066, 1, 67, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1067, 1, 68, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1068, 1, 69, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1069, 1, 70, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1070, 1, 71, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1071, 1, 72, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1072, 1, 73, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1073, 1, 74, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1074, 1, 75, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1075, 1, 76, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1076, 1, 77, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1077, 1, 78, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1078, 1, 79, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1079, 1, 80, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1080, 1, 81, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1081, 1, 82, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1082, 1, 83, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1083, 1, 84, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1084, 1, 85, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1085, 1, 86, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1086, 1, 87, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1087, 1, 88, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1088, 1, 89, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1089, 1, 90, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1090, 1, 91, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1091, 1, 92, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1092, 1, 93, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1093, 1, 94, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1094, 1, 95, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1095, 1, 96, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1096, 1, 97, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1097, 1, 98, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1098, 1, 99, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1099, 1, 100, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1100, 1, 101, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1101, 1, 102, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1102, 1, 103, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1103, 1, 104, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1104, 1, 105, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1105, 1, 106, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1106, 1, 107, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1107, 1, 108, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1108, 1, 109, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1109, 1, 110, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1110, 1, 111, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1111, 1, 112, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1112, 1, 113, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1113, 1, 114, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1114, 1, 115, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1115, 1, 116, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1116, 1, 117, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1117, 1, 118, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1118, 1, 119, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1119, 1, 120, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1120, 1, 121, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1121, 1, 122, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1122, 1, 123, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1123, 1, 124, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1124, 1, 125, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1125, 1, 126, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1126, 1, 127, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1127, 1, 128, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1128, 1, 129, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1129, 1, 130, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1130, 1, 131, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1131, 1, 132, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1132, 1, 133, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1133, 1, 134, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1134, 1, 135, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1135, 1, 136, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1136, 1, 137, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1137, 1, 138, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1138, 1, 139, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1139, 1, 140, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1140, 1, 141, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1141, 1, 142, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1142, 1, 143, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1143, 1, 144, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1144, 1, 145, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1145, 1, 146, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1146, 1, 147, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1147, 1, 148, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1148, 1, 149, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1149, 1, 150, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1150, 1, 151, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1151, 1, 152, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1152, 1, 153, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1153, 1, 154, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1154, 1, 155, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1155, 1, 156, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1156, 1, 157, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1157, 1, 158, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1158, 1, 159, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1159, 1, 160, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1160, 1, 161, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1161, 1, 162, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1162, 1, 163, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1163, 1, 164, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1164, 1, 165, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1165, 1, 166, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1166, 1, 167, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1167, 1, 168, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1168, 1, 169, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1169, 1, 170, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1170, 1, 171, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1171, 1, 172, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1172, 1, 173, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1173, 1, 174, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1174, 1, 175, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1175, 1, 176, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1176, 1, 177, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1177, 1, 178, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1178, 1, 179, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1179, 1, 180, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1180, 1, 181, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1181, 1, 182, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1182, 1, 183, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1183, 1, 184, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1184, 1, 185, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1185, 1, 186, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1186, 1, 187, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1187, 1, 188, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1188, 1, 189, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1189, 1, 190, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1190, 1, 191, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1191, 1, 192, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1192, 1, 193, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1193, 1, 194, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1194, 1, 195, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1195, 1, 196, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1196, 1, 197, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1197, 1, 198, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1198, 1, 199, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1199, 1, 200, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1200, 1, 201, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1201, 1, 202, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1202, 1, 203, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1203, 1, 204, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1204, 1, 205, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1205, 1, 206, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1206, 1, 207, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1207, 1, 208, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1208, 1, 209, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1209, 1, 210, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1210, 1, 211, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1211, 1, 212, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1212, 1, 213, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1213, 1, 214, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1214, 1, 215, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1215, 1, 216, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1216, 1, 217, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1217, 1, 218, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1218, 1, 219, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1219, 1, 220, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1220, 1, 221, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1221, 1, 222, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1222, 1, 223, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1223, 1, 224, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1224, 1, 225, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1225, 1, 226, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1226, 1, 227, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1227, 1, 228, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1228, 1, 229, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1229, 1, 230, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1230, 1, 231, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1231, 1, 232, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1232, 1, 233, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1233, 1, 234, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1234, 1, 235, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1235, 1, 236, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1236, 1, 237, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1237, 1, 238, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1238, 1, 239, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1239, 1, 240, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1240, 1, 241, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1241, 1, 242, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1242, 1, 243, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1243, 1, 244, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1244, 1, 245, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1245, 1, 246, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1246, 1, 247, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1247, 1, 248, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1248, 1, 249, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1249, 1, 250, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1250, 1, 251, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1251, 1, 252, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1252, 1, 253, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1253, 1, 254, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1254, 1, 255, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1255, 1, 256, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1256, 1, 257, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1257, 1, 258, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1258, 1, 259, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1259, 1, 260, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1260, 1, 261, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1261, 1, 262, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1262, 1, 263, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1263, 1, 264, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1264, 1, 265, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1265, 1, 266, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1266, 1, 267, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1267, 1, 268, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1268, 1, 269, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1269, 1, 270, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1270, 1, 271, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1271, 1, 272, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1272, 1, 273, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1273, 1, 274, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1274, 1, 275, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1275, 1, 276, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1276, 1, 277, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1277, 1, 278, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1278, 1, 279, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1279, 1, 280, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1280, 1, 281, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1281, 1, 282, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1282, 1, 283, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1283, 1, 284, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1284, 1, 285, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1285, 1, 286, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1286, 1, 287, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1287, 1, 288, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1288, 1, 289, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1289, 1, 290, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1290, 1, 291, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1291, 1, 292, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1292, 1, 293, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1293, 1, 294, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1294, 1, 295, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1295, 1, 296, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1296, 1, 297, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1297, 1, 298, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1298, 1, 299, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1299, 1, 300, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1300, 1, 301, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1301, 1, 302, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1302, 1, 303, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1303, 1, 304, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1304, 1, 305, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1305, 1, 306, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1306, 1, 307, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1307, 1, 308, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1308, 1, 309, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1309, 1, 310, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1310, 1, 311, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1311, 1, 312, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1312, 1, 313, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1313, 1, 314, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1314, 1, 315, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1315, 1, 316, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1316, 1, 317, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1317, 1, 318, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1318, 1, 319, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1319, 1, 320, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1320, 1, 321, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1321, 1, 322, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1322, 1, 323, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1323, 1, 324, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1324, 1, 325, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1325, 1, 326, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1326, 1, 327, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1327, 1, 328, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1328, 1, 329, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1329, 1, 330, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1330, 1, 331, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1331, 1, 332, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1332, 1, 333, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1333, 1, 334, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1334, 1, 335, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1335, 1, 336, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1336, 1, 337, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1337, 1, 338, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1338, 1, 339, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1339, 1, 340, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1340, 1, 341, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1341, 1, 342, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1342, 1, 343, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1343, 1, 344, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1344, 1, 345, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1345, 1, 346, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1346, 1, 347, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1347, 1, 348, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1348, 1, 349, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1349, 1, 350, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1350, 1, 351, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1351, 1, 352, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1352, 1, 353, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1353, 1, 354, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1354, 1, 355, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1355, 1, 356, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1356, 1, 357, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1357, 1, 358, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1358, 1, 359, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1359, 1, 360, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1360, 1, 361, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1361, 1, 362, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1362, 1, 363, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1363, 1, 364, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1364, 1, 365, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1365, 1, 366, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1366, 1, 367, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1367, 1, 368, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1368, 1, 369, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1369, 1, 370, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1370, 1, 371, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1371, 1, 372, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1372, 1, 373, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1373, 1, 374, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1374, 1, 375, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1375, 1, 376, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1376, 1, 377, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1377, 1, 378, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1378, 1, 379, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1379, 1, 380, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1380, 1, 381, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1381, 1, 382, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1382, 1, 383, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1383, 1, 384, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1384, 1, 385, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1385, 1, 386, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1386, 1, 387, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1387, 1, 388, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1388, 1, 389, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1389, 1, 390, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1390, 1, 391, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1391, 1, 392, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1392, 1, 393, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1393, 1, 394, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1394, 1, 395, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1395, 1, 396, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1396, 1, 397, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1397, 1, 398, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1398, 1, 399, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1399, 1, 400, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1400, 1, 401, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1401, 1, 402, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1402, 1, 403, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1403, 1, 404, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1404, 1, 405, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1405, 1, 406, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1406, 1, 407, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1407, 1, 408, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1408, 1, 409, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1409, 1, 410, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1410, 1, 411, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1411, 1, 412, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1412, 1, 413, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1413, 1, 414, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1414, 1, 415, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1415, 1, 416, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1416, 1, 417, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1417, 1, 418, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1418, 1, 419, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1419, 1, 420, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1420, 1, 421, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1421, 1, 422, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1422, 1, 423, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1423, 1, 424, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1424, 1, 425, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1425, 1, 426, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1426, 1, 427, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1427, 1, 428, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1428, 1, 429, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1429, 1, 430, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1430, 1, 431, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1431, 1, 432, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1432, 1, 433, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1433, 1, 434, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1434, 1, 435, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1435, 1, 436, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1436, 1, 437, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1437, 1, 438, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1438, 1, 439, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1439, 1, 440, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1440, 1, 441, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1441, 1, 442, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1442, 1, 443, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1443, 1, 444, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1444, 1, 445, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1445, 1, 446, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1446, 1, 447, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1447, 1, 448, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1448, 1, 449, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1449, 1, 450, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1450, 1, 451, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1451, 1, 452, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1452, 1, 453, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1453, 1, 454, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1454, 1, 455, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1455, 1, 456, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1456, 1, 457, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1457, 1, 458, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1458, 1, 459, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1459, 1, 460, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1460, 1, 461, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1461, 1, 462, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1462, 1, 463, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1463, 1, 464, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1464, 1, 465, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1465, 1, 466, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1466, 1, 467, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1467, 1, 468, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1468, 1, 469, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1469, 1, 470, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1470, 1, 471, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1471, 1, 472, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1472, 1, 473, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1473, 1, 474, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1474, 1, 475, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1475, 1, 476, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1476, 1, 477, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1477, 1, 478, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1478, 1, 479, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1479, 1, 480, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1480, 1, 481, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1481, 1, 482, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1482, 1, 483, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1483, 1, 484, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1484, 1, 485, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1485, 1, 486, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1486, 1, 487, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1487, 1, 488, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1488, 1, 489, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1489, 1, 490, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1490, 1, 491, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1491, 1, 492, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1492, 1, 493, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1493, 1, 494, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1494, 1, 495, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1495, 1, 496, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1496, 1, 497, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1497, 1, 498, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1498, 1, 499, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1499, 1, 500, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1500, 1, 501, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1501, 1, 502, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1502, 1, 503, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1503, 1, 504, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1504, 1, 505, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1505, 1, 506, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1506, 1, 507, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1507, 1, 508, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1508, 1, 509, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1509, 1, 510, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1510, 1, 511, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1511, 1, 512, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1512, 1, 513, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1513, 1, 514, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1514, 1, 515, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1515, 1, 516, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1516, 1, 517, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1517, 1, 518, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1518, 1, 519, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1519, 1, 520, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1520, 1, 521, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1521, 1, 522, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1522, 1, 523, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1523, 1, 524, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1524, 1, 525, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1525, 1, 526, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1526, 1, 527, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1527, 1, 528, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1528, 1, 529, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1529, 1, 530, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1530, 1, 531, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1531, 1, 532, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1532, 1, 533, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1533, 1, 534, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1534, 1, 535, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1535, 1, 536, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1536, 1, 537, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1537, 1, 538, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1538, 1, 539, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1539, 1, 540, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1540, 1, 541, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1541, 1, 542, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1542, 1, 543, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1543, 1, 544, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1544, 1, 545, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1545, 1, 546, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1546, 1, 547, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1547, 1, 548, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1548, 1, 549, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1549, 1, 550, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1550, 1, 551, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1551, 1, 552, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1552, 1, 553, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1553, 1, 554, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1554, 1, 555, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1555, 1, 556, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1556, 1, 557, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1557, 1, 558, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1558, 1, 559, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1559, 1, 560, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1560, 1, 561, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1561, 1, 562, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1562, 1, 563, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1563, 1, 564, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1564, 1, 565, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1565, 1, 566, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1566, 1, 567, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1567, 1, 568, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1568, 1, 569, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1569, 1, 570, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1570, 1, 571, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1571, 1, 572, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1572, 1, 573, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1573, 1, 574, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1574, 1, 575, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1575, 1, 576, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1576, 1, 577, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1577, 1, 578, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1578, 1, 579, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1579, 1, 580, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1580, 1, 581, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1581, 1, 582, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1582, 1, 583, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1583, 1, 584, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1584, 1, 585, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1585, 1, 586, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1586, 1, 587, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1587, 1, 588, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1588, 1, 589, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1589, 1, 590, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1590, 1, 591, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1591, 1, 592, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1592, 1, 593, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1593, 1, 594, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1594, 1, 595, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1595, 1, 596, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1596, 1, 597, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1597, 1, 598, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1598, 1, 599, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1599, 1, 600, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1600, 1, 601, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1601, 1, 602, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1602, 1, 603, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1603, 1, 604, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1604, 1, 605, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1605, 1, 606, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1606, 1, 607, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1607, 1, 608, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1608, 1, 609, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1609, 1, 610, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1610, 1, 611, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1611, 1, 612, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1612, 1, 613, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1613, 1, 614, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1614, 1, 615, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1615, 1, 616, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1616, 1, 617, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1617, 1, 618, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1618, 1, 619, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1619, 1, 620, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1620, 1, 621, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1621, 1, 622, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1622, 1, 623, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1623, 1, 624, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1624, 1, 625, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1625, 1, 626, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1626, 1, 627, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1627, 1, 628, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1628, 1, 629, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1629, 1, 630, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1630, 1, 631, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1631, 1, 632, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1632, 1, 633, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1633, 1, 634, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1634, 1, 635, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1635, 1, 636, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1636, 1, 637, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1637, 1, 638, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1638, 1, 639, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1639, 1, 640, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1640, 1, 641, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1641, 1, 642, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1642, 1, 643, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1643, 1, 644, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1644, 1, 645, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1645, 1, 646, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1646, 1, 647, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1647, 1, 648, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1648, 1, 649, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1649, 1, 650, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1650, 1, 651, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1651, 1, 652, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1652, 1, 653, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1653, 1, 654, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1654, 1, 655, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1655, 1, 656, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1656, 1, 657, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1657, 1, 658, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1658, 1, 659, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1659, 1, 660, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1660, 1, 661, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1661, 1, 662, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1662, 1, 663, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1663, 1, 664, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1664, 1, 665, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1665, 1, 666, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1666, 1, 667, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1667, 1, 668, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1668, 1, 669, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1669, 1, 670, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1670, 1, 671, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1671, 1, 672, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1672, 1, 673, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1673, 1, 674, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1674, 1, 675, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1675, 1, 676, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1676, 1, 677, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1677, 1, 678, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1678, 1, 679, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1679, 1, 680, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1680, 1, 681, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1681, 1, 682, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1682, 1, 683, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1683, 1, 684, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1684, 1, 685, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1685, 1, 686, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1686, 1, 687, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1687, 1, 688, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1688, 1, 689, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1689, 1, 690, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1690, 1, 691, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1691, 1, 692, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1692, 1, 693, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1693, 1, 694, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1694, 1, 695, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1695, 1, 696, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1696, 1, 697, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1697, 1, 698, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1698, 1, 699, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1699, 1, 700, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1700, 1, 701, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1701, 1, 702, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1702, 1, 703, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1703, 1, 704, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1704, 1, 705, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1705, 1, 706, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1706, 1, 707, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1707, 1, 708, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1708, 1, 709, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1709, 1, 710, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1710, 1, 711, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1711, 1, 712, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1712, 1, 713, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1713, 1, 714, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1714, 1, 715, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1715, 1, 716, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1716, 1, 717, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1717, 1, 718, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1718, 1, 719, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1719, 1, 720, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1720, 1, 721, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1721, 1, 722, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1722, 1, 723, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1723, 1, 724, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1724, 1, 725, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1725, 1, 726, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1726, 1, 727, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1727, 1, 728, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1728, 1, 729, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1729, 1, 730, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1730, 1, 731, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1731, 1, 732, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1732, 1, 733, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1733, 1, 734, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1734, 1, 735, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1735, 1, 736, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1736, 1, 737, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1737, 1, 738, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1738, 1, 739, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1739, 1, 740, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1740, 1, 741, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1741, 1, 742, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1742, 1, 743, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1743, 1, 744, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1744, 1, 745, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1745, 1, 746, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1746, 1, 747, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1747, 1, 748, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1748, 1, 749, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1749, 1, 750, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1750, 1, 751, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1751, 1, 752, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1752, 1, 753, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1753, 1, 754, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1754, 1, 755, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1755, 1, 756, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1756, 1, 757, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1757, 1, 758, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1758, 1, 759, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1759, 1, 760, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1760, 1, 761, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1761, 1, 762, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1762, 1, 763, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1763, 1, 764, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1764, 1, 765, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1765, 1, 766, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1766, 1, 767, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1767, 1, 768, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1768, 1, 769, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1769, 1, 770, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1770, 1, 771, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1771, 1, 772, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1772, 1, 773, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1773, 1, 774, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1774, 1, 775, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1775, 1, 776, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1776, 1, 777, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1777, 1, 778, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1778, 1, 779, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1779, 1, 780, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1780, 1, 781, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1781, 1, 782, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1782, 1, 783, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1783, 1, 784, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1784, 1, 785, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1785, 1, 786, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1786, 1, 787, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1787, 1, 788, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1788, 1, 789, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1789, 1, 790, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1790, 1, 791, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1791, 1, 792, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1792, 1, 793, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1793, 1, 794, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1794, 1, 795, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1795, 1, 796, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1796, 1, 797, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1797, 1, 798, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1798, 1, 799, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1799, 1, 800, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1800, 1, 801, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1801, 1, 802, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1802, 1, 803, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1803, 1, 804, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1804, 1, 805, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1805, 1, 806, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1806, 1, 807, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1807, 1, 808, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1808, 1, 809, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1809, 1, 810, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1810, 1, 811, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1811, 1, 812, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1812, 1, 813, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1813, 1, 814, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1814, 1, 815, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1815, 1, 816, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1816, 1, 817, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1817, 1, 818, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1818, 1, 819, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1819, 1, 820, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1820, 1, 821, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1821, 1, 822, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1822, 1, 823, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1823, 1, 824, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1824, 1, 825, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1825, 1, 826, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1826, 1, 827, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1827, 1, 828, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1828, 1, 829, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1829, 1, 830, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1830, 1, 831, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1831, 1, 832, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1832, 1, 833, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1833, 1, 834, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1834, 1, 835, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1835, 1, 836, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1836, 1, 837, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1837, 1, 838, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1838, 1, 839, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1839, 1, 840, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1840, 1, 841, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1841, 1, 842, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1842, 1, 843, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1843, 1, 844, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1844, 1, 845, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1845, 1, 846, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1846, 1, 847, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1847, 1, 848, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1848, 1, 849, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1849, 1, 850, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1850, 1, 851, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1851, 1, 852, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1852, 1, 853, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1853, 1, 854, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1854, 1, 855, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1855, 1, 856, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1856, 1, 857, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1857, 1, 858, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1858, 1, 859, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1859, 1, 860, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1860, 1, 861, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1861, 1, 862, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1862, 1, 863, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1863, 1, 864, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1864, 1, 865, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1865, 1, 866, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1866, 1, 867, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1867, 1, 868, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1868, 1, 869, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1869, 1, 870, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1870, 1, 871, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1871, 1, 872, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1872, 1, 873, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1873, 1, 874, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1874, 1, 875, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1875, 1, 876, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1876, 1, 877, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1877, 1, 878, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1878, 1, 879, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1879, 1, 880, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1880, 1, 881, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1881, 1, 882, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1882, 1, 883, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1883, 1, 884, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1884, 1, 885, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1885, 1, 886, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1886, 1, 887, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1887, 1, 888, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1888, 1, 889, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1889, 1, 890, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1890, 1, 891, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1891, 1, 892, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1892, 1, 893, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1893, 1, 894, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1894, 1, 895, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1895, 1, 896, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1896, 1, 897, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1897, 1, 898, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1898, 1, 899, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1899, 1, 900, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1900, 1, 901, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1901, 1, 902, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1902, 1, 903, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1903, 1, 904, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1904, 1, 905, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1905, 1, 906, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1906, 1, 907, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1907, 1, 908, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1908, 1, 909, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1909, 1, 910, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1910, 1, 911, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1911, 1, 912, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1912, 1, 913, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1913, 1, 914, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1914, 1, 915, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1915, 1, 916, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1916, 1, 917, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1917, 1, 918, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1918, 1, 919, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1919, 1, 920, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1920, 1, 921, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1921, 1, 922, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1922, 1, 923, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1923, 1, 924, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1924, 1, 925, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1925, 1, 926, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1926, 1, 927, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1927, 1, 928, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1928, 1, 929, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1929, 1, 930, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1930, 1, 931, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1931, 1, 932, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1932, 1, 933, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1933, 1, 934, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1934, 1, 935, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1935, 1, 936, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1936, 1, 937, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1937, 1, 938, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1938, 1, 939, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1939, 1, 940, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1940, 1, 941, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1941, 1, 942, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1942, 1, 943, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1943, 1, 944, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1944, 1, 945, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1945, 1, 946, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1946, 1, 947, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1947, 1, 948, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1948, 1, 949, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1949, 1, 950, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1950, 1, 951, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1951, 1, 952, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1952, 1, 953, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1953, 1, 954, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1954, 1, 955, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1955, 1, 956, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1956, 1, 957, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1957, 1, 958, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1958, 1, 959, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1959, 1, 960, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1960, 1, 961, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1961, 1, 962, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1962, 1, 963, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1963, 1, 964, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1964, 1, 965, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1965, 1, 966, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1966, 1, 967, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1967, 1, 968, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1968, 1, 969, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1969, 1, 970, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1970, 1, 971, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1971, 1, 972, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1972, 1, 973, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1973, 1, 974, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1974, 1, 975, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1975, 1, 976, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1976, 1, 977, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1977, 1, 978, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1978, 1, 979, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1979, 1, 980, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1980, 1, 981, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1981, 1, 982, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1982, 1, 983, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1983, 1, 984, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1984, 1, 985, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1985, 1, 986, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1986, 1, 987, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1987, 1, 988, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1988, 1, 989, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1989, 1, 990, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1990, 1, 991, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1991, 1, 992, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1992, 1, 993, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1993, 1, 994, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1994, 1, 995, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1995, 1, 996, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1996, 1, 997, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1997, 1, 998, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1998, 1, 999, 2)
GO
INSERT [dbo].[user_permission] ([id], [licensed], [userId], [permissionId]) VALUES (1999, 1, 1000, 2)
GO
SET IDENTITY_INSERT [dbo].[user_permission] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__user__AB6E6164D4B57F94]    Script Date: 2/27/2022 12:52:54 PM ******/
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
ALTER TABLE [dbo].[permission_action]  WITH CHECK ADD FOREIGN KEY([actionId])
REFERENCES [dbo].[action] ([id])
GO
ALTER TABLE [dbo].[permission_action]  WITH CHECK ADD FOREIGN KEY([permissionId])
REFERENCES [dbo].[permission] ([id])
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD FOREIGN KEY([permissionId])
REFERENCES [dbo].[permission] ([id])
GO
ALTER TABLE [dbo].[user_permission]  WITH CHECK ADD FOREIGN KEY([userId])
REFERENCES [dbo].[user] ([id])
GO
