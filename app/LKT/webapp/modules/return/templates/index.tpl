
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
            str = '<a style="text-decoration:none" class="ml-5" href="index.php?module=return&action=view&id='+id+'" title="查看"><i class="Hui-iconfont">&#xe63e;</i></a>',
            td = $(obj).parent("td");
            
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
            htm += '<input type="text" class="prompt-text"></div>';
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
            // htm += '<div class="content"><div class="prompt">';
            // htm += '<p class="prompt-content">'+content+'</p>';
            // htm += '<span class="pd20">应退：'+price+' <input type="hidden" value="'+price+'" class="ytje">   &nbsp; 实退:</span><input type="text" value="'+price+'" class="prompt-text inp_maie"></div>';
            // htm +='</div>';        
            // htm+='<div class="content">'+content+'</div>';
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
            if(type == 2 || type == 5 || type == 8){
                    var text = $(".prompt-text").val();
                    if(text.length >1){
                          $.ajax({
                           type: "POST",
                           url: url,
                           data: "id="+id+'&text='+text+'&m='+type,
                           success: function(res){
                            if(res){
                                td.html(str);
                                td.prev().html('<span style="color:#ff2a1f;">已拒绝</span>');
                                jqtoast('提交成功');
                                setTimeout(function () {
                                    al.remove();
                                },300);     
                            }else{
                                jqtoast('操作失败!');
                            }
                           }
                        });

                    }else{
                        jqtoast('原由不能为空!');
                    }
            }else{

                    var text = $(".prompt-text").val();
                    if(type == 1){

                        $.ajax({
                           type: "POST",
                           url: url,
                           data: "id="+id+'&m='+type,
                           success: function(res){
                            if(res == 1){
                                td.html(str);
                                if(type == '4' || type == '9'){
                                   var status = '<span style="color:#8FBC8F;">已退款</span>';
                                }else{
                                   var status = '<span style="color:#A4D3EE;">待买家发货</span>';
                                }
                                td.prev().html('<span style="color:#30c02d;">'+status+'</span>');
                                jqtoast('提交成功');
                                setTimeout(function () {
                                    al.remove();
                                },300);     
                            }else{
                                jqtoast('操作失败!');
                            }
                           }
                        });
                    }else{
                         if(Number(text) > 0 && Number(text) <= Number(price)){
                            $.ajax({
                               type: "POST",
                               url: url,
                               data: "id="+id+'&m='+type+'&price='+Number(text),
                               success: function(res){
                                if(res == 1){
                                    td.html(str);
                                    if(type == '4' || type == '9'){
                                       var status = '<span style="color:#8FBC8F;">已退款</span>';
                                    }else{
                                       var status = '<span style="color:#A4D3EE;">待买家发货</span>';
                                    }
                                    td.prev().html('<span style="color:#30c02d;">'+status+'</span>');
                                    jqtoast('退款成功'+text+'元');
                                    setTimeout(function () {
                                        al.remove();
                                    },300);     
                                }else{
                                    jqtoast('操作失败!');
                                }
                               }
                            });
                        }else{
                            jqtoast('输入金额有误,请重新输入!');
                        }
                        console.log(text,price);                       
                    }


                    // $.ajax({
                    //    type: "POST",
                    //    url: url,
                    //    data: "id="+id+'&m='+type,
                    //    success: function(res){
                    //     if(res == 1){
                    //         td.html(str);
                    //         if(type == '4' || type == '9'){
                    //            var status = '<span style="color:#8FBC8F;">已退款</span>';
                    //         }else{
                    //            var status = '<span style="color:#A4D3EE;">待买家发货</span>';
                    //         }
                    //         td.prev().html('<span style="color:#30c02d;">'+status+'</span>');
                    //         jqtoast('提交成功');
                    //         setTimeout(function () {
                    //             al.remove();
                    //         },300);     
                    //     }else{
                    //         jqtoast('操作失败!');
                    //     }
                    //    }
                    // });
            }

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
                height: 73px;
                background:none;
                border:none;
                outline: none;
                width: 100%;
                box-sizing: border-box;
                margin-top: 20px;
                background-color: #FFF;
                border:1px solid #dcdcdc;
                text-indent:5px;
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
/*            .pd20{
                margin-top: 20px;
            }*/
</style>
{/literal}
<title>退货列表</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe627;</i> 订单管理 <span class="c-gray en">&gt;</span> 退货列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
<input type="hidden" class="price" value="">
    <div class="text-c"> 
        <form name="form1" action="index.php" method="get">
            <input type="hidden" name="module" value="return" />
            <input type="text" name="p_name" size='8' value="{$p_name}" id="" placeholder="订单号" style="width:200px" class="input-text">
            <input name="startdate" value="{$startdate}" size="8" readonly class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;" />
            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.startdate);" />
            至
            <input name="enddate" value="{$enddate}" size="8" readonly  class="scinput_s" style="width: 100px; height:26px;font-size: 14px;vertical-align: middle;"/>
            <img src="modpub/images/datetime.gif" style="cursor:pointer;" onclick="new Calendar().show(document.form1.enddate);" />
            <input name="" id="" class="btn btn-success" type="submit" value="查询">
            <input type="button" value="导出本页" class="btn btn-success"  onclick="excel('ne')">
            <input type="button" value="导出全部" class="btn btn-success" onclick="excel('all')">
        </form>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-hover table-sort">
            <thead>
                <tr class="text-c">
                    <th>序</th>
                    <th>用户id</th>
                    <th>产品名称</th>
                    <th>产品价格</th>
                    <th>数量</th>
                    <th>订单号</th>
                    <th>发布时间</th>
                    <th>类型</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            {foreach from=$list item=item name=f1}
                <tr class="text-c">   
                    <td>{$smarty.foreach.f1.iteration}</td>
                    <td>{$item->user_id}</td>
                    <td>{$item->p_name}</td>
                    <td>{$item->p_price}</td>
                    <td>{$item->num}</td>
                    <td>{$item->r_sNo}</td>
                    <td>{$item->add_time}</td>
                    <td>
                        {if $item->deliver_time == '' && $item->courier_num == ''}
                        <span style="color:#6CA6CD;">仅退款</span>
                        {else}<span style="color: #ff2a1f;">退货退款</span>{/if}
                    </td>
                    <td style="width: 230px;">{if $item->r_type == 0}<span style="color:#FFA500;">审核中</span>
                        {elseif $item->r_type == 1}<span style="color: #A4D3EE;">待买家发货</span>
                        {elseif $item->r_type == 2 || $item->r_type == 8}<span style="color: #EEB422;">已拒绝</span>
                        {elseif $item->r_type == 3}<span style="color: #30c02d;">待商家收货</span>
                        {elseif $item->r_type == 4 || $item->r_type == 9}<span style="color: #8FBC8F;">已退款</span>
                        {else}<span style="color: #ff2a1f;">拒绝并退回商品</span>{/if}
                    </td>

                    <td> 
                        <a style="text-decoration:none" class="ml-5" href="index.php?module=return&action=view&id={$item->id}" title="查看"><i class="Hui-iconfont">&#xe63e;</i></a>
                        {if $item->r_type == 0}
                            {if $item->deliver_time != ''}
                            <span style="text-decoration:none" class="ml-5" href="javascript:;" title="审核通过" onclick="is_ok(this,{$item->id},1,'确定要通过该用户的申请,并让用户寄回?')"><i class="Hui-iconfont">&#xe6a7;</i></span>
                             <span style="text-decoration:none" class="ml-5" href="javascript:;" title="审核拒绝" onclick="refuse(this,{$item->id},2)"><i class="Hui-iconfont">&#xe6a6;</i></span>
                            {else}
                            <span style="text-decoration:none" class="ml-5" href="javascript:;" title="审核通过" onclick="is_ok(this,{$item->id},9,'确定要通过该用户的申请,并将钱款原路返还?')"><i class="Hui-iconfont">&#xe6a7;</i></span>
                             <span style="text-decoration:none" class="ml-5" href="javascript:;" title="审核拒绝" onclick="refuse(this,{$item->id},8)"><i class="Hui-iconfont">&#xe6a6;</i></span>
                            {/if}

                        {elseif $item->r_type == 3}
                        
                        <span style="text-decoration:none" class="ml-5" href="javascript:;" title="同意并退款" onclick="is_ok(this,{$item->id},4,'确定已到货并退款到用户?')"><i class="Hui-iconfont">&#xe6a7;</i></span>

                        <span style="text-decoration:none" class="ml-5" href="javascript:;" title="拒绝并退回商品" onclick="refuse(this,{$item->id},5)"><i class="Hui-iconfont">&#xe6a6;</i></span>

                        {/if}
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
function excel(pageto) {
    var pagesize = $("[name='DataTables_Table_0_length'] option:selected").val();
    var page = $(".current").text();
    location.href=location.href+'&pageto='+pageto+'&pagesize='+pagesize+'&page='+page;
}
function refuse(obj,id,type) {
    jqalert({
        title:'提示',
        prompt:'请填写拒绝理由?',
        yestext:'提交',
        notext:'取消',
        id:id,
        url:"index.php?module=return&action=examine",
        obj:obj,
        type:type,
    })
};
function is_ok(obj,id,type,content) {
    if(type == 4 || type == 9){
        $.ajax({
               type: "GET",
               url: "index.php?module=return&action=examine",
               data: "id="+id+'&f=check'+'&m='+type,
               success: function(res){
                    if(res){
                        $(".price").val(res);
                        jqalert({
                            title:'提示',
                            content:content,
                            yestext:'是的',
                            url:"index.php?module=return&action=examine",
                            id:id,
                            notext:'取消',
                            obj:obj,
                            type:type,
                            price:res
                        })
                    }else{
                        jqtoast('操作失败!');
                    }
               }
        });  
    }else{
        jqalert({
            title:'提示',
            content:content,
            yestext:'是的',
            url:"index.php?module=return&action=examine",
            id:id,
            notext:'取消',
            obj:obj,
            type:type,
        })
    }

};


</script>

{/literal}
</body>
</html>