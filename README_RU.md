wnmp-dev
========

wnmp-dev — среда окружения под Windows, содержащая nginx, MySQL (или MariaDB) и PHP.
Набор bat-скриптов и конфиг для nginx позволяют развернуть полноценный веб-сервер под Windows и легко переключаться между разными версиями PHP.

Установка
---------

1. Клонируем `https://github.com/samdark/wnmp-dev.git` или [загружаем архивом](https://github.com/samdark/wnmp-dev/archive/master.zip).
2. Забираем нужные версии PHP [с сайта PHP for Windows](http://windows.php.net/download/). Берите `nts`, `x86` в zip-архиве.
3. Распаковываем архив. Версия 5.5 должна оказаться в `php55`, версия 5.4 в `php54`.
4. Забираем [MariaDB](https://downloads.mariadb.org/) или [MySQL](https://dev.mysql.com/downloads/windows/installer/), складываем в `mariadb`.
5. Копируем `nginx/conf/vhosts/example._conf` в `nginx/conf/vhosts/mysite.conf`, редактируем так, чтобы конфиг указывал корневой веб-каталог.
6. Добавляем домен из конфига в hosts.
7. Запускаем `start_all.bat`.
8. Работаем.

Переключение версий PHP
-----------------------

По умолчанию стартует PHP 5.5, но можно переключить версию запуском `restart_php php54`.
Если вам нужно больше версий, создайте новые каталоги для них и запустите `restart php-directory`.

Известные проблемы
------------------

- php-cgi может обрабатывать один запрос за раз. Поскольку запуск нескольких экземпляров php-cgi ведёт к частым сбоям и невозможности отладки в XDebug,
  мы привязываемся к одному экземпляру php-cgi. Если вам нужна хорошая производительность в Windows, лучше использовать Apache или IIS.
