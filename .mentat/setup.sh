curl -sSL https://dot.net/v1/dotnet-install.sh | bash -s -- --version 5.0.408
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools
dotnet restore
dotnet build