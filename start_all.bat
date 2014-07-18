@call restart_php php55

@pushd nginx
@start "nginx" /B "nginx.exe"
@popd
@echo Started nginx.

@start "MariaDB" /B "mariadb\bin\mysqld.exe" "--defaults-file=mariadb\data\my.ini"
@echo Started MariaDB.