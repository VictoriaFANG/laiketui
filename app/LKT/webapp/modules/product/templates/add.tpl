<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
<meta http-equiv="Cache-Control" content="no-siteapp"/>

<link href="style/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
<link href="style/css/H-ui.admin.css" rel="stylesheet" type="text/css"/>
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css"/>

<script language="javascript" src="modpub/js/check.js"></script>
{literal}
<script type="text/javascript">
function check(f) {
    if (Trim(f.product_title.value) == "") {
        alert("产品名称不能为空！");
        f.pname.value = '';
        return false;
    }
    if (Trim(f.sort.value) == "") {
        alert("排序不能为空！");
        f.sort.value = '';
        return false;
    }
    f.sort.value = Trim(f.sort.value);
    if (!/^(([1-9][0-9]*)|0)(\.[0-9]{1,2})?$/.test(f.sort.value)) {
        alert("排序号必须为数字，且格式为 ####.## ！");
        f.sort.value = '';
        return false;
    }
    return true;
}
</script>
{/literal}
<title>添加产品</title>
</head>
<body>
<div class="breadcrumb" style="margin-top: 0;"><i class="Hui-iconfont">&#xe616;</i> 产品管理 <span class="c-gray en">&gt;</span> 产品列表管理 <span class="c-gray en">&gt;</span> 发布产品 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="#" onclick="location.href='index.php?module=product';" title="关闭"><i class="Hui-iconfont">&#xe6a6;</i></a></div>
<div class="pd-20">
    <form name="form1" action="index.php?module=product&action=add" enctype="multipart/form-data" method="post">
        <input type="hidden" name="attribute" class="attribute" value=""/>
        <input type="hidden" name="uploadImg" value="{$uploadImg}"/>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red">*</span>产品标题：</label>
            <div class="formControls col-4" style="width: 16.8%;">
                <input type="text" class="input-text" value="" placeholder="" id="" name="product_title">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>副标题：</label>
            <div class="formControls col-4" style="width: 16.8%;">
                <input type="text" class="input-text" value="" placeholder="" id="" name="subtitle">
            </div>
            <text style="padding-left: 5px;line-height:30px;">简洁表达产品，用来显示在首页产品，避免截取时不能表达是什么产品。</text>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red">*</span>产品类别：</label>
            <div class="formControls col-2"> <span class="select-box">
                <select name="product_class" class="select">
                    <option selected="selected" value="0">请选择类别</option>
                    {$ctype}
                </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>产品品牌：</label>
            <div class="formControls col-2">
                <span class="select-box">
                    <select name="brand_class" class="select">
                        <option selected="selected" value="0">请选择品牌</option>
                        {foreach from=$brand item=item name=f1}
                            <option value="{$item->brand_id}">{$item->brand_name}</option>
                        {/foreach}
                    </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red">*</span>关键词：</label>
            <div class="formControls col-4" style="width: 16.8%;">
                <input type="text" class="input-text" value="" placeholder="" id="" name="keyword">
            </div>
        </div>
        <div class="row cl" id="attribute_add">
            <label class="form-label col-xs-4 col-sm-2">产品规格：</label>
            <div class="formControls col-xs-8 col-sm-10" style="border: solid 1px #eee;" id="add-tr">
                <div style="width:30%;float:left;padding-left: 5px;" id="attribute">
                    <div style="margin: 5px auto;" class="attribute_1 option" id="cattribute_1">
                        <input type="text" name="attribute_name" id="attribute_name_1" placeholder="属性名称" value="" class="input-text attribute_name" style=" width:50%" onblur="leave();"/>
                        -
                        <input type="text" name="attribute_value" id="attribute_value_1" placeholder="值" value="" class="input-text" style=" width:45%" onblur="leave();"/>
                    </div>
                </div>
                <die style=" width:45%;float:left;" id="parameter">
                    <div style="margin: 5px auto;">
                        <input type="number" name="cost_price" id="" placeholder="成本价" value="" class="input-text" style=" width:18%">
                        元
                        <input type="number" name="original_price" id="" placeholder="原价" value="" class="input-text" style=" width:18%">
                        元
                        <input type="number" name="present_price" id="" placeholder="现价" value="" class="input-text" style=" width:18%">
                        元
                        <input type="number" name="num" id="" placeholder="数量" value="" class="input-text" style=" width:18%">
                        <select name="unit" id="unit" class="input-text" style="width:48px;vertical-align: middle;">
                            <option value="盒">
                                盒
                            </option>
                            <option value="篓">
                                篓
                            </option>
                            <option value="箱">
                                箱
                            </option>
                            <option value="盒">
                                盒
                            </option>
                            <option value="个">
                                个
                            </option>
                            <option value="套">
                                套
                            </option>
                            <option value="包">
                                包
                            </option>
                            <option value="支">
                                支
                            </option>
                            <option value="条">
                                条
                            </option>
                            <option value="根">
                                根
                            </option>
                            <option value="本">
                                本
                            </option>
                            <option value="瓶">
                                瓶
                            </option>
                            <option value="块">
                                块
                            </option>
                            <option value="片">
                                片
                            </option>
                            <option value="把">
                                把
                            </option>
                            <option value="组">
                                组
                            </option>
                            <option value="双">
                                双
                            </option>
                            <option value="台">
                                台
                            </option>
                            <option value="件">
                                件
                            </option>
                        </select>
                    </div>
                </die>
                <die style="float:left;margin-top: 5px;margin-left: 5px;">
                    <input type="hidden" id="picurl1" class="td-input" name="img[]" datatype="*" nullmsg="请选择图片"/>
                    <img id="thumb_url1" src='' style="height:31px;width:50;">
                    <span class="btn btn-success" id="image1" type="button">选择图片</span>
                </die>
                <die style="float:right;margin-top: 5px;">
                    <span class="btn btn-primary radius" id="save" onclick="Preservation();">保存</span>
                    <span class="btn btn-secondary radius" id="empt" onclick="empty();">清空</span>
                </die>
            </div>
        </div>
        <div class='row cl' id='table' style='width: 95%;padding-left: 100px;display:none;'>
            <table class='table table-border table-bordered table-bg' style='width: 98%;margin-left: 20px;'>
                <thead id="thead">

                </thead>
                <tbody id="tbody">

                </tbody>
            </table>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>显示类型：</label>
            <div class="formControls col-xs-8 col-sm-8 skin-minimal">
                <div class="radio-box">
                    <input name="s_type[]" type="checkbox" id="sex-1" value="1">
                    <label for="sex-1">新品</label>
                </div>
                <div class="radio-box">
                    <input type="checkbox" id="sex-2" name="s_type[]" value="2">
                    <label for="sex-2">热销</label>
                </div>
                <div class="radio-box">
                    <input type="checkbox" id="sex-3" name="s_type[]" value="3">
                    <label for="sex-3">推荐</label>
                </div>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">排序号：</label>
            <div class="formControls col-2">
                <input type="number" class="input-text" value="100" placeholder="" id="" name="sort">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">产品主图：</label>
            <div class="formControls col-xs-8 col-sm-10" style="width: 20%;">
                <img id="thumb_url" src='../LKT/images/nopic.jpg' style="height:100px;width:150">
                <input type="hidden" id="picurl" name="image" datatype="*" nullmsg="请选择图片"/>
                <input type="hidden" name="oldpic" value="">
                <button class="btn btn-success" id="image" type="button">选择图片</button>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2">产品展示图：</label>
            <div class="formControls col-10" style="width: 40%;">
                <div class="uploader-thum-container">
                    <input name="imgurls[]" multiple='multiple' type="file" style="width:210px;" accept="upload_image/x-png,image/gif,image/jpeg"/>注:最多五张,一定为.jpg格式
                </div>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-2"><span class="c-red"></span>运费设置：</label>
            <div class="formControls col-2"> <span class="select-box">
                <select name="freight" class="select">
                    <option selected="selected" value="0">默认模板</option>
                    {foreach from=$freight item=item1 name=f2}
                        <option value="{$item1->id}">{$item1->name}</option>
                    {/foreach}
                </select>
                </span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">详细内容：</label>
            <div class="formControls col-xs-8 col-sm-10">
                <script id="editor" type="text/plain" name="content" style="width:100%;height:400px;z-index: 999;"></script>
            </div>
        </div>
        <div class = "col-10 col-offset-2" style = "margin-left: 45.66667%;" >
            <button class = "btn btn-primary radius" type = "submit" name = "submit" ><i class = "Hui-iconfont" > &#xe632;</i> 提 交</button >
            <button class = "btn btn-secondary radius" type = "reset" name = "reset" ><i class = "Hui-iconfont" > &#xe632;</i> 重 写</button >
        </div>
    </form>
</div>
<script type = "text/javascript" src = "style/js/jquery.js" ></script>
<script type="text/javascript" src="style/lib/ueditor/1.4.3/ueditor.config.js"></script>
<script type="text/javascript" src="style/lib/ueditor/1.4.3/ueditor.all.min.js"></script>
<script type="text/javascript" src="style/lib/ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<!-- 新增编辑器引入文件 -->
<link rel="stylesheet" href="style/kindeditor/themes/default/default.css"/>
<script src="style/kindeditor/kindeditor-min.js"></script>
<script src="style/kindeditor/lang/zh_CN.js"></script>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="style/lib/layer/2.1/layer.js"></script>
<script type="text/javascript" src="style/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="style/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
{literal}
<script>
KindEditor.ready(function (K) {
    var editor = K.editor({
    allowFileManager: true,
    uploadJson: "index.php?module=system&action=uploadImg", //上传功能
    fileManagerJson: 'kindeditor/php/file_manager_json.php', //网络空间
    });
    //上传背景图片
    K('#image').click(function () {
        editor.loadPlugin('image', function () {
            editor.plugin.imageDialog({
                //showRemote : false, //网络图片不开启
                //showLocal : false, //不开启本地图片上传
                imageUrl: K('#picurl').val(),
                clickFn: function (url, title, width, height, border, align) {
                    K('#picurl').val(url);
                    $('#thumb_url').attr("src", url);
                    editor.hideDialog();
                }
            });
        });
    });
    //上传背景图片
    K('#image1').click(function () {
        editor.loadPlugin('image', function () {
            editor.plugin.imageDialog({
                showRemote: false, //网络图片不开启
                //showLocal : false, //不开启本地图片上传
                imageUrl: K('#picurl1').val(),
                clickFn: function (url, title, width, height, border, align) {
                    K('#picurl1').val(url);
                    $('#thumb_url1').attr("src", url);
                    //                    document.getElementById("thumb_url1").style.display='block';
                    editor.hideDialog();
                }
            });
        });
    });
});
var num = 1;
var attribute = [];
var rnum = 0;

// 离开事件
function leave() {
    var m = $("#add-tr #attribute").find(".input-text");
    var min = m.length - 2;
    var max = m.length - 1;

    for (var i = 0; i < m.length; i++) {
        if (i % 2 == 0) {   //奇数
            if (m[i].value == m[min].value && i != min) {
                $('#attribute_name_' + num).val("");
                alert("属性名称重复");
                break;
            }
        }
    }
    if (m[min].value != '' && m[max].value != '') {
        num++;
        var rew = "<div style='margin: 5px auto;' class='attribute_" + num + " option' id='cattribute_" + num + "'>" +
        "<input type='text' name='attribute_name' id='attribute_name_" + num + "' placeholder='属性名称' value='' class='input-text attribute_name' style=' width:50%' onblur='leave();' />" +
        " - " +
        "<input type='text' name='attribute_value' id='attribute_value_" + num + "' placeholder='值' value='' class='input-text' style=' width:45%' onblur='leave();' />" +
        "</div>";
        $("#add-tr #attribute").append(rew);
    }
}

// 清除
function empty() {
    var num_1 = $('.num').length;

    var m = $("#add-tr #attribute").find(".input-text");
    var n = $("#add-tr #parameter").find(".input-text");

    $(".attribute_1:gt(0)").remove();

    if (num_1 == 0) {
        m.each(function () {
            $(this).val("");
        })
        n.each(function () {
            $(this).val("");
        })
    } else {
        for (var i = 0; i < num; i++) {
            m.each(function () {
                $("#attribute_value_" + i).val("");
            })
        }
        n.each(function () {
            $(this).val("");
        })
    }
}

// 保存
function Preservation() {
    var m = $("#add-tr #attribute").find(".input-text");
    var n = $("#add-tr #parameter").find(".input-text");
    var image = $("#add-tr #thumb_url1").attr("src");
    var min = m.length - 2;
    var max = m.length - 1;
    var res = [];
    // 最后2个input框，一个为空，一个不为空
    if (m[min].value == '' && m[max].value != '' || m[max].value == '' && m[min].value != '') {
        alert("您有未填属性");
        return false;
    }
    for (var i = 0; i < m.length; i++) { // 循环判断是否有未填写
        if (m[i].value == '' && i != min && i != max) {
            alert("您有未填属性");
            return false;
        } else {
            if (m[i].value != '') {
                res[i] = m[i].value;
            }
        }
    }
    var All = {};
    var number = $('.option').length; // 获取属性个数

    for (var i = 0; i < number - 1; i++) {
        var key = $('.option').eq(i).find('input[name="attribute_name"]').val(); // 属性名称
        var value = $('.option').eq(i).find('input[name="attribute_value"]').val(); // 属性值
        All[key] = value;
    }
    for (var j = 0; j < n.length; j++) {
        if (n[j].value == '') {
            alert("您有未填参数");
            return false;
        } else {
            if (j == 0) {
                if (n[j].value > 0) {
                    All['成本价'] = n[j].value;
                } else {
                    alert("成本价不能低于0");
                    return false;
                }
            } else if (j == 1) {
                if (n[j].value >= n[0].value) {
                    All['原价'] = n[j].value;
                } else {
                    alert("原价不能低于成本价");
                    return false;
                }
        } else if (j == 2) {
            if (n[j].value > 0) {
                if (n[j].value < n[0].value) {
                    alert("现价低于成本价");
                }
                All['现价'] = n[j].value;
            } else {
                alert("现价不能低于0");
                return false;
            }
        } else if (j == 3) {
                if (n[j].value > 0) {
                    All['数量'] = n[j].value;
                } else {
                    alert("数量不能低于0");
                    return false;
                }
            } else {
                All['单位'] = n[j].value;
            }
        }
    }
    if (image == '') {
        alert("请上传图片");
        return false;
    } else {
        All['图片'] = image;
    }
    var attribute_1 = JSON.stringify(All); // 从一个对象中解析出字符串
    rnum++;
    var num_1 = $('.num').length + 1;

    if (in_array(attribute_1, attribute)) {
        alert("属性重复，请核对属性");
        return false;
    }

    attribute[attribute.length] = attribute_1; // 吧当前数组添加到全局数据里

    var attribute_value = '{';
    for (var i = 0; i < attribute.length; i++) {
        attribute_value += '"' + i + '":' + attribute[i] + ',';
    }

    attribute_value = attribute_value.substring(0, attribute_value.length - 1);
    attribute_value += '}';

    $(".attribute").val(attribute_value);
    if (num_1 == 1) {
        var rew = "<tr id='attribute_" + rnum + "'>";
        for (var k in All) {
            rew += "<th>" + k + "</th>";
        }
        rew += "<td>操作</td>" +
                "</tr>";

        rew1 = "<tr class='num' id='tr_" + rnum + "'>";
        for (var k in All) {
            if (k == '图片') {
                rew1 += "<td><img src='" + All[k] + "' style='height:50px;width:50;'></td>";
            } else {
                rew1 += "<td>" + All[k] + "</td>";
            }
        }
        rew1 += "<td style='width: 30px;'><span class='btn btn-secondary radius' onclick='tr_del(" + rnum + ")' >删除</span></td>" +
            "</tr>";

        $("#thead").prepend(rew);
        $("#tbody").prepend(rew1);
        for (var num1 = 1; num1 <= num; num1++) {
            document.getElementById('attribute_name_' + num1).style.backgroundColor = "#eeeeee"; // 修改属性名称样式
        }
        document.getElementById('unit').style.backgroundColor = "#eeeeee"; // 修改下拉框样式
        $("#unit").attr("disabled", "disabled"); // 修改下拉框不能选择
        $('.option').find('input[name="attribute_name"]').attr('readOnly', true); // 修改下拉框属性名称不能选择
        document.getElementById("cattribute_" + num).style.display = 'none'; // 显示表格
        document.getElementById("table").style.display = ''; // 显示表格
    } else {
        rew2 = "<tr class='num' id='tr_" + rnum + "'>";
        for (var k in All) {
            if (k == '图片') {
                rew2 += "<td><img src='" + All[k] + "' style='height:50px;width:50;'></td>";
            } else {
                rew2 += "<td>" + All[k] + "</td>";
            }
        }
        rew2 += "<td style='width: 30px;'><span class='btn btn-secondary radius' id='empt' onclick='tr_del(" + rnum + ")'>删除</span></td>" +
        "</tr>";
        $("#tbody").append(rew2);
    }
}

// 删除
function tr_del(obj) {
    var obj1 = obj - 1;
    $("#tr_" + obj).remove();

    delete attribute[obj1];

    var attribute_value = '{';
    for (var i = 0; i < attribute.length; i++) {
        if(attribute[i] == 'undefined' || attribute[i] == '' || !attribute[i]){
            attribute_value += '';
        }else{
            attribute_value += '"' + i + '":' + attribute[i] + ',';
        }
    }

    attribute_value = attribute_value.substring(0, attribute_value.length - 1);
    attribute_value += '}';

    $(".attribute").val(attribute_value);

    var num_1 = $('.num').length;
    if (num_1 == 0) {
        rnum = 0;
        attribute = [];

        $('.option').find('input[name="attribute_name"]').attr('readOnly', false);
        for (var num1 = 1; num1 <= num; num1++) {
            document.getElementById('attribute_name_' + num1).style.backgroundColor = "#ffffff"; // 修改属性名称样式
        }
        document.getElementById('unit').style.backgroundColor = "#ffffff"; // 修改下拉框样式
        $("#unit").attr("disabled", ""); // 修改下拉框不能选择

        document.getElementById("cattribute_" + num).style.display = '';
        document.getElementById("table").style.display = 'none';
        var o = document.getElementById("thead");
        var a = document.getElementById("attribute_1");
        o.removeChild(a);
    }
}

function in_array(search, array) {
    for (var i in array) {
        if (array[i] == search) {
            return true;
        }
    }
    return false;
}

$(function () {
var ue = UE.getEditor('editor');
});
</script>
{/literal}
</body>
</html>