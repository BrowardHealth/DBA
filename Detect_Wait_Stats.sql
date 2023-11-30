
/*

Source: https://www.sqlshack.com/boost-sql-server-performance-with-wait-statistics/


Based on the results : double check this https://www.sqlshack.com/sql-server-wait-types/

*/
SELECT TOP 10 wait_type
AS [Wait Type], 
                wait_time_ms/1000.0
AS [Total Wait Time (second)], 
                (wait_time_ms-signal_wait_time_ms)/1000.0
AS [Resource Wait Time (second)], 
                signal_wait_time_ms/1000.0
AS [Signal Wait Time (second)], 
                waiting_tasks_count
AS [Wait Count]
FROM sys.dm_os_wait_stats
WHERE wait_type NOT IN
(N'CLR_SEMAPHORE', 
    N'LAZYWRITER_SLEEP', 
    N'RESOURCE_QUEUE', 
    N'SQLTRACE_BUFFER_FLUSH', 
    N'SLEEP_TASK', 
    N'SLEEP_SYSTEMTASK', 
    N'WAITFOR', 
    N'HADR_FILESTREAM_IOMGR_IOCOMPLETION', 
    N'CHECKPOINT_QUEUE', 
    N'REQUEST_FOR_DEADLOCK_SEARCH', 
    N'XE_TIMER_EVENT', 
    N'XE_DISPATCHER_JOIN', 
    N'LOGMGR_QUEUE', 
    N'FT_IFTS_SCHEDULER_IDLE_WAIT', 
    N'BROKER_TASK_STOP', 
    N'CLR_MANUAL_EVENT', 
    N'CLR_AUTO_EVENT', 
    N'DISPATCHER_QUEUE_SEMAPHORE', 
    N'TRACEWRITE', 
    N'XE_DISPATCHER_WAIT', 
    N'BROKER_TO_FLUSH', 
    N'BROKER_EVENTHANDLER', 
    N'FT_IFTSHC_MUTEX', 
    N'SQLTRACE_INCREMENTAL_FLUSH_SLEEP', 
    N'DIRTY_PAGE_POLL', 
    N'SP_SERVER_DIAGNOSTICS_SLEEP')
ORDER BY wait_time_ms-signal_wait_time_ms DESc