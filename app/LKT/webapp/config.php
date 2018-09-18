<?php
// +---------------------------------------------------------------------------+
// | 我们应该在调试模式下运行系统吗?当这种情况发生时，可能会产生各种各样的副作 |
// | 用。但目前它只会在启动时删除缓存。										   |
// | Should we run the system in debug mode? When this is on, there may be     |
// | various side-effects. But for the time being it only deletes the cache    |
// | upon start-up.                                                            |
// | 																		   |
// | 在开发应用程序时，这应该继续下去，因为很多错误都是由于使用了旧的缓存文件。|
// | This should stay on while you're developing your application, because     |
// | many errors can stem from the fact that you're using an old cache file.   |
// +---------------------------------------------------------------------------+
define('MO_DEBUG', false);
// +---------------------------------------------------------------------------+
// | The PHP error reporting level.                                            |
// |                                                                           |
// | See: http://www.php.net/error_reporting                                   |
// +---------------------------------------------------------------------------+
define('MO_ERROR_REPORTING', E_ALL | E_STRICT);
// +---------------------------------------------------------------------------+
// | 一个到mojavi包的绝对文件系统路径。这个目录包含所有Mojavi包。			   |
// | An absolute filesystem path to the mojavi package. This directory         |
// | contains all the Mojavi packages.                                         |
// +---------------------------------------------------------------------------+
define('MO_APP_DIR', dirname(dirname(dirname(__FILE__))) . '/mojavi');
// +---------------------------------------------------------------------------+
// | 一个绝对的文件系统路径到您的web应用程序目录。这个目录是web应用程序的根，它|
// | 包括核心配置文件和相关的web应用程序数据。								   |
// | An absolute filesystem path to your web application directory. This       |
// | directory is the root of your web application, which includes the core    |
// | configuration files and related web application data.                     |
// +---------------------------------------------------------------------------+
define('MO_WEBAPP_DIR', dirname(__FILE__));
// +---------------------------------------------------------------------------+
// | 一个绝对文件系统路径到存储缓存文件的目录。								   |
// | An absolute filesystem path to the directory where cache files will be    |
// | stored.                                                                   |
// |                                                                           |
// | NOTE: If you're going to use a public temp directory, make sure this is a |
// |       sub-directory of the temp directory. The cache system will attempt  |
// |       to clean up *ALL* data in this directory.                           |
// +---------------------------------------------------------------------------+
define('MO_CACHE_DIR', MO_WEBAPP_DIR . '/_cache');
// Smarty
define('SMARTY_COMPILE_DIR', MO_WEBAPP_DIR . "/_compile/");
define('BASE_PATH', str_replace('\\', '/', realpath(dirname(__FILE__) . '/')) . "/");?>