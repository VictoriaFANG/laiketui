<html>
<head>
<title>list</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>
<body> 
<table border="1px">
  <tr>
    <td align="center" style="width: 50px">序号</td>
    <td align="center" style="width: 150px">订单编号</td>
    <td align="center" style="width: 100px">收件人</td>
    <td align="center" style="width: 100px">联系电话</td>
    <td align="center" style="width: 400px">收件人地址</td>
    <td align="center" style="width: 100px">订单金额</td>
    <td align="center" style="width: 100px">订单状态</td>
    <td align="center" style="width: 100px">订单类型</td>
  </tr>
  {foreach from=$order item=item name=f1}
  <tr>
    <td align="center" style="width: 50px">{$item->id}</td>
    <td align="center" style="width: 200px;">`{$item->sNo}</td>
    <td align="center" style="width: 100px">{$item->name}</td>
    <td align="center" style="width: 100px">{$item->mobile}</td>
    <td align="center" style="width: 400px">{$item->address}</td>
    <td align="center" style="width: 100px">{$item->z_price}</td> 
    <td align="center" style="width: 100px">{$item->status01}</td>    
    <td align="center" style="width: 100px">{if $item->drawid > 0}<span >拼团订单</span>{else}<span>普通订单</span>{/if}</td>
  </tr>
  {/foreach}
</table>
</body>
</html>