<?phpheader('Access-Control-Allow-Origin:*');
date_default_timezone_set('Asia/Chongqing');
set_time_limit(7200);
// +---------------------------------------------------------------------------+
// | 一个绝对的文件系统路径我们的webapp / php脚本。							   |
// | An absolute filesystem path to our webapp/config.php script.              |
// +---------------------------------------------------------------------------+
require_once (dirname(__FILE__) . "/webapp/config.php");
// +---------------------------------------------------------------------------+
// | 一个绝对的文件系统路径Mojavi / mojavi.php脚本。						   |
// | An absolute filesystem path to the mojavi/mojavi.php script.              |
// +---------------------------------------------------------------------------+
require_once (MO_APP_DIR . "/mojavi.php");
// +---------------------------------------------------------------------------+
// | 创建控制器。对于这个文件，我们将使用前端控制器模式。此模式允许我们指定模块|
// | 和动作GET / POST参数，并自动检测它们并找到预期的操作。					   |
// | Create our controller. For this file we're going to use a front           |
// | controller pattern. This pattern allows us to specify module and action   |
// | GET/POST parameters and it automatically detects them and finds the       |
// | expected action.                                                          |
// +---------------------------------------------------------------------------+
$controller = Controller::newInstance('FrontWebController');
// +---------------------------------------------------------------------------+
// | 发送我们的请求。														   |
// | Dispatch our request.                                                     |
// +---------------------------------------------------------------------------+
$controller -> dispatch();?>