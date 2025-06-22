FROM mcr.microsoft.com/windows/nanoserver:ltsc2025
WORKDIR /install
COPY install_iis.cmd .
USER ContainerAdministrator
RUN install_iis.cmd
USER ContainerUser
WORKDIR /inetpub
