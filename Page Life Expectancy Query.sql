SELECT*
FROM sys.dm_os_performance_counters
WHERE [counter_name] = 'Page life expectancy'