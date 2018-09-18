
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
<link href="style/css/style.css" rel="stylesheet" type="text/css" />
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />

<title>插件管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe654;</i> 插件管理 <span class="c-gray en">&gt;</span> 插件列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div style="clear:both;">
        <input type="button" class="btn btn-primary radius" value="添加插件" onclick="location.href='index.php?module=plug_ins&action=add';" />
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                    <th>序</th>
                    <th>图片</th>
                    <th>插件名称</th>
                    <th>类型</th>
                    <th>软件名</th>
                    <th>发布时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$list item=item name=f1}
                <tr class="text-c">
                    <td>{$smarty.foreach.f1.iteration}</td>
                    {if $item->image == ''}
                    <td><image class='pimg' src="{$uploadImg}nopic.jpg" style="width: 48px;height:48px;"/></td>
                    {else}
                    <td><image class='pimg' src="{$uploadImg}{$item->image}" style="width: 48px;height:48px;"/></td>
                    {/if}
                    <td>{$item->name}</td>
                    <td>{if $item->type == 0}<span>小程序</span>{else}<span>app</span>{/if}</td>
                    <td>{$item->software_name}</td>
                    <td>{$item->add_time}</td>
                    <td>{if $item->status == 0}<span style="color: #fff;background: #EE2C2C;width:20px;border-radius: 10px;padding: 0 10px;">未启用</span>{elseif $item->status == 1}<span style="color: #fff;width:20px;background:#3CB371;border-radius: 10px;padding: 0 10px;">已启用</span>{/if}</td>
                    <td>
                        {if $item->status == 0}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=plug_ins&action=whether&id={$item->id}" title="启用" onclick="return confirm('确定要启用该插件?')"><i class="Hui-iconfont">&#xe676;</i></a>
                        {elseif $item->status ==1}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=plug_ins&action=whether&id={$item->id}" title="禁用" onclick="return confirm('确定要禁用该插件?')"><i class="Hui-iconfont">&#xe706;</i></a>
                        {/if}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=plug_ins&action=modify&id={$item->id}&uploadImg={$uploadImg}&http={$item->http}" title="修改" ><i class="Hui-iconfont">&#xe6df;</i></a>
                        {if $item->http != ''}
                            {if $item->http == 'go_group'}
                            <a style="text-decoration:none" class="ml-5" onclick="system_category_add('拼团参数','index.php?module={$item->http}&action=config',400,300)" title="参数" ><i class="Hui-iconfont">&#xe6c6;</i></a>
                            {elseif $item->http == 'draw'}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module={$item->http}" title="参数" ><i class="Hui-iconfont">&#xe6c6;</i></a>
                            {elseif $item->http == 'red_packet'}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module=plug_ins&action=red_packet_modify" title="参数" ><i class="Hui-iconfont">&#xe6c6;</i></a>
                            {else}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module={$item->http}&action=config&id={$item->id}&software_id={$item->software_id}" title="参数" ><i class="Hui-iconfont">&#xe6c6;</i></a>
                            {/if}
                        {/if}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=plug_ins&action=del&id={$item->id}&uploadImg={$uploadImg}" onclick="return confirm('确定要删除此插件吗?')"><i class="Hui-iconfont">&#xe6e2;</i></a>
                    </td>
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
</div>
<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:absolute;"><img id="bigimg" src="" /></div></div> 
<script type="text/javascript" src="style/js/jquery.js"></script>

<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="style/js/H-ui.js"></script> 
<script type="text/javascript" src="style/js/H-ui.admin.js"></script>

{literal}
<script type="text/javascript">
$('.table-sort').dataTable({
    "aaSorting": [[ 1, "desc" ]],//默认第几个排序
    "bStateSave": true,//状态保存
    "aoColumnDefs": [
      //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
      {"orderable":false,"aTargets":[0,5]}// 制定列不参与排序
    ]
});
$(function(){  
        $(".pimg").click(function(){  
            var _this = $(this);//将当前的pimg元素作为_this传入函数  
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
        });  
    });
/*系统-栏目-添加*/
function system_category_add(title,url,w,h){
  layer_show(title,url,w,h);
}

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
</body>
</html>