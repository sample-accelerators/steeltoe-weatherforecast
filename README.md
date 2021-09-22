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

Once running, access the Weather Forecast endpoint at https://localhost:5001/weatherforecast

```
$ http --verify=no https://localhost:5001/weatherforecast
```

Below are a couple sample Steeltoe endpoints.  For more details, visit https://docs.steeltoe.io/.
```
# health management
$ http --verify=no https://localhost:5001/actuator/health

# logger management
$ http --verify=no https://localhost:5001/actuator/logger
```
