# Install .NET SDK 5.0
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update
apt-get install -y dotnet-sdk-5.0

# Restore dependencies
dotnet restore

# Install dotnet tools
dotnet tool restore