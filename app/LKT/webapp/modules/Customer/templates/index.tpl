

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



<title>客户列表</title>

</head>

<body>

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe687;</i> 客户管理 <span class="c-gray en">&gt;</span> 客户列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>



<div class="pd-20">

    <div class="text-c"> 

        <form name="form1" action="index.php" method="get">

            <input type="hidden" name="module" value="Customer" />

            <input type="text" name="name" size='8' value="{$name}" id="" placeholder=" 姓名" style="width:200px" class="input-text">

            购买日期：

            <input name="startdate" value="{$startdate}" size="8" readonly class="scinput_s" style="width: 200px;height:26px;font-size: 14px;vertical-align: middle;" />

            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.startdate);" />

            -

            <input name="enddate" value="{$enddate}" size="8" readonly  class="scinput_s" style="width: 200px;height:26px;font-size: 14px;vertical-align: middle;"/>

            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.enddate);" />

            <input name="" id="" class="btn btn-success" type="submit" value="查询">

        </form>

    </div>

        <div style="clear:both;">

        <a class="btn btn-primary radius" href="index.php?module=Customer&action=add"><i class="Hui-iconfont">&#xe610;</i>&nbsp;添加用户</a>

    </div>

    <div class="mt-20">

        <table class="table table-border table-bordered table-bg table-hover table-sort">

            <thead>

                <tr class="text-c">

                    <th>序</th>

                    <th>客户id</th>

                    <th>姓名</th>

                    <th>手机</th>

                    <th>价格</th>

                    <th>公司名称</th>

                    <th>功能</th>

                    <th>购买时间</th>

                    <th>到期时间</th>

                    <th>状态</th>
                    <th>操作</th>

                </tr>

            </thead>

            <tbody>

            {foreach from=$list item=item name=f1}

                <tr class="text-c">

                    <td>{$smarty.foreach.f1.iteration}</td>

                    <td>{$item->user_id}</td>

                    <td>{$item->name}</td>

                    <td>{$item->mobile}</td>

                    <td>{$item->price}</td>

                    <td>{$item->company}</td>

                    <td>{$item->function}</td>

                    <td>{$item->add_date}</td>

                    <td>{$item->end_date}</td>

                    <td>{if $item->status == 0}<span style="color: #30c02d;">启用</span>{else}<span style="color: #ff2a1f;">到期</span>{/if}</td>
                    <td>
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=Customer&action=modify&id={$item->id}&uploadImg={$uploadImg}" title="修改"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a style="text-decoration:none" target="view_window" class="ml-5"  href="{$item->url}" title="进入系统" ><i class="Hui-iconfont">&#xe72b;</i></a>
                    </td>

                </tr>

            {/foreach}

            </tbody>

        </table>

    </div>

</div>



<script type="text/javascript" src="style/js/jquery.js"></script>

<script type='text/javascript' src='modpub/js/calendar.js'> </script>

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