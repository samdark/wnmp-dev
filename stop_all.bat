@echo off

echo Killing php-cgi spawner.
taskkill /im php-cgi-spawner.exe /F > NUL 2>&1

echo Killing php-cgi.
taskkill /im php-cgi.exe /F > NUL 2>&1

echo Killing nginx.
taskkill /im nginx.exe /F > NUL 2>&1

echo Stopping MariaDB.
mariadb\bin\mysqladmin -u root shutdown
