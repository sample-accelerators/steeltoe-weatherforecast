# Steeltoe Sample Accelerator

A sample accelerator for Steeltoe.

This sample is based on the Weather Forecast RESTful API application made available from Microsoft.  It provides a single endpoint, `/weatherforecast`, that returns a mock forecast for the upcoming several days.

The application also includes several Steeltoe features: management endpoints, dynamic logging, and distributed tracing.

The starting source for this sample was created using:
```
$ dotnet new steeltoe-webapi --logging-dynamic-logger --management-endpoints --distributed-tracing
```

If the _Dockerfile_ option is elected, also creates a `Dockerfile` to run the service in a Docker container.

To run the sample application:

```
$ dotnet run
```

| URL | Description |
| --- | --- |
| https://localhost:5001/swagger | API Documentation |
| https://localhost:5001/weatherforecast | Weather Forecast Endpoint |
| https://localhost:5001/actuator/health | Health Status |
| https://localhost:5001/actuator/loggers | Logger Configuration |

For more details on Steeltoe endpoints, visit https://docs.steeltoe.io/.
