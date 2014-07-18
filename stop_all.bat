@echo Killing php-cgi.
@taskkill /im php-cgi.exe /F > NUL

@echo Killing nginx.
@taskkill /im nginx.exe /F > NUL

@echo Stopping MariaDB.
@mariadb\bin\mysqladmin -u root shutdown