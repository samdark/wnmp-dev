start "PHP 5.5 FastCGI" /B "php55\php-cgi.exe" -b localhost:9000

@pushd nginx
start "nginx" /B "nginx.exe"
@popd

start "MariaDB" /B "mariadb\bin\mysqld.exe" "--defaults-file=mariadb\data\my.ini"