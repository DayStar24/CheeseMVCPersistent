[CORP\rwalt@a-1f8oif66nl4sq ~]$ cd Desktop/LC101/CheeseMVCPersistent/src/CheeseMVC/
[CORP\rwalt@a-1f8oif66nl4sq CheeseMVC]$ ls
appsettings.json  bin  bower.json  bundleconfig.json  CheeseMVC.csproj  Controllers  Data  dotnet  Models  obj  Program.cs  Project_Readme.html  Properties  Startup.cs  ViewModels  Views  web.config  wwwroot
[CORP\rwalt@a-1f8oif66nl4sq CheeseMVC]$ clear

[CORP\rwalt@a-1f8oif66nl4sq CheeseMVC]$ dotnet ef migrations add FinalMigration
: Microsoft.AspNetCore.DataProtection.KeyManagement.XmlKeyManager[0]
      User profile is available. Using '/home/rwalt/.aspnet/DataProtection-Keys' as key repository; keys will not be encrypted at rest.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (82ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE') SELECT 1 ELSE SELECT 0
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (82ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE') SELECT 1 ELSE SELECT 0
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (11ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Categories] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (11ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Categories] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (5ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Menus] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Menus] PRIMARY KEY ([ID])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (5ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Menus] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Menus] PRIMARY KEY ([ID])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (6ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Cheeses] (
          [ID] int NOT NULL IDENTITY,
          [CategoryID] int NOT NULL,
          [Description] nvarchar(max) NULL,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Cheeses] PRIMARY KEY ([ID]),
          CONSTRAINT [FK_Cheeses_Categories_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [Categories] ([ID]) ON DELETE CASCADE
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (6ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Cheeses] (
          [ID] int NOT NULL IDENTITY,
          [CategoryID] int NOT NULL,
          [Description] nvarchar(max) NULL,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Cheeses] PRIMARY KEY ([ID]),
          CONSTRAINT [FK_Cheeses_Categories_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [Categories] ([ID]) ON DELETE CASCADE
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (2ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [CheeseMenus] (
          [CheeseID] int NOT NULL,
          [MenuID] int NOT NULL,
          CONSTRAINT [PK_CheeseMenus] PRIMARY KEY ([CheeseID], [MenuID]),
          CONSTRAINT [FK_CheeseMenus_Cheeses_CheeseID] FOREIGN KEY ([CheeseID]) REFERENCES [Cheeses] ([ID]) ON DELETE CASCADE,
          CONSTRAINT [FK_CheeseMenus_Menus_MenuID] FOREIGN KEY ([MenuID]) REFERENCES [Menus] ([ID]) ON DELETE CASCADE
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (2ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [CheeseMenus] (
          [CheeseID] int NOT NULL,
          [MenuID] int NOT NULL,
          CONSTRAINT [PK_CheeseMenus] PRIMARY KEY ([CheeseID], [MenuID]),
          CONSTRAINT [FK_CheeseMenus_Cheeses_CheeseID] FOREIGN KEY ([CheeseID]) REFERENCES [Cheeses] ([ID]) ON DELETE CASCADE,
          CONSTRAINT [FK_CheeseMenus_Menus_MenuID] FOREIGN KEY ([MenuID]) REFERENCES [Menus] ([ID]) ON DELETE CASCADE
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (1ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE INDEX [IX_CheeseMenus_MenuID] ON [CheeseMenus] ([MenuID]);
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (1ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE INDEX [IX_CheeseMenus_MenuID] ON [CheeseMenus] ([MenuID]);
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (0ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE INDEX [IX_Cheeses_CategoryID] ON [Cheeses] ([CategoryID]);
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (0ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE INDEX [IX_Cheeses_CategoryID] ON [Cheeses] ([CategoryID]);
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
Done. To undo this action, use 'ef migrations remove'
[CORP\rwalt@a-1f8oif66nl4sq CheeseMVC]$ dotnet ef database update
info: Microsoft.AspNetCore.DataProtection.KeyManagement.XmlKeyManager[0]
      User profile is available. Using '/home/rwalt/.aspnet/DataProtection-Keys' as key repository; keys will not be encrypted at rest.
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (71ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE') SELECT 1 ELSE SELECT 0
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (71ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE') SELECT 1 ELSE SELECT 0
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Infrastructure[10403]
      Entity Framework Core 2.0.3-rtm-10026 initialized 'CheeseDbContext' using provider 'Microsoft.EntityFrameworkCore.SqlServer' with options: None
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (7ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'__EFMigrationsHistory');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (7ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'__EFMigrationsHistory');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [__EFMigrationsHistory] (
          [MigrationId] nvarchar(150) NOT NULL,
          [ProductVersion] nvarchar(32) NOT NULL,
          CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (8ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [__EFMigrationsHistory] (
          [MigrationId] nvarchar(150) NOT NULL,
          [ProductVersion] nvarchar(32) NOT NULL,
          CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
      );
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (0ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'__EFMigrationsHistory');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (0ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT OBJECT_ID(N'__EFMigrationsHistory');
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT [MigrationId], [ProductVersion]
      FROM [__EFMigrationsHistory]
      ORDER BY [MigrationId];
info: Microsoft.EntityFrameworkCore.Database.Command[20101]
      Executed DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      SELECT [MigrationId], [ProductVersion]
      FROM [__EFMigrationsHistory]
      ORDER BY [MigrationId];
info: Microsoft.EntityFrameworkCore.Migrations[20402]
      Applying migration '20181011210849_FinalMigration'.
info: Microsoft.EntityFrameworkCore.Migrations[20402]
      Applying migration '20181011210849_FinalMigration'.
Applying migration '20181011210849_FinalMigration'.
fail: Microsoft.EntityFrameworkCore.Database.Command[20102]
      Failed executing DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Categories] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
      );
System.Data.SqlClient.SqlException (0x80131904): There is already an object named 'Categories' in the database.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.RunExecuteNonQueryTds(String methodName, Boolean async, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite, String methodName)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
ClientConnectionId:53756816-ffaa-49fb-a071-0c034ea61b98
Error Number:2714,State:6,Class:16
fail: Microsoft.EntityFrameworkCore.Database.Command[20102]
      Failed executing DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
      CREATE TABLE [Categories] (
          [ID] int NOT NULL IDENTITY,
          [Name] nvarchar(max) NULL,
          CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
      );
System.Data.SqlClient.SqlException (0x80131904): There is already an object named 'Categories' in the database.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.RunExecuteNonQueryTds(String methodName, Boolean async, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite, String methodName)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
ClientConnectionId:53756816-ffaa-49fb-a071-0c034ea61b98
Error Number:2714,State:6,Class:16
Failed executing DbCommand (9ms) [Parameters=[], CommandType='Text', CommandTimeout='30']
CREATE TABLE [Categories] (
    [ID] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NULL,
    CONSTRAINT [PK_Categories] PRIMARY KEY ([ID])
);
System.Data.SqlClient.SqlException (0x80131904): There is already an object named 'Categories' in the database.
   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.TdsParser.ThrowExceptionAndWarning(TdsParserStateObject stateObj, Boolean callerHasConnectionLock, Boolean asyncClose)
   at System.Data.SqlClient.TdsParser.TryRun(RunBehavior runBehavior, SqlCommand cmdHandler, SqlDataReader dataStream, BulkCopySimpleResultSet bulkCopyHandler, TdsParserStateObject stateObj, Boolean& dataReady)
   at System.Data.SqlClient.SqlCommand.RunExecuteNonQueryTds(String methodName, Boolean async, Int32 timeout, Boolean asyncWrite)
   at System.Data.SqlClient.SqlCommand.InternalExecuteNonQuery(TaskCompletionSource`1 completion, Boolean sendToPipe, Int32 timeout, Boolean asyncWrite, String methodName)
   at System.Data.SqlClient.SqlCommand.ExecuteNonQuery()
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.Execute(IRelationalConnection connection, DbCommandMethod executeMethod, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Storage.Internal.RelationalCommand.ExecuteNonQuery(IRelationalConnection connection, IReadOnlyDictionary`2 parameterValues)
   at Microsoft.EntityFrameworkCore.Migrations.Internal.MigrationCommandExecutor.ExecuteNonQuery(IEnumerable`1 migrationCommands, IRelationalConnection connection)
   at Microsoft.EntityFrameworkCore.Migrations.Internal.Migrator.Migrate(String targetMigration)
   at Microsoft.EntityFrameworkCore.Design.Internal.MigrationsOperations.UpdateDatabase(String targetMigration, String contextType)
   at Microsoft.EntityFrameworkCore.Design.OperationExecutor.OperationBase.Execute(Action action)
ClientConnectionId:53756816-ffaa-49fb-a071-0c034ea61b98
Error Number:2714,State:6,Class:16
There is already an object named 'Categories' in the database.
[CORP\rwalt@a-1f8oif66nl4sq CheeseMVC]$ 
