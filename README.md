wnmp-dev
========

wnmp-dev is development environment for Windows that consists of nginx, MySQL (or MariaDB) and PHP.

Installation
------------

1. Clone.
2. Download PHP 5.5 (or any other nts version), put it under php55 or php54.
3. Download MySQL or MariaDB, put it under mariadb.
4. Copy `nginx/conf/vhosts/example._conf` to `nginx/conf/vhosts/mysite.conf`, edit it to point to your webroot.
5. Add domain chosen to your hosts file.
6. Run `start_all.bat`
7. Enjoy.
