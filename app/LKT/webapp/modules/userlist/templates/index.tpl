
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

{literal}
<style type="text/css">
i{
    cursor: pointer;
}
   #delorderdiv{
      margin-left: 20px;
      display: inline;
      color:red;
   }
</style>
<script type="text/javascript">
    setSize();
    addEventListener('resize',setSize);
    function setSize() {
        document.documentElement.style.fontSize = document.documentElement.clientWidth/750*100+'px';
    }   
    /*alert弹出层*/
    function jqalert(param) {
        var title = param.title,
            content = param.content,
            yestext = param.yestext,
            notext = param.notext,
            yesfn = param.yesfn,
            nofn = param.nofn,
            id = param.id,
            url = param.url,
            nolink = param.nolink,
            yeslink = param.yeslink,
            prompt = param.prompt,
            click_bg = param.click_bg,
            obj = param.obj,
            type = param.type,
            price = param.price,
            str = '<a style="text-decoration:none" class="ml-5" href="index.php?module=return&action=view&id='+param.id+'" title="查看"><i class="Hui-iconfont">&#xe63e;</i></a>',
            td = $(obj).parent("td");
          console.log(id);  
        if (click_bg === undefined){
            click_bg = true;
        }
        if (yestext === undefined){
            yestext = '确认';
        }
        if (!nolink){
            nolink = 'javascript:void(0);';
        }
        if (!yeslink){
            yeslink = 'javascript:void(0);';
        }

        var htm = '';
        htm +='<div class="jq-alert" id="jq-alert"><div class="alert">';
        if(title) htm+='<h2 class="title">'+title+'</h2>';
        if (prompt){
            htm += '<div class="content"><div class="prompt">';
            htm += '<p class="prompt-content">'+prompt+'</p>';
            htm += '<input type="number" maxlength="11" oninput="if(value.length>10)value=value.slice(0,10)" min="0" max="1000000" class="prompt-text"></div>';
            htm +='</div>';
        }else {
            if(type == 1){
                htm+='<div class="content">'+content+'</div>';
            }else{
               htm += '<div class="content"><div class="prompt">';
                htm += '<p class="prompt-content">'+content+'</p>';
                htm += '<span class="pd20">应退：'+price+' <input type="hidden" value="'+price+'" class="ytje">   &nbsp; 实退:</span><input type="text" value="'+price+'" class="prompt-text inp_maie"></div>';
                htm +='</div>';              
            }

        }
        if (!notext){
            htm+='<div class="fd-btn"><a href="'+yeslink+'" class="confirm" id="yes_btn">'+yestext+'</a></div>'
            htm+='</div>';
        }else {
            htm+='<div class="fd-btn">'+
                '<a href="'+nolink+'"  data-role="cancel" class="cancel">'+notext+'</a>'+
                '<a href="'+yeslink+'" class="confirm"  id="yes_btn">'+yestext+'</a>'+
                '</div>';
            htm+='</div>';
        }
        $('body').append(htm);
        var al = $('#jq-alert');
        al.on('click','[data-role="cancel"]',function () {
            al.remove();
            if (nofn){
                param.nofn();
                nofn = '';
            }
            param = {};
        });
        $(document).delegate('.alert','click',function (event) {
            event.stopPropagation();
        });
        $("#yes_btn").click( function () {
                  var price = Number($(".prompt-text").val());
                  $.ajax({
                     type: "GET",
                     url: url,
                     data:{
                      user_id:id,
                      m:type,
                      price:price
                     },
                     success: function(res){
                      if(res == 1){
                          jqtoast('提交成功');
                          setTimeout(function () {
                              al.remove();
                              location.replace(location.href);
                          },300);     
                      }else{
                          jqtoast('操作失败!');
                      }
                     }
                  });
        });

        if(click_bg === true){
            $(document).delegate('#jq-alert','click',function () {
                setTimeout(function () {
                    al.remove();
                },300);
                yesfn ='';
                nofn = '';
                param = {};
            });
        }

    }
    /*toast 弹出提示*/
    function jqtoast(text,sec) {
        var _this = text;
        var this_sec = sec;
        var htm = '';
        htm += '<div class="jq-toast" style="display: none;">';
        if (_this){
            htm +='<div class="toast">'+_this+'</div></div>';
            $('body').append(htm);
            $('.jq-toast').fadeIn();

        }else {
            jqalert({
                title:'提示',
                content:'提示文字不能为空',
                yestext:'确定'
            })
        }
        if (!sec){
            this_sec = 2000;
        }
        setTimeout(function () {
            $('.jq-toast').fadeOut(function () {
                $(this).remove();
            });
            _this = '';
        },this_sec);
    }
</script>

<style>
        .show-list{
            width:80%;
            margin: 0 auto;
        }
        .show-list li{
            height: 10px;
            font-size: 18px;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            border-bottom: 1px solid #dcdcdc;
        }
            *{
                margin: 0;
                padding:0;
                list-style: none;
                font-size: 16px;
                color: rgba(0,0,0,.8);
            }
            a{
                text-decoration: none;
            }

            /*jq-alert弹出层封装样式*/
            .jq-alert{
                position: fixed;
                top:0;
                left:0;
                width:100%;
                height:100%;
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-flex-direction: row;
                flex-direction: row;
                -webkit-justify-content: center;
                -webkit-align-items: center;
                justify-content: center;
                align-items: center;
                background-color: rgba(0,0,0,.3);
                z-index: 99;
            }
            .jq-alert .alert{
                background-color: #FFF;
                width:440px;
                height:250px;
                border-radius: 4px;
                overflow: hidden;
            }
            .jq-alert .alert .title{
                position: relative;
                margin: 0;
                font-size: 18px;
                text-align: center;
                font-weight: normal;
                color: rgba(0,0,0,.8);
            }
            .jq-alert .alert .content{
                padding:0 18px;
                font-size: 18px;
                color: rgba(0,0,0,.6);
                height: 56%;
                display: flex;
                align-items: center;
                justify-content: center;
                text-align: center;
            }
            .jq-alert .alert .content .prompt{
                width:100%;
            }
            .jq-alert .alert .content .prompt .prompt-content{
                font-size: 18px;
                color: rgba(0,0,0,.54);
                margin: 0;
                margin-bottom: 20px;
                /*text-align: center;*/
            }
            .jq-alert .alert .content .prompt .prompt-text{
                height: 50px;
                background:none;
                border:none;
                outline: none;
                width: 100%;
                box-sizing: border-box;
                margin-top: 20px;
                background-color: #FFF;
                border:1px solid #dcdcdc;
                text-indent:5px;
                text-align: center;
            }
            .jq-alert .alert .content .prompt .prompt-text:focus{
                border: 1px solid #2196F3;
                background-color: rgba(33,150,243,.08);
            }
            .jq-alert .alert .fd-btn{
                height: 50px;
                position: relative;
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-flex-direction: row;
                flex-direction: row;
                -webkit-justify-content: center;
                -webkit-align-items: center;
                justify-content: center;
                align-items: center;
            }
            .jq-alert .alert .fd-btn:after{
                position: absolute;
                content: "";
                top:0;
                left:0;
                width:100%;
                height: 1px;
                background-color: #F3F3F3;
            }
            .jq-alert .alert .fd-btn a{
                width:100%;
                font-size: 18px;
                display: flex;
                flex-direction: row;
                align-items: center;
                justify-content: center;
                color: rgba(0,0,0,.8);
            }
            .jq-alert .alert .fd-btn a.cancel{
                position: relative;
                color: rgba(0,0,0,.5);
                line-height: 50px;
            }
            .jq-alert .alert .fd-btn a.cancel:after{
                content: "";
                position: absolute;
                top:.1rem;
                right:0;
                width: 1px;
                height: .6rem;
                background-color: #F3F3F3;
            }
            .jq-alert .alert .fd-btn a.confirm{
                color: #2196F3;
            }
            .jq-alert .alert .fd-btn a.confirm:active{
                background-color: #2196F3;
                color: #FFF;
            }

            /*toast弹出层*/
            .jq-toast{
                z-index: 999;
                position:fixed;
                top:0;
                left:0;
                width:100%;
                height: 100%;
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                flex-direction: row;
                -webkit-flex-direction: row;
                -ms-flex-direction: row;
                justify-content: center;
                -webkit-justify-content: center;
                align-items: center;
                -webkit-align-items: center;
            }
            .jq-toast .toast{
                max-width: 80%;
                padding: 10px 20px;
                background-color: rgba(0,0,0,.48);
                color: #FFF;
                border-radius: 4px;
                font-size: 18px;
            }
            .confirm .cancel{
                text-decoration: none !important;
            }
            .inp_maie{
                height: 32px !important;
                width: 20% !important;
                margin-top: 0 !important;
            }
            .dj{
                  color: #fff;
                  background-color: #5cb85c;
                  border-color: #5cb85c;
                  padding: 2px;
                  font-size: 12px;
                  border-radius: 2px;
            }
  </style>
{/literal}
<title>订单列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe705;</i> 用户管理 <span class="c-gray en">&gt;</span> 用户管理列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c"> 
       <form method="get" action="index.php" name="form1">
            <div style="margin-top:10px;padding:10px;height:30px; width:100%; height:38px; border-left:solid 1px #fff;border-right:solid 1px #fff; ">
      <input type="hidden" name="module" value="userlist" />
          <input type="text" class="input-text" style="width:250px" placeholder="用户名" name="name" value="{$name}">
          <input type="text" class="input-text" style="width:250px" placeholder="手机号码" name="tel" value="{$tel}">
            <input name="startdate" value="{$startdate}" size="8" readonly class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;" />
            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.startdate);" />
            至
            <input name="enddate" value="{$enddate}" size="8" readonly  class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;"/>
            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.enddate);" />
            <input name="" id="" class="btn btn-success" type="submit" value="查询">
          <input type="button" value="导出本页" class="btn btn-success" onclick="excel('ne')">
          <input type="button" value="导出全部" class="btn btn-success" onclick="excel('all')">
            <a style="text-decoration:none"  href="index.php?module=notellsuvt"><span style="float: right;margin-right: 20px;line-height: 35px;height: 35px;">查看全部消息</span></a>
            </div>
           
    </form>
    </div>
    
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
              <tr class="text-c">
                <th width="40">选择</th>
                <th width="40">ID</th>
                <th width="100">头像</th>
                <th width="150">微信昵称</th>
                <th width="100">余额</th>
                <th width="50">积分</th>
                <th width="180">注册时间</th>
                <th width="150">手机号码</th>
                <th width="100">订单总额</th>
                <th width="100">订单总数</th>
                <th width="100">分享次数</th>
                <th width="200">操作</th>
              </tr>
            </thead>
            <tbody>
            {foreach from=$list item=item name=f1}
                <tr class="text-c">
                    <td><input type="checkbox" name="checkid" id="checkid{$item->id}" value="{$item->id}" onchange="selectId({$item->id})"></td>
                      <td>{$item->id}</td>
                      <td><image class='pimg' src="{$item->headimgurl}" style="width: 60px;height:60px;border-radius: 30px;border: 1px solid darkgray;"/></td>
                      <td>{$item->wx_name}</td>
                      <td>￥{$item->money}</td>
                      <td>{$item->score}</td>
                      <td>{$item->Register_data}</td>
                      <td>{$item->mobile}</td>
                      <td>{$item->z_price}</td>
                      <td>{$item->z_num}</td>
                      <td>{$item->share_num}</td>
                    
                    <td>
                          <a style="text-decoration:none" class="ml-5" href="index.php?module=userlist&action=seng&id={$item->id}" title="发私信" ><img src="style/images/ss.png" style="width: 18px;height:18px;"/> </a>
                          <a style="text-decoration:none" class="ml-5" href="index.php?module=userlist&action=view&id={$item->id}" title="查看" ><i class="Hui-iconfont">&#xe63e;</i></a>
                          <a href="" style="text-decoration:none" class="ml-5" href="index.php?module=userlist&action=del&id={$item->id}" onclick="return confirm('确定要删除此用户吗?')"><i class="Hui-iconfont">&#xe6e2;</i></a>
                          <span style="text-decoration:none" class="ml-5 dj" href="javascript:;" title="充值积分" onclick="refuse(this,'{$item->user_id}','score','请输入充值的积分金额，扣除添加负号')">充值积分</span>
                          <span style="text-decoration:none" class="ml-5 dj" href="javascript:;" title="充值余额" onclick="refuse(this,'{$item->user_id}','money','请输入充值的余额，扣除添加负号')">充值余额</span>
                      </td>
                   
                </tr>
            {/foreach}
            </tbody>
        </table>
    </div>
     <div style="width:80%;margin:40px 0 0 0px;">
            <input type="checkbox" style="zoom:150%;" id="allAndNotAll" /> 全选
            <a class="btn btn-primary radius" id="getAllSelectedId" style="margin-left:20px;">群发消息</a>
    </div>
</div>

<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:absolute;"><img id="bigimg" src="" /></div></div>
    
<script type='text/javascript' src='modpub/js/calendar.js'> </script>
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/FineMessBox/js/common.js"></script>
<script type="text/javascript" src="style/FineMessBox/js/subModal.js"></script>

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
    // console.log(pagesize);
    location.href=location.href+'&pageto='+pageto+'&pagesize='+pagesize+'&page='+page;
}
function refuse(obj,id,type,text) {
    jqalert({
        title:'提示',
        prompt:text,
        yestext:'提交',
        notext:'取消',
        id:id,
        url:"index.php?module=userlist",
        obj:obj,
        type:type,
    })
};

$('.table-sort').dataTable({
    "aaSorting": [[ 1, "desc" ]],//默认第几个排序
    "bStateSave": false,//状态保存
    "aoColumnDefs": [
      //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
      {"orderable":false,"aTargets":[0,1,2,3,4,5,6,7]}// 制定列不参与排序
    ]
});

var ids= [];
        $("#allAndNotAll").click(function() {   
            if (this.checked){    
                $("input[name=checkid]").each(function(index){   
                      $(this).prop("checked", true);
                      var val = $(this).val();
                      arrModify(ids,val,1);           
                });  
            } else {     
                $("input[name=checkid]").each(function(index) {     
                      $(this).prop("checked", false);
                      var val = $(this).val();
                      arrModify(ids,val,2);                      
                });  
            } 
                  
        });
        Array.prototype.indexOf = function(val) { 
        for (var i = 0; i < this.length; i++) { 
           if (this[i] == val) return i; 
        } 
        return -1; 
    }
    Array.prototype.remove = function(val) { 
        var index = this.indexOf(val); 
        if (index > -1) { 
        this.splice(index, 1); 
        } 
    }
    
    function arrModify(arr,val,type) {   //１为增加元素  2为删除元素
        if(type == 1){
           var index = $.inArray(val,arr);
           if(index === -1) arr.push(val);
        }else if(type == 2){
           arr.remove(val);
        }
        return arr;
    }
    function selectId(i){
        i = i.toString();
        var index = $.inArray(i,ids);  //判断数组中是否存在该值,如存在返回下标值,如不存在，返回-1
        if($('#checkid'+i).prop('checked') == true){
          if(index === -1) ids.push(i);  
        }else{
          ids.remove(i);
        }
    }
       Array.prototype.distinct = function(){   //数组去重
             var arr = this,
              result = [],
              i,
              j,
              len = arr.length;
             for(i = 0; i < len; i++){
              for(j = i + 1; j < len; j++){
               if(arr[i] === arr[j]){
                j = ++i;
               }
              }
              result.push(arr[i]);
             }
             return result;
         }
   
          
        $('#getAllSelectedId').click(function(){
          if(ids.length === 0){
             layer.alert('没有选择用户！',{
               icon: 5,
               title: "提示"
            });
          }else{
           ids = ids.distinct();
           var delIds=ids.join(",");
           location.href="index.php?module=userlist&action=seng&id="+delIds
          }
        });

</script>
{/literal}
</body>
</html>