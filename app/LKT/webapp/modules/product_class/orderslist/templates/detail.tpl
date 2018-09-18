<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link href="style/css/style1.css" rel="stylesheet" type="text/css" />
<link href="style/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="style/css/H-ui.admin.css" rel="stylesheet" type="text/css" />
<link href="style/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
<link href="style/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
<script src="style/js/jquery.js"></script>
<script src="style/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script type="text/javascript" src="style/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="style/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="style/lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="style/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="style/js/jquery.cookie.js"></script>   
<script type="text/javascript" src="style/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
{literal}
<SCRIPT language=javascript>
function printpr() //预览函数
{
document.all("qingkongyema").click();//打印之前去掉页眉，页脚
document.all("dayinDiv").style.display="none"; //打印之前先隐藏不想打印输出的元素（此例中隐藏“打印”和“打印预览”两个按钮）
document.all("breadcrumb").style.display="none";
var OLECMDID = 7;
var PROMPT = 1;
var WebBrowser = '<OBJECT ID="WebBrowser1" WIDTH=0 HEIGHT=0 CLASSID="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></OBJECT>';
document.body.insertAdjacentHTML('beforeEnd', WebBrowser);
WebBrowser1.ExecWB(OLECMDID, PROMPT);
WebBrowser1.outerHTML = "";
document.all("dayinDiv").style.display="";//打印之后将该元素显示出来（显示出“打印”和“打印预览”两个按钮，方便别人下次打印）
document.all("breadcrumb").style.display="";
}

function printTure() //打印函数
{
 document.all('qingkongyema').click();//同上
 document.all("dayinDiv").style.display="none";//同上
 document.all("breadcrumb").style.display="none";//同上
 window.print();
 document.all("dayinDiv").style.display="";
 document.all("breadcrumb").style.display="";//同上
}
function doPage()
{
 layLoading.style.display = "none";//同上
}


</SCRIPT>

<script language="VBScript">
dim hkey_root,hkey_path,hkey_key
hkey_root="HKEY_CURRENT_USER"
hkey_path="\Software\Microsoft\Internet Explorer\PageSetup"
//设置网页打印的页眉页脚为空
function pagesetup_null()  
on error resume next  
Set RegWsh = CreateObject("WScript.Shell")  
hkey_key="\header"  
RegWsh.RegWrite hkey_root+hkey_path+hkey_key,""  
hkey_key="\footer"  
RegWsh.RegWrite hkey_root+hkey_path+hkey_key,""  
end function  

//设置网页打印的页眉页脚为默认值
function pagesetup_default()  
on error resume next  
Set RegWsh = CreateObject("WScript.Shell")  
hkey_key="\header"  
RegWsh.RegWrite hkey_root+hkey_path+hkey_key,"&w&b页码，&p/&P"  
hkey_key="\footer"  
RegWsh.RegWrite hkey_root+hkey_path+hkey_key,"&u&b&d"  
end function
</script>

{/literal}
<title>订单详情</title>
</head>
<body>
<div>
</div>
<nav class="breadcrumb" name= 'breadcrumb' id= 'breadcrumb'><i class="Hui-iconfont" >&#xe627;</i> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <span class="c-gray en">&gt;</span> 订单详情 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="#" onclick="location.href='index.php?module=orderslist';" title="关闭" ><i class="Hui-iconfont">&#xe6a6;</i></a></nav>

<section class="rt_wrap content mCustomScrollbar" style="margin-left:20px;margin-right:10px;height:100%;position:relative;">
 <div class="rt_content" style="font-size: 40px;">
      <div class="page_title" style="text-align:center;">
       <h2 class="fl" >订单详情</h2>
      </div>
      
      <table class="table">
        
       <tr>
        <td style="width: 80px;">{if $data.drawid > 0}<span >拼团订单</span>{else}<span>普通订单</span>{/if}</td>
        <td style="width: 80px;">收件人: {$data.name}</td>
        <td>联系电话：{$data.mobile}</td>
        <td>收件地址：{$data.address}</td>
        <td>用户id：{$data.user_id}</td>
       </tr>
       <tr>
        <td colspan ="2" style="width: 160px;">下单时间：{$data.add_time}</td>
        <td>发货时间：{$data.deliver_time}</td>
        <td>到货时间：{$data.arrive_time}</td>
        <td>订单号：{$data.sNo}</td>
       </tr>
       <tr>
        <td colspan="2" style="width: 160px;">订单状态：<a>{$data.r_status}</a></td>
        <td >订单备注：<mark>{$data.content}</mark></td>
        <td>快递公司：{$data.express_name}</td>
        <td>快递单号：{$data.courier_num}</td>
        </tr>
        
      </table>
      <input type="hidden" name="ddd" value="{$data.lottery_status}">
      <table class="table">
        <tr>
        <th class="center">产品缩略图</th>
        <th class="center">产品名称</th>
        <th class="center">产品id</th>
        <th class="center">产品单价</th>
        <th class="center">产品数量</th>
        <th class="center">产品总价</th>
        <th class="center">单位</th>
       </tr>
       {foreach from=$detail item=item name=f1}
       <tr>
        <td class="center" style="text-align:center;"><img class='pimg' src="{$uploadImg}{$item->pic}" width="50" height="50"/></td>
        <td>{$item->p_name}</td>
        <td class="center">{$item->p_id}</td>
        <td class="center"><strong class="rmb_icon">{$item->p_price}</strong></td>
        <td class="center"><strong>{$item->num}</strong></td>
        <td class="center"><strong class="rmb_icon">{$item->z_price}</strong></td>
        <td class="center">{$item->unit}</td>
       </tr>
       {/foreach}
      </table>
      <DIV  id="dayinDiv" name="dayinDiv">
       <aside class="mtb" style="text-align:right;">
       <label>管理员操作：</label>
       <a href="index.php?module=orderslist&action=Modify&sNo={$data.sNo}"><input type="button" value="修改订单" class="group_btn"/></a>
       <input type="button" value="付款"  class="group_btn fk"/>
       <input type="hidden" id="dingdan" value="{$data.sNo}">
       <input type="button" value="发货" class="group_btn dj" />
        <input type="button" class="group_btn b02" value=" 打 印 " onclick="printTure();">&nbsp;&nbsp;
      <input type="hidden" name="qingkongyema" id="qingkongyema" class="b02" value="清空页码" onclick="pagesetup_null()">&nbsp;&nbsp;
      <input type="hidden" class="tab" value="恢复页码" onclick="pagesetup_default()">
      </DIV><br /><br />
      </aside> 
 </div>
  <div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:absolute;"><img id="bigimg" src="" /></div></div> 
</section>

{literal}
<script type="text/javascript">
$(function(){  
        $(".pimg").click(function(){  
            var _this = $(this);//将当前的pimg元素作为_this传入函数  
            imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
        });  
    });
function imgShow(outerdiv, innerdiv, bigimg, _this){  
    var src = _this.attr("src");//获取当前点击的pimg元素中的src属性  
    $(bigimg).attr("src", src);//设置#bigimg元素的src属性  
  
        /*获取当前点击图片的真实大小，并显示弹出层及大图*/  
    $("<img/>").attr("src", src).load(function(){  
        var windowW = $(window).width();//获取当前窗口宽度  
        var windowH = $(window).height();//获取当前窗口高度  
        var realWidth = this.width;//获取图片真实宽度  
        var realHeight = this.height;//获取图片真实高度  
        var imgWidth, imgHeight;  
        var scale = 0.8;//缩放尺寸，当图片真实宽度和高度大于窗口宽度和高度时进行缩放  
          
        if(realHeight>windowH*scale) {//判断图片高度  
            imgHeight = windowH*scale;//如大于窗口高度，图片高度进行缩放  
            imgWidth = imgHeight/realHeight*realWidth;//等比例缩放宽度  
            if(imgWidth>windowW*scale) {//如宽度扔大于窗口宽度  
                imgWidth = windowW*scale;//再对宽度进行缩放  
            }  
        } else if(realWidth>windowW*scale) {//如图片高度合适，判断图片宽度  
            imgWidth = windowW*scale;//如大于窗口宽度，图片宽度进行缩放  
                        imgHeight = imgWidth/realWidth*realHeight;//等比例缩放高度  
        } else {//如果图片真实高度和宽度都符合要求，高宽不变  
            imgWidth = realWidth;  
            imgHeight = realHeight;  
        }  
                $(bigimg).css("width",imgWidth);//以最终的宽度对图片缩放  
          
        var w = (windowW-imgWidth)/2;//计算图片与窗口左边距  
        var h = (windowH-imgHeight)/2;//计算图片与窗口上边距  
        $(innerdiv).css({"top":h, "left":w});//设置#innerdiv的top和left属性  
        $(outerdiv).fadeIn("fast");//淡入显示#outerdiv及.pimg  
    });  
      
    $(outerdiv).click(function(){//再次点击淡出消失弹出层  
        $(this).fadeOut("fast");  
    });  
}
</script>
{/literal}
{literal}
<script type="text/javascript">
$(".fk").click(function(){
   var stu = '{/literal}{$data.status01}{literal}';
   if(stu>=1){
     alert('订单已付款，请勿重复操作!');
     $(".dc").hide();
 
   }else{
       var id = '{/literal}{$data.sNo}{literal}';
   $.ajax({
      url:"index.php?module=orderslist&action=Detail",
      type:"post",
      data:{sNo:id,trade:2},
      dataType:"json",
      success:function(data) {
        if(data.status == 1){
            alert(data.msg);
          }
        window.location.reload(); 
      },

   });
   }


})
/*系统-栏目-添加*/
function system_category_add(title,url,w,h){
  layer_show(title,url,w,h);
}

$(".qx").click(function(){
      $(".dc").hide();
})

$(".dj").click(function(){
    var dingdan = $("#dingdan").val();
    var stu = '{/literal}{$data.status01}{literal}';
    var stu01 = '{/literal}{$data.r_status}{literal}';
    if(stu==6){
     alert('订单已关闭，不能发货!');
     $(".dc").hide();
   }
   if(stu>=2 && stu !=6){
     alert('订单已发货，请勿重复操作!');
     $(".dc").hide();
   }
   
  if(stu == 0){
     alert('订单还没付款!');
     $(".dc").hide();
   }

   if(stu == 1){
    var lottery_status = '{/literal}{$data.lottery_status}{literal}';
// 
       if(lottery_status ==7){
        system_category_add('添加快递信息','index.php?module=orderslist&action=addsign&id='+dingdan,400,300);
      }else if(lottery_status ==5){
       system_category_add('添加快递信息','index.php?module=orderslist&action=addsign&id='+dingdan,400,300);
      }else{
        alert('未中奖订单不能发货！');
        $(".dc").hide();
      }
   }
   
})


</script>

{/literal}
</body>
</html>