
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link href="style/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="style/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="style/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
<link href="style/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

<title>关注设置积分</title>
</head>
<body>
<nav class="breadcrumb" style="margin-top: 0px;"><i class="Hui-iconfont">&#xe654;</i> 小程序 <span class="c-gray en">&gt;</span> 首次关注设置积分 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:0px" href="#" onclick="location.href='index.php?module=software';" title="关闭" ><i class="Hui-iconfont">&#xe6a6;</i></a></nav>
<div class="pd-20">
    <form name="form1" action="index.php?module=software&action=jifen" class="form form-horizontal" method="post" enctype="multipart/form-data" >
        <div class="row cl">
            <label class="form-label col-4">首次注册，设置积分值：</label>
            <div class="formControls col-4 " style="width: 80px;">
                <input type="number" class="input-text" value="{$r[0]->jifennum}" placeholder="" id="" name="jifennum">
            </div>
        </div>
        <div class="row cl" style="display: none">
            <label class="form-label col-4">是否开启积分转让：</label>
            <div class="formControls col-4 " style="width: 400px;">
            <input type="radio" name="switch" value="0" {if $r[0]->switch ==0} checked="checked"{/if}>关闭 &nbsp;&nbsp; 
            <input type="radio" name="switch" value="1" {if $r[0]->switch ==1} checked="checked"{/if}>开启 &nbsp;&nbsp; 
            </div>
        </div>
        <div class="row cl">
          <div class="col-4 " style="text-align: right;">

            <button class="btn btn-primary radius " style=" margin-right: 10px;" type="submit" name="Submit"><i class="Hui-iconfont">&#xe632;</i> 提 交</button>

            <button class="btn btn-secondary radius" style="margin-right: -50px;"  type="reset" name="reset"><i class="Hui-iconfont">&#xe632;</i> 重 写</button>

          </div>

        </div>

    </form>
</div>

<script type="text/javascript" src="modpub/js/check.js" > </script>
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 
<!-- 新增编辑器引入文件 -->
<link rel="stylesheet" href="style/kindeditor/themes/default/default.css" />
<script src="style/kindeditor/kindeditor-min.js"></script>
<script src="style/kindeditor/lang/zh_CN.js"></script>
{literal}

{/literal}
</body>
</html>