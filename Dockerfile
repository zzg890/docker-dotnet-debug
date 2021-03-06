FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm install -y npm@latest -g
RUN npm install -g n
RUN n lts
RUN npm config set registry https://registry.npm.taobao.org

ENV ASPNETCORE_ENVIRONMENT Docker
ENV DOTNET_RUNNING_IN_CONTAINER=true
ENV DOTNET_USE_POLLING_FILE_WATCHER=true

RUN apt-get update && apt-get install -y --no-install-recommends unzip procps
# Install Visual Studio Remote Debugger
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg  
