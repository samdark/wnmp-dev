@taskkill /im php-cgi.exe /F

@pushd nginx
start "Stopping nginx" /B nginx -s stop
@popd

start "Stopping MariaDB" mariadb\bin\mysqladmin -u root -p shutdown