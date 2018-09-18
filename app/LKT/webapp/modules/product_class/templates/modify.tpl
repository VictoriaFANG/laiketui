
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
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />

<script language="javascript"  src="modpub/js/check.js"> </script>
<script type="text/javascript" src="style/js/jquery.js"></script>
{literal}
<script type="text/javascript">
function check(f){
    if(Trim(f.pname.value)==""){
        alert("分类名称不能为空！");
        f.pname.value = '';
        return false;
    }
    if(Trim(f.sort.value)==""){
        alert("分类排序号不能为空！");
        f.sort.value = '';
        return false;
    }
    f.sort.value = Trim(f.sort.value);
    if(!/^(([1-9][0-9]*)|0)(\.[0-9]{1,2})?$/.test(f.sort.value)){
        alert("排序号必须为数字，且格式为 ####.## ！");
        f.sort.value = '';
        return false;
    }
    return true;
}

$(function(){  
        $(".pimg").click(function(){  
            var _this = $(this);//将当前的pimg元素作为_this传入函数  
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
        });  
    });
function imgShow(outerdiv, innerdiv, bigimg, _this){  
    var src = _this.attr("src");//获取当前点击的pimg元素中的src属性  
    $(bigimg).attr("src", src);//设置#bigimg元素的src属性  
        /*获取当前点击图片的真实大小，并显示弹出层及大图*/  
    $("<img/>").attr("src", src).load(function(){  
        var windowW = $(window).width();//获取当前窗口宽度  
        var windowH = $(window).height();//获取当前窗口高度  
        var realWidth = this.width;//获取图片真实宽度  
        var realHeight = this.height;//获取图片真实高度  
        var imgWidth, imgHeight;  
        var scale = 0.8;//缩放尺寸，当图片真实宽度和高度大于窗口宽度和高度时进行缩放        
        if(realHeight>windowH*scale) {//判断图片高度  
            imgHeight = windowH*scale;//如大于窗口高度，图片高度进行缩放  
            imgWidth = imgHeight/realHeight*realWidth;//等比例缩放宽度  
            if(imgWidth>windowW*scale) {//如宽度扔大于窗口宽度  
                imgWidth = windowW*scale;//再对宽度进行缩放  
            }  
        } else if(realWidth>windowW*scale) {//如图片高度合适，判断图片宽度  
            imgWidth = windowW*scale;//如大于窗口宽度，图片宽度进行缩放  
                        imgHeight = imgWidth/realWidth*realHeight;//等比例缩放高度  
        } else {//如果图片真实高度和宽度都符合要求，高宽不变  
            imgWidth = realWidth;  
            imgHeight = realHeight;  
        }  
                $(bigimg).css("width",imgWidth);//以最终的宽度对图片缩放  
          
        var w = (windowW-imgWidth)/2;//计算图片与窗口左边距  
        var h = (windowH-imgHeight)/2;//计算图片与窗口上边距  
        $(innerdiv).css({"top":h, "left":w});//设置#innerdiv的top和left属性  
        $(outerdiv).fadeIn("fast");//淡入显示#outerdiv及.pimg  
    });  
      
    $(outerdiv).click(function(){//再次点击淡出消失弹出层  
        $(this).fadeOut("fast");  
    });  
}
</script>
{/literal}
<title> </title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe616;</i> 产品管理 <span class="c-gray en">&gt;</span> 产品分类管理 <span class="c-gray en">&gt;</span> 修改产品分类 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="#" onclick="location.href='index.php?module=product_class';" title="关闭" ><i class="Hui-iconfont">&#xe6a6;</i></a></nav>
<div class="pd-20">
    <form name="form1" action="index.php?module=product_class&action=modify" class="form form-horizontal" method="post" enctype="multipart/form-data" >
        <input type="hidden" name="cid" value="{$cid_r}" />
        <input type="hidden" name="uploadImg" value="{$uploadImg}" />
        <div class="row cl">
            <label class="form-label col-4"><span class="c-red"></span>分类名称：</label>
            <div class="formControls col-4">
                <input type="text" class="input-text" name="pname" value="{$pname}" datatype="*6-18" style="width: 260px;">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <label class="form-label col-4"><span class="c-red"></span>产品类别：</label>
            <div class="formControls col-2"> <span class="select-box">
                <select name="product_class" class="select">
                    <option  value="0">顶级分类</option>
                    {$ctype}
                </select>
                </span> 
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-4"><span class="c-red">*</span>图片：</label>
            <div class="formControls col-xs-8 col-sm-6"> 
                {if $img != ''}
                    <img id="thumb_url" src='{$uploadImg}{$img}' style="height:100px;width:150">
                {else}
                    <img id="thumb_url" src='{$uploadImg}nopic.jpg' style="height:100px;width:150">
                {/if}
                <input type="hidden"  id="picurl" name="image" datatype="*" nullmsg="请选择图片"/> 
                <input type="hidden" name="oldpic" value="{$img}" >
                <button class="btn btn-success" id="image"  type="button" >选择图片</button>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-4"><span class="c-red"></span>分类展示图片：</label>
            <div class="formControls col-xs-8 col-sm-6"> 
                <img id="thumb_urlbg" src="{$uploadImg}{if $bg != ''}{$bg}{else}nopic.jpg{/if}" style="height:100px;width:150">
                <input type="hidden"  id="picurlbg" name="bg" datatype="*" nullmsg="请选择图片"/> 
                <input type="hidden" name="oldpicbg" value="{$bg}" >
                <button class="btn btn-success" id="bg"  type="button" >选择图片</button>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl">
            <label class="form-label col-4"><span class="c-red"></span>排序号：</label>
            <div class="formControls col-4">
                <input type="text" class="input-text" name="sort" value="{$sort}" datatype="*6-18" style="width: 260px;">
            </div>
            <div class="col-4"> </div>
        </div>
        <div class="row cl">
            <div class="col-8 col-offset-4">
                <input type="submit" name="Submit" value="提 交" class="btn btn-primary radius">
                <input type="reset" name="reset" value="重 写"  class="btn btn-primary radius">
            </div>
        </div>
    </form>
</div>

<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:999;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:absolute;"><img id="bigimg" src="" /></div></div>

<!-- 新增编辑器引入文件 -->
<link rel="stylesheet" href="style/kindeditor/themes/default/default.css" />
<script src="style/kindeditor/kindeditor-min.js"></script>
<script src="style/kindeditor/lang/zh_CN.js"></script>
{literal}
<script>
KindEditor.ready(function(K) {
  var editor = K.editor({
      allowFileManager : true,       
      uploadJson : "index.php?module=system&action=uploadImg", //上传功能
      fileManagerJson : 'kindeditor/php/file_manager_json.php', //网络空间
    });
  //上传背景图片
  K('#image').click(function() {
    editor.loadPlugin('image', function() {
      editor.plugin.imageDialog({
        //showRemote : false, //网络图片不开启
        //showLocal : false, //不开启本地图片上传
        imageUrl : K('#picurl').val(),
          clickFn : function(url, title, width, height, border, align) {
          K('#picurl').val(url);
          $('#thumb_url').attr("src",url);
          editor.hideDialog();
        }
      });
    });
  });

  K('#bg').click(function() {
    editor.loadPlugin('image', function() {
      editor.plugin.imageDialog({
        //showRemote : false, //网络图片不开启
        //showLocal : false, //不开启本地图片上传
        imageUrl : K('#picurlbg').val(),
          clickFn : function(url, title, width, height, border, align) {
          K('#picurlbg').val(url);
          $('#thumb_urlbg').attr("src",url);
          editor.hideDialog();
        }
      });
    });
  });

});
</script>
{/literal}
</body>
</html>