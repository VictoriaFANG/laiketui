
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

<title>订单列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe627;</i> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c"> 
        <form name="form1" action="index.php" method="get">
            <input type="hidden" name="module" value="orderslist" />
            <select name="status" class="select" style="width: 80px;height: 31px;vertical-align: middle;">
                <option value="">订单状态</option>
                {$class}
            </select>

            <input type="text" name="sNo" size='8' value="{$sNo}" id="" placeholder=" 订单编号或收件人姓名/电话..." style="width:200px" class="input-text">
            <input class="btn btn-success" type="submit" value="查询">
            <input type="button" value="导出本页" class="btn btn-success"  onclick="excel('ne')">
            <input type="button" value="导出全部" class="btn btn-success" onclick="excel('all')">

        </form>
    </div>
    
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                    <th>序</th>
                    <th>订单编号</th>
                    <th>收件人</th>
                    <th>联系电话</th>
                    <th>收件人地址</th>
                    <th>订单金额</th>
                    <th>订单状态</th>
                    <th>订单类型</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$order item=item name=f1}
                <tr class="text-c">
                    <td>{$item->id}</td>
                    <td>{$item->sNo}</td>
                    <td>{$item->name}</td>
                    <td>{$item->mobile}</td>
                    <td>{$item->address}</td>
                    <td>{$item->z_price}</td> 
                    <td class="name11">{$item->status01}
                    </td>
                 
                    <td>{if $item->drawid > 0}<span >拼团订单</span>{else}<span>普通订单</span>{/if}</td>
                    
                    <td>
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=orderslist&action=Detail&id={$item->id}" title="查看订单" ><i class="Hui-iconfont">&#xe63e;</i></a>
                    </td>
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
      {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
    ]
});


</script>



{/literal}
</body>
</html>