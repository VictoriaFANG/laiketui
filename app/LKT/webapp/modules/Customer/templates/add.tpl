
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
{literal}
<style type="text/css">
.input-text, .scinput_s{
    width: 300px;
}
.wrap {
    width:60px;
    height:30px;
    background-color:#ccc;
    border-radius:16px;
    position:relative;
    transition:0.3s
}
.circle {
    width:29px;
    height:29px;
    background-color:#fff;
    border-radius:50%;
    position:absolute;
    left:0px;
    transition:0.3s;
    box-shadow:0px 1px 5px rgba(0,0,0,.5);
}
.circle:hover {
    transform:scale(1.2);
    box-shadow:0px 1px 8px rgba(0,0,0,.5);
}
</style>
{/literal}
<title>添加活动</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe687;</i> 客户管理 <span class="c-gray en">&gt;</span> 客户添加 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="index.php?module=Customer&action=add" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <form name="form1" action="index.php?module=Customer&action=add" class="form form-horizontal" method="post" enctype="multipart/form-data" >
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>客户名称：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" value="" placeholder="" id="" name="name">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>公司名称：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" value="" placeholder="" id="" name="company">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>客户编号：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" value="" placeholder="" id="" name="user_num">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>手机号：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" value="" placeholder="" id="" name="phone">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>版本：</label>
            <div class="formControls col-10">
               <select name="product_type" class="select input-text">
                    <!-- <option value='1'>开源版</option> -->
                    <option value='2'>运营版</option>
                    <option value='3'>商业版</option>
               </select>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>价格：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" name="price">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>邮箱：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" value="" placeholder="" id="" name="email">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-2">到期时间：</label>
            <div class="formControls col-10">
                <input name="endtime" size="8" readonly  class="scinput_s" style="height:26px;font-size: 14px;vertical-align: middle;"/>
                <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.endtime);" />
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">是否启用：</label>
            <input type="hidden" value="0" name="status" class="status">
            <div class="formControls col-10">
                <div class="wrap">
                    <div class="circle"></div>
                </div>
            </div>
        </div>
        <div class="row cl">
            <div class="col-10 col-offset-2">
                <button class="btn btn-primary radius" type="submit" name="Submit"><i class="Hui-iconfont">&#xe632;</i> 提 交</button>
                <button class="btn btn-secondary radius" type="reset" name="reset"><i class="Hui-iconfont">&#xe632;</i> 重 写</button>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript" src="modpub/js/check.js" > </script>
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type='text/javascript' src='modpub/js/calendar.js'> </script>
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="style/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="style/lib/Validform/5.3.2/Validform.min.js"></script> 
<script type="text/javascript" src="style/lib/webuploader/0.1.5/webuploader.min.js"></script> 

{literal}
<script>
$(function() {

    $('.circle').click(function() {

        var left = $(this).css('left');
        var status = $(".status");
        left = parseInt(left);
        if (left == 0) {
            $(this).css('left', '30px'),
            $(this).css('background-color', '#fff'),
            $('.wrap').css('background-color', '#5eb95e');
            status.val(0);
        } else {
            $(this).css('left', '0px'),
            $(this).css('background-color', '#fff'),
            $('.wrap').css('background-color', '#ccc');
            status.val(1);
        }

    })
    $('.circle').css('left', '30px'),
    $('.circle').css('background-color', '#fff'),
    $('.wrap').css('background-color', '#5eb95e');

})
</script>
{/literal}
</body>
</html>