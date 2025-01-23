apt-get update
apt-get install -y wget apt-transport-https
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update
apt-get install -y libssl1.1 libicu67
apt-get install -y dotnet-sdk-5.0
dotnet restore
dotnet build