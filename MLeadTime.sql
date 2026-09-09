/*
 Navicat Premium Data Transfer

 Source Server         : Sql Server Prod
 Source Server Type    : SQL Server
 Source Server Version : 14001000 (14.00.1000)
 Source Host           : db.e-sapa2.pcpexpress.com:9999
 Source Catalog        : dbsapav2_1
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000 (14.00.1000)
 File Encoding         : 65001

 Date: 08/09/2026 01:57:47
*/


-- ----------------------------
-- Table structure for MLeadTime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MLeadTime]') AND type IN ('U'))
	DROP TABLE [dbo].[MLeadTime]
GO

CREATE TABLE [dbo].[MLeadTime] (
  [LeadId] bigint  IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
  [RegionId] int  NULL,
  [OriginId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DestinationId] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ServiceId] int  NULL,
  [EffectiveDate] date  NULL,
  [EndDate] date  NULL,
  [LeadTime] int  NULL,
  [LeadTimeComp1Start] int  NULL,
  [LeadTimeComp1End] int  NULL,
  [LeadTimeComp2Start] int  NULL,
  [LeadTimeComp2End] int  NULL,
  [CreatedDate] datetime  NULL,
  [ModifiedDate] datetime  NULL,
  [UserId] int  NULL,
  [ActiveId] int  NULL
)
GO

ALTER TABLE [dbo].[MLeadTime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for MLeadTime
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[MLeadTime]', RESEED, 49494)
GO


-- ----------------------------
-- Primary Key structure for table MLeadTime
-- ----------------------------
ALTER TABLE [dbo].[MLeadTime] ADD CONSTRAINT [PK_MLeadTime] PRIMARY KEY CLUSTERED ([LeadId])
WITH (PAD_INDEX = OFF, FILLFACTOR = 80, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

