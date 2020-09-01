FROM zzg890/dotnet-sdk-3.1:latest
RUN apt-get update && apt-get install -y --no-install-recommends unzip procps

# Install Visual Studio Remote Debugger
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg  
