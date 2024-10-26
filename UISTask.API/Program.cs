
using Microsoft.EntityFrameworkCore;
using Serilog;
using UISTask.Application;
using UISTask.Infrastructure;
using UISTask.Infrastructure.Data.Context;


var builder = WebApplication.CreateBuilder(args);

Log.Logger = new LoggerConfiguration()
    .ReadFrom
    .Configuration(builder.Configuration)
    .CreateLogger();

try
{
    Log.Information("Starting web application");

    #region Connectionstring 

    var connectionString = builder.Configuration.GetConnectionString("UISTask");
    builder.Services.AddDbContext<DatabaseContext>(options => options.UseSqlServer(connectionString));
    #endregion

    #region Services

    #endregion


    #region Default Services

    builder.Services.AddControllers();
    builder.Services.AddEndpointsApiExplorer();
    builder.Services.AddSwaggerGen();

    #endregion

    #region Logger

    builder.Host.UseSerilog();
   

    #endregion


    #region Global Services

    builder.Services.AddInfraStructureConfiguration(builder.Configuration);
    builder.Services.AddAppicationConfiguration(builder.Configuration);

    #endregion

    #region Add Cors

    builder.Services.AddCors(options =>
    {
        options.AddPolicy("AllowAll", builder =>
        {
            builder.AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader();
        });
    });

    #endregion


    var app = builder.Build();

    #region Middlewares

    //app.UseExceptionHandler();
    app.UseSwagger();
    app.UseSwaggerUI();

    app.UseCors("AllowAll");

   
    app.UseSerilogRequestLogging();

    app.UseHttpsRedirection();

    app.UseAuthorization();

    app.MapControllers();

    app.Run();

    #endregion
}
catch (Exception ex) when (ex is not HostAbortedException)
{
    Log.Fatal(ex, "Application terminated unexpectedly");
}
finally
{
    Log.CloseAndFlush();
}