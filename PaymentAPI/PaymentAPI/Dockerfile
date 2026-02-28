# Build Stage
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src

# Copy csproj and restore
COPY ["PaymentAPI.csproj", "./"]
RUN dotnet restore "PaymentAPI.csproj"

# Copy everything else and build
COPY . .
RUN dotnet publish "PaymentAPI.csproj" -c Release -o /app/publish

# Serve Stage
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS final
WORKDIR /app
COPY --from=build /app/publish .

# Render exposes the port via the PORT environment variable
ENV ASPNETCORE_URLS=http://+:80
EXPOSE 80

ENTRYPOINT ["dotnet", "PaymentAPI.dll"]
