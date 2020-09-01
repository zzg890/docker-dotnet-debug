FROM mcr.microsoft.com/dotnet/core/sdk:3.1.301-bionic
RUN apt update
RUN apt install -y nodejs
RUN apt install -y npm
RUN npm install -y npm@latest -g
RUN npm install -g n
RUN n lts
RUN npm config set registry https://registry.npm.taobao.org
RUN apt-get update && apt-get install -y --no-install-recommends unzip procps
# Install Visual Studio Remote Debugger
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg  
