apt-get update
apt-get install -y wget apt-transport-https
wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update
apt-get install -y libssl3 libicu72
apt-get install -y dotnet-sdk-5.0
dotnet restore
dotnet build