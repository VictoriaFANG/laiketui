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

<title>活动列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe6ca;</i> 优惠券管理 <span class="c-gray en">&gt;</span> 活动列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c"> 
        <form name="form1" action="index.php" method="get">
            <input type="hidden" name="module" value="coupon" />
            <select name="software_id" class="select" style="width: 110px;height: 31px;vertical-align: middle; margin-right: 10px;">
                {$software}
            </select>
            <select name="activity_type" class="select" style="width: 110px;height: 31px;vertical-align: middle;">
                <option value="0">全部(类型)</option>
                <option value="1">注册</option>
                <option value="2">节日/活动</option>
                <option value="3">满减</option>
            </select>
            <input type="text" name="name" size='8' value="{$name}" id="" placeholder="活动名称" style="width:200px" class="input-text">
            <input name="" id="" class="btn btn-success" type="submit" value="查询">
        </form>
    </div>
    <div style="clear:both;">
        <a class="btn btn-primary radius" href="index.php?module=coupon&action=add"><i class="Hui-iconfont">&#xe610;</i>&nbsp;发布活动</a>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                    <th>序</th>
                    <th>活动名称</th>
                    <th>活动类型名称</th>
                    <th>软件名</th>
                    <th>开始时间</th>
                    <th>结束时间</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$list item=item name=f1}
                <tr class="text-c">
                    <td>{$smarty.foreach.f1.iteration}</td>
                    <td>{$item->name}</td>
                    <td>{$item->activity_type}</td>
                    <td>{$item->software_name}</td>
                    <td>{$item->start_time}</td>
                    <td>{$item->end_time}</td>
                    <td>{if $item->status == 0}
                    <span style="color: #fff;background: #EE2C2C;width:20px;border-radius: 10px;padding: 0 10px;">未启用</span>
                    {elseif $item->status == 1}
                    <span style="color: #fff;width:20px;background:#3CB371;border-radius: 10px;padding: 0 10px;">已启用</span>
                    {elseif $item->status == 2}
                    <span style="color: #fff;width:20px;background:#EE9A00;border-radius: 10px;padding: 0 10px;">已禁用</span>
                    {else}
                    <span style="color: #fff;width:20px;background:#00B2EE;border-radius: 10px;padding: 0 10px;">已结束</span>
                    {/if}</td>
                    <td>
                        {if $item->status == 2}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=coupon&action=whether&id={$item->id}" title="启用" onclick="return confirm('确定要启用该活动?')"><i class="Hui-iconfont">&#xe676;</i></a>
                        {elseif $item->status ==1}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=coupon&action=whether&id={$item->id}" title="禁用" onclick="return confirm('确定要禁用该活动?')"><i class="Hui-iconfont">&#xe706;</i></a>
                        {/if}
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=coupon&action=modify&id={$item->id}" title="修改"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=coupon&action=del&id={$item->id}" onclick="return confirm('确定要删除此活动吗?')"><i class="Hui-iconfont">&#xe6e2;</i></a>
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