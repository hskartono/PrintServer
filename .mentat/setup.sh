apt-get update
apt-get install -y libssl3
apt-get install -y dotnet-sdk-7.0
export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore
dotnet build