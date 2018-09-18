
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

<title>财务管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe63a;</i> 财务管理 <span class="c-gray en">&gt;</span> 提现申请 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
	<div class="text-c">
		<form action="index.php?module=finance&action=recharge" method="get">
			<input type="hidden" name="module" value="finance" />
			<input type="hidden" name="action" value="recharge" />
	        <input type="text" class="input-text" style="width:250px" placeholder="用户id" name="user_id" value="{$user_id}">
	        <input type="submit" class="btn btn-success" value="查 询">
            <input type="button" value="导出本页" class="btn btn-success"  onclick="excel('ne')">
	        <input type="button" value="导出全部" class="btn btn-success" onclick="excel('all')">
		</form>
    </div>

    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                	<th width="40">序</th>
		            <th width="40">ID</th>
		            <th width="150">用户id</th>
		            <th width="150">用户昵称</th>
		            <th width="130">操作金额</th>
		            <th width="150">添加时间</th>
		            <th width="100">状态</th>
		        </tr>
            </thead>
            <tbody>
	            {foreach from=$list item=item name=f1}
	                <tr class="text-c">
	                    <td>{$smarty.foreach.f1.iteration}</td>
	                    <td>{$item->id}</td>
	                    <td>{$item->user_id}</td>
	                    <td>{$item->user_name}</td>
	                    <td>{$item->money}</td>
	                    <td>{$item->add_date}</td>
	                   
	                    <td>{if $item->type == 1}充值{/if}</td>
	                    
	                </tr>
	            {/foreach}
            </tbody>
        </table>
    </div>
</div>
<script type="text/javascript" src="style/js/jquery.js"></script>

<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="style/js/H-ui.js"></script> 
<script type="text/javascript" src="style/js/H-ui.admin.js"></script>

{literal}
<script type="text/javascript">
function excel(pageto) {
	var pagesize = $("[name='DataTables_Table_0_length'] option:selected").val();
	var page = $(".current").text();
	location.href=location.href+'&pageto='+pageto+'&pagesize='+pagesize+'&page='+page;
}
$('.table-sort').dataTable({
    "aaSorting": [[ 1, "desc" ]],//默认第几个排序
    "bStateSave": true,//状态保存
    "aoColumnDefs": [
      //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
      {"orderable":false,"aTargets":[0,5]}// 制定列不参与排序
    ]
});

</script>
{/literal}
</body>
</html>


