<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link href="style/css/dashboard.css" rel="stylesheet" /> 
    <link rel="stylesheet" href="style/assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/assets/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="style/assets/vendor/linearicons/style.css">
    <link rel="stylesheet" href="style/assets/vendor/chartist/css/chartist-custom.css">
    <link rel="stylesheet" href="style/assets/css/main.css">
    <link rel="stylesheet" href="style/assets/css/demo.css">
    <link href="style/css/style.css" rel="stylesheet" /> 
    <link href="style/css/font-awesome.css" rel="stylesheet" /> 
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <script src="style/assets/vendor/jquery/jquery.min.js"></script>
    <script src="style/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="style/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="style/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
    <script src="style/assets/vendor/chartist/js/chartist.min.js"></script>
    <script src="style/assets/scripts/klorofil-common.js"></script>
<title>我的桌面</title>
</head>
<body>
<!-- 显示更新 -->
        <div style="position: fixed; left: 35%; top: 222px; width: 400px; z-index: 309; display: none;" class="dialog-simple check-version-dialog artDialog aui-state-focus">
            <div class="aui-outer animated dialogShow">
                <div class="aui-mask"></div>
                <table class="aui-border">
                    <tbody>
                        <tr>
                            <td class="aui-nw"></td>
                            <td class="aui-n"></td>
                            <td class="aui-ne"></td>
                        </tr>
                        <tr>
                            <td class="aui-w"></td>
                            <td class="aui-c">
                                <div class="aui-inner">
                                    <table class="aui-dialog">
                                        <tbody>
                                            <tr>
                                                <td colspan="2" class="aui-header">
                                                    <div class="aui-title-bar dialog-menu" id="check-version-dialog">
                                                        <div class="aui-title" style="cursor: move;"><img src="./static/images/file_icon/icon_others/info.png" draggable="false" ondragstart="return false;">更新提示</div>
                                                        <a class="aui-min"></a>
                                                        <a class="aui-max"></a>
                                                        <a class="aui-close"></a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="aui-icon" style="display: none;">
                                                    <div class="aui-icon-bg" style="background: none;"></div>
                                                </td>
                                                <td class="aui-main" style="padding: 0px; width: 330px; height: auto;">
                                                    <div class="aui-content">
                                                        <div class="update-box">
                                                            <div class="title">
                                                                <div class="button-radius">
                                                                    <div class="progress hidden"> <span class="total-size"></span> <span class="download-speed"></span>
                                                                        <div class="progress-bar"></div>
                                                                    </div>
                                                                    <a href="javascript:;" class="update-start"><span>立即更新</span><i class="icon-arrow-right"></i></a>
                                                                </div>
                                                                <a href="javascript:;" class="ver_tips update-self-dialog" target="_blank"><span>自动更新</span></a>
                                                                <a href="javascript:;"  class="ver_tips ignore">暂时忽略</a>
                                                                <div class="version">当前版本：<span class="lao_v"></span> | 最新版本：<span class="new_v"></span> <span class="badge" style="background:#f60;">new</span></div>
                                                                <div style="clear:both"></div>
                                                            </div>
                                                            <div class="version-info"> <i>ver <span class="new_v"></span> 更新说明：</i>
                                                                <div class="version-info-content">
                                                                    <p class="content_version">

                                                                    </p>
                                                                    <a class="more" href="index.php" target="_blank" style="position: relative;">查看更多</a>
                                                                    <div style="clear:both"></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="aui-footer">
                                                    <div class="aui-buttons" style="display: none;"></div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                            <td class="aui-e"></td>
                        </tr>
                        <tr>
                            <td class="aui-sw"></td>
                            <td class="aui-s"></td>
                            <td class="aui-se"></td>
                        </tr>
                    </tbody>
                </table>
                <div class="resize-handle resize-top" resize="top"></div>
                <div class="resize-handle resize-right" resize="right"></div>
                <div class="resize-handle resize-bottom" resize="bottom"></div>
                <div class="resize-handle resize-left" resize="left"></div>
                <div class="resize-handle resize-top-right" resize="top-right"></div>
                <div class="resize-handle resize-bottom-right" resize="bottom-right"></div>
                <div class="resize-handle resize-bottom-left" resize="bottom-left"></div>
                <div class="resize-handle resize-top-left" resize="top-left"></div>
            </div>
        </div>
        <input type="hidden" name="version" id="version" value="{$version}">
<!-- 显示更新 -->
<div class="main">
    <!-- MAIN CONTENT -->
    <div class="main-content">
        <div class="container-fluid">
            <!-- OVERVIEW -->
            <div class="panel panel-headline">
                <div class="panel-body">
                    <input type="hidden" name="day1" value="{$today}">
                    <input type="hidden" name="day2" value="{$yesterday}">
                    <input type="hidden" name="day3" value="{$qiantian}">
                    <input type="hidden" name="day4" value="{$sitian}">
                    <input type="hidden" name="day5" value="{$wutian}">
                    <input type="hidden" name="day6" value="{$liutian}">
                    <input type="hidden" name="day7" value="{$qitian}">

                    <input type="hidden" name="couhuiyuan01" value="{$couhuiyuan01}">
                    <input type="hidden" name="couhuiyuan02" value="{$couhuiyuan02}">
                    <input type="hidden" name="couhuiyuan03" value="{$couhuiyuan03}">
                    <input type="hidden" name="couhuiyuan04" value="{$couhuiyuan04}">
                    <input type="hidden" name="couhuiyuan05" value="{$couhuiyuan05}">
                    <input type="hidden" name="couhuiyuan06" value="{$couhuiyuan06}">
                    <input type="hidden" name="couhuiyuan07" value="{$couhuiyuan07}">
                    <input type="hidden" name="couhuiyuan" value="{$couhuiyuan}">
                    <div class="row">
                        <a class="row_a" href="index.php?module=orderslist&status=0&sNo=">
                            <div class="col-md-2" >
                                <div class="metric">
                                    
                                    <span class="icon"><i><img src="../LKT/images/icon/fukuan.png"/></i></span>
                                    <p>
                                        <span class="number">{$dfk}</span>
                                        <span class="title">待付款</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <a class="row_a" href="index.php?module=orderslist&status=1&sNo=">
                            <div class="col-md-2">
                                <div class="metric">
                                    <span class="icon"><img src="../LKT/images/icon/fahuo.png"/></span>
                                    <p>
                                        <span class="number">{$dp}</span>
                                        <span class="title">待发货</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <a class="row_a" href="index.php?module=orderslist&status=2&sNo=">
                            <div class="col-md-2">
                                <div class="metric">
                                    <span class="icon"><img src="../LKT/images/icon/shouhuo.png"/></span>
                                    <p>
                                        <span class="number">{$yth}</span>
                                        <span class="title">待收货</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <a class="row_a" href="index.php?module=orderslist&status=3&sNo=">
                            <div class="col-md-2">
                                <div class="metric">
                                    <span class="icon"><img src="../LKT/images/icon/pingjia.png"/></span>
                                    <p>
                                        <span class="number">{$pj}</span>
                                        <span class="title">待评价</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <a class="row_a" href="index.php?module=orderslist&status=4&sNo=">
                            <div class="col-md-2">
                                <div class="metric">
                                    <span class="icon"><img src="../LKT/images/icon/tuihuo.png"/></span>
                                    <p>
                                        <span class="number">{$th}</span>
                                        <span class="title">退 货</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <!-- MULTI CHARTS -->
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title">会员统计</h3>
                                </div>
                                <div class="panel-heading1">
                                    <h6 class="panel-title1" style="float: right; margin-right: 20px" >累计会员: {$couhuiyuan}  人</h6>
                                </div>
                                <div class="panel-body">
                                    <div id="visits-trends-chart" class="ct-chart"></div>
                                </div>
                            </div>
                        <!-- END MULTI CHARTS -->
                        </div>
                        <div class="col-md-3"> 
                            <div class="weekly-summary text-right" >
                                <span class="number">{$day_yy} </span> <span class="percentage">
                                {if $yingye_day >0}
                                <i class="fa fa-caret-up text-success"></i>
                                {else}
                                <i class="fa fa-caret-down text-danger"></i>
                                {/if}
                                {$yingye_day}</span>
                                <span class="info-label">当日营业额</span>
                            </div>
                            <div class="weekly-summary text-right">
                                <span class="number">{$tm01}</span> <span class="percentage"> 
                                {if $yingye >0}
                                <i class="fa fa-caret-up text-success"></i>
                                {else}
                                <i class="fa fa-caret-down text-danger"></i>
                                {/if}{$yingye}</span>
                                <span class="info-label">本月营业额</span>
                            </div>
                            <div class="weekly-summary text-right">
                                <span class="number">{$tm02}</span> 
                                <span class="info-label">累计营业额</span>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="weekly-summary text-right">
                                <span class="number">{$daydd}</span> <span class="percentage">
                                {if $dingdan_day >0}
                                <i class="fa fa-caret-up text-success"></i>
                                {else}
                                <i class="fa fa-caret-down text-danger"></i>
                                {/if}{$dingdan_day}</span>
                                <span class="info-label">当日订单数</span>
                            </div>
                            <div class="weekly-summary text-right">
                                <span class="number">{$tm}</span> <span class="percentage">{if $dingdan >0}
                                <i class="fa fa-caret-up text-success"></i>
                                {else}
                                <i class="fa fa-caret-down text-danger"></i>
                                {/if} {$dingdan}</span>
                                <span class="info-label">本月订单数</span>
                            </div>
                            <div class="weekly-summary text-right">
                                <span class="number">{$leiji_dd}</span> 
                                <span class="info-label">累计订单数</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END OVERVIEW -->
            <!-- <div class="copyrights">Collect from <a href="http://www.17sucai.com/" >企业网站模板</a></div> -->
            <div class="row">
                <div class="col-md-6" style="height: 500px; overflow:auto;">
                    <!-- RECENT PURCHASES -->
                    <div class="panel">
                        <div class="panel-heading">
                            <h3 class="panel-title">最近购买</h3>
                            <div class="right">
                                <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                            </div>
                        </div>
                        <div class="panel-body no-padding">
                            <table class="table table-striped" border="1" style="border-color: #ddd;border: 1px solid #ddd;text-align: center;width:98%;margin: auto;">
                                <thead>
                                    <tr>
                                        <th>订单号</th>
                                        <th>名称</th>
                                        <th>数量</th>
                                        <th>时间</th>
                                        <th>状态</th>
                                        <th>类型</th>
                                    </tr>
                                </thead>
                                <tbody>
                                {if $re !=0} 
                                    {foreach from=$re item = item name=f1}
                                        <tr>
                                            <td>{$item->r_sNo}</td>
                                            <td style="width: 200px;" >{$item->p_name} </td>
                                            <td>{$item->num}</td>
                                            <td>{$item->add_time}</td>
                                            <td><span class="label label-warning">{$item->r_status1}</span></td>
                                            {if $item->otype == 'pt'}
                                            <td><span >拼团订单</span></td>
                                            {elseif $item->drawid == 0}
                                            <td><span >普通订单</span></td>
                                            {else}
                                            <td><span >抽奖订单</span></td>
                                            {/if}
                                        </tr>
                                    {/foreach}
                                {else}
                                    <tr>
                                        <td colspan="6" style="margin:0 auto; "> <h2 style="text-align: center;"> 暂无相关订单</h2></td>
                                    </tr>
                                {/if}
                                </tbody>
                            </table>
                        </div>

                        <div class="panel-footer">
                            <div class="row">
                                <div class="col-md-6" ><span class="panel-note"><i class="fa fa-clock-o"></i> 24小时内订单</span></div>
                            </div>
                        </div>
                    </div>
                    <!-- END RECENT PURCHASES -->
                </div>
                <div class="col-md-6">
                    <!-- TIMELINE -->
                    <div class="panel panel-scrolling">
                        <div class="panel-heading">
                            <h3 class="panel-title">公告</h3>
                            <div class="right">
                                <button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
                                <button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
                            </div>
                        </div>
                        <div class="panel-body">
                            <ul class="list-unstyled activity-list">
                            {foreach from=$res_notice item = item1 name=f1}
                                <li>
                                    <img src="{$uploadImg}{$item1->img_url}" class="pull-left avatar">
                                    <p><a href="#">{$item1->detail}<span class="timestamp">&nbsp;&nbsp;{$item1->user}    {$item1->time}</span></p>
                                </li>
                            {/foreach}
                            </ul>
                        </div>
                    </div>
                    <!-- END TIMELINE -->
                </div>
            </div>
            <!-- END MULTI CHARTS -->
        </div>
    </div>
</div>
{literal}
<script type="text/javascript">
    $(function() {
        var data, options;
        
        var day1 = $('input[name=day1]').val(); // 今天
        var day2 = $('input[name=day2]').val(); // 昨天
        var day3 = $('input[name=day3]').val(); // 前天
        var day4 = $('input[name=day4]').val(); // 4天
        var day5 = $('input[name=day5]').val(); // 5天
        var day6 = $('input[name=day6]').val(); // 6天
        var day7 = $('input[name=day7]').val(); // 7天

        var couhuiyuan01 = $('input[name=couhuiyuan01]').val(); // 今天注册人数
        var couhuiyuan02 = $('input[name=couhuiyuan02]').val(); // 昨天注册人数
        var couhuiyuan03 = $('input[name=couhuiyuan03]').val(); // 前天注册人数
        var couhuiyuan04 = $('input[name=couhuiyuan04]').val(); // 4天前注册人数
        var couhuiyuan05 = $('input[name=couhuiyuan05]').val(); // 5天前注册人数
        var couhuiyuan06 = $('input[name=couhuiyuan06]').val(); // 6天前注册人数
        var couhuiyuan07 = $('input[name=couhuiyuan07]').val(); // 7天前注册人数
        var couhuiyuan = $('input[name=couhuiyuan]').val(); // 会员总数

        // visits trend charts(访问趋势图)
        data = {
            labels: [day7, day6, day5, day4, day3, day2, day1],
            series: [{
                name: 'series-real',
                data: [couhuiyuan07, couhuiyuan06, couhuiyuan05, couhuiyuan04, couhuiyuan03, couhuiyuan02, couhuiyuan01,couhuiyuan],
            }]
        };

        options = {
            fullWidth: true,
            lineSmooth: false,
            height: "400px",
            low: 0,
            high: 'auto',
            series: {
                'series-projection': {
                    showArea: true,
                    showPoint: false,
                    showLine: false
                },
            },
            axisX: {
                showGrid: false,

            },
            axisY: {
                showGrid: false,
                onlyInteger: true,
                offset: 0,
            },
            chartPadding: {
                left: 20,
                right: 20
            }
        };

        new Chartist.Line('#visits-trends-chart', data, options);
        
        chack_update();
    });
    //关闭更新
    $(".aui-close").click( function () {
        $(".dialog-simple").hide(); 
    });
    $(".ignore").click( function () {
        $(".dialog-simple").hide(); 
    });
    var lkt_web_version = ''; 
        //立即更新
    $(".update-start").click( function () {
        var that = $(this);
        that.find("span").text('下载中,请稍后..');
        $.ajax({
          url: "index.php?module=index&upgrade=1&download=true",
          cache: false,
          success: function(res){
            if(res){
                console.log(lkt_web_version);
                var r=confirm("下载成功,是否立即更新?");
                if (r==true){
                    parent.location.href='../index.php?updata='+lkt_web_version;
                }
                else{
                    $(".dialog-simple").hide(); 
                }

            }else{
                alert('下载失败！');
            }

          }
        });
    });

    function chack_update() {
        var version = $("#version").val();
        $.ajax({
          url: "index.php?module=index&upgrade="+version,
          cache: false,
          success: function(res){
            obj = JSON.parse(res);
            var status = obj.status;
            if(status == 1){
                var new_v = obj.lkt_web_version;
                lkt_web_version = obj.lkt_web_version;
                var v_content = obj.detail;
                $(".lao_v").text(version);
                $(".new_v").text(new_v);
                $(".content_version").append(v_content);

                $(".dialog-simple").show();
            }else{
                $(".dialog-simple").hide();
            }

          }
        });
    }
</script>
{/literal}
</body>
</html>