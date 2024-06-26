USE [master]
GO
/****** Object:  Database [ХранительПРО_Poglazova]    Script Date: 19.04.2024 23:24:39 ******/
CREATE DATABASE [ХранительПРО_Poglazova]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ХранительПРО', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ХранительПРО.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ХранительПРО_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ХранительПРО_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ХранительПРО_Poglazova].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ARITHABORT OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET  MULTI_USER 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET QUERY_STORE = OFF
GO
USE [ХранительПРО_Poglazova]
GO
/****** Object:  Table [dbo].[Группы]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Группы](
	[ID_Группы] [int] IDENTITY(1,1) NOT NULL,
	[Название_группы] [nvarchar](255) NULL,
 CONSTRAINT [PK_Группы] PRIMARY KEY CLUSTERED 
(
	[ID_Группы] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Документы]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Документы](
	[ID_Документа] [int] IDENTITY(1,1) NOT NULL,
	[Скан паспорта посетителя] [nvarchar](255) NULL,
 CONSTRAINT [PK_Документы1] PRIMARY KEY CLUSTERED 
(
	[ID_Документа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявка]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявка](
	[ID_Заявки] [int] IDENTITY(1,1) NOT NULL,
	[ID_Пользователя] [int] NULL,
	[Тип_заявки] [nvarchar](255) NULL,
	[ID_Подразделения] [int] NULL,
	[ID_Сотрудника] [int] NULL,
	[ID_Статуса] [int] NULL,
	[Причина_отказа] [nvarchar](255) NULL,
 CONSTRAINT [PK_Заявка] PRIMARY KEY CLUSTERED 
(
	[ID_Заявки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отдел]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отдел](
	[ID_Отдела] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](255) NULL,
 CONSTRAINT [PK_Отдел] PRIMARY KEY CLUSTERED 
(
	[ID_Отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Подразделения]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Подразделения](
	[ID_Подразделения] [int] IDENTITY(1,1) NOT NULL,
	[Наименование] [nvarchar](255) NULL,
 CONSTRAINT [PK_Подразделения] PRIMARY KEY CLUSTERED 
(
	[ID_Подразделения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ПользователиГруппа]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПользователиГруппа](
	[ID_ПользователяГруппа] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[Номер телефона] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Дата рождения] [nvarchar](255) NULL,
	[Данные паспорта] [nvarchar](255) NULL,
	[Логин] [nvarchar](255) NULL,
	[Пароль] [nvarchar](255) NULL,
	[ID_Группы] [int] NULL,
	[Назначение] [nvarchar](255) NULL,
 CONSTRAINT [PK_ПользователиГруппа] PRIMARY KEY CLUSTERED 
(
	[ID_ПользователяГруппа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ПользователиЛичное]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ПользователиЛичное](
	[ID_ПользователяЛичное] [int] IDENTITY(1,1) NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[Номер телефона] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Дата рождения] [nvarchar](255) NULL,
	[Данные паспорта] [nvarchar](255) NULL,
	[Логин] [nvarchar](255) NULL,
	[Пароль] [nvarchar](255) NULL,
	[Назначение] [nvarchar](255) NULL,
 CONSTRAINT [PK_ПользователиЛ_Г] PRIMARY KEY CLUSTERED 
(
	[ID_ПользователяЛичное] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Посетители]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Посетители](
	[ID_Посетителя] [int] NOT NULL,
	[Фамилия] [nvarchar](255) NULL,
	[Имя] [nvarchar](255) NULL,
	[Отчество] [nvarchar](255) NULL,
	[Телефон] [nvarchar](255) NULL,
	[E-mail] [nvarchar](255) NULL,
	[Организация] [nvarchar](255) NULL,
	[Примечание] [nvarchar](255) NULL,
	[Дата рождения] [date] NULL,
	[Серия] [nvarchar](4) NULL,
	[Номер] [nvarchar](6) NULL,
	[Фотография] [nvarchar](255) NULL,
	[ID_Документа] [int] NULL,
 CONSTRAINT [PK_Посетители] PRIMARY KEY CLUSTERED 
(
	[ID_Посетителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пропуск]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пропуск](
	[ID_Пропуска] [int] NOT NULL,
	[ID_Заявки] [int] IDENTITY(1,1) NOT NULL,
	[Цель посещения] [nvarchar](255) NULL,
	[Принимающий сотрудник] [int] NULL,
	[Желаемый срока начала заявки] [date] NULL,
	[Желаемый срока окончания заявки] [date] NULL,
 CONSTRAINT [PK_Пропускк] PRIMARY KEY CLUSTERED 
(
	[ID_Пропуска] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[ID сотрудника] [int] NOT NULL,
	[ФИО] [nvarchar](255) NULL,
	[ID_Подразделения] [int] NULL,
	[ID_Отдела] [int] NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[ID сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[СписокПосетителей]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[СписокПосетителей](
	[ID_Списка] [int] IDENTITY(1,1) NOT NULL,
	[ID_Посетителя] [int] NULL,
	[Номер_порядка] [nvarchar](255) NULL,
	[ФИО] [nvarchar](255) NULL,
	[Контакты] [nvarchar](255) NULL,
	[Фотография] [varbinary](50) NULL,
 CONSTRAINT [PK_СписокПосетителей] PRIMARY KEY CLUSTERED 
(
	[ID_Списка] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус заявки]    Script Date: 19.04.2024 23:24:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус заявки](
	[ID_Статуса] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](255) NULL,
 CONSTRAINT [PK_Статус] PRIMARY KEY CLUSTERED 
(
	[ID_Статуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Группы] ON 

INSERT [dbo].[Группы] ([ID_Группы], [Название_группы]) VALUES (1, N'24/04/2023_Производство_Фомичева_9367788_ГР1')
INSERT [dbo].[Группы] ([ID_Группы], [Название_группы]) VALUES (2, N'24/04/2023_Производство_Фомичева_9367788_ГР2')
SET IDENTITY_INSERT [dbo].[Группы] OFF
GO
SET IDENTITY_INSERT [dbo].[Документы] ON 

INSERT [dbo].[Документы] ([ID_Документа], [Скан паспорта посетителя]) VALUES (1, N'')
SET IDENTITY_INSERT [dbo].[Документы] OFF
GO
SET IDENTITY_INSERT [dbo].[Заявка] ON 

INSERT [dbo].[Заявка] ([ID_Заявки], [ID_Пользователя], [Тип_заявки], [ID_Подразделения], [ID_Сотрудника], [ID_Статуса], [Причина_отказа]) VALUES (1, 1, N'Личное', 3, 9362832, 1, NULL)
INSERT [dbo].[Заявка] ([ID_Заявки], [ID_Пользователя], [Тип_заявки], [ID_Подразделения], [ID_Сотрудника], [ID_Статуса], [Причина_отказа]) VALUES (5, 15, N'Личное', 5, 9737848, 2, N'')
INSERT [dbo].[Заявка] ([ID_Заявки], [ID_Пользователя], [Тип_заявки], [ID_Подразделения], [ID_Сотрудника], [ID_Статуса], [Причина_отказа]) VALUES (7, 5, N'Групповое', 4, 9737848, 4, N'Отказано из-за непредоставленных документов подходящего качества для сканирования.')
SET IDENTITY_INSERT [dbo].[Заявка] OFF
GO
SET IDENTITY_INSERT [dbo].[Отдел] ON 

INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (1, N'Охрана')
INSERT [dbo].[Отдел] ([ID_Отдела], [Наименование]) VALUES (2, N'Общий отдел')
SET IDENTITY_INSERT [dbo].[Отдел] OFF
GO
SET IDENTITY_INSERT [dbo].[Подразделения] ON 

INSERT [dbo].[Подразделения] ([ID_Подразделения], [Наименование]) VALUES (1, N'Производство')
INSERT [dbo].[Подразделения] ([ID_Подразделения], [Наименование]) VALUES (2, N'Сбыт')
INSERT [dbo].[Подразделения] ([ID_Подразделения], [Наименование]) VALUES (3, N'Администрация')
INSERT [dbo].[Подразделения] ([ID_Подразделения], [Наименование]) VALUES (4, N'Служба безопасности')
INSERT [dbo].[Подразделения] ([ID_Подразделения], [Наименование]) VALUES (5, N'Планирование')
SET IDENTITY_INSERT [dbo].[Подразделения] OFF
GO
SET IDENTITY_INSERT [dbo].[ПользователиГруппа] ON 

INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (1, N'Самойлова Таисия Гермоновна', N'+7 (891) 555-81-44', N'Taisiya177@lenta.ru', N'14 ноября 1979 года', N'5193 897719', N'Taisiya177', N'R94YGT3XFjgD', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (2, N'Ситникова Аделаида Гермоновна', N'+7 (793) 736-70-31', N'Adelaida20@hotmail.com', N'21 января 1979 года', N'7561 148016', N'Adelaida20', N'LCY*{L*fEGYB', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (3, N'Исаев Лев Юлианович', N'+7 (675) 593-89-30', N'Lev131@rambler.ru', N'5 августа 1994 года', N'1860 680004', N'Lev131', N'~?oj2Lh@S7*T', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (4, N'Никифоров Даниил Степанович', N'+7 (384) 358-77-82', N'Daniil198@bk.ru', N'13 декабря 1970 года', N'4557 999958', N'lzaihtvkdn', N'L2W#uo7z{EsO', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (5, N'Титова Людмила Якововна', N'+7 (221) 729-16-84', N'Lyudmila123@hotmail.com', N'21 августа 1976 года', N'7715 639425', N'Lyudmila123', N'@8mk9M?NBAGj', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (6, N'Абрамова Таисия Дмитриевна', N'+7 (528) 312-18-20', N'Taisiya176@hotmail.com', N'20 ноября 1982 года', N'7310 893510', N'Taisiya176', N'~rIWfsnXA~7C', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (7, N'Кузьмина Вера Максимовна', N'+7 (598) 583-53-45', N'Vera195@list.ru', N'10 декабря 1989 года', N'3537 982933', N'Vera195', N'B|5v$2r$7luL', 1, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (8, N'Мартынов Яков Ростиславович', N'+7 (546) 159-67-33', N'YAkov196@rambler.ru', N'5 декабря 1976 года', N'1793 986063', N'YAkov196', N'$6s5bggKP7aw', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (9, N'Евсеева Нина Павловна', N'+7 (833) 521-31-50', N'Nina145@msn.com', N'26 сентября 1994 года', N'9323 745717', N'Nina145', N'Uxy6RtBXIcpT', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (10, N'Голубев Леонтий Вячеславович', N'+7 (160) 527-57-41', N'Leontij161@mail.ru', N'3 октября 1990 года', N'1059 822077', N'Leontij161', N'KkMY8yKw@oCa', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (11, N'Карпова Серафима Михаиловна', N'+7 (459) 930-91-70', N'Serafima169@yahoo.com', N'19 ноября 1989 года', N'7034 858987', N'Serafima169', N'gNe3I9}8J3Z@', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (12, N'Орехов Сергей Емельянович', N'+7 (669) 603-29-87', N'Sergej35@inbox.ru', N'11 февраля 1972 года', N'3844 223682', N'Sergej35', N'$39vc%ljqN%r', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (13, N'Исаев Георгий Павлович', N'+7 (678) 516-36-86', N'Georgij121@inbox.ru', N'11 августа 1987 года', N'4076 629809', N'Georgij121', N'bbx5H}f*BC?w', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (14, N'Богданов Елизар Артемович', N'+7 (165) 768-30-97', N'Elizar30@yandex.ru', N'2 февраля 1978 года', N'0573 198559', N'Elizar30', N'wJs1~r3RS~dr', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (15, N'Тихонова Лана Семеновна', N'+7 (478) 467-75-15', N'Lana117@outlook.com', N'24 июля 1990 года', N'8761 609740', N'Lana117', N'mFoG$jcS3c4~', 2, N'24/04/2023_9367788')
INSERT [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [ID_Группы], [Назначение]) VALUES (16, N'Некрасов Дмитрий Константинович', N'+79543543654', N'nek@mail', N'', N'', N'nek', N'34667', 1, N'')
SET IDENTITY_INSERT [dbo].[ПользователиГруппа] OFF
GO
SET IDENTITY_INSERT [dbo].[ПользователиЛичное] ON 

INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (1, N'Степанова Радинка Власовна', N'+7 (613) 272-60-62', N'Radinka100@yandex.ru', N'18 октября 1986 года', N'0208 530509', N'Vlas86', N'b3uWS6#Thuvq', N'24/04/2023_9367788')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (2, N'Шилов Прохор Герасимович', N'+7 (615) 594-77-66', N'Prohor156@list.ru', N'9 октября 1977 года', N'3036 796488', N'Prohor156', N'zDdom}SIhWs?', N'24/04/2023_9788737')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (3, N'Кононов Юрин Романович', N'+7 (784) 673-51-91', N'YUrin155@gmail.com', N'8 октября 1971 года', N'2747 790512', N'YUrin155', N'u@m*~ACBCqNQ', N'24/04/2023_9736379')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (4, N'Елисеева Альбина Николаевна', N'+7 (654) 864-77-46', N'Aljbina33@lenta.ru', N'15 февраля 1983 года', N'5241 213304', N'Aljbina33', N'Bu?BHCtwDFin', N'25/04/2023_9367788')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (5, N'Шарова Клавдия Макаровна', N'+7 (822) 525-82-40', N'Klavdiya113@live.com', N'22 июля 1980 года', N'8143 593309', N'Klavdiya113', N'FjC#hNIJori}', N'25/04/2023_9788737')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (6, N'Сидорова Тамара Григорьевна', N'+7 (334) 692-79-77', N'Tamara179@live.com', N'22 ноября 1995 года', N'8143 905520', N'Tamara179', N'TJxVqMXrbesI', N'25/04/2023_9736379')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (7, N'Петухов Тарас Фадеевич', N'+7 (376) 220-62-51', N'Taras24@rambler.ru', N'5 января 1991 года', N'1609 171096', N'Taras24', N'07m5yspn3K~K', N'26/04/2023_9367788')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (8, N'Родионов Аркадий Власович', N'+7 (491) 696-17-11', N'Arkadij123@inbox.ru', N'11 августа 1993 года', N'3841 642594', N'Arkadij123', N'vk2N7lxX}ck%', N'26/04/2023_9788737')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (9, N'Горшкова Глафира Валентиновна', N'+7 (553) 343-38-82', N'Glafira73@outlook.com', N'25 мая 1978 года', N'9170 402601', N'Glafira73', N'Zz8POQlP}M4~', N'26/04/2023_9736379')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (10, N'Кириллова Гавриила Яковна', N'+7 (648) 700-43-34', N'Gavriila68@msn.com', N'26 апреля 1992 года', N'9438 379667', N'Gavriila68', N'x4K5WthEe8ua', N'27/04/2023_9367788')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (11, N'Овчинников Кузьма Ефимович', N'+7 (562) 866-15-27', N'Kuzjma124@yandex.ru', N'2 августа 1993 года', N'0766 647226', N'Kuzjma124', N'OsByQJ}vYznW', N'27/04/2023_9788737')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (12, N'Беляков Роман Викторович', N'+7 (595) 196-56-28', N'Roman89@gmail.com', N'7 июня 1991 года', N'2411 478305', N'Roman89', N'Xd?xP$2yICcG', N'27/04/2023_9736379')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (13, N'Лыткин Алексей Максимович', N'+7 (994) 353-29-52', N'Aleksej43@gmail.com', N'7 марта 1996 года', N'2383 259825', N'Aleksej43', N'~c%PlTY0?qgl', N'28/04/2023_9367788')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (14, N'Шубина Надежда Викторовна', N'+7 (736) 488-66-95', N'Nadezhda137@outlook.com', N'24 сентября 1981 года', N'8844 708476', N'Nadezhda137', N'QQ~0q~rXHb?p', N'28/04/2023_9788737')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (15, N'Зиновьева Бронислава Викторовна', N'+7 (778) 565-12-18', N'Bronislava56@yahoo.com', N'19 марта 1981 года', N'6736 319423', N'Bronislava56', N'LO}xyC~1S4l6', N'28/04/2023_9736379')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (16, N'', N'', N'hik@mail', N'', N'', N'hik', N'123', N'')
INSERT [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное], [ФИО], [Номер телефона], [Email], [Дата рождения], [Данные паспорта], [Логин], [Пароль], [Назначение]) VALUES (19, N'Мулатов Максим Егорович', N'+79345604577', N'mak@mail', N'', N'', N'mak', N'trety', N'')
SET IDENTITY_INSERT [dbo].[ПользователиЛичное] OFF
GO
INSERT [dbo].[Посетители] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Организация], [Примечание], [Дата рождения], [Серия], [Номер], [Фотография], [ID_Документа]) VALUES (0, N'Горева', N'Анна', N'Николаевна', N'', N'', N'', N'', NULL, N'', N'', NULL, NULL)
INSERT [dbo].[Посетители] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Организация], [Примечание], [Дата рождения], [Серия], [Номер], [Фотография], [ID_Документа]) VALUES (1, N'Булатов', N'Иван', N'Петрович', N'+79435904395', N'petr@mail.com', N'GOG', N'', CAST(N'2003-05-04' AS Date), N'2432', N'547577', NULL, NULL)
INSERT [dbo].[Посетители] ([ID_Посетителя], [Фамилия], [Имя], [Отчество], [Телефон], [E-mail], [Организация], [Примечание], [Дата рождения], [Серия], [Номер], [Фотография], [ID_Документа]) VALUES (2, N'Гусев', N'Алексей', N'Эдуардович', N'+79354545466', N'guc@mail', N'POP', N'', CAST(N'2003-03-29' AS Date), N'2343', N'353467', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Пропуск] ON 

INSERT [dbo].[Пропуск] ([ID_Пропуска], [ID_Заявки], [Цель посещения], [Принимающий сотрудник], [Желаемый срока начала заявки], [Желаемый срока окончания заявки]) VALUES (1, 1, N'Участвовать', 9362832, CAST(N'2023-05-29' AS Date), CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Пропуск] ([ID_Пропуска], [ID_Заявки], [Цель посещения], [Принимающий сотрудник], [Желаемый срока начала заявки], [Желаемый срока окончания заявки]) VALUES (2, 5, N'Получить консультацию', 9737848, CAST(N'2023-05-04' AS Date), CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Пропуск] ([ID_Пропуска], [ID_Заявки], [Цель посещения], [Принимающий сотрудник], [Желаемый срока начала заявки], [Желаемый срока окончания заявки]) VALUES (3, 7, N'Встретиться  ', 9737848, CAST(N'2023-05-12' AS Date), CAST(N'2023-05-27' AS Date))
SET IDENTITY_INSERT [dbo].[Пропуск] OFF
GO
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9362832, N'Архипов Тимофей Васильевич', 4, NULL)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9367788, N'Фомичева Авдотья Трофимовна', 1, NULL)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9404040, N'Чернов Всеволод Наумович', NULL, 2)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9736379, N'Носкова Наталия Прохоровна', 3, NULL)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9737848, N'Орехова Вероника Артемовна', 5, NULL)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9768239, N'Савельев Павел Степанович', NULL, 1)
INSERT [dbo].[Сотрудники] ([ID сотрудника], [ФИО], [ID_Подразделения], [ID_Отдела]) VALUES (9788737, N'Гаврилова Римма Ефимовна', 2, NULL)
GO
SET IDENTITY_INSERT [dbo].[СписокПосетителей] ON 

INSERT [dbo].[СписокПосетителей] ([ID_Списка], [ID_Посетителя], [Номер_порядка], [ФИО], [Контакты], [Фотография]) VALUES (1, NULL, N'1', N'Булатов Н.Е.', N'+79760687687:Никита@nik', NULL)
INSERT [dbo].[СписокПосетителей] ([ID_Списка], [ID_Посетителя], [Номер_порядка], [ФИО], [Контакты], [Фотография]) VALUES (2, NULL, N'2', N'Леонидова М.К.', N'+79760487686:Маруся@mak', NULL)
INSERT [dbo].[СписокПосетителей] ([ID_Списка], [ID_Посетителя], [Номер_порядка], [ФИО], [Контакты], [Фотография]) VALUES (3, NULL, N'3', N'Шиков К.Д.', N'+79760487686:Кирилл@kil', NULL)
SET IDENTITY_INSERT [dbo].[СписокПосетителей] OFF
GO
SET IDENTITY_INSERT [dbo].[Статус заявки] ON 

INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (1, N'Одобрена')
INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (2, N'Не ободрена')
INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (3, N'На рассмотрении')
INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (4, N'Отклонено по причине')
INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (5, N'Выполнено')
INSERT [dbo].[Статус заявки] ([ID_Статуса], [Название]) VALUES (6, N'Отложено')
SET IDENTITY_INSERT [dbo].[Статус заявки] OFF
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Подразделения] FOREIGN KEY([ID_Подразделения])
REFERENCES [dbo].[Подразделения] ([ID_Подразделения])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Подразделения]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_ПользователиГруппа] FOREIGN KEY([ID_Пользователя])
REFERENCES [dbo].[ПользователиГруппа] ([ID_ПользователяГруппа])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_ПользователиГруппа]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_ПользователиЛичное] FOREIGN KEY([ID_Пользователя])
REFERENCES [dbo].[ПользователиЛичное] ([ID_ПользователяЛичное])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_ПользователиЛичное]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Сотрудники] FOREIGN KEY([ID_Сотрудника])
REFERENCES [dbo].[Сотрудники] ([ID сотрудника])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Сотрудники]
GO
ALTER TABLE [dbo].[Заявка]  WITH CHECK ADD  CONSTRAINT [FK_Заявка_Статус заявки] FOREIGN KEY([ID_Статуса])
REFERENCES [dbo].[Статус заявки] ([ID_Статуса])
GO
ALTER TABLE [dbo].[Заявка] CHECK CONSTRAINT [FK_Заявка_Статус заявки]
GO
ALTER TABLE [dbo].[ПользователиГруппа]  WITH CHECK ADD  CONSTRAINT [FK_ПользователиГруппа_Группы] FOREIGN KEY([ID_Группы])
REFERENCES [dbo].[Группы] ([ID_Группы])
GO
ALTER TABLE [dbo].[ПользователиГруппа] CHECK CONSTRAINT [FK_ПользователиГруппа_Группы]
GO
ALTER TABLE [dbo].[Посетители]  WITH CHECK ADD  CONSTRAINT [FK_Посетители_Документы] FOREIGN KEY([ID_Документа])
REFERENCES [dbo].[Документы] ([ID_Документа])
GO
ALTER TABLE [dbo].[Посетители] CHECK CONSTRAINT [FK_Посетители_Документы]
GO
ALTER TABLE [dbo].[Пропуск]  WITH CHECK ADD  CONSTRAINT [FK_Пропуск_Заявка1] FOREIGN KEY([ID_Заявки])
REFERENCES [dbo].[Заявка] ([ID_Заявки])
GO
ALTER TABLE [dbo].[Пропуск] CHECK CONSTRAINT [FK_Пропуск_Заявка1]
GO
ALTER TABLE [dbo].[Пропуск]  WITH CHECK ADD  CONSTRAINT [FK_Пропуск_Сотрудники] FOREIGN KEY([Принимающий сотрудник])
REFERENCES [dbo].[Сотрудники] ([ID сотрудника])
GO
ALTER TABLE [dbo].[Пропуск] CHECK CONSTRAINT [FK_Пропуск_Сотрудники]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Отдел] FOREIGN KEY([ID_Отдела])
REFERENCES [dbo].[Отдел] ([ID_Отдела])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Отдел]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Подразделения] FOREIGN KEY([ID_Подразделения])
REFERENCES [dbo].[Подразделения] ([ID_Подразделения])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Подразделения]
GO
ALTER TABLE [dbo].[СписокПосетителей]  WITH CHECK ADD  CONSTRAINT [FK_СписокПосетителей_Посетители] FOREIGN KEY([ID_Посетителя])
REFERENCES [dbo].[Посетители] ([ID_Посетителя])
GO
ALTER TABLE [dbo].[СписокПосетителей] CHECK CONSTRAINT [FK_СписокПосетителей_Посетители]
GO
USE [master]
GO
ALTER DATABASE [ХранительПРО_Poglazova] SET  READ_WRITE 
GO
