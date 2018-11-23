USE [master]
GO

/****** Object:  Database [Last]    Script Date: 11/23/2018 12:45:15 PM ******/
CREATE DATABASE [Last]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Last', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Last.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Last_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Last_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Last] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Last].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Last] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Last] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Last] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Last] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Last] SET ARITHABORT OFF 
GO

ALTER DATABASE [Last] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Last] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Last] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Last] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Last] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Last] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Last] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Last] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Last] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Last] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Last] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Last] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Last] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Last] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Last] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Last] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Last] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Last] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Last] SET  MULTI_USER 
GO

ALTER DATABASE [Last] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Last] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Last] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Last] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Last] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Last] SET  READ_WRITE 
GO

