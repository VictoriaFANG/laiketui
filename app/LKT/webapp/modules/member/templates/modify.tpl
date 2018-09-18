
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
<link href="style/lib/icheck/icheck.css" rel="stylesheet" type="text/css" />
<link href="style/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
<link href="style/lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="modpub/js/check.js" > </script>
<script type="text/javascript" src="modpub/js/ajax.js"> </script>

<script type="text/javascript" src="style/lib/jquery/1.9.1/jquery.min.js"></script> 

{literal}
<script type="text/javascript">
function check(f){
  if(Trim(f.color_name.value) == "" ){
    alert('管理员名称不能为空！');
    return false;
  }
  if(Trim(f.color.value) == 0 ){
    alert('管理员代码不能为空！');
    return false;
  }
}

function checkcheck(id){
  var url = "index.php?module=member&action=ajax&id="+id;
  ajax(url,function(text){
    var array=eval(text);
    for(var i=0;i<array.length;i++){
      document.getElementById(array[i]).checked=true;
    }
  });
}
</script>
{/literal}
<title>修改管理员信息</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe616;</i> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <span class="c-gray en">&gt;</span> 修改管理员信息 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="#" onclick="location.href='index.php?module=member';" title="关闭" ><i class="Hui-iconfont">&#xe6a6;</i></a></nav>
<div class="pd-20">
  <form name="form1" action="index.php?module=member&action=modify" class="form form-horizontal" method="post" onsubmit="return check(this);"  enctype="multipart/form-data" >
    <input type="hidden" name="id" value="{$id}" />
    <div class="row cl">
      <label class="form-label col-2"><span class="c-red"></span>管理员名称：</label>
      <div class="formControls col-10">
        <input type="text" class="input-text" name="name" value="{$name}" >
      </div>
    </div>
    <div class="row cl">
      <label class="form-label col-2"><span class="c-red"></span>密码：</label>
      <div class="formControls col-10">
        <input type="password" class="input-text" value="{$password}" name="password">
      </div>
    </div>

    <div class="row cl">
      <label class="form-label col-2">权限分配：</label>
      <div class="formControls col-10">
        <dl class="permission-list">
          <dt>
            <label>
              <input type="checkbox" value="" name="user-Character-0" id="user-Character-0">
              所有权限</label>
          </dt>
          <dd>
            <dl class="cl permission-list2">
              <dt>
                <label class="">
                  <input type="checkbox" value="" name="user-Character-0-0" id="user-Character-0-0">
                  轮播图管理：</label>
              </dt>
              <dd>
                <label class="">
                  <input type="checkbox" value="banner" name="permission[]" id="banner">
                  轮播图</label>
              </dd>
            </dl>
            <dl class="cl permission-list2">
              <dt>
                <label class="">
                  <input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
                  新闻管理：</label>
              </dt>
              <dd>
                <label class="">
                  <input type="checkbox" name="permission[]"  value="newsclass"  id='newsclass' /> 新闻分类管理
                  <input type="checkbox" name="permission[]"  value="newslist" id='newslist' /> 新闻列表管理
                </label>
              </dd>
            </dl>
            <dl class="cl permission-list2">
              <dt>
                <label class="">
                  <input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
                  文章管理：</label>
              </dt>
              <dd>
                <label class="">
                  <input type="checkbox" name="permission[]"  value="Article"  id='Article' /> 文章列表
                </label>
              </dd>
            </dl>
            <dl class="cl permission-list2">
              <dt>
                <label class="">
                  <input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
                  用户管理：</label>
              </dt>
              <dd>
                <label class="">
                  <input type="checkbox" name="permission[]"  value="userlist" id='userlist' /> 用户列表管理
                </label>
              </dd>
            </dl>
            <dl class="cl permission-list2">
              <dt>
                <label class="">
                  <input type="checkbox" value="" name="user-Character-0-1" id="user-Character-0-1">
                  系统管理：</label>
              </dt>
              <dd>
                <label class="">
                  <input type="checkbox" name="permission[]"  value="system" id='system' /> 系统参数
                  <input type="checkbox" name="permission[]"  value="bgcolor"  id='bgcolor' /> 前台背景颜色
                  <input type="checkbox" name="permission[]"  value="member" id='member' /> 管理员列表
                </label>
              </dd>
            </dl>
          </dd>
        </dl>
      </div>
    </div>
    <div class="row cl">
      <div class="col-10 col-offset-5">
        <button class="btn btn-primary radius" type="submit" name="Submit"><i class="Hui-iconfont">&#xe632;</i> 提 交</button>
        <button class="btn btn-secondary radius" type="reset" name="reset"><i class="Hui-iconfont">&#xe632;</i> 重 写</button>
      </div>
    </div>
  </form>
    
</div>
<script>checkcheck('{$id}');</script>

{literal}
<script>
$(function(){
  $(".permission-list dt input:checkbox").click(function(){
    $(this).closest("dl").find("dd input:checkbox").prop("checked",$(this).prop("checked"));
  });
  $(".permission-list2 dd input:checkbox").click(function(){
    var l =$(this).parent().parent().find("input:checked").length;
    var l2=$(this).parents(".permission-list").find(".permission-list2 dd").find("input:checked").length;
    if($(this).prop("checked")){
      $(this).closest("dl").find("dt input:checkbox").prop("checked",true);
      $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",true);
    }
    else{
      if(l==0){
        $(this).closest("dl").find("dt input:checkbox").prop("checked",false);
      }
      if(l2==0){
        $(this).parents(".permission-list").find("dt").first().find("input:checkbox").prop("checked",false);
      }
    }
  });
});
</script>
{/literal}
</body>
</html>