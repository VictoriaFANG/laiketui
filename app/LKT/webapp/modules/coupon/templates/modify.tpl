
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
<script type="text/javascript">
function show(obj){
    if(obj.value=='2'){ // 节日/活动
        document.getElementById('txt').style.display = ""; // 不显示
        document.getElementById('txt_1').style.display = ""; // 金额不显示
        document.getElementById('txt_2').style.display = "none"; // 减不显示
        document.getElementById('product_class_id').style.display = ""; // 优惠劵类型id
        // document.getElementById('product_id').style.display = ""; // 优惠劵指定商品id
        document.getElementById('z_money_1').style.display = ""; // 总金额显示
        document.getElementById('z_money_2').style.display = "none"; // 满金额不显示
    }else if(obj.value=='1'){ // 注册
        document.getElementById('txt').style.display = ""; // 显示
        document.getElementById('txt_1').style.display = ""; // 金额显示
        document.getElementById('txt_2').style.display = "none"; // 减不显示
        document.getElementById('product_class_id').style.display = "none"; // 优惠劵类型id
        // document.getElementById('product_id').style.display = "none"; // 优惠劵指定商品id
        document.getElementById('z_money_1').style.display = ""; // 总金额显示
        document.getElementById('z_money_2').style.display = "none"; // 满金额不显示
    }else if(obj.value=='3'){ // 满减
        document.getElementById('txt').style.display = ""; // 显示
        document.getElementById('txt_1').style.display = "none"; // 金额不显示
        document.getElementById('txt_2').style.display = ""; // 减显示
        document.getElementById('product_class_id').style.display = "none"; // 优惠劵类型id
        // document.getElementById('product_id').style.display = "none"; // 优惠劵指定商品id
        document.getElementById('z_money_1').style.display = "none"; // 总金额不显示
        document.getElementById('z_money_2').style.display = ""; // 满金额显示
    }
}
function change(){
    var product_class_id = $('select[name="product_class_id"]').children('option:selected').val();
    $.ajax({
        type: "GET",
        url: location.href+'&action=ajax&product_class_id='+product_class_id,
        data: "",
        success: function(msg){
            // alert(msg);
            console.log(msg)
            if(msg == 0){
                document.getElementById('product_id').style.display = 'none';
            }else{
                document.getElementById('product_id').style.display = '';
                $(".select2").html(msg);
            }
        }
    });
}
</script>
{/literal}
<title>修改活动</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe6ca;</i> 优惠券管理 <span class="c-gray en">&gt;</span> 活动列表 <span class="c-gray en">&gt;</span> 修改活动 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="#" onclick="location.href='index.php?module=coupon';" title="关闭" ><i class="Hui-iconfont">&#xe6a6;</i></a></nav>
<div class="pd-20">
    <form name="form1" action="index.php?module=coupon&action=modify" class="form form-horizontal" method="post" enctype="multipart/form-data" >
        <input type="hidden" name="id" value="{$id}">
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>活动名称：</label>
            <div class="formControls col-10">
                <input type="text" class="input-text" placeholder="" value="{$name}" name="name">
            </div>
        </div>
        <div class="row cl" >
            <label class="form-label col-2">软件名称：</label>
            <select name="software_id" class="select1" style="width: 80px;height: 31px;vertical-align: middle;">
                {$software}
            </select>
            该活动属于哪个软件
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>活动类型：</label>
            <div class="formControls col-10 skin-minimal">
                <div class="radio-box">
                    <input name="activity_type" type="radio" value="1" checked="checked" onClick="show(this)" {if $activity_type==1}checked="checked"{/if}/>
                    <label for="sex-1">注册</label>
                </div>
                <div class="radio-box">
                    <input name="activity_type" type="radio" value="2" onClick="show(this)" {if $activity_type==2}checked="checked"{/if}/>
                    <label for="sex-2">节日/活动</label>
                </div>
                <div class="radio-box">
                    <input name="activity_type" type="radio" value="3" onClick="show(this)" {if $activity_type==3}checked="checked"{/if}/>
                    <label for="sex-3">满减</label>
                </div>
            </div>
            <div class="col-4"> </div>
        </div>

        <div class="row cl" style="display:{if $activity_type != 2}none{/if};" id="product_class_id" onchange="change()">
            <label class="form-label col-2">活动指定商品类型：</label>
            <select name="product_class_id" class="select1" style="width: 80px;height: 31px;vertical-align: middle;">
                {$list}
            </select>
            全部代表通用
        </div>
        <div class="row cl" style="display:{if $activity_type != 2}none{/if};" id="product_id">
            <label class="form-label col-2">活动指定商品：</label>
            <select name="product_id" class="select2" style="width: 80px;height: 31px;vertical-align: middle;">
                {$list1}
            </select>
            全部代表该分类下面商品通用
        </div>
        
        <div class="row cl" id="txt" style="display:{if $activity_type == 2}none{/if};">
            <label class="form-label col-2" id="txt_1" style="display:{if $activity_type != 1}none{/if};">金额：</label>
            <label class="form-label col-2" id="txt_2" style="display:{if $activity_type != 3}none{/if};">减：</label>
            <div class="formControls col-2">
                <input type="text" class="input-text" placeholder="" id="" value="{$money}" name="money">
            </div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2" id="z_money_1" style="display:{if $activity_type == 3}none{/if};">总金额：</label>
            <label class="form-label col-2" id="z_money_2" style="display:{if $activity_type != 3}none{/if};">金额满：</label>
            <div class="formControls col-2">
                <input type="text" class="input-text" placeholder="" id="" value="{$z_money}" name="z_money">
            </div>
        </div>
        
        <div class="row cl" style="display:{if $activity_type != 3}none{/if};">
            <label class="form-label col-2" >数量：</label>
            <div class="formControls col-2">
                <input type="text" class="input-text" placeholder="" value="{$num}" name="num">
            </div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2">活动时间：</label>
            <div class="formControls col-10">
                <input name="start_time" value="{$start_time}" size="8" readonly class="scinput_s" style="width: 200px;height:26px;font-size: 14px;vertical-align: middle;" />
                <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.start_time);" />
                -
                <input name="end_time" value="{$end_time}" size="8" readonly  class="scinput_s" style="width: 200px;height:26px;font-size: 14px;vertical-align: middle;"/>
                <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.end_time);" />
            </div>
        </div>
        
        <div class="row cl">
            <label class="form-label col-2">活动介绍：</label>
            <div class="formControls col-10"> 
                <script id="editor" type="text/plain" style="width:100%;height:400px;" name="content">{$content}</script> 
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
<script type="text/javascript" src="style/lib/ueditor/1.4.3/ueditor.config.js"></script> 
<script type="text/javascript" src="style/lib/ueditor/1.4.3/ueditor.all.min.js"> </script> 
<script type="text/javascript" src="style/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script> 
<script type="text/javascript" src="style/js/H-ui.js"></script> 
<script type="text/javascript" src="style/js/H-ui.admin.js"></script> 
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
});
</script>
<script type="text/javascript">
$(function(){
    $('.skin-minimal input').iCheck({
        checkboxClass: 'icheckbox-blue',
        radioClass: 'iradio-blue',
        increaseArea: '20%'
    });
    
    $list = $("#fileList"),
    $btn = $("#btn-star"), // 开始上传的id名称
    state = "pending",
    uploader;

    var uploader = WebUploader.create({
        auto: true,
        swf: 'style/lib/webuploader/0.1.5/Uploader.swf',
    
        // 文件接收服务端。
        server: 'http://lib.h-ui.net/webuploader/0.1.5/server/fileupload.php',
    
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#filePicker',
    
        // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
        resize: false,
        // 只允许选择图片文件。
        accept: {
            title: 'Images',
            extensions: 'gif,jpg,jpeg,bmp,png',
            mimeTypes: 'image/*'
        }
    });
    uploader.on( 'fileQueued', function( file ) {
        var $li = $(
            '<div id="' + file.id + '" class="item">' +
                '<div class="pic-box"><img></div>'+
                '<div class="info">' + file.name + '</div>' +
                '<p class="state">等待上传...</p>'+
            '</div>'
        ),
        $img = $li.find('img');
        $list.append( $li );
    
        // 创建缩略图
        // 如果为非图片文件，可以不用调用此方法。
        // thumbnailWidth x thumbnailHeight 为 100 x 100
        uploader.makeThumb( file, function( error, src ) {
            if ( error ) {
                $img.replaceWith('<span>不能预览</span>');
                return;
            }
    
            $img.attr( 'src', src );
        }, thumbnailWidth, thumbnailHeight );
    });
    // 文件上传过程中创建进度条实时显示。
    uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
            $percent = $li.find('.progress-box .sr-only');
    
        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<div class="progress-box"><span class="progress-bar radius"><span class="sr-only" style="width:0%"></span></span></div>').appendTo( $li ).find('.sr-only');
        }
        $li.find(".state").text("上传中");
        $percent.css( 'width', percentage * 100 + '%' );
    });
    
    // 文件上传成功，给item添加成功class, 用样式标记上传成功。
    uploader.on( 'uploadSuccess', function( file ) {
        $( '#'+file.id ).addClass('upload-state-success').find(".state").text("已上传");
    });
    
    // 文件上传失败，显示上传出错。
    uploader.on( 'uploadError', function( file ) {
        $( '#'+file.id ).addClass('upload-state-error').find(".state").text("上传出错");
    });
    
    // 完成上传完了，成功或者失败，先删除进度条。
    uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress-box').fadeOut();
    });
    uploader.on('all', function (type) {
        if (type === 'startUpload') {
            state = 'uploading';
        } else if (type === 'stopUpload') {
            state = 'paused';
        } else if (type === 'uploadFinished') {
            state = 'done';
        }

        if (state === 'uploading') {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
    });

    $btn.on('click', function () {
        if (state === 'uploading') {
            uploader.stop();
        } else {
            uploader.upload();
        }
    });

    
    
    var ue = UE.getEditor('editor');
    
});

function mobanxuanze(){
    
}
</script>
{/literal}
</body>
</html>