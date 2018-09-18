<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="Bookmark" href="/favicon.ico" >
<link rel="Shortcut Icon" href="/favicon.ico" />
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
<!--/meta 作为公共模版分离出去-->

<title>活动设置</title>
</head>
<body>
<div class="page-container">
	<form method="post" class="form form-horizontal" id="form-category-add" enctype="multipart/form-data">
		<div id="tab-category" class="HuiTab">
			<div class="tabBar cl" style="border-bottom: 2px #ff9900 solid;">	
				<span style="background: #ff9900;">选择拼团商品</span>
			</div>
	    
	        <div class="tabCon">
	           <div class="mt-20">
                  <table class="table table-border table-bordered table-bg table-hover table-sort" style="width:96%;margin:0 auto;">
                     <thead>
                       <tr class="text-c">
                	      <th>选择</th>
		                  <th width="60">商品类别</th>
		                  <th width="150">商品名称</th>
		                  <th width="100">商品图片</th>
		                  <th>商品id</th>
		               </tr>
                     </thead>
                     <tbody>
	                   {foreach from=$arr item=item}
	                     <tr class="text-c" style="height:20px;">
	                       <td><input type="checkbox" name="checkid{$item->id}" value="{$item->id}" onchange="product_tijiao({$item->id})"></td>
	                       <td><div id="prod_class_{$item->id}">{$item->pname}</div></td>
	                       <td>{$item->product_title}</td>
	                       <td><image src="{$item->image}" style="width: 80%;height:60px;"/></td>
	                       <td>{$item->id}</td>
	                     </tr>
	                   {/foreach}
                    </tbody>
                 </table>
              </div>
	        </div>	
        </div>
         {foreach from=$set item=item key=key}
            <input type="hidden" id="{$key}" value="{$item}">
         {/foreach}
		<div class="row cl">
			<div class="col-9 col-offset-3">
				<input class="btn btn-primary radius" type="button" onclick="group_tijiao()" value="&nbsp;&nbsp;下一步&nbsp;&nbsp;">
				<input class="btn btn-primary radius" type="button" value="&nbsp;&nbsp;返回&nbsp;&nbsp;" onclick="javascript:history.back(-1);" style="background: #EDEDED;border:0px;color:#000000;">
			</div>
		</div>
	</form>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="style/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="style/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="style/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="style/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="style/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="style/lib/laypage/1.2/laypage.js"></script>

{literal}
<script type="text/javascript">
  
  function set_group_price(i){
  	
  	$('.text-c div[name='+i+']').hide();
  	var set_price = $('#set_price_'+i).val();
    $('.text-c td[id='+i+']').append('<input type="text" name="'+i+'" style="width:60px;">');
    $('.text-c input[name='+i+']').attr("value",set_price);
    $('.text-c input[name='+i+']').blur(function(){
    	var price = $('.text-c input[name='+i+']').val();
    	var abc = price.indexOf('.');
    	var efg = price.indexOf('0');
    	if(efg == 0 && abc < 0){
    		price = price.substring(1);
    	}
    	if(abc < 0 && price != ''){
    		price = price + '.00';
    	}else if(abc == (price.length-1)){
    		price = price + '00';
    	}
    	 $('.text-c input[name='+i+']').remove();
    	 $('.text-c div[name='+i+']').text(price);
    	 $('#set_price_'+i).val(price);
    	 $('.text-c div[name='+i+']').show(); 
    });
    
 }

 /*function my_array_name(m){
    var valArr = new Object;
 	$('input[name="'+m+'[]"]:checked').each(function(){
 		var id = $(this).val();
 		valArr[id] = $('#set_price_'+id).val();
 	})
    return valArr;
}*/
    var data = new Object;
function product_tijiao(i){
  var classname = $('#prod_class_'+i).text();
  if($('input[name=checkid'+i+']').prop('checked') == true){
  	  data[i] = classname;
   }else{
   	 delete data[i];
   }
   //data = JSON.stringify(data);
   //console.log(data);
}    


    function group_tijiao() {
    	var set = '{';
    	set += '"'+$('input[id=groupname]').attr('id')+'":"'+$('input[id=groupname]').val()+'",';
        set += '"'+$('input[id=peoplenum]').attr('id')+'":"'+$('input[id=peoplenum]').val()+'",';
        set += '"'+$('input[id=timehour]').attr('id')+'":"'+$('input[id=timehour]').val()+'",';
        set += '"'+$('input[id=timeminite]').attr('id')+'":"'+$('input[id=timeminite]').val()+'",';
        set += '"'+$('input[id=starttime]').attr('id')+'":"'+$('input[id=starttime]').val()+'",';
        set += '"'+$('input[id=endtime]').attr('id')+'":"'+$('input[id=endtime]').val()+'",';
        set += '"'+$('input[id=groupnum]').attr('id')+'":"'+$('input[id=groupnum]').val()+'",';
        set += '"'+$('input[id=productnum]').attr('id')+'":"'+$('input[id=productnum]').val()+'",';
        set += '"'+$('input[id=radio]').attr('id')+'":"'+$('input[id=radio]').val()+'"}';
        
        if(Object.keys(data).length == 0){
        	layer.alert('请至少选择一款产品！',{
               icon: 5,
               title: "提示"
        	});
        }else{
    	  var str = '{';
    	  $.each(data,function(index,element){
              str+= '"'+index+'":"'+element+'",';
  	        });

    	      str = str.substring(0,(str.length-1));
    	      str += '}';
    	      
            $.ajax({
               url:"index.php?module=go_group&action=setpro&from=pro",
               type:"get",
               data:{str:str,game:set},
               dataType:"json",
               success:function(data) {
                   if(data.code == 1){
                   	   window.location.href = 'index.php?module=go_group&action=setpro&from=attr';
                       // alert(123);
                   }
               },
             })
         }
      }

$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,4]}// 制定列不参与排序
	]
});

$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#tab-category").Huitab({
		index:0
	});
	/*$("#form-category-add").validate({
		rules:{
			
		},
		onkeyup:false,
		focusCleanup:true,
		success:"valid",
		submitHandler:function(form){
			//$(form).ajaxSubmit();
			var index = parent.layer.getFrameIndex(window.name);
			//parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});*/
});

</script>
{/literal}
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>