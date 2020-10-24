wnmp-dev
========

wnmp-dev is development environment for Windows that consists of nginx, MySQL (or MariaDB) and PHP.

Installation
------------

1. Clone `https://github.com/samdark/wnmp-dev.git` or [download as archive](https://github.com/samdark/wnmp-dev/archive/master.zip).
2. Download PHP [from PHP for Windows website](http://windows.php.net/download/). You need `nts` and `x86` zip.
3. Extract archive. PHP 5.5 should end up in `php55`, PHP 5.4 should end up in `php54` etc.
4. Download [MariaDB](https://downloads.mariadb.org/) or [MySQL](https://dev.mysql.com/downloads/windows/installer/),
   put it to `mariadb`.
5. Copy `nginx/conf/vhosts/example._conf` to `nginx/conf/vhosts/mysite.conf`, edit it to point to your webroot.
6. Add domain chosen to your hosts file.
7. Run `start_all.bat`.
8. Enjoy.

Switching PHP versions
----------------------

By default it starts 4 instances of PHP 7 FastCGI on port 9000 but it's possible to switch versions by running
`restart_php php54`. It's also possible to specify number of `php-cgi.exe` instances and port via
`restart_php php54 4 9000`. If you need another PHP version create new directory `php-directory` for it, put PHP there
and then you'll be able to run `restart php-directory`.
 
Credits
-------

- PHP CGI spawner (`php-cgi-spawner.exe`): https://github.com/deemru/php-cgi-spawner
- Nginx: https://nginx.org/
