export DOTNET_INSTALL_DIR=/usr/share/dotnet
curl -sSL https://dot.net/v1/dotnet-install.sh | bash -s -- --version 5.0.408 --install-dir $DOTNET_INSTALL_DIR
export PATH=$PATH:$DOTNET_INSTALL_DIR
export DOTNET_ROOT=$DOTNET_INSTALL_DIR
export DOTNET_CLI_TELEMETRY_OPTOUT=1
mkdir -p /usr/share/dotnet/host/fxr
dotnet restore
dotnet build