# Use the official Microsoft SQL Server 2022 image from Red Hat
FROM mcr.microsoft.com/mssql/rhel/server:2022-CU13-rhel-9.1

# Defina as variáveis de ambiente
#ENV ACCEPT_EULA=Y
#ENV SA_PASSWORD=Teste01*
#ENV MSSQL_PID=Express

# Exponha a porta do SQL Server
EXPOSE 1433

# Copie o arquivo de inicialização para o contêiner
COPY ./init-db.sql /usr/init-db.sql

# Execute o processo do SQL Server
CMD ["/opt/mssql/bin/sqlservr"]

