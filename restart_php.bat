@echo off

IF [%~1] == [] GOTO usage

if [%~2] == [] (
	set cgi_port=9000
) else (
	set cgi_port=%~2
)

if [%~3] == [] (
	set cgi_instances=4
) else (
	set cgi_instances=%~3
)

taskkill /im php-cgi-spawner.exe /F > NUL 2>&1
taskkill /im php-cgi.exe /F > NUL 2>&1


@rem set PHP_FCGI_MAX_REQUESTS=0
@rem start "PHP %1 FastCGI" /B "%1\php-cgi.exe" -b localhost:%cgi_port%

start "PHP %1 FastCGI Spawner" /B "php-cgi-spawner.exe" %1/php-cgi.exe %cgi_port% %cgi_instances%

echo Started %cgi_instances% PHP %1 FastCGI on port %cgi_port%.

GOTO :EOF

:usage
echo Kills existing php-cgi processes and then starts specified process from directory specified.
echo Usage is "restart_php php55" to start php-cgi from php55 directory.
echo You could also specify number of instances to spawn and a port to bind to "restart_php php55 4 9000".