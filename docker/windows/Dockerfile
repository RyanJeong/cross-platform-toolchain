# escape=`
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2022 AS build
LABEL maintainer="Munseong Jeong <ryan.m.jeong@hotmail.com>"

SHELL ["cmd", "/S", "/C"]
RUN curl -L -o vs_buildtools.exe https://aka.ms/vs/17/release/vs_buildtools.exe && ^
    vs_buildtools.exe --quiet --wait --norestart --nocache ^
      --installPath C:\BuildTools ^
      --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 ^
      --add Microsoft.VisualStudio.Component.Windows10SDK.22621 ^
      --includeRecommended && ^
    del vs_buildtools.exe
WORKDIR C:\workspace