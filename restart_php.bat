@IF [%1] == [] GOTO usage

@taskkill /im php-cgi.exe /F > NUL
@set PHP_FCGI_MAX_REQUESTS=0
@start "PHP %1 FastCGI" /B "%1\php-cgi.exe" -b localhost:9000
@echo Started PHP %1 FastCGI on port 9000.

@GOTO :EOF

:usage
@echo Kills existing php-cgi processes and then starts specified process from directory specified.
@echo Usage is "restart_php php55" to start php-cgi from php55 directory.