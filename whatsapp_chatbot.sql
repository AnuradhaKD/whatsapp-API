USE [WAChatBot]
GO
/****** Object:  Table [dbo].[BotReplies]    Script Date: 1/27/2025 12:09:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BotReplies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserMessage] [nvarchar](255) NULL,
	[Reply] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BotResponses]    Script Date: 1/27/2025 12:09:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BotResponses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserMessage] [nvarchar](255) NOT NULL,
	[BotReply] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessageLogs]    Script Date: 1/27/2025 12:09:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessageLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserMessage] [nvarchar](max) NOT NULL,
	[BotReply] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BotReplies] ON 

INSERT [dbo].[BotReplies] ([Id], [UserMessage], [Reply]) VALUES (1, N'Hi', N'Hi! How are you')
SET IDENTITY_INSERT [dbo].[BotReplies] OFF
GO
SET IDENTITY_INSERT [dbo].[BotResponses] ON 

INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (1, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (2, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 D - කාමරයක් තෝරන්න
🔤 E - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (3, N'b', N'🌍 You have selected the Sinhala language.
🔤 F - Select a room
🔤 G - Order food
🔄 0 - Change language')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (4, N'c', N'🌍 நீங்கள் தமிழ் மொழியைத் தேர்ந்தெடுத்துள்ளீர்கள்.
🔤 H - ஒரு அறை தேர்ந்தெடுக்கவும்
🔤 I - உணவு ஆர்டர் செய்யவும்
🔄 0 - மொழியை மாற்றவும்

')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (5, N'0', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (10, N'd', N'මෙය පරීක්ෂණ සංවාදයක් වේ. 🧪🗨️ සහභාගී වීම සඳහා ස්තූතියි. 🙏😊')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (12, N'e', N'මෙය පරීක්ෂණ සංවාදයක් වේ. 🧪🗨️ සහභාගී වීම සඳහා ස්තූතියි. 🙏😊')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (14, N'f', N'This is a test chat. 🧪🗨️ Thank you for participating. 🙏😊')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (15, N'g', N'This is a test chat. 🧪🗨️ Thank you for participating. 🙏😊')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (17, N'h', N'இந்தது ஒரு சோதனை உரையாடல் ஆகும். 🧪🗨️ பங்குபற்றுவதற்காக நன்றி. 🙏😊')
INSERT [dbo].[BotResponses] ([Id], [UserMessage], [BotReply]) VALUES (19, N'i', N'இந்தது ஒரு சோதனை உரையாடல் ஆகும். 🧪🗨️ பங்குபற்றுவதற்காக நன்றி. 🙏😊')
SET IDENTITY_INSERT [dbo].[BotResponses] OFF
GO
SET IDENTITY_INSERT [dbo].[MessageLogs] ON 

INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (1, N'hi', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T22:54:05.887' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (2, N'hello', N'Hi there! How can I help you today?', CAST(N'2025-01-26T22:54:21.453' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (3, N'hello', N'Hi there! How can I help you today?', CAST(N'2025-01-26T22:59:22.143' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (4, N'hello', N'🌍 Please select your preferred language to continue:
1️⃣ - සිංහල (Sinhala)
2️⃣ - English
3️⃣ - தமிழ் (Tamil)', CAST(N'2025-01-26T23:11:09.503' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (5, N'1', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:19:36.650' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (6, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:19:45.117' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (7, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 A - කාමරයක් තෝරන්න
🔤 B - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න', CAST(N'2025-01-26T23:19:49.373' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (8, N'0', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:19:53.910' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (9, N'b', N'🌍 You have selected the Sinhala language.
🔤 A - Select a room
🔤 B - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:19:57.093' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (10, N'b', N'🌍 You have selected the Sinhala language.
🔤 A - Select a room
🔤 B - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:20:00.503' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (11, N'b', N'🌍 You have selected the Sinhala language.
🔤 A - Select a room
🔤 B - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:20:11.090' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (12, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:27:12.750' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (13, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 D - කාමරයක් තෝරන්න
🔤 E - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න', CAST(N'2025-01-26T23:27:18.623' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (14, N'0', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:27:23.043' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (15, N'2', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:27:25.833' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (16, N'b', N'🌍 You have selected the Sinhala language.
🔤 D - Select a room
🔤 E - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:27:32.203' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (17, N'd', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:27:41.333' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (18, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:28:53.910' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (19, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 D - කාමරයක් තෝරන්න
🔤 E - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න', CAST(N'2025-01-26T23:28:57.547' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (20, N'd', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:29:01.777' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (21, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:31:43.613' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (22, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:32:40.930' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (23, N'b', N'🌍 You have selected the Sinhala language.
🔤 D - Select a room
🔤 E - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:32:57.043' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (24, N'd', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:33:11.780' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (25, N'help', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:35:24.147' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (26, N'help', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:35:31.940' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (27, N'help ekak denn barida humm', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:35:52.373' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (28, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:40:28.937' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (29, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 D - කාමරයක් තෝරන්න
🔤 E - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න', CAST(N'2025-01-26T23:40:31.650' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (30, N'd', N'මෙය පරීක්ෂණ සංවාදයක් වේ. 🧪🗨️ සහභාගී වීම සඳහා ස්තූතියි. 🙏😊', CAST(N'2025-01-26T23:40:34.507' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (31, N'0', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:40:41.540' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (32, N'b', N'🌍 You have selected the Sinhala language.
🔤 F - Select a room
🔤 G - Order food
🔄 0 - Change language', CAST(N'2025-01-26T23:40:47.247' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (33, N'f', N'This is a test chat. 🧪🗨️ Thank you for participating. 🙏😊', CAST(N'2025-01-26T23:40:51.180' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (34, N'0', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤B- English
🔤C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:40:54.757' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (35, N'c', N'🌍 நீங்கள் தமிழ் மொழியைத் தேர்ந்தெடுத்துள்ளீர்கள்.
🔤 H - ஒரு அறை தேர்ந்தெடுக்கவும்
🔤 I - உணவு ஆர்டர் செய்யவும்
🔄 0 - மொழியை மாற்றவும்

', CAST(N'2025-01-26T23:40:58.070' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (36, N'h', N'இந்தது ஒரு சோதனை உரையாடல் ஆகும். 🧪🗨️ பங்குபற்றுவதற்காக நன்றி. 🙏😊', CAST(N'2025-01-26T23:41:02.953' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (37, N's', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:41:31.707' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (38, N'hello', N'🌍 Please select your preferred language to continue:
🔤 A - සිංහල (Sinhala)
🔤 B- English
🔤 C - தமிழ் (Tamil)', CAST(N'2025-01-26T23:42:22.310' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (39, N'a', N'🌍 ඔබ සිංහල භාෂාව තෝරා ඇත.
🔤 D - කාමරයක් තෝරන්න
🔤 E - ආහාර ඇණවුම් කරන්න
🔄 0 - භාෂාව වෙනස් කරන්න', CAST(N'2025-01-26T23:42:28.913' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (40, N'g', N'This is a test chat. 🧪🗨️ Thank you for participating. 🙏😊', CAST(N'2025-01-26T23:42:37.823' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (41, N'n', N'I''m not sure how to respond to that. You can type ''help'' to see what I can do.', CAST(N'2025-01-26T23:42:41.863' AS DateTime))
INSERT [dbo].[MessageLogs] ([Id], [UserMessage], [BotReply], [Timestamp]) VALUES (42, N'd', N'මෙය පරීක්ෂණ සංවාදයක් වේ. 🧪🗨️ සහභාගී වීම සඳහා ස්තූතියි. 🙏😊', CAST(N'2025-01-26T23:42:46.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[MessageLogs] OFF
GO
