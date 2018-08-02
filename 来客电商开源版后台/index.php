<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title><?php echo $_GET['updata']? '系统升级':'系统安装';?></title>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<style>
html,body {
	font-family:-apple-system,"Helvetica Neue",Helvetica,Arial,"PingFang SC","Hiragino Sans GB","WenQuanYi Micro Hei","Microsoft Yahei",sans-serif;
	height:100%;
	display:flex;
	align-items:center;
	justify-content:center;
	background-color:#3881c6;
}
.sea {
	width:300px;
	height:300px;
	background-color:whitesmoke;
	background-image:linear-gradient(
  darkblue,rgba(255,255,255,0) 80%,rgba(255,255,255,0.5));
	border-radius:5px;
	box-shadow:0 2px 30px rgba(0,0,0,0.2);
	position:relative;
	overflow:hidden;
}
.sea .title {
	color:white;
	font-size:24px;
	text-align:center;
	line-height:250px;
	text-transform:uppercase;
	letter-spacing:0.4em;
	position:absolute;
	z-index:1;
	width:100%;
}
.sea .updata {
    color: white;
    font-size: 24px;
    text-align: center;
    line-height: 250px;
    text-transform: uppercase;
    letter-spacing: 0.4em;
    position: absolute;
    z-index: 1;
    width: 100%;
}

.sea .version {
    color: #666;
    font-size: 13px;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 0.1em;
    bottom: 0;
    left: 0;
    position: absolute;
    z-index: 1;
    width: 100%;
}
.sea .wave {
	position:absolute;
	top:-250px;
	left:-100px;
	width:500px;
	height:500px;
	background:deepskyblue;
	border-radius:43%;
	filter:opacity(0.4);
	animation:drift linear infinite;
	transform-origin:50% 48%;
}
.sea .wave:nth-of-type(1) {
	animation-duration:5s;
}
.sea .wave:nth-of-type(2) {
	animation-duration:7s;
}
.sea .wave:nth-of-type(3) {
	animation-duration:9s;
	background-color:orangered;
	filter:opacity(0.1);
}
@keyframes drift {
	from {
	transform:rotate(360deg);
}
}</style>
</head>
<body>



<?php

class Unzip{
  public function __construct(){
    //init code here...
    header("content-type:text/html;charset=utf8");
  }
  /**
  * 解压文件到指定目录
  * @param  string  zip压缩文件的路径
  * @param  string  解压文件的目的路径
  * @param  boolean 是否以压缩文件的名字创建目标文件夹
  * @param  boolean 是否重写已经存在的文件
  * @return boolean 返回成功 或失败
  */
  public function unzip($src_file, $dest_dir=false, $create_zip_name_dir=false, $overwrite=true){
  if ($zip = zip_open($src_file)){
    if ($zip){
      $splitter = ($create_zip_name_dir === true) ? "." : "/";
      if($dest_dir === false){
        $dest_dir = substr($src_file, 0, strrpos($src_file, $splitter))."/";
      }
      // 如果不存在 创建目标解压目录
      $this->create_dirs($dest_dir);
       // 对每个文件进行解压
       while ($zip_entry = zip_read($zip)){
          // 文件不在根目录
          $pos_last_slash = strrpos(zip_entry_name($zip_entry), "/");
          if ($pos_last_slash !== false){
            // 创建目录 在末尾带 /
            $this->create_dirs($dest_dir.substr(zip_entry_name($zip_entry), 0, $pos_last_slash+1));
          }
          // 打开包
          if (zip_entry_open($zip,$zip_entry,"r")){
            // 文件名保存在磁盘上
            $file_name = $dest_dir.zip_entry_name($zip_entry);
            // 检查文件是否需要重写
            // echo zip_entry_name($zip_entry).'<br/>';
            if(is_file(zip_entry_name($zip_entry))){
               write_log("移动文件: ".zip_entry_name($zip_entry),'move');
               move_file(zip_entry_name($zip_entry),'backups/');
            }
            if ($overwrite === true || $overwrite === false && !is_file($file_name)){
              // 读取压缩文件的内容
              $fstream = zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));
              @file_put_contents($file_name, $fstream);
              // 设置权限
              chmod($file_name, 0777);
              write_log("成功创建: ".$file_name,'unzip');
            }
            // 关闭入口
            zip_entry_close($zip_entry);
          }
        }
        // 关闭压缩包
        zip_close($zip);
      }
    }else{
      return false;
    }
    return true;
  }
  /**
  * 创建目录
  */
  public function create_dirs($path){
   if (!is_dir($path)){
     $directory_path = "";
     $directories = explode("/",$path);
     array_pop($directories);
     foreach($directories as $directory){
       $directory_path .= $directory."/";
       if (!is_dir($directory_path)){
         mkdir($directory_path);
         chmod($directory_path, 0777);
       }
     }
   }
  }
}
/**
 * 获取一个路径(文件夹&文件) 当前文件[夹]名
 * test/11/ ==>11 test/1.c  ==>1.c
 */
function get_path_this($path){
  $path = str_replace('\\','/', rtrim(trim($path),'/'));
  $pos = strrpos($path,'/');
  if($pos === false){
    return $path;
  }
  return substr($path,$pos+1);
}

/**
 * 获取一个路径(文件夹&文件) 父目录
 * /test/11/==>/test/   /test/1.c ==>/www/test/
 */
function get_path_father($path){
  $path = str_replace('\\','/', rtrim(trim($path),'/'));
  $pos = strrpos($path,'/');
  if($pos === false){
    return $path;
  }
  return substr($path, 0,$pos+1);
}
//自动获取不重复文件(夹)名
//如果传入$file_add 则检测存在则自定重命名  a.txt 为a{$file_add}.txt
//$same_file_type  rename,replace,skip,folder_rename
function get_filename_auto($path,$file_add = "",$same_file_type='replace'){
  if (is_dir($path) && $same_file_type!='folder_rename') {//文件夹则忽略
  echo "//文件夹则忽略";
    return $path;
  }
  //重名处理
  if (file_exists($path)) {
    if ($same_file_type=='replace') {
      return $path;
    }else if($same_file_type=='skip'){
      return false;
    }
  }

  $i=1;
  $father = get_path_father($path);
  $name =  get_path_this($path);
  $ext = get_path_ext($name);
  if(is_dir($path)){
    $ext = '';
  }
  if (strlen($ext)>0) {
    $ext='.'.$ext;
    $name = substr($name,0,strlen($name)-strlen($ext));
  }
  while(file_exists($path)){
    if ($file_add != '') {
      $path = $father.$name.$file_add.$ext;
      $file_add.='-';
    }else{
      $path = $father.$name.'('.$i.')'.$ext;
      $i++;
    }
  }
  return $path;
}
/**
 * 获取扩展名
 */
function get_path_ext($path){
  $name = get_path_this($path);
  $ext = '';
  if(strstr($name,'.')){
    $ext = substr($name,strrpos($name,'.')+1);
    $ext = strtolower($ext);
  }
  if (strlen($ext)>3 && preg_match("/([\x81-\xfe][\x40-\xfe])/", $ext, $match)) {
    $ext = '';
  }
  return clear_html($ext);
}

//移动文件 source来源  repeat_add重复添加  dest目录
function move_file($source,$dest,$repeat_add,$repeat_type){
  $dest_path = $dest;
  if ($dest[strlen($dest)-1] == '/') {
    // $dest = $dest . "/" . basename($source);
    mk_dir($dest . "/" .get_path_father($source));
    $dest = $dest . "/" .$source;
  }
  if(file_exists($dest)){
    //同名文件处理规则
    $dest = $dest_path.'/'.substr($source,0,strrpos($source,".")).date("ymdhis").'.'.substr(strrchr($source, '.'), 1);
    $log = '同名文件处理规则:'.$dest;
    write_log($log,'rename','log');
  }

  $result = intval(@rename($source,$dest));
  $log = '移动文件  源文件:'.$source.' 新文件:'.$dest;
  write_log($log,'move_file','log');
  if (! $result) { // windows部分ing情况处理
    $result = intval(@copy($source,$dest));
    $log = '复制  源文件:'.$source.' 新文件:'.$dest;
    write_log($log,'copy','log');
    if ($result) {
      $log = '删除  文件:'.$source;
      write_log($log,'del','log');
      @unlink($source);
    }
  }
  return $result;
}
//filesize 解决大于2G 大小问题
function get_filesize($path){
  $result = false;
  $fp = fopen($path,"r");
  if(! $fp = fopen($path,"r")) return $result;
  if(PHP_INT_SIZE >= 8 ){ //64bit
    $result = (float)(abs(sprintf("%u",@filesize($path))));
  }else{
    if (fseek($fp, 0, SEEK_END) === 0) {
      $result = 0.0;
      $step = 0x7FFFFFFF;
      while ($step > 0) {
        if (fseek($fp, - $step, SEEK_CUR) === 0) {
          $result += floatval($step);
        } else {
          $step >>= 1;
        }
      }
    }else{
      static $iswin;
      if (!isset($iswin)) {
        $iswin = (strtoupper(substr(PHP_OS, 0, 3)) == 'WIN');
      }
      static $exec_works;
      if (!isset($exec_works)) {
        $exec_works = (function_exists('exec') && !ini_get('safe_mode') && @exec('echo EXEC') == 'EXEC');
      }
      if ($iswin && class_exists("COM")) {
        try {
          $fsobj = new COM('Scripting.FileSystemObject');
          $f = $fsobj->GetFile( realpath($path) );
          $size = $f->Size;
        } catch (Exception $e) {
          $size = null;
        }
        if (is_numeric($size)) {
          $result = $size;
        }
      }else if ($exec_works){
        $cmd = ($iswin) ? "for %F in (\"$path\") do @echo %~zF" : "stat -c%s \"$path\"";
        @exec($cmd, $output);
        if (is_array($output) && is_numeric($size = trim(implode("\n", $output)))) {
          $result = $size;
        }
      }else{
        $result = filesize($path);
      }
    }
  }
  fclose($fp);
  return $result;
}

/**
 * 获取文件(夹)权限 rwx_rwx_rwx
 */
function get_mode($file){
  $Mode = @fileperms($file);
  $theMode = ' '.decoct($Mode);
  $theMode = substr($theMode,-4);
  $Owner = array();$Group=array();$World=array();
  if ($Mode &0x1000) $Type = 'p'; // FIFO pipe
  elseif ($Mode &0x2000) $Type = 'c'; // Character special
  elseif ($Mode &0x4000) $Type = 'd'; // Directory
  elseif ($Mode &0x6000) $Type = 'b'; // Block special
  elseif ($Mode &0x8000) $Type = '-'; // Regular
  elseif ($Mode &0xA000) $Type = 'l'; // Symbolic Link
  elseif ($Mode &0xC000) $Type = 's'; // Socket
  else $Type = 'u'; // UNKNOWN
  // Determine les permissions par Groupe
  $Owner['r'] = ($Mode &00400) ? 'r' : '-';
  $Owner['w'] = ($Mode &00200) ? 'w' : '-';
  $Owner['x'] = ($Mode &00100) ? 'x' : '-';
  $Group['r'] = ($Mode &00040) ? 'r' : '-';
  $Group['w'] = ($Mode &00020) ? 'w' : '-';
  $Group['e'] = ($Mode &00010) ? 'x' : '-';
  $World['r'] = ($Mode &00004) ? 'r' : '-';
  $World['w'] = ($Mode &00002) ? 'w' : '-';
  $World['e'] = ($Mode &00001) ? 'x' : '-';
  // Adjuste pour SUID, SGID et sticky bit
  if ($Mode &0x800) $Owner['e'] = ($Owner['e'] == 'x') ? 's' : 'S';
  if ($Mode &0x400) $Group['e'] = ($Group['e'] == 'x') ? 's' : 'S';
  if ($Mode &0x200) $World['e'] = ($World['e'] == 'x') ? 't' : 'T';
  $Mode = $Type.$Owner['r'].$Owner['w'].$Owner['x'].' '.
      $Group['r'].$Group['w'].$Group['e'].' '.
      $World['r'].$World['w'].$World['e'];
  return $Mode.'('.$theMode.')';
}

function path_writeable($path){
  $result = intval(is_writeable($path));
  if($result){
    return $result;
  }
  $mode = get_mode($path);
  if( $mode && 
    strlen($mode) == 18 &&
    substr($mode,-8,1) == 'w'){// -rwx rwx rwx (0777)
    return true;
  }
  return false;
}
/**
 * 创建目录
 *
 * @param string $dir
 * @param int $mode
 * @return bool
 */
function mk_dir($dir, $mode = 0777){
  if (!$dir) return false;
  if (is_dir($dir) || @mkdir($dir, $mode)){
    return true;
  }
  if (!mk_dir(dirname($dir), $mode)){
    return false;
  }
  return @mkdir($dir, $mode);
}
/**
 * 写日志
 * @param string $log   日志信息
 * @param string $type  日志类型 [system|app|...]
 * @param string $level 日志级别
 * @return boolean
 */
function write_log($log, $type = 'default', $level = 'log'){
  date_default_timezone_set('PRC');
  if(!defined('INSTALL_PATH')){
    return;
  }
  $now_time = date('H:i:s');
  $target   = 'log/'.date("Ym").'/' ;
  mk_dir($target);
  if (!path_writeable($target)){
    exit('path can not write!');
  }
  $ext = '.log';
  //.php .log;
  $target .= date('Y_m_d').'_'.$level.$ext;
  //检测日志文件大小, 超过配置大小则重命名
  if (file_exists($target) && get_filesize($target) >= 1024*1024*10) {
    $fileName = substr(basename($target),0,strrpos(basename($target),$ext)).date('H:i:s').$ext;
    $re = rename($target, dirname($target) .'/'. $fileName);
  }
  if(!file_exists($target)){
    error_log("$now_time $type $log\n", 3,$target);
  }

  if(is_object($log) || is_array($log)){
    $log = json_encode_force($log);
  }
  clearstatcache();
  return error_log("$now_time $type $log\n", 3, $target);
}







if(version_compare(PHP_VERSION,'5.4.0','<'))  die('require PHP > 5.4.0 !');
// [ 应用入口文件 ]
$INSTALL_PATH = str_replace('\\','/',dirname($_SERVER['SCRIPT_NAME']));
if($INSTALL_PATH==="/"){
    $INSTALL_PATH="/";   
}else{
    $INSTALL_PATH= '/'. trim($INSTALL_PATH,'/').'/';
}
define('INSTALL_PATH',$INSTALL_PATH);//安装目录
// 定义应用目录header('Location: '.$INSTALL_PATH.'install.php');
define('APP_PATH', __DIR__ . '/LKT/');

session_start();
$_SESSION["APP_PATH"]=APP_PATH;
$_SESSION["INSTALL_PATH"]=INSTALL_PATH;
clearstatcache();
//源码包名称-----安装
$name = 'open_source_laike.zip';
//获取当前文件夹名称 并定义根目录位置

$path ='../'.basename(dirname(__FILE__)).'/';
if(!is_file('./data/install.lock')){
  if(is_file($name)){
  	if (!empty($_GET)) {
        write_log('开始安装系统 '.date("Y/m/d"));
		    $zip=new Unzip;//新建一个Zip的对象
		    $res= $zip->unzip($name,$path);
		    if($res){
          write_log('删除系统安装包 '.date("Y/m/d"));
		      @unlink($name);//删除源代码包
		      header("Content-type:text/html;charset=utf-8");
		      echo "<script type='text/javascript'>" . "location.href='install';</script>";
		      exit;
		    }else{
		      echo "<script type='text/javascript'>" . "alert('文件解压失败,请联系管理员!');</script>";
		      exit;
		    }
  	}else{
  		echo '<div class="sea">
      				<p class="title">点击进入安装</p>
              <p class="version">来客管理平台</p>
    			    <span class="wave"></span>
    			    <span class="wave"></span>
    			    <span class="wave"></span>
    			 </div>';
  	}

  }else{
      header('Location: '.$INSTALL_PATH.'install');
  }

}else{
  $updata = $_GET['updata'];
  if ($updata) {
    if(is_numeric($updata)){
        $_SESSION["lkt_web_version"]=$updata;
          echo '<div class="sea"><p class="updata">点击开始更新</p>
                <p class="version">来客管理平台v'.$updata.'</p>
                      <span class="wave"></span>
                      <span class="wave"></span>
                      <span class="wave"></span>
                   </div>';
       }else{
          require_once(APP_PATH . '/webapp/lib/version.php');
          $version = LKT_VERSION;
          $lkt_web_version = $_SESSION["lkt_web_version"];
          $updata_file = 'lkt_update_'.$lkt_web_version.'.zip';
          write_log('开始更新 原版本:'.$version.' => 新版本:'.$lkt_web_version,'updata');
          if(is_file($updata_file)){
            write_log("文件存在---解压",'updata');
            $zip=new Unzip;//新建一个Zip的对象
            $res= $zip->unzip($updata_file,$path);
            if($res){
              @unlink($updata_file);//删除源代码包
              write_log("更新成功！",'updata');
              echo "<script type='text/javascript'>" . "alert('升级成功!');location.href='LKT';</script>";
            }else{
              echo "<script type='text/javascript'>" . "alert('升级失败,请稍后再试!');location.href='LKT';</script>";
            }
          }else{
            echo "不存在 下载";
          }
       }


  }else{
    header("Location: ./LKT");
  }
}

?>

<script>
  $(".title").click( function () { 
    $(this).text('解压中,请稍后...');
    location.href='index.php?m=upzip';
  });
  $(".updata").click( function () { 
    $(this).text('更新中,请稍后...');
      location.href='index.php?updata=upzip';
  });
</script>

</body>
</html>

