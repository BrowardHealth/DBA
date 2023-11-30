USE [NGAuditProd];  
GO  
-- Truncate the log by changing the database recovery model to SIMPLE.  
ALTER DATABASE [NGAuditProd]
SET RECOVERY SIMPLE;  
GO  
-- Shrink the truncated log file to 1 MB.  
DBCC SHRINKFILE ('NextGen_Log', 1);  
GO  
-- Reset the database recovery model.  
ALTER DATABASE [NGAuditProd]
SET RECOVERY FULL;  
GO

--Run full backup of the database afterwards