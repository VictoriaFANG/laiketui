
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

<title>产品分类管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe616;</i> 产品管理 <span class="c-gray en">&gt;</span> 产品列表管理 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c"> 
        <form name="form1" action="index.php" method="get">
            <input type="hidden" name="module" value="product" />
            <select name="cid" class="select" style="width: 80px;height: 31px;vertical-align: middle;">
                <option value="" >全部</option>
                {$class}
            </select>
            <select name="brand_id" class="select" style="width: 80px;height: 31px;vertical-align: middle;">
                {$rew}
            </select>
            <select name="s_type" class="select" style="width: 80px;height: 31px;vertical-align: middle;">
                <option value="" >全部</option>
                <option value="1" {if $s_type == 1}selected="selected"{/if} >新品</option>
                <option value="2" {if $s_type == 2}selected="selected"{/if}>热销</option>
                <option value="3" {if $s_type == 3}selected="selected"{/if}>推荐</option>
            </select>
            <select name="status" class="select" style="width: 80px;height: 31px;vertical-align: middle;">
                <option value="" >全部</option>
                <option value="0" {if $status == 0 && $status != ''}selected="selected"{/if}>上架</option>
                <option value="1" {if $status == 1}selected="selected"{/if}>下架</option>
            </select>
            <input type="text" name="product_title" size='8' value="{$product_title}" id="" placeholder=" 产品标题" style="width:200px" class="input-text">
            <input name="" id="" class="btn btn-success" type="submit" value="查询">
        </form>
    </div>
    <div style="clear:both;margin-top: 10px;">
        <a class="btn btn-primary radius" href="index.php?module=product&action=add"><i class="Hui-iconfont">&#xe610;</i>&nbsp;发布产品</a>
        <a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>
        <a href="javascript:;" onclick="operation()" class="btn btn-warning radius"><i class="Hui-iconfont">&#xe652;</i> 批量操作</a>
        <select name="type" id="type" class="select" style="width: 80px;height: 31px;vertical-align: middle;display: none;">
            <option value="" >全部</option>
            <option value="0" >取消</option>
            <option value="1" >上架</option>
            <option value="2" >下架</option>
            <option value="3" >新品</option>
            <option value="4" >取消新品</option>
            <option value="5" >热销</option>
            <option value="6" >取消热销</option>
            <option value="7" >推荐</option>
            <option value="8" >取消推荐</option>
        </select>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                    <th width="40"><input name="" type="checkbox" value=""></th>
                    <th>产品图片</th>
                    <th>产品标题</th>
                    <th>分类名称</th>
                    <th>库存</th>
                    <th>发布时间</th>
                    <th>产品品牌</th>
                    <th>价格</th>
                    <th>发布状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$list item=item name=f1}
                <tr class="text-c">
                    <td><input name="id[]" type="checkbox" value="{$item->id}"></td>
                    <td>{if $item->img != ''}<img onclick="pimg(this)" style="width: 50px;height: 50px;" src="../LKT/images/{$item->imgurl}">{else}<span>暂无图片</span>{/if}</td>
                    <td>{$item->product_title}
                        {foreach from=$item->s_type item=item1 name=f2}
                            {if $item1 == 1}
                                <span style="font-size: 6px;border: 1px solid red;background-color: red;color:#ffffff;margin: 0px 5px;padding: 0px 3px;">新品</span>
                            {elseif $item1 == 2}
                                <span style="font-size: 6px;border: 1px solid red;background-color: red;color:#ffffff;margin: 0px 5px;padding: 0px 3px;">热销</span>
                            {elseif $item1 == 3}
                                <span style="font-size: 6px;border: 1px solid red;background-color: red;color:#ffffff;margin: 0px 5px;padding: 0px 3px;">推荐</span>
                            {/if}
                        {/foreach}
                    </td>
                    <td>{$item->pname}</td>
                    <td>{$item->num}{$item->unit}</td>
                    <td>{$item->add_date}</td>
                    <td>{if $item->brand_name != ''}{$item->brand_name}{else}无{/if}</td>
                    <td><span style="color:red;">{$item->price}</span></td>
                    <td>{if $item->status == 0}<span class="label label-success radius">上架</span>{elseif $item->status == 1}<span class="label label-danger radius">下架</span>{/if}</td>
                    <td>
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=product&action=see&id={$item->id}&product_title={$item->product_title}" title="查看"><i class="Hui-iconfont">&#xe695;</i></a>
                        {if $item->status == 0}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module=product&action=shelves&id={$item->id}" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>
                        {else}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module=product&action=shelves&id={$item->id}" title="上架"><i class="Hui-iconfont">&#xe6dc;</i></a>
                        {/if}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=product&action=modify&id={$item->id}&uploadImg={$uploadImg}" title="修改"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a style="text-decoration:none" class="ml-5" onclick="del(this,{$item->id})" onclick="return confirm('确定要删除此产品吗?')"><i class="Hui-iconfont">&#xe6e2;</i></a>
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
var Id = '';
/*删除*/
function del(obj,id){
    if(confirm('确认要删除吗？')){
        $.get("index.php?module=product&action=del",{'id':id},function(res){
            if(res.status=="1"){
                alert('删除成功');
                location.href="index.php?module=product";
            }else{
                alert('删除失败');
                location.href="index.php?module=product";
            }
        },"json");
    };
}
/*批量删除*/
function datadel(){
    var checkbox=$("input[name='id[]']:checked");//被选中的复选框对象
    var strId="";
    for(var i=0;i<checkbox.length;i++){
        strId+=checkbox.eq(i).val()+",";
    }

    if(strId==""){
        alert('未选择数据!');
        return false;
    }
    if(confirm('确认要删除吗？')){
        $.get("index.php?module=product&action=del",{'id':strId},function(res){
            if(res.status=="1"){
                alert('删除成功');
                location.href="index.php?module=product";
            }else{
                alert('删除失败');
                location.href="index.php?module=product";
            }
        },"json");
    };
}
/*批量操作*/
function operation(){
    var checkbox=$("input[name='id[]']:checked");//被选中的复选框对象
    for(var i=0;i<checkbox.length;i++){
        Id+=checkbox.eq(i).val()+",";
    }

    if(Id==""){
        alert('未选择数据!');
        return false;
    }else{
        document.getElementById("type").style.display = ''; // 显示表格
    }
}
$("#type").change(function(){
    var options=$("#type option:selected").val();
    if(confirm('确认要修改吗？')){
        $.get("index.php?module=product&action=operation",{'id':Id,'type':options},function(res){
            if(res.status=="1"){
                alert('修改成功');
                location.href="index.php?module=product";
            }else{
                alert('修改失败');
                location.href="index.php?module=product";
            }
        },"json");
        document.getElementById("type").style.display = 'none'; // 显示表格
    };
});
function admin_add(title,url,w,h){
    layer.confirm('确定要开启商品砍价功能吗？',function(index){
        layer.close(index);
        layer_show(title,url,w,h);
    });
}

function pimg(obj){
   var _this = $(obj);//将当前的pimg元素作为_this传入函数
   imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
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
$('.table-sort').dataTable({
    "aaSorting": [[ 1, "desc" ]],//默认第几个排序
    "bStateSave": true,//状态保存
    "aoColumnDefs": [
      //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
      {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
    ]
});
</script>
{/literal}
</body>
</html>