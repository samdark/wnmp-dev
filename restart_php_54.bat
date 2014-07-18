@taskkill /im php-cgi.exe /F
start "PHP 5.4 FastCGI" /B "php54\php-cgi.exe" -b localhost:9000
