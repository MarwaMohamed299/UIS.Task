
warn: 10/26/2024 11:59:51.460 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 11:59:51.610 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 11:59:51.622 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 11:59:51.922 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 11:59:52.060 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Count()'
dbug: 10/26/2024 11:59:52.466 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 11:59:52.526 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 11:59:52.559 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (29ms).
dbug: 10/26/2024 11:59:52.565 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.007 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.015 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 11:59:53.021 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (7ms).
dbug: 10/26/2024 11:59:53.025 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (12ms).
dbug: 10/26/2024 11:59:53.034 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 11:59:53.118 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (51ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 11:59:53.225 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.290 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 156ms reading results.
dbug: 10/26/2024 11:59:53.296 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.312 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (14ms).
dbug: 10/26/2024 11:59:53.328 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Skip(__p_0)
          .Take(__p_1)'
warn: 10/26/2024 11:59:53.410 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 11:59:53.433 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 11:59:53.596 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Projection Mapping:
                  EmptyProjectionMember -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
              SELECT t.Id, t.Date
              FROM Transactions AS t
              OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 11:59:53.608 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.619 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.623 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 11:59:53.628 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (5ms).
dbug: 10/26/2024 11:59:53.638 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (15ms).
dbug: 10/26/2024 11:59:53.650 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t].[Id], [t].[Date]
      FROM [Transactions] AS [t]
      ORDER BY (SELECT 1)
      OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
info: 10/26/2024 11:59:53.719 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (72ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t].[Id], [t].[Date]
      FROM [Transactions] AS [t]
      ORDER BY (SELECT 1)
      OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
dbug: 10/26/2024 11:59:53.772 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 11:59:53.803 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 11:59:53.805 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 11:59:53.806 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 11:59:53.808 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 11:59:53.809 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 11:59:53.811 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.814 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 94ms reading results.
dbug: 10/26/2024 11:59:53.816 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 11:59:53.817 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:00:26.502 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:00:26.509 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:26.511 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (2ms).
dbug: 10/26/2024 12:00:46.631 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:00:46.634 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:00:46.637 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (2ms).
dbug: 10/26/2024 12:00:46.642 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.644 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.645 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:00:46.647 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (1ms).
dbug: 10/26/2024 12:00:46.648 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (2ms).
dbug: 10/26/2024 12:00:46.650 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:00:46.664 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:00:46.666 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.667 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 1ms reading results.
dbug: 10/26/2024 12:00:46.668 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.670 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (1ms).
dbug: 10/26/2024 12:00:46.672 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.673 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.674 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:00:46.674 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:00:46.675 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 10/26/2024 12:00:46.676 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t].[Id], [t].[Date]
      FROM [Transactions] AS [t]
      ORDER BY (SELECT 1)
      OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
info: 10/26/2024 12:00:46.687 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (3ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t].[Id], [t].[Date]
      FROM [Transactions] AS [t]
      ORDER BY (SELECT 1)
      OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
dbug: 10/26/2024 12:00:46.688 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:00:46.689 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:00:46.690 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:00:46.691 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:00:46.692 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:00:46.692 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:00:46.693 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.694 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 5ms reading results.
dbug: 10/26/2024 12:00:46.694 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:46.695 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (1ms).
dbug: 10/26/2024 12:00:50.238 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:00:50.240 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:00:50.241 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (1ms).
warn: 10/26/2024 12:02:52.480 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 12:02:52.588 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 12:02:52.593 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 12:02:52.771 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:02:52.839 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Count()'
dbug: 10/26/2024 12:02:53.307 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 12:02:53.388 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:02:53.455 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (63ms).
dbug: 10/26/2024 12:02:53.465 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.387 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.392 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:02:54.399 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (4ms).
dbug: 10/26/2024 12:02:54.401 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (10ms).
dbug: 10/26/2024 12:02:54.407 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:02:54.487 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (59ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:02:54.530 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.538 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 44ms reading results.
dbug: 10/26/2024 12:02:54.542 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.549 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (7ms).
dbug: 10/26/2024 12:02:54.560 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Include(t => t.ProductTransactions)
          .ThenInclude(pt => pt.Product)
          .Skip(__p_0)
          .Take(__p_1)'
dbug: 10/26/2024 12:02:54.578 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'Transaction.ProductTransactions'.
dbug: 10/26/2024 12:02:54.595 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'ProductTransaction.Product'.
warn: 10/26/2024 12:02:54.606 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 12:02:54.609 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 12:02:54.767 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
                  1 -> 0
                  2 -> Dictionary<IProperty, int> { [Property: ProductTransaction.ProductId (Guid) Required PK FK AfterSave:Throw, 2], [Property: ProductTransaction.TransactionId (Guid) Required PK FK Index AfterSave:Throw, 3], [Property: ProductTransaction.Quantity (int) Required, 4], [Property: ProductTransaction.TotalPrice (decimal) Required, 5] }
                  3 -> Dictionary<IProperty, int> { [Property: Product.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 6], [Property: Product.CurrentQuantity (int) Required, 7], [Property: Product.InitialQuantity (int) Required, 8], [Property: Product.Price (decimal) Required, 9], [Property: Product.ProductName (string) Required, 10], [Property: Product.Unit (string) Required, 11] }
                  4 -> 2
                  5 -> 3
                  6 -> 6
              SELECT t0.Id, t0.Date, t1.ProductId, t1.TransactionId, t1.Quantity, t1.TotalPrice, t1.Id, t1.CurrentQuantity, t1.InitialQuantity, t1.Price, t1.ProductName, t1.Unit
              FROM 
              (
                  SELECT t.Id, t.Date
                  FROM Transactions AS t
                  OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
              ) AS t0
              LEFT JOIN 
              (
                  SELECT p.ProductId, p.TransactionId, p.Quantity, p.TotalPrice, p0.Id, p0.CurrentQuantity, p0.InitialQuantity, p0.Price, p0.ProductName, p0.Unit
                  FROM ProductTransactions AS p
                  INNER JOIN Products AS p0 ON p.ProductId == p0.Id
              ) AS t1 ON t0.Id == t1.TransactionId
              ORDER BY t0.Id ASC, t1.ProductId ASC, t1.TransactionId ASC), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 12:02:54.783 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.785 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.786 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:02:54.786 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:02:54.790 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (4ms).
dbug: 10/26/2024 12:02:54.793 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:02:54.847 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (46ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:02:54.891 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:02:54.923 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:02:54.947 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:02:54.962 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:02:54.967 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:02:54.976 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:02:54.977 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:02:54.978 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:02:54.980 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:02:54.981 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:02:54.982 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:02:54.982 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:02:54.983 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:02:54.984 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:02:54.984 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:02:54.985 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:02:54.986 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:02:54.986 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:02:54.987 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:02:54.987 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:02:54.988 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:02:54.989 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.990 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 141ms reading results.
dbug: 10/26/2024 12:02:54.990 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:02:54.991 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:03:15.191 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:03:15.199 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:15.201 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (3ms).
dbug: 10/26/2024 12:03:30.269 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:03:30.273 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:03:30.275 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (1ms).
dbug: 10/26/2024 12:03:30.275 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.277 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.277 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:03:30.278 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:03:30.280 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (3ms).
dbug: 10/26/2024 12:03:30.281 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:03:30.292 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (6ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:03:30.293 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.294 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 0ms reading results.
dbug: 10/26/2024 12:03:30.295 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.297 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (1ms).
dbug: 10/26/2024 12:03:30.303 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.304 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.305 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:03:30.306 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:03:30.307 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (2ms).
dbug: 10/26/2024 12:03:30.308 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='5'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:03:30.323 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (3ms) [Parameters=[@__p_0='0', @__p_1='5'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:03:30.325 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:03:30.327 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:03:30.328 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:03:30.329 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:03:30.332 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:03:30.335 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:03:30.336 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:03:30.338 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:03:30.341 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:03:30.343 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:03:30.344 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:03:30.349 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:03:30.351 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:03:30.352 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:03:30.354 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:03:30.355 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:03:30.356 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.358 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 33ms reading results.
dbug: 10/26/2024 12:03:30.358 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:03:30.359 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:04:03.426 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:04:03.428 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:03.429 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (1ms).
dbug: 10/26/2024 12:04:42.898 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:04:42.932 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:04:42.941 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (9ms).
dbug: 10/26/2024 12:04:42.944 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:42.953 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:42.958 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:04:42.965 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (7ms).
dbug: 10/26/2024 12:04:42.968 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (9ms).
dbug: 10/26/2024 12:04:42.970 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:04:43.013 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:04:43.016 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.018 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 2ms reading results.
dbug: 10/26/2024 12:04:43.019 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.020 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:04:43.022 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.023 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.024 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:04:43.026 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (2ms).
dbug: 10/26/2024 12:04:43.027 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (3ms).
dbug: 10/26/2024 12:04:43.028 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='5'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:04:43.050 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (11ms) [Parameters=[@__p_0='0', @__p_1='5'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:04:43.052 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:04:43.053 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:04:43.055 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:04:43.060 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:04:43.061 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:04:43.062 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:04:43.064 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:04:43.065 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:04:43.066 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:04:43.067 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:04:43.069 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:04:43.070 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:04:43.072 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:04:43.073 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:04:43.074 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:04:43.075 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:04:43.076 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.077 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 25ms reading results.
dbug: 10/26/2024 12:04:43.077 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:04:43.078 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:06:12.011 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:06:12.014 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:06:12.015 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (1ms).
warn: 10/26/2024 12:08:23.911 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 12:08:24.191 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 12:08:24.200 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 12:08:24.520 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:08:24.624 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Count()'
dbug: 10/26/2024 12:08:25.145 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 12:08:25.218 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:08:25.268 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (45ms).
dbug: 10/26/2024 12:08:25.277 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:26.534 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:26.546 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:08:26.565 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (13ms).
dbug: 10/26/2024 12:08:26.570 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (28ms).
dbug: 10/26/2024 12:08:26.593 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:08:26.784 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (151ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:08:26.850 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:08:26.868 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 71ms reading results.
dbug: 10/26/2024 12:08:26.934 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:26.971 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (40ms).
dbug: 10/26/2024 12:08:27.041 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Include(t => t.ProductTransactions)
          .ThenInclude(pt => pt.Product)
          .Skip(__p_0)
          .Take(__p_1)'
dbug: 10/26/2024 12:08:27.095 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'Transaction.ProductTransactions'.
dbug: 10/26/2024 12:08:27.259 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'ProductTransaction.Product'.
warn: 10/26/2024 12:08:27.470 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 12:08:27.603 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 12:08:27.898 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
                  1 -> 0
                  2 -> Dictionary<IProperty, int> { [Property: ProductTransaction.ProductId (Guid) Required PK FK AfterSave:Throw, 2], [Property: ProductTransaction.TransactionId (Guid) Required PK FK Index AfterSave:Throw, 3], [Property: ProductTransaction.Quantity (int) Required, 4], [Property: ProductTransaction.TotalPrice (decimal) Required, 5] }
                  3 -> Dictionary<IProperty, int> { [Property: Product.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 6], [Property: Product.CurrentQuantity (int) Required, 7], [Property: Product.InitialQuantity (int) Required, 8], [Property: Product.Price (decimal) Required, 9], [Property: Product.ProductName (string) Required, 10], [Property: Product.Unit (string) Required, 11] }
                  4 -> 2
                  5 -> 3
                  6 -> 6
              SELECT t0.Id, t0.Date, t1.ProductId, t1.TransactionId, t1.Quantity, t1.TotalPrice, t1.Id, t1.CurrentQuantity, t1.InitialQuantity, t1.Price, t1.ProductName, t1.Unit
              FROM 
              (
                  SELECT t.Id, t.Date
                  FROM Transactions AS t
                  OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
              ) AS t0
              LEFT JOIN 
              (
                  SELECT p.ProductId, p.TransactionId, p.Quantity, p.TotalPrice, p0.Id, p0.CurrentQuantity, p0.InitialQuantity, p0.Price, p0.ProductName, p0.Unit
                  FROM ProductTransactions AS p
                  INNER JOIN Products AS p0 ON p.ProductId == p0.Id
              ) AS t1 ON t0.Id == t1.TransactionId
              ORDER BY t0.Id ASC, t1.ProductId ASC, t1.TransactionId ASC), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 12:08:27.922 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:27.927 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:27.928 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:08:27.929 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:08:27.936 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (7ms).
dbug: 10/26/2024 12:08:27.943 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:08:28.043 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (88ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:08:28.107 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:08:28.141 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:08:28.171 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:08:28.201 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:08:28.209 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:08:28.228 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:08:28.229 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:08:28.231 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:08:28.232 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:08:28.234 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:08:28.234 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:08:28.236 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:08:28.237 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:08:28.237 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:08:28.238 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:08:28.239 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:08:28.240 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:08:28.242 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:08:28.243 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:08:28.244 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:08:28.245 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:08:28.247 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:08:28.249 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 203ms reading results.
dbug: 10/26/2024 12:08:28.251 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:28.252 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (1ms).
dbug: 10/26/2024 12:08:40.501 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:08:40.510 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:08:40.513 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (3ms).
warn: 10/26/2024 12:12:48.622 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 12:12:48.738 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 12:12:48.744 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 12:12:48.871 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:12:48.910 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Count()'
dbug: 10/26/2024 12:12:49.290 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 12:12:49.339 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:12:49.363 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (22ms).
dbug: 10/26/2024 12:12:49.370 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:49.742 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:49.748 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:12:49.755 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (6ms).
dbug: 10/26/2024 12:12:49.758 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (12ms).
dbug: 10/26/2024 12:12:49.768 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:12:49.873 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (73ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:12:49.907 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:12:49.916 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 35ms reading results.
dbug: 10/26/2024 12:12:49.921 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:49.929 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (7ms).
dbug: 10/26/2024 12:12:49.949 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Include(t => t.ProductTransactions)
          .ThenInclude(pt => pt.Product)
          .Skip(__p_0)
          .Take(__p_1)'
dbug: 10/26/2024 12:12:49.971 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'Transaction.ProductTransactions'.
dbug: 10/26/2024 12:12:49.986 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'ProductTransaction.Product'.
warn: 10/26/2024 12:12:49.997 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 12:12:50.002 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 12:12:50.169 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
                  1 -> 0
                  2 -> Dictionary<IProperty, int> { [Property: ProductTransaction.ProductId (Guid) Required PK FK AfterSave:Throw, 2], [Property: ProductTransaction.TransactionId (Guid) Required PK FK Index AfterSave:Throw, 3], [Property: ProductTransaction.Quantity (int) Required, 4], [Property: ProductTransaction.TotalPrice (decimal) Required, 5] }
                  3 -> Dictionary<IProperty, int> { [Property: Product.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 6], [Property: Product.CurrentQuantity (int) Required, 7], [Property: Product.InitialQuantity (int) Required, 8], [Property: Product.Price (decimal) Required, 9], [Property: Product.ProductName (string) Required, 10], [Property: Product.Unit (string) Required, 11] }
                  4 -> 2
                  5 -> 3
                  6 -> 6
              SELECT t0.Id, t0.Date, t1.ProductId, t1.TransactionId, t1.Quantity, t1.TotalPrice, t1.Id, t1.CurrentQuantity, t1.InitialQuantity, t1.Price, t1.ProductName, t1.Unit
              FROM 
              (
                  SELECT t.Id, t.Date
                  FROM Transactions AS t
                  OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
              ) AS t0
              LEFT JOIN 
              (
                  SELECT p.ProductId, p.TransactionId, p.Quantity, p.TotalPrice, p0.Id, p0.CurrentQuantity, p0.InitialQuantity, p0.Price, p0.ProductName, p0.Unit
                  FROM ProductTransactions AS p
                  INNER JOIN Products AS p0 ON p.ProductId == p0.Id
              ) AS t1 ON t0.Id == t1.TransactionId
              ORDER BY t0.Id ASC, t1.ProductId ASC, t1.TransactionId ASC), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 12:12:50.183 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:50.186 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:50.187 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:12:50.188 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:12:50.192 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (4ms).
dbug: 10/26/2024 12:12:50.196 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:12:50.241 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (40ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:12:50.287 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:12:50.330 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:12:50.436 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:12:50.469 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:12:50.479 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:12:50.510 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:12:50.512 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:12:50.513 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:12:50.516 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:12:50.517 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:12:50.519 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:12:50.519 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:12:50.520 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:12:50.520 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:12:50.521 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:12:50.521 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:12:50.522 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:12:50.522 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:12:50.523 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:12:50.523 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:12:50.524 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:12:50.525 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:12:50.526 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 283ms reading results.
dbug: 10/26/2024 12:12:50.527 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:12:50.527 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:13:04.892 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:13:04.902 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:13:04.906 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (5ms).
warn: 10/26/2024 12:18:22.701 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 12:18:22.852 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 12:18:22.855 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 12:18:22.986 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:18:23.023 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Count()'
dbug: 10/26/2024 12:18:23.183 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 12:18:23.326 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:18:23.391 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (55ms).
dbug: 10/26/2024 12:18:23.399 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:23.860 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:23.865 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:18:23.871 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (5ms).
dbug: 10/26/2024 12:18:23.874 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (10ms).
dbug: 10/26/2024 12:18:23.883 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
info: 10/26/2024 12:18:23.943 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (55ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
dbug: 10/26/2024 12:18:23.975 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:18:23.986 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 34ms reading results.
dbug: 10/26/2024 12:18:23.992 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:24.002 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (9ms).
dbug: 10/26/2024 12:18:24.022 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Include(t => t.ProductTransactions)
          .ThenInclude(pt => pt.Product)
          .Skip(__p_0)
          .Take(__p_1)'
dbug: 10/26/2024 12:18:24.037 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'Transaction.ProductTransactions'.
dbug: 10/26/2024 12:18:24.046 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'ProductTransaction.Product'.
warn: 10/26/2024 12:18:24.055 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 12:18:24.057 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 12:18:24.163 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
                  1 -> 0
                  2 -> Dictionary<IProperty, int> { [Property: ProductTransaction.ProductId (Guid) Required PK FK AfterSave:Throw, 2], [Property: ProductTransaction.TransactionId (Guid) Required PK FK Index AfterSave:Throw, 3], [Property: ProductTransaction.Quantity (int) Required, 4], [Property: ProductTransaction.TotalPrice (decimal) Required, 5] }
                  3 -> Dictionary<IProperty, int> { [Property: Product.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 6], [Property: Product.CurrentQuantity (int) Required, 7], [Property: Product.InitialQuantity (int) Required, 8], [Property: Product.Price (decimal) Required, 9], [Property: Product.ProductName (string) Required, 10], [Property: Product.Unit (string) Required, 11] }
                  4 -> 2
                  5 -> 3
                  6 -> 6
              SELECT t0.Id, t0.Date, t1.ProductId, t1.TransactionId, t1.Quantity, t1.TotalPrice, t1.Id, t1.CurrentQuantity, t1.InitialQuantity, t1.Price, t1.ProductName, t1.Unit
              FROM 
              (
                  SELECT t.Id, t.Date
                  FROM Transactions AS t
                  OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
              ) AS t0
              LEFT JOIN 
              (
                  SELECT p.ProductId, p.TransactionId, p.Quantity, p.TotalPrice, p0.Id, p0.CurrentQuantity, p0.InitialQuantity, p0.Price, p0.ProductName, p0.Unit
                  FROM ProductTransactions AS p
                  INNER JOIN Products AS p0 ON p.ProductId == p0.Id
              ) AS t1 ON t0.Id == t1.TransactionId
              ORDER BY t0.Id ASC, t1.ProductId ASC, t1.TransactionId ASC), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 12:18:24.174 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:24.177 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:24.178 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:18:24.178 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:18:24.184 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (7ms).
dbug: 10/26/2024 12:18:24.192 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:18:24.232 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (41ms) [Parameters=[@__p_0='0', @__p_1='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          ORDER BY (SELECT 1)
          OFFSET @__p_0 ROWS FETCH NEXT @__p_1 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:18:24.275 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: e5f182f3-5183-4508-8f7a-08dcf59adb1d}'.
dbug: 10/26/2024 12:18:24.307 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:18:24.335 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}'.
dbug: 10/26/2024 12:18:24.353 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: 27a38c3b-7f37-4f3a-96c6-36caf960f805}' was detected as changed.
dbug: 10/26/2024 12:18:24.358 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 31ac27d7-4c50-4dc7-8019-1a4e52a37853}'.
dbug: 10/26/2024 12:18:24.369 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:18:24.371 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}' was detected as changed.
dbug: 10/26/2024 12:18:24.371 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 31ac27d7-4c50-4dc7-8019-1a4e52a37853, TransactionId: f8d4e395-7dc0-4fbf-b7d3-49e16dee8b9f}'.
dbug: 10/26/2024 12:18:24.372 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:18:24.372 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}'.
dbug: 10/26/2024 12:18:24.373 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: ae9b2941-7140-48bd-a7e8-901ee37e1bf4}' was detected as changed.
dbug: 10/26/2024 12:18:24.373 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:18:24.374 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:18:24.375 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}'.
dbug: 10/26/2024 12:18:24.376 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: 9eacff09-2939-4fc2-b51a-da4c7c2690e3}' was detected as changed.
dbug: 10/26/2024 12:18:24.376 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:18:24.377 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:18:24.378 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:18:24.378 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:18:24.379 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Transaction' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:18:24.380 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:18:24.381 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:18:24.382 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 148ms reading results.
dbug: 10/26/2024 12:18:24.384 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:24.384 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (0ms).
dbug: 10/26/2024 12:18:34.276 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:18:34.284 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:18:34.287 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (3ms).
warn: 10/26/2024 12:21:07.464 CoreEventId.SensitiveDataLoggingEnabledWarning[10400] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Sensitive data logging is enabled. Log entries and exception messages may include sensitive application data; this mode should only be enabled during development.
warn: 10/26/2024 12:21:07.575 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'Price' on entity type 'Product'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
warn: 10/26/2024 12:21:07.578 SqlServerEventId.DecimalTypeDefaultWarning[30000] (Microsoft.EntityFrameworkCore.Model.Validation) 
      No store type was specified for the decimal property 'TotalPrice' on entity type 'ProductTransaction'. This will cause values to be silently truncated if they do not fit in the default precision and scale. Explicitly specify the SQL server column type that can accommodate all the values in 'OnModelCreating' using 'HasColumnType', specify precision and scale using 'HasPrecision', or configure a value converter using 'HasConversion'.
dbug: 10/26/2024 12:21:07.759 CoreEventId.ContextInitialized[10403] (Microsoft.EntityFrameworkCore.Infrastructure) 
      Entity Framework Core 8.0.10 initialized 'DatabaseContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer:8.0.10' with options: SensitiveDataLoggingEnabled 
dbug: 10/26/2024 12:21:07.919 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Where(t => t.Date.Date == __date_Date_0)
          .Count()'
dbug: 10/26/2024 12:21:08.163 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => ShapedQueryCompilingExpressionVisitor.SingleAsync<int>(
          asyncEnumerable: new SingleQueryingEnumerable<int>(
              (RelationalQueryContext)queryContext, 
              RelationalCommandCache.QueryExpression(
                  Projection Mapping:
                      EmptyProjectionMember -> 0
                  SELECT COUNT(*)
                  FROM Transactions AS t
                  WHERE CONVERT(date, t.Date) == @__date_Date_0), 
              null, 
              Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, int>, 
              UISTask.Infrastructure.Data.Context.DatabaseContext, 
              False, 
              False, 
              True
          ), 
          cancellationToken: queryContext.CancellationToken)'
dbug: 10/26/2024 12:21:08.212 RelationalEventId.ConnectionCreating[20005] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Creating DbConnection.
dbug: 10/26/2024 12:21:08.235 RelationalEventId.ConnectionCreated[20006] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Created DbConnection. (20ms).
dbug: 10/26/2024 12:21:08.241 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:08.627 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:08.637 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:21:08.644 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (10ms).
dbug: 10/26/2024 12:21:08.659 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (27ms).
dbug: 10/26/2024 12:21:08.672 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__date_Date_0='2024-10-01T00:00:00.0000000'], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
      WHERE CONVERT(date, [t].[Date]) = @__date_Date_0
info: 10/26/2024 12:21:08.762 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (82ms) [Parameters=[@__date_Date_0='2024-10-01T00:00:00.0000000'], CommandType='Text', CommandTimeout='30']
      SELECT COUNT(*)
      FROM [Transactions] AS [t]
      WHERE CONVERT(date, [t].[Date]) = @__date_Date_0
dbug: 10/26/2024 12:21:08.789 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:21:08.795 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 29ms reading results.
dbug: 10/26/2024 12:21:08.802 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:08.809 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (9ms).
dbug: 10/26/2024 12:21:08.820 CoreEventId.QueryCompilationStarting[10111] (Microsoft.EntityFrameworkCore.Query) 
      Compiling query expression: 
      'DbSet<Transaction>()
          .Where(t => t.Date.Date == __date_Date_0)
          .Include(t => t.ProductTransactions)
          .ThenInclude(pt => pt.Product)
          .Skip(__p_1)
          .Take(__p_2)'
dbug: 10/26/2024 12:21:08.836 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'Transaction.ProductTransactions'.
dbug: 10/26/2024 12:21:08.843 CoreEventId.NavigationBaseIncluded[10112] (Microsoft.EntityFrameworkCore.Query) 
      Including navigation: 'ProductTransaction.Product'.
warn: 10/26/2024 12:21:08.853 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
warn: 10/26/2024 12:21:08.856 CoreEventId.RowLimitingOperationWithoutOrderByWarning[10102] (Microsoft.EntityFrameworkCore.Query) 
      The query uses a row limiting operator ('Skip'/'Take') without an 'OrderBy' operator. This may lead to unpredictable results. If the 'Distinct' operator is used after 'OrderBy', then make sure to use the 'OrderBy' operator after 'Distinct' as the ordering would otherwise get erased.
dbug: 10/26/2024 12:21:08.980 CoreEventId.QueryExecutionPlanned[10107] (Microsoft.EntityFrameworkCore.Query) 
      Generated query execution expression: 
      'queryContext => new SingleQueryingEnumerable<Transaction>(
          (RelationalQueryContext)queryContext, 
          RelationalCommandCache.QueryExpression(
              Client Projections:
                  0 -> Dictionary<IProperty, int> { [Property: Transaction.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 0], [Property: Transaction.Date (DateTime) Required, 1] }
                  1 -> 0
                  2 -> Dictionary<IProperty, int> { [Property: ProductTransaction.ProductId (Guid) Required PK FK AfterSave:Throw, 2], [Property: ProductTransaction.TransactionId (Guid) Required PK FK Index AfterSave:Throw, 3], [Property: ProductTransaction.Quantity (int) Required, 4], [Property: ProductTransaction.TotalPrice (decimal) Required, 5] }
                  3 -> Dictionary<IProperty, int> { [Property: Product.Id (Guid) Required PK AfterSave:Throw ValueGenerated.OnAdd, 6], [Property: Product.CurrentQuantity (int) Required, 7], [Property: Product.InitialQuantity (int) Required, 8], [Property: Product.Price (decimal) Required, 9], [Property: Product.ProductName (string) Required, 10], [Property: Product.Unit (string) Required, 11] }
                  4 -> 2
                  5 -> 3
                  6 -> 6
              SELECT t0.Id, t0.Date, t1.ProductId, t1.TransactionId, t1.Quantity, t1.TotalPrice, t1.Id, t1.CurrentQuantity, t1.InitialQuantity, t1.Price, t1.ProductName, t1.Unit
              FROM 
              (
                  SELECT t.Id, t.Date
                  FROM Transactions AS t
                  WHERE CONVERT(date, t.Date) == @__date_Date_0
                  OFFSET @__p_1 ROWS FETCH NEXT @__p_2 ROWS ONLY
              ) AS t0
              LEFT JOIN 
              (
                  SELECT p.ProductId, p.TransactionId, p.Quantity, p.TotalPrice, p0.Id, p0.CurrentQuantity, p0.InitialQuantity, p0.Price, p0.ProductName, p0.Unit
                  FROM ProductTransactions AS p
                  INNER JOIN Products AS p0 ON p.ProductId == p0.Id
              ) AS t1 ON t0.Id == t1.TransactionId
              ORDER BY t0.Id ASC, t1.ProductId ASC, t1.TransactionId ASC), 
          null, 
          Func<QueryContext, DbDataReader, ResultContext, SingleQueryResultCoordinator, Transaction>, 
          UISTask.Infrastructure.Data.Context.DatabaseContext, 
          False, 
          False, 
          True
      )'
dbug: 10/26/2024 12:21:08.997 RelationalEventId.ConnectionOpening[20000] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opening connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:09.000 RelationalEventId.ConnectionOpened[20001] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Opened connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:09.002 RelationalEventId.CommandCreating[20103] (Microsoft.EntityFrameworkCore.Database.Command) 
      Creating DbCommand for 'ExecuteReader'.
dbug: 10/26/2024 12:21:09.002 RelationalEventId.CommandCreated[20104] (Microsoft.EntityFrameworkCore.Database.Command) 
      Created DbCommand for 'ExecuteReader' (0ms).
dbug: 10/26/2024 12:21:09.003 RelationalEventId.CommandInitialized[20106] (Microsoft.EntityFrameworkCore.Database.Command) 
      Initialized DbCommand for 'ExecuteReader' (1ms).
dbug: 10/26/2024 12:21:09.005 RelationalEventId.CommandExecuting[20100] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executing DbCommand [Parameters=[@__date_Date_0='2024-10-01T00:00:00.0000000', @__p_1='0', @__p_2='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          WHERE CONVERT(date, [t].[Date]) = @__date_Date_0
          ORDER BY (SELECT 1)
          OFFSET @__p_1 ROWS FETCH NEXT @__p_2 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
info: 10/26/2024 12:21:09.032 RelationalEventId.CommandExecuted[20101] (Microsoft.EntityFrameworkCore.Database.Command) 
      Executed DbCommand (23ms) [Parameters=[@__date_Date_0='2024-10-01T00:00:00.0000000', @__p_1='0', @__p_2='10'], CommandType='Text', CommandTimeout='30']
      SELECT [t0].[Id], [t0].[Date], [t1].[ProductId], [t1].[TransactionId], [t1].[Quantity], [t1].[TotalPrice], [t1].[Id], [t1].[CurrentQuantity], [t1].[InitialQuantity], [t1].[Price], [t1].[ProductName], [t1].[Unit]
      FROM (
          SELECT [t].[Id], [t].[Date]
          FROM [Transactions] AS [t]
          WHERE CONVERT(date, [t].[Date]) = @__date_Date_0
          ORDER BY (SELECT 1)
          OFFSET @__p_1 ROWS FETCH NEXT @__p_2 ROWS ONLY
      ) AS [t0]
      LEFT JOIN (
          SELECT [p].[ProductId], [p].[TransactionId], [p].[Quantity], [p].[TotalPrice], [p0].[Id], [p0].[CurrentQuantity], [p0].[InitialQuantity], [p0].[Price], [p0].[ProductName], [p0].[Unit]
          FROM [ProductTransactions] AS [p]
          INNER JOIN [Products] AS [p0] ON [p].[ProductId] = [p0].[Id]
      ) AS [t1] ON [t0].[Id] = [t1].[TransactionId]
      ORDER BY [t0].[Id], [t1].[ProductId], [t1].[TransactionId]
dbug: 10/26/2024 12:21:09.065 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Transaction' entity with key '{Id: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:21:09.111 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:21:09.131 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:21:09.144 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 7874cf2b-b47e-4df2-b2c4-37c04fc03dd7}'.
dbug: 10/26/2024 12:21:09.172 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'ProductTransaction' entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}'.
dbug: 10/26/2024 12:21:09.174 CoreEventId.ReferenceChangeDetected[10805] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      The navigation 'ProductTransaction.Product' for entity with key '{ProductId: 366c394a-7818-4b06-94c1-c7525a7f8415, TransactionId: fa420b22-7309-42d0-a269-fce44df13ad3}' was detected as changed.
dbug: 10/26/2024 12:21:09.176 CoreEventId.StartedTracking[10806] (Microsoft.EntityFrameworkCore.ChangeTracking) 
      Context 'DatabaseContext' started tracking 'Product' entity with key '{Id: 366c394a-7818-4b06-94c1-c7525a7f8415}'.
dbug: 10/26/2024 12:21:09.179 RelationalEventId.DataReaderClosing[20301] (Microsoft.EntityFrameworkCore.Database.Command) 
      Closing data reader to 'TASK' on server '.'.
dbug: 10/26/2024 12:21:09.180 RelationalEventId.DataReaderDisposing[20300] (Microsoft.EntityFrameworkCore.Database.Command) 
      A data reader for 'TASK' on server '.' is being disposed after spending 145ms reading results.
dbug: 10/26/2024 12:21:09.181 RelationalEventId.ConnectionClosing[20002] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:09.185 RelationalEventId.ConnectionClosed[20003] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Closed connection to database 'TASK' on server '.' (3ms).
dbug: 10/26/2024 12:21:12.955 CoreEventId.ContextDisposed[10407] (Microsoft.EntityFrameworkCore.Infrastructure) 
      'DatabaseContext' disposed.
dbug: 10/26/2024 12:21:12.973 RelationalEventId.ConnectionDisposing[20007] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposing connection to database 'TASK' on server '.'.
dbug: 10/26/2024 12:21:12.982 RelationalEventId.ConnectionDisposed[20008] (Microsoft.EntityFrameworkCore.Database.Connection) 
      Disposed connection to database '' on server '' (8ms).