mkdir -p /usr/local/dotnet
wget -O dotnet.tar.gz https://dotnetcli.blob.core.windows.net/dotnet/Sdk/5.0.408/dotnet-sdk-5.0.408-linux-x64.tar.gz
echo "bf452dbdaec7a82835ef249cfed7df2abf9c4676f274273f9958e6fd4c932161  dotnet.tar.gz" | sha256sum -c -
tar -xzf dotnet.tar.gz -C /usr/local/dotnet
rm dotnet.tar.gz
ln -s /usr/local/dotnet/dotnet /usr/local/bin/dotnet
export DOTNET_ROOT=/usr/local/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore
dotnet build