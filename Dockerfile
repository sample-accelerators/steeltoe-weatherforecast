FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine AS base

WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine AS build
WORKDIR /src
COPY ["Sample.csproj", "."]
RUN dotnet restore "Sample.csproj"
COPY . .
RUN dotnet build "Sample.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Sample.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENV DOTNET_URLS http://0.0.0.0:80
ENTRYPOINT ["dotnet", "Sample.dll"]
