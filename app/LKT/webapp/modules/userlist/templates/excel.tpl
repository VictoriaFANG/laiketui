<html>

	<head>
		<title>用户列表</title>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	</head>

	<body>
		<table border="1px">
			<tr>
				<th colspan="8" style="height: 100px;font-size: 20px;">用户列表</th>
			</tr>
			<tr>
				<th colspan="8">导出时间:{$now_data}</th>
			</tr>

              <tr class="text-c">
                <th width="40">ID</th>
                <th width="150">微信昵称</th>
                <th width="150">余额</th>
                <th width="150">积分</th>
                <th width="130">注册时间</th>
                <th width="150">订单总金额</th>
                <th width="150">订单总数</th>
                <th width="150">手机号码</th>
                <th width="100">分享次数</th>
              </tr>
            {foreach from=$list item=item name=f1}
                <tr class="text-c">
                      <td>{$item->id}</td>
                      <td>{$item->wx_name}</td>
                      <td>￥{$item->money}</td>
                      <td>{$item->score}</td>
                      <td>{$item->Register_data}</td>
                      <td>{$item->z_price}</td>
                      <td>{$item->z_num}</td>
                      <td>{$item->mobile}</td>
                      <td>{$item->share_num}</td>
                </tr>
            {/foreach}			
		</table>
	</body>

</html>