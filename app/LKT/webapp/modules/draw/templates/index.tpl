<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="style/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="style/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="style/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>抽奖活动管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 插件管理
	<span class="c-gray en">&gt;</span>
	抽奖活动
	<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container" style="margin-top: 20px;width:98%;margin-left: 20px;">
	
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="l">
		<a class="btn btn-primary radius" onclick="system_category_add('添加抽奖','index.php?module=draw&action=addsign')"><i class="Hui-iconfont">&#xe600;</i> 添加抽奖</a>

		</span>
		
		<span style="margin-left: 20px;">用户每天最多抽奖次数：</span>
		
		<input type="hidden" name="id11" value="{$id11}"/>
		<input type="number" name="parameters" value="{$parameters}"/>
	
		<input type="submit" name="Submit" value="提 交" class="btn btn-primary radius Submit">
       
	</div>

	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg table-sort">
			<thead>
				<tr class="text-c">
					<th >序号</th>
                    <th width="150">活动名称</th>
					<th>商品名称</th>
                    <th width="150">活动开始时间</th>
                    <th>活动结束时间</th>
                    <th width="180">每团所需人数</th>
                    <th>最少开团数</th>
                    <th>同一ID用户最多参与次数</th>
					<th width="120">抽奖金额</th>
					<th width="120">中奖次数</th>
					<th width="120">活动状态</th>
					<th width="180">操作</th>
				</tr>
			</thead>
			<tbody>				
				{foreach from=$list item = item name=f1}
				<tr class="text-c">
					<!-- <option value="{$item->id}">{$item->product_title}</option> -->
					<td  value="{$item->id}">{$item->id}</td>
					<td>{$item->name}</td>
                    <td value ="{$item->draw_brandid}">{$item->draw_brandname}</td>
					<td>{$item->start_time}</td>
					<td>{$item->end_time}</td>
					<td>{$item->num}</td>
					<td>{$item->collage_number}</td>
					<td>{$item->cishu}</td>
                    <td>{$item->price}</td>
					<td>{$item->spelling_number}</td>

                    <td>{$item->status}</td>
                    <td style="width: 30px;">
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=draw&action=modify&id={$item->id}" title="修改" ><i class="Hui-iconfont">&#xe6df;</i></a>
                        {if $item->tistrue=='1'}
                            <font class="ml-5" style="color:red;" title="已删除"><i class="Hui-iconfont">&#xe6e2;</i></font>
                        {else}
                            <a style="text-decoration:none" class="ml-5" href="index.php?module=draw&action=del&id={$item->id}" onclick="return confirm('确定要删除此该活动吗?')"><i class="Hui-iconfont">&#xe6e2;</i></a>
                        {/if}

                        {if $item->status1=='1'}
							<a style="text-decoration:none" class="ml-5" href="index.php?module=draw&action=operation&id={$item->id}" title="详情" ><i class="Hui-iconfont">&#xe6c6;</i></a>
						{elseif $item->status1=='2'}
							<a style="text-decoration:none" class="ml-5"onclick="return confirm('活动已结束超过24小时，不可以再抽奖')" ><i class="Hui-iconfont">&#xe6c6;</i></a>
						{elseif $item->status1=='3'}
							<a style="text-decoration:none" class="ml-5" href="index.php?module=draw&action=operation&id={$item->id}" onclick="return confirm('活动还未结束，确定抽奖吗？')" title="详情" ><i class="Hui-iconfont">&#xe6c6;</i></a>
						{elseif $item->status1=='4'}
							<a style="text-decoration:none" class="ml-5"onclick="return confirm('活动未达到开奖人数，不能开奖')" ><i class="Hui-iconfont">&#xe6c6;</i></a>
						{else}
							<a style="text-decoration:none" class="ml-5"onclick="return confirm('活动未开始')" ><i class="Hui-iconfont">&#xe6c6;</i></a>
						{/if}
                    </td>
				</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="style/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="style/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="style/lib/laypage/1.2/laypage.js"></script>
{literal}
<script type="text/javascript">

$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,4]}// 制定列不参与排序
	]
});

/*系统-栏目-添加*/
function system_category_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*系统-栏目-编辑*/
function system_category_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*系统-栏目-删除*/
function system_category_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
        // alert(id);
		$.ajax({
			type: 'POST',
			url: 'index.php?module=draw&action=del',
			dataType: 'json',
            data:{id:id},
			success: function(data){
			  if(data.status == 1){
				 layer.msg('已删除!',{icon:1,time:1000});
                 location.reload();
                }
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
}

//参数修改
$(".Submit").click(function(){
    var id11 = $('input[name=id11]').val();
    var parameters = $('input[name=parameters]').val();
   $.ajax({
      url:"index.php?module=draw&action=parameters",
      type:"post",
      data:{parameters:parameters,id11:id11},
      dataType:"json",
      success:function (data) {
        console.log(data);
        if(data == 1){
             alert('修改成功！');
           window.parent.location.reload();
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);

          }
          if(data == 2){
             alert('添加成功！');
           window.parent.location.reload();
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);

          }

      },
   });
});
</script>
{/literal}
</body>
</html>