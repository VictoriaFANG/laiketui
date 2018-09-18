<!DOCTYPE HTML>

<html>

<head>

<meta charset="utf-8">

<meta name="renderer" content="webkit|ie-comp|ie-stand">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />

<meta http-equiv="Cache-Control" content="no-siteapp" />

<LINK rel="Bookmark" href="/favicon.ico" >

<LINK rel="Shortcut Icon" href="/favicon.ico" />

<link href="style/css/H-ui.min.css" rel="stylesheet" type="text/css" />

<link href="style/css/H-ui.admin.css" rel="stylesheet" type="text/css" />

<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />

<link href="style/skin/default/skin.css" rel="stylesheet" type="text/css" id="skin" />

<link href="style/css/style.css" rel="stylesheet" type="text/css" />

<script src="style/js/message.js"></script>

<link rel="stylesheet" type="text/css" href="style/css/font-awesome.min.css">

<link rel="stylesheet" href="style/css/message.css">

<title>电商管理系统界面</title>

</head>

<body>



<header class="Hui-header cl" style="margin:0;"> <a class="Hui-logo l" title="H-ui.admin v2.3" href="index.php?module=AdminLogin"><img style="width: 100px;" src="images/admin_logo.png"> &nbsp;电商管理系统 <span style="font-size: 12px;">v{$version}</span></a> <a class="Hui-logo-m l" href="index.php?module=AdminLogin" title="H-ui.admin"></a> <span class="Hui-subtitle l"></span>



	<ul class="Hui-userbar">

		<li><a style="color: #fff;" data-href="index.php?module=orderslist" onclick="tab_titleList(this);" data-title="订单列表" href="javascript:void(0)">订单列表</a></li>

		<li><a style="color: #fff;" data-href="index.php?module=product" onclick="tab_titleList(this);" data-title="产品列表管理" href="javascript:void(0)">产品列表</a></li>

		<li><a style="color: #fff;" data-href="index.php?module=userlist" onclick="tab_titleList(this);" data-title="用户列表" href="javascript:void(0)">用户列表</a></li>

		<li style="margin-right: 6px;"><a style="color: #fff;" data-href="index.php?module=go_group&action=index" onclick="tab_titleList(this);" data-title="拼团活动" href="javascript:void(0)">拼团活动</a></li>

		<li>超级管理员</li>

		<li class="dropDown dropDown_hover"><a href="#" class="dropDown_A">{$admin_id} <i class="Hui-iconfont">&#xe6d5;</i></a>

			<ul class="dropDown-menu radius box-shadow">

				<li><a href="index.php?module=Login&action=logout">切换账户</a></li>

				<li><a href="index.php?module=Login&action=logout">退出</a></li>

			</ul>

		</li>

		<li><a href="index.php?module=Login&action=logout" title="安全退出">安全退出&nbsp;<i class="Hui-iconfont" style="font-size:15px">&#xe726;</i></a></li>

		<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>

			<ul class="dropDown-menu radius box-shadow">

				<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>

				<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>

				<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>

				<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>

				<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>

				<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>

			</ul>

		</li>

		<li><div id="message" style="color:#fff;"></div></li>

	</ul>

	<a href="javascript:;" class="Hui-nav-toggle Hui-iconfont" aria-hidden="false">&#xe667;</a> </header>



<aside class="Hui-aside">

	<input runat="server" id="divScrollValue" type="hidden" value="" />

	<div class="menu_dropdown bk_2">

		<dl id="menu-article">

			<dt><i class="Hui-iconfont">&#xe625;</i> <a _href="index.php?module=index" data-title="系统首页" href="javascript:void(0)">系统首页</a><i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>



		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe620;</i> 产品管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=product_class" data-title="产品分类管理" href="javascript:void(0)">产品分类管理</a></li>

					<li><a _href="index.php?module=brand_class" data-title="产品品牌管理" href="javascript:void(0)">产品品牌管理</a></li>

					<li><a _href="index.php?module=product" data-title="产品列表管理" href="javascript:void(0)">产品列表管理</a></li>
                    <li><a _href="index.php?module=product&action=num" data-title="库存管理" href="javascript:void(0)">库存管理</a></li>
                    <li><a _href="index.php?module=freight" data-title="运费管理" href="javascript:void(0)">运费管理</a></li>
                    <li><a _href="index.php?module=product_config" data-title="产品参数" href="javascript:void(0)">产品参数</a></li>
				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe627;</i> 订单管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=orderslist" data-title="订单列表" href="javascript:void(0)">订单列表</a></li>

					<li><a _href="index.php?module=comments" data-title="评价管理" href="javascript:void(0)">评价管理</a></li>

					<li><a _href="index.php?module=return" data-title="退货列表" href="javascript:void(0)">退货列表</a></li>

					<li><a _href="index.php?module=orderslist&action=config" data-title="订单设置" href="javascript:void(0)">订单设置</a></li>

				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe62c;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=userlist" data-title="用户列表管理" href="javascript:void(0)">用户列表管理</a></li>

				</ul>

			</dd>

		</dl>

		



		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe6c0;</i> 小程序<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					 <li><a _href="index.php?module=software&action=pageindex" data-title="软件列表" href="javascript:void(0)">小程序首页布局</a></li>
					 <li><a _href="index.php?module=software&action=jifen" data-title="小程序" href="javascript:void(0)">小程序积分设置</a></li>
					
				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe654;</i> 插件管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=plug_ins" data-title="插件列表" href="javascript:void(0)">插件列表</a></li>

					<li><a _href="index.php?module=go_group&action=index" data-title="拼团活动" href="javascript:void(0)">拼团活动</a></li>

					<li><a _href="index.php?module=draw" data-title="抽奖" href="javascript:void(0)">抽奖活动</a></li>

				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe63a;</i> 财务管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=finance" data-title="提现申请" href="javascript:void(0)">提现申请</a></li>

					<li><a _href="index.php?module=finance&action=list" data-title="提现列表" href="javascript:void(0)">提现列表</a></li>

					<li><a _href="index.php?module=finance&action=recharge" data-title="充值列表" href="javascript:void(0)">充值列表</a></li>

				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe6ca;</i> 优惠券管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=coupon" data-title="优惠券活动" href="javascript:void(0)">优惠券活动</a></li>

					<li><a _href="index.php?module=coupon&action=coupon" data-title="优惠券列表" href="javascript:void(0)">优惠券列表</a></li>

				</ul>

			</dd>

		</dl>


		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe623;</i> 签到管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=sign" data-title="签到活动" href="javascript:void(0)">签到活动</a></li>

					<li><a _href="index.php?module=sign&action=record" data-title="签到记录" href="javascript:void(0)">签到记录</a></li>
                    
                    <li><a _href="index.php?module=sign&action=setscore" data-title="积分参数设置" href="javascript:void(0)">积分参数设置</a></li>
				</ul>

			</dd>

		</dl>


		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe646;</i> 轮播图管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=banner" data-title="轮播图" href="javascript:void(0)">轮播图</a></li>

				</ul>

			</dd>

		</dl>


		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe626;</i> 文章管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=Article" data-title="文章列表" href="javascript:void(0)">文章列表</a></li>

				</ul>

			</dd>

		</dl>

		<dl id="menu-system">

			<dt><i class="Hui-iconfont">&#xe62f;</i> 公告管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

			<dd>

				<ul>

					<li><a _href="index.php?module=notice" data-title="公告管理" href="javascript:void(0)">全部公告</a></li>

					<li><a _href="index.php?module=notellsuvt" data-title="消息公告" href="javascript:void(0)">消息公告</a></li>

				</ul>

			</dd>

		</dl>

		<dl id="menu-admin">

            <dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>

            <dd>

                <ul>

                    <li><a _href="index.php?module=system" data-title="系统设置" href="javascript:void(0)">系统设置</a></li>

                    <li><a _href="index.php?module=system&action=pay" data-title="支付设置" href="javascript:void(0)">支付设置</a></li>
					<li><a _href="index.php?module=system&action=template_message" data-title="模板消息设置" href="javascript:void(0)">模板消息设置</a></li>
                    <li><a _href="index.php?module=extension" data-title="推广图设置" href="javascript:void(0)">推广图设置</a></li>

                    <li><a _href="index.php?module=bgcolor" data-title="前台背景颜色" href="javascript:void(0)">前台背景颜色</a></li>

                    <li><a _href="index.php?module=keyword" data-title="热门关键词" href="javascript:void(0)">热门关键词</a></li>

                    <li><a _href="index.php?module=member" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>

                </ul>

            </dd>

        </dl>

	</div>

</aside>

<div class="dislpayArrow"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>

<section class="Hui-article-box">

	<div id="Hui-tabNav" class="Hui-tabNav">

		<div class="Hui-tabNav-wp">

			<ul id="min_title_list" class="acrossTab cl" style="margin:0;">

				<li class="active"><span title="系统首页" data-href="index.php?module=index">系统首页</span><em></em></li>

			</ul>

		</div>

		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>

	</div>

	<div id="iframe_box" class="Hui-article">

		<div class="show_iframe">

			<div style="display:none" class="loading"></div>

			<iframe scrolling="yes" frameborder="0" src="index.php?module=index"></iframe>

		</div>

	</div>

</section>

<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 

<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script> 

<script type="text/javascript" src="style/js/H-ui.js"></script> 

<script type="text/javascript" src="style/js/H-ui.admin.js"></script> 

{literal}

<script type="text/javascript">

/*菜单导航*/

function tab_titleList(obj){

	var bStop = false,

		bStopIndex = 0,

		href = $(obj).attr('data-href'),

		title = $(obj).attr("data-title"),

		topWindow = $(window.parent.document),

		show_navLi = topWindow.find("#min_title_list li"),

		iframe_box = topWindow.find("#iframe_box");

	if(!href||href==""){

		alert("data-href不存在，v2.5版本之前用_href属性，升级后请改为data-href属性");

		return false;

	}if(!title){

		alert("v2.5版本之后使用data-title属性");

		return false;

	}

	if(title==""){

		alert("data-title属性不能为空");

		return false;

	}

	show_navLi.each(function() {

		if($(this).find('span').attr("data-href")==href){

			bStop=true;

			bStopIndex=show_navLi.index($(this));

			return false;

		}

	});

	if(!bStop){

		creatIframe(href,title);

		min_titleList();

	}

	else{

		show_navLi.removeClass("active").eq(bStopIndex).addClass("active");			

		iframe_box.find(".show_iframe").hide().eq(bStopIndex).show().find("iframe").attr("src",href);

	}	

}

$(function(){

    MessagePlugin.init({

        elem: "#message",

        msgData: [

            {text: "暂无信息", id: 1, readStatus: 1},

            // {text: "1111", id: 2, readStatus: 0},

            // {text: "message3", id: 3, readStatus: 0},

            // {text: "message4", id: 4, readStatus: 0},

            // {text: "message5", id: 5, readStatus: 0},

            // {text: "message6", id: 6, readStatus: 0}

            ],

            msgUnReadData: 0,

            noticeUnReadData: 0,

            msgClick: function(obj) {

            	alert($(obj).text());

            },

            noticeClick: function(obj) {

                alert("提醒点击事件");

            },

            allRead: function(obj) {

                alert("全部已读");

            },

            getNodeHtml: function(obj, node) {

                if (obj.readStatus == 1) {

                    node.isRead = true;

                } else {

                    node.isRead = false;

                }

                var html = "<p>"+ obj.text +"</p>";

                node.html = html;

                return node;

            }

    });

});

</script> 

{/literal}

</body>

</html>