<?php
/**
* 	配置账号信息
*/

class WxPayConf_pub
{
	//=======【基本信息设置】=====================================
	//微信公众号身份的唯一标识。审核通过后，在微信发送的邮件中查看
	const APPID = 'wx9d12fe23eb053c4f';
	//受理商ID，身份标识
	// const MCHID = '1402538702';
	const MCHID = '1499256602';
	//商户支付密钥Key。审核通过后，在微信发送的邮件中查看
	// const KEY = 'leporxiao123456789987654321tksj8';
	const KEY = 'vfhdsj45hrthrt45j6t4y8h1t5r4re8t';
	//JSAPI接口中获取openid，审核后在公众平台开启开发模式后可查看
	const APPSECRET = '7cb880066082aceba888ee6027b9617f';
	
	//=======【JSAPI路径设置】===================================
	//获取access_token过程中的跳转uri，通过跳转将code传入jsapi支付页面
	const JS_API_CALL_URL = 'http://www.taokeshijia.com/wechat/js_api_call.php';
	
	//=======【证书路径设置】=====================================
	//证书路径,注意应该填写绝对路径
	// const SSLCERT_PATH = '/wechat/webapp/lib/WxPayPubHelper/cacert/apiclient_cert.pem';
	// const SSLKEY_PATH = '/wechat/webapp/lib/WxPayPubHelper/cacert/apiclient_key.pem';
	const SSLCERT_PATH = '/wechat/webapp/lib/cert/apiclient_cert.pem';
	const SSLKEY_PATH = '/wechat/webapp/lib/cert/apiclient_key.pem';
	
	//=======【异步通知url设置】===================================
	//异步通知url，商户根据实际开发过程设定
	const NOTIFY_URL = 'http://www.taokeshijia.com/wechat/notify_url.php';

	//=======【curl超时设置】===================================
	//本例程通过curl使用HTTP POST方法，此处可修改其超时时间，默认为30秒
	const CURL_TIMEOUT = 30;
}
	
?>