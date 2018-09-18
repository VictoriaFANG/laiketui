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
{literal}
  <style type="text/css">
     .status{
     	margin-left:25px;
     	text-align: center;     	
     }
     .isclick{
     	width:55px;
     	height:30px;
     	border-radius: 8px;
     	background: #3399ff;
     	display: flex;
     	flex-direction: row;
     	align-items: center;
     	justify-content: center;
     }
     .isclick a{
        color: #ffffff;
     }
  </style>
{/literal}
<title>拼团活动管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 插件管理
	<span class="c-gray en">&gt;</span>
	拼团活动
	<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container" style="margin-top: 20px;width:98%;margin-left: 20px;">
	
	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="l">
		<a class="btn btn-primary radius" onclick="system_category_add('添加拼团','index.php?module=go_group&action=addgroup',900,600)"><i class="Hui-iconfont">&#xe600;</i> 添加拼团</a>
		</span>
	</div>
	<div style="margin-top:20px;display: flex;flex-direction: row;">
		<div class="status isclick"><a onclick="statusclick(0)" style="text-decoration:none;">全部</a></div>
		<div class="status"><a onclick="statusclick(1)" style="text-decoration:none;">未开始</a></div>
		<div class="status"><a onclick="statusclick(2)" style="text-decoration:none;">进行中</a></div>
		<div class="status"><a onclick="statusclick(3)" style="text-decoration:none;">已结束</a></div>
	</div>
	<input type="hidden" id="is_have_show" value="{$is_show}" />
	<div class="mt-20">
		<table class="table table-border table-bordered table-hover table-bg table-sort">
			<thead>
				<tr class="text-c">
                    <th width="120">项目名称</th>
                    <th width="80">拼团号</th>
					<th width="80">拼团人数</th>
                    <th width="150">拼团时限</th>
                    <th width="180">活动时间</th>
                    <th>用户限参团数</th>
                    <th>用户限购件数</th>
					<th width="180">活动状态</th>
					<th width="120">操作</th>
				</tr>
			</thead>
			<tbody>
               {foreach from=$list item=item}
				<tr class="text-c">
                    <td>{$item->groupname}</td>
                    <td>{$item->status}</td>
					<td>{$item->man_num}</td>
					<td>{$item->time_over}</td>
					<td>{$item->time}</td>
					<td>{$item->groupnum}</td>
                    <td>{$item->productnum}</td>
                    
					<td style="width:200px;text-align: left;">
						{if $item->code==1}
						<span style="color:#4169E1;margin-right: 58px;">未到活动时间</span>
						{elseif $item->code==2}
						  {if $item->is_show==1}
						  <span style="color:green;">正在执行...<a title="结束" href="javascript:;" onclick="system_category_del(this,{$item->status},3)" class="ml-5" style="margin-left: 20px;color:red;">结束执行</a>
						  </span>
						  {else}
						  <span style="color:orange;">在活动时间内<a title="执行" href="javascript:;" onclick="system_category_del(this,{$item->status},2)" class="ml-5" style="margin-left: 20px;color:blue;margin-right: 10px;">执行</a>
						  </span>
						  {/if}
						{else}
						  {if $item->is_show==1}
						  <span style="color:green;">正在执行...<a title="结束" href="javascript:;" onclick="system_category_del(this,{$item->status},3)" class="ml-5" style="margin-left: 20px;color:red;">结束执行</a>
						  </span>
						  {else}
						  <span style="color:red;margin-right: 58px;">此活动已过期</span>
						  {/if}
						  {/if}
						  <a title="删除" href="javascript:;" onclick="system_category_del(this,{$item->status},1)" class="ml-5" style="margin-left: 20px;color:blue;">删除</a>
					</td>
					
					<td class="f-14"><a title="编辑活动" href="javascript:;" onclick="system_category_edit('编辑活动','index.php?module=go_group&action=modify&set=msg&id={$item->status}',{$item->status},900,600)" style="text-decoration:none;">编辑活动</a><br>
						<a title="编辑活动商品" href="javascript:;" onclick="system_category_edit('编辑活动商品','index.php?module=go_group&action=grouppro&id={$item->status}',{$item->status},1000,600)" style="text-decoration:none;">编辑活动商品</a>
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

  function statusclick(d){
  	$('.status').each(function(i){
      if(d == i){
  		 $(this).addClass('isclick');
  	  }else{
  	  	 $(this).removeClass('isclick');
  	  }
  	})
      
  }

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
function system_category_del(obj,id,control){
	if(control == 1){
	  layer.confirm('确认要删除吗？',function(index){
        //alert(id);
		$.ajax({
			type: 'POST',
			url: 'index.php?module=go_group&action=index&use=1',
			dataType: 'json',
            data:{id:id},
			success: function(data){
			  if(data.status == 1){
				 layer.msg('已删除!',{icon:1,time:800});
                 location.reload();
                }
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
  }else if(control == 2){
  	if(parseInt($('#is_have_show').val()) > 0){
  		layer.msg('已有活动正在执行，如必须要执行此活动，请先结束正在执行的活动 !');
  	}else{
  	 layer.confirm('确认要执行吗？',function(index){
        
		$.ajax({
			type: 'POST',
			url: 'index.php?module=go_group&action=index&use=2',
			dataType: 'json',
            data:{id:id},
			success: function(data){
			  if(data.status == 1){
				 layer.msg('已执行!',{icon:1,time:800});
                 location.reload();
                }
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	  });
  	}
  }else if(control == 3){
	  layer.confirm('确认要结束吗？(请谨慎操作 !)',function(index){
        //alert(id);
		$.ajax({
			type: 'POST',
			url: 'index.php?module=go_group&action=index&use=3',
			dataType: 'json',
            data:{id:id},
			success: function(data){
			  if(data.status == 1){
				 layer.msg('已结束!',{icon:1,time:800});
                 location.reload();
                }
			},
			error:function(data) {
				console.log(data.msg);
			},
		});
	});
  }
}
</script>
{/literal}
</body>
</html>