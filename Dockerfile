# Base Image
FROM mcr.microsoft.com/mssql/server:2019-CU11-ubuntu-20.04

# STEP OF CONFIGURING DIRECTORY PERMISSIONS
USER root

RUN mkdir /var/opt/mssql/data \
    /var/opt/mssql/log \
    /var/opt/mssql/dump

RUN chown -R mssql /var/opt/mssql \
    && chown -R mssql /var/opt/mssql/log \
    && chown -R mssql /var/opt/mssql/dump

# Revert User
USER mssql
