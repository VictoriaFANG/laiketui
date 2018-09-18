<?php







class step2Action extends Action



{







    public function execute ()

    {

    }







    public function getDefaultView ()



    {



        $type = $this->getContext()->getStorage()->read('error');



    	if(!empty($type)){ 



			     header("Content-type: text/html;charset=utf-8");



					echo"<script language='javascript'>" .



						"alert('环境检测没有通过，请调整环境后重试！');" .



						"location.href='index.php?action=step1';</script>";



					return ;



			}







		    $num = 3;



        $url = $this->curPageURL();



        $request = $this->getContext()->getRequest();



		$request->setAttribute('url', isset($url) ? $url : '');



        $this->getContext()->getStorage()->write('step',$num);



        return View::INPUT;



    }







    public function getRequestMethods ()



    {

        return Request::NONE;



    }







    function curPageURL() 



    {



      $pageURL = 'http';



      $url = '';



      if ($_SERVER["REQUEST_SCHEME"] == "https") 



      {



        $pageURL .= "s";



       }else{

          //  header("Content-type: text/html;charset=utf-8");

          //  echo"<script language='javascript'>alert('域名必须是https安全协议的域名,请更换安装环境,请调整环境后重试！');location.href='index.php?action=step1';</script>";

          // return ;

      }



      $pageURL .= "://";



      if ($_SERVER["SERVER_PORT"] != "80") 



      {



        $pageURL .= $_SERVER["SERVER_NAME"];



      } 



      else



      {



        $pageURL .= $_SERVER["SERVER_NAME"] . $url;



      }



      return $pageURL;



    }







}







?>