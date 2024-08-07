# Use the official Microsoft SQL Server 2022 image from Red Hat
FROM mcr.microsoft.com/mssql/rhel/server:2022-CU13-rhel-9.1

# Expose the SQL Server port
EXPOSE 1433

# Copy the initialization SQL script to the container
COPY ./init-db.sql /usr/init-db.sql

# Set appropriate permissions for non-root execution
RUN chown -R 1001:0 /opt/mssql && \
    chmod -R 755 /opt/mssql && \
    chown 1001:0 /usr/init-db.sql && \
    chmod 755 /usr/init-db.sql

# Switch to the non-root user
USER 1001

# Run the SQL Server process
CMD ["/opt/mssql/bin/sqlservr"]
