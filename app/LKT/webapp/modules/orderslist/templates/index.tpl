<!DOCTYPE HTML>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<link href="//at.alicdn.com/t/font_353057_iozwthlolt.css" rel="stylesheet">
		<link href="style/statics/mch/css/bootstrap.min.css" rel="stylesheet">
		<link href="style/statics/mch/css/jquery.datetimepicker.min.css" rel="stylesheet">
		<link href="style/statics/css/flex.css?version=2.5.8.0" rel="stylesheet">
		<link href="style/statics/css/common.css?version=2.5.8.0" rel="stylesheet">
		<link href="style/statics/mch/css/common.v2.css?version=2.5.8.0" rel="stylesheet">

		<link href="style/css/H-ui.min.css" rel="stylesheet" type="text/css" />
		<link href="style/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
		<link href="style/css/style.css" rel="stylesheet" type="text/css" />
		<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
		{literal}
		<style type="text/css">
			#delorderdiv {
				margin-left: 20px;
				display: inline;
				color: red;
			}
		</style>
		<style>
			.order-item {
				border: 1px solid transparent;
				margin-bottom: 1rem;
			}
			
			.order-item table {
				margin: 0;
			}
			
			.order-item:hover {
				border: 1px solid #3c8ee5;
			}
			
			.goods-item {
				margin-bottom: .75rem;
			}
			
			.goods-item:last-child {
				margin-bottom: 0;
			}
			
			.goods-pic {
				width: 5.5rem;
				height: 5.5rem;
				display: inline-block;
				background-color: #ddd;
				background-size: cover;
				background-position: center;
				margin-right: 1rem;
			}
			
			.goods-name {
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
			}
			
			.order-tab-1 {
				width: 40%;
			}
			
			.order-tab-2 {
				width: 20%;
				text-align: center;
			}
			
			.order-tab-3 {
				width: 10%;
				text-align: center;
			}
			
			.order-tab-4 {
				width: 20%;
				text-align: center;
			}
			
			.order-tab-5 {
				width: 10%;
				text-align: center;
			}
			
			.status-item.active {
				color: inherit;
			}
			
			.badge {
				display: inline-block;
				padding: .25em .4em;
				font-size: 75%;
				font-weight: 700;
				line-height: 1;
				color: #fff;
				text-align: center;
				white-space: nowrap;
				vertical-align: baseline;
				border-radius: .25rem
			}
			
			.badge:empty {
				display: none
			}
			
			.btn .badge {
				position: relative;
				top: -1px
			}
			
			a.badge:focus,
			a.badge:hover {
				color: #fff;
				text-decoration: none;
				cursor: pointer
			}
			
			.badge-pill {
				padding-right: .6em;
				padding-left: .6em;
				border-radius: 10rem
			}
			
			.badge-default {
				background-color: #636c72
			}
			
			.badge-default[href]:focus,
			.badge-default[href]:hover {
				background-color: #4b5257
			}
			
			.badge-primary {
				background-color: #0275d8
			}
			
			.badge-primary[href]:focus,
			.badge-primary[href]:hover {
				background-color: #025aa5
			}
			
			.badge-success {
				background-color: #5cb85c
			}
			
			.badge-success[href]:focus,
			.badge-success[href]:hover {
				background-color: #449d44
			}
			
			.badge-info {
				background-color: #5bc0de
			}
			
			.badge-info[href]:focus,
			.badge-info[href]:hover {
				background-color: #31b0d5
			}
			
			.badge-warning {
				background-color: #f0ad4e
			}
			
			.badge-warning[href]:focus,
			.badge-warning[href]:hover {
				background-color: #ec971f
			}
			
			.badge-danger {
				background-color: #d9534f
			}
			
			.badge-danger[href]:focus,
			.badge-danger[href]:hover {
				background-color: #c9302c
			}

			a:hover {color: red; text-decoration:none;}
		</style>

		{/literal}
		<title>订单列表</title>
	</head>

	<body>
		<nav class="breadcrumb" style="height: 50px;"><i class="Hui-iconfont">&#xe627;</i> 订单管理 <span class="c-gray en">&gt;</span> 订单列表
			<a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
		</nav>
		<div class="pd-20">
			<div class="text-c">
				<form name="form1" action="index.php" method="get">
					<input type="hidden" name="module" value="orderslist" />
					<input type="hidden" name="having" value="123" />
					<input type="hidden" name="ordtype" value="{$otype}" />
					<input type="hidden" name="gcode" value="{$status}" />
					<input type="hidden" name="ocode" value="{$ostatus}" />
					<select name="otype" class="select" style="width: 120px;height: 31px;vertical-align: middle;">
						{foreach from=$ordtype item="item" key="key"}
						<option value="{$key}" {if $otype==$key}selected{/if}>{$item}</option>
						{/foreach}
					</select>
					
					<select name="status" class="select" style="width: 120px;height: 31px;vertical-align: middle;">
						<option value="">订单状态</option>
						{$class}
					</select>
					
					<select name="brand" class="select" style="width: 120px;height: 31px;vertical-align: middle;">
						<option value="">请选择品牌</option>
						{$brand_str}
					</select>
					
					<input type="text" name="sNo" size='8' value="{$sNo}" id="" placeholder=" 订单编号或收件人姓名/电话..." style="width:200px" class="input-text">
					<input name="startdate" value="{$startdate}" size="8" readonly class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;" />
					<img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.startdate);" /> 至
					<input name="enddate" value="{$enddate}" size="8" readonly class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;" />
					<img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.enddate);" />
					<input class="btn btn-success" type="submit" value="查询">
					<input type="button" value="导出本页" class="btn btn-success" onclick="excel('ne')">
					<input type="button" value="导出全部" class="btn btn-success" onclick="excel('all')">

				</form>
			</div>

			<div class="mt-20">
				<table class="table table-bordered bg-white">
					<tbody>
						<tr>
							<th class="order-tab-1">商品信息</th>
							<th class="order-tab-2">金额</th>
							<th class="order-tab-3">实际付款</th>
							<th class="order-tab-4">订单状态</th>
							<th class="order-tab-5">操作</th>
						</tr>
					</tbody>
				</table>
				{foreach from=$order item=item name=f1}
				<div class="order-item" style="">
					<table class="table table-bordered bg-white table-sort">
						<tbody>
							<tr>
								<td colspan="5">
									<span class="mr-5">{$item->add_time}</span>
									<span class="mr-5">订单号：{$item->sNo}</span>
									<span class="mr-5">用户：{$item->user_name}</span>
									{if $item->yongjin != ''}
									<span>佣金：{$item->yongjin}</span>
									{/if}
								</td>
							</tr>
							<tr>
								<td class="order-tab-1">
									{foreach from=$item->products item=item2 name=f2}
									<div class="goods-item" flex="dir:left box:first">
										<div class="fs-0">
											<div class="goods-pic" style="background-image: url('{$uploadImg}{$item2->imgurl}')"></div>
											<!--<img class="goods-pic" src="{$uploadImg}{$item2->imgurl}"/>-->
										</div>
										<div class="goods-info">
											<div class="goods-name">{$item2->product_title}</div>
											<div class="fs-sm">
												规格：
												<span class="text-danger">
                                                 <span class="mr-3">{$item2->size}</span>
												</span>
											</div>
											<div class="fs-sm">数量：
												<span class="text-danger">{$item2->num}{$item2->unit}</span>
											</div>
											<div class="fs-sm">小计：
												<span class="text-danger">{$item2->num*$item2->p_price}元</span></div>
										</div>
									</div>
									{/foreach}
								</td>
								<td class="order-tab-2">
									<div>总金额：{if $item->spz_price <= 0}{$item->z_price}{else}{$item->spz_price}{/if}元（含运费）</div>
									{if $item->consumer_money > 0}<div>消费金：{$item->consumer_money}</div>{/if}
									<div>运费：0.00元</div>
								</td>
								<td class="order-tab-3">
									<div>{$item->z_price}元</div>
								</td>
								<td class="order-tab-4">

									<div>
										订单状态：

										<span class="badge badge-success" style="background:{$item->bgcolor}">{$item->status}</span>

									</div>

									<div>
										支付方式：
										<span class="badge badge-success">{if $item->pay == 'wxPay'}微信支付{elseif $item->pay == 'wallet_Pay'}余额支付{else}组合支付{/if}</span>
									</div>

									<div>
										发货方式：
										<span class="badge badge-warning">快递发送</span>
									</div>
									<div>
										发货状态：
										<span class="badge badge-default">{if $item->statu > 1}已发货{else}未发货{/if}</span>
									</div>
									<div>
										订单类型：
										<span class="badge badge-default">{if $item->otype == 'pt'}拼团订单{else}{if $item->drawid>0}抽奖订单{else}普通订单{/if}{/if}</span>
									</div>
								</td>
								<td class="order-tab-5">
									{if $item->statu == 1}
									<a class="btn btn-sm btn-primary send-btn" href="javascript:" onclick="send_btn(this,'{$item->sNo}',{$item->statu},{$item->drawid})">发货</a>
									{/if}

									<a class="btn btn-sm btn-primary" href="index.php?module=orderslist&action=Detail&id={$item->id}">详情</a>
									<br>

								</td>
							</tr>
							<tr>
								<td colspan="5">
									<div>
										<span class="mr-3">收货人：{$item->name}</span>
										<span class="mr-3">电话：{$item->mobile}</span>
										<span>地址：{$item->address}</span>
									</div>
									<div hidden="">
										用户备注： </div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				{/foreach}

			</div>
			<div style="text-align: center;display: flex;justify-content: center;">{$pages_show}</div>
			<!--<div style="width:80%;margin:50px 0 0 0px;">
				<input type="checkbox" style="zoom:150%;" id="allAndNotAll" /> 全选
				<a class="btn btn-primary radius" id="getAllSelectedId" style="margin-left:20px;">删除所选订单</a>
				<h5 id="delorderdiv">提示 : 为避免误删操作,会为您保留活动还未结束的拼团订单与未出结果的抽奖订单</h5>
			</div>-->
		</div>

		<script type="text/javascript" src="style/js/jquery.js"></script>
		<script type='text/javascript' src='modpub/js/calendar.js'>
		</script>
		<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script>
		<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="style/js/H-ui.js"></script>
		<script type="text/javascript" src="style/js/H-ui.admin.js"></script>

		{literal}
		<script type="text/javascript">

			function system_category_add(title,url,w,h){
			  layer_show(title,url,w,h);
			}

			
			$(".qx").click(function(){
			      $(".dc").hide();
			})

			function send_btn(obj, id, status,drawid) {

						var dingdan = id;
						var stu = status;
					
						if(stu == 6) {
							layer.msg('订单已关闭，不能发货!', {
								time: 1000
							});
						}
						if(stu >= 2 && stu != 6) {
							layer.msg('订单已发货，请勿重复操作!', {
								time: 1000
							});
						}
					
						if(stu == 0) {
							layer.msg('订单还没付款!', {
								time: 1000
							});
						}

						if(stu == 1) {
						        if(drawid == 0){//普通订单
						          system_category_add('添加快递信息','index.php?module=orderslist&action=addsign&id='+dingdan,400,300);
						        }else{
						          layer.msg('抽奖订单请进入订单详情后发货！',{time:1000});
						          $(".dc").hide();
						        }
						   }
			   
			};
			
			function excel(pageto) {
				var pagesize = $("[name='DataTables_Table_0_length'] option:selected").val();
				location.href = location.href + '&pageto=' + pageto + '&pagesize=' + 10;
			}
			$('.table-sort').dataTable({
				"aaSorting": [
					[9, "desc"]
				], //默认第几个排序
				"bStateSave": false, //状态保存
				"aoColumnDefs": [
					{
						"orderable": false,
						"aTargets": [0, 1, 2, 3, 4, 5, 6, 7, 8]
					}
				]
			});

			var i = 0;
			$('select[name=otype]').change(function() {
				let ss = $(this).children('option:selected').val();
				if(ss == 't2') {
					$('select[name=status]').empty();
					$('select[name=status]').append("<option value=''>拼团状态</option><option value='g0'>未付款</option><option value='g1'>拼团中</option><option value='g2'>拼团成功</option><option value='g3'>拼团失败</option>");
				} else {
					$('select[name=status]').empty();
					$('select[name=status]').append("<option value=''>订单状态</option><option value='0'>未付款</option><option value='1'>未发货</option><option value='2'>已发货</option><option value='3'>待评论</option><option value='4'>退货</option><option value='5'>已签收</option>");
					$('select[name=ostatus]').remove();
				}
			})

			$('select[name=status]').change(function() {
				let ss = $('select[name=otype]').children('option:selected').val();
				let gg = $(this).children('option:selected').val();
				if(gg == 'g2') {
					$('#fail').remove();
					$('select[name=status]').after("<select name='ostatus' class='select' id='success' style='width: 80px;height: 31px;vertical-align: middle;margin-left: 5px;'><option value='g1' selected>未发货</option><option value='g2'>已发货</option><option value='g3'>已签收</option></select>");
				} else if(gg == 'g3') {
					$('#success').remove();
					$('select[name=status]').after("<select name='ostatus' class='select' id='fail' style='width: 80px;height: 31px;vertical-align: middle;margin-left: 5px;'><option value='g10' selected>未退款</option><option value='g11'>已退款</option></select>");
				} else {
					$('select[name=ostatus]').remove();
				}
			})

			var having = $('input[name=having]').val();
			var otype = $('input[name=ordtype]').val();
			var gstatus = $('input[name=gcode]').val();
			var ostatus = $('input[name=ocode]').val();
			if(having == '123') {
				var tv = $('select[name=otype]').children('option:selected').val();
				if(tv == 't2') {
					$('select[name=status]').empty();
					$('select[name=status]').append("<option value=''>拼团状态</option>");
					var options = {
						g0: '未付款',
						g1: '拼团中',
						g2: '拼团成功',
						g3: '拼团失败'
					};
					var str = '';

					$.each(options, function(index, element) {
						str = '<option value="' + index + '"';
						if(gstatus == index) {
							str += ' selected';
						}
						str += '>' + element + '</option>';
						$('select[name=status]').append(str);
					})

					　　
					var gv = $('select[name=status]').children('option:selected').val();
					if(gstatus == 'g2') {
						$('#fail').remove();
						$('select[name=status]').after("<select name='ostatus' class='select' id='success' style='width: 80px;height: 31px;vertical-align: middle;margin-left: 5px;'></select>");
						var options = {
							g1: '未发货',
							g2: '已发货',
							g3: '已签收'
						};
						var str = '';
						$.each(options, function(index, element) {
							str = '<option value="' + index + '"';
							if(ostatus == index) {
								str += ' selected';
							}
							str += '>' + element + '</option>';
							$('select[name=ostatus]').append(str);
						})
					} else if(gstatus == 'g3') {
						$('#success').remove();
						$('select[name=status]').after("<select name='ostatus' class='select' id='fail' style='width: 80px;height: 31px;vertical-align: middle;margin-left: 5px;'><select>");
						var options = {
							g10: '未退款',
							g11: '已退款'
						};
						var str = '';
						$.each(options, function(index, element) {
							str = '<option value="' + index + '"';
							if(ostatus == index) {
								str += ' selected';
							}
							str += '>' + element + '</option>';
							$('select[name=ostatus]').append(str);
						})
					} else {
						$('select[name=ostatus]').remove();
					}
				}

			}

			//实现全选与反选  
			var ids = [];
			$("#allAndNotAll").click(function() {
				if(this.checked) {
					$("input[name=checkid]").each(function(index) {
						$(this).prop("checked", true);
						var val = $(this).val();
						arrModify(ids, val, 1);
					});
				} else {
					$("input[name=checkid]").each(function(index) {
						$(this).prop("checked", false);
						var val = $(this).val();
						arrModify(ids, val, 2);
					});
				}

			});

			Array.prototype.indexOf = function(val) {
				for(var i = 0; i < this.length; i++) {
					if(this[i] == val) return i;
				}
				return -1;
			}
			Array.prototype.remove = function(val) {
				var index = this.indexOf(val);
				if(index > -1) {
					this.splice(index, 1);
				}
			}

			function arrModify(arr, val, type) { //１为增加元素  2为删除元素
				if(type == 1) {
					var index = $.inArray(val, arr);
					if(index === -1) arr.push(val);
				} else if(type == 2) {
					arr.remove(val);
				}
				return arr;
			}

			function selectId(i) {
				i = i.toString();
				var index = $.inArray(i, ids); //判断数组中是否存在该值,如存在返回下标值,如不存在，返回-1
				if($('#checkid' + i).prop('checked') == true) {
					if(index === -1) ids.push(i);
				} else {
					ids.remove(i);
				}
			}
			Array.prototype.distinct = function() { //数组去重
				var arr = this,
					result = [],
					i,
					j,
					len = arr.length;
				for(i = 0; i < len; i++) {
					for(j = i + 1; j < len; j++) {
						if(arr[i] === arr[j]) {
							j = ++i;
						}
					}
					result.push(arr[i]);
				}
				return result;
			}

			$('#getAllSelectedId').click(function() {

				if(ids.length === 0) {
					layer.alert('没有选择订单！', {
						icon: 5,
						title: "提示"
					});
				} else {
					layer.confirm('确定要删除吗？', function(index) {
						ids = ids.distinct();
						var delIds = ids.join(",");
						//console.log(ids);
						$.ajax({
							url: "index.php?module=orderslist&action=delorder",
							type: "post",
							data: {
								ids: delIds
							},
							dataType: "json",
							success: function(data) {
								if(data.code == 1) {
									layer.alert(data.msg, {
										skin: 'layui-layer-lan',
										closeBtn: 0,
										anim: 4 //动画类型
									}, function() {
										location.reload();
									});

								}
							},
						});
					});
				}
			});
		</script>
		{/literal}
	</body>

</html>