mkdir -p $HOME/dotnet
curl -SL --output dotnet.tar.gz https://download.visualstudio.microsoft.com/download/pr/36c10172-fa7e-4a61-89b8-d0e0759b90a8/4b38619f0a2c4f7c74a716f40f21e5c5/dotnet-sdk-5.0.408-linux-x64.tar.gz
tar -xzf dotnet.tar.gz -C $HOME/dotnet
rm dotnet.tar.gz
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
dotnet restore
dotnet build