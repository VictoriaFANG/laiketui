var request = require('request.js');
App({
  d: {
    appId:"", // 小程序appid
    appKey:"", // 小程序密钥
    purchase: 0,//设置购物车刷新
    indexchase: false,//设置首页刷新
    // 后台请求接口路径
    ceshiUrl: "http://test.com/LKT/index.php?module=api&software_name=3&edition=1.0", 
    // 本地后台请求接口路径
    localhost: 'http://localhost/LKT/index.php?module=api', 
  },
  onLaunch: function () {
    //调用API从本地缓存中获取数据
    var logs = wx.getStorageSync('logs') || []
    logs.unshift(Date.now())
    wx.setStorageSync('logs', logs);
    this.getUserInfo();
    request.tt = '122';
    this.request = request;
    // console.log(this.request)
  },
  //控制授权登入
  userlogin: function (login) {
    if (this.globalData.userlogin) {
      console.log('登入了')
    } else {
      if (login){
        wx.switchTab({
          url: '../index/index'
        })
      }else{
        wx.switchTab({
          url: 'pages/index/index'
        })
      }

    }
  },
  onShow: function () {
      console.log('重新加载了');
  },
  onPullDownRefresh: function () {
    wx.showNavigationBarLoading() //在标题栏中显示加载
    //模拟加载
    setTimeout(function () {
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1500);
  },
  getUserInfo: function (cb, stype){
    var that = this;
    //调用登录接口  已更新登入借口  
    wx.login({
      success: function (res) {
        var code = res.code;
        that.globalData.code = res.code;
        //取出本地存储用户信息，解决需要每次进入小程序弹框获取用户信息
        var userinfo = wx.getStorageSync('userInfo');
        if (userinfo.length > 1){
          that.globalData.userInfo = userinfo;
        }     
        that.getUserSessionKey(code, cb);
      }
    });
  },
  // 获取用户会话密钥
  getUserSessionKey: function (code, cb, stype){
    console.log(code, cb, stype)
    var that = this;
    wx.request({
      url: that.d.ceshiUrl + '&action=app&m=index',
      method:'post',
      data: {
        code: code
      },
      header: {
        'Content-Type':  'application/x-www-form-urlencoded'
      },
      success: function (res) {   
        var data = res.data;
        var bgcolor = res.data.bgcolor;
        that.d.bgcolor = bgcolor;
        wx.setNavigationBarColor({
          frontColor: '#ffffff',//
          backgroundColor: bgcolor//页面标题为路由参数
        })
        if(data.status==0){
          wx.showToast({
            title: data.err,
            duration: 2000
          });
          return false;
        }
        //设置openid 和 session_key
        that.globalData.userInfo = data;

        //存储用户信息
        wx.request({
          url: that.d.ceshiUrl + '&action=app&m=user',
          method: 'post',
          data: {
            nickName: that.globalData.userInfo.nickName,
            headimgurl: that.globalData.userInfo.avatarUrl,
            sex: that.globalData.userInfo.gender,
            openid: that.globalData.userInfo.openid,
            p_openid: that.globalData.userInfo.referee_openid,
          },
          header: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          success: function (res) {
            that.d.ceshiUrl = that.d.ceshiUrl + '&token=' + res.data.access_token; // 线上密钥            
            that.d.localhost = that.d.localhost + '&token=' + res.data.access_token; // 本地密钥         
            that.globalData.userInfo['plug_ins'] = res.data.plug_ins; // 插件状态
            that.globalData.userInfo['coupon'] = res.data.coupon; // 优惠券状态
            that.globalData.userInfo['wallet'] = res.data.wallet; //  钱包状态
            that.globalData.userInfo['sign'] = res.data.sign; //  签到状态
            that.globalData.userInfo['sign_status'] = res.data.sign_status; // 是否签名
            that.globalData.userInfo['sign_image'] = res.data.sign_image; // 签到图片
            that.globalData.userInfo['user_id'] = res.data.user_id; // user_id
            that.globalData.userInfo['nickName'] = res.data.nickName;
            that.globalData.userInfo['avatarUrl'] = res.data.avatarUrl;
            //修改缓存写入
            wx.setStorageSync('userInfo', that.globalData.userInfo);
            if (cb) {
              if (stype) {
                cb.getPhoneNumber(stype)
              } else {
                cb.loadProductDetail();
                console.log('执行回电')
              }
            }
          },
          fail: function (e) {
           
          },
        });
      },
      fail:function(e){
        wx.showToast({
          title: '网络异常！err:getsessionkeys',
          duration: 2000
        });
      },
    });
  },
  
  getOrBindTelPhone:function(returnUrl){
    var user = this.globalData.userInfo;
    if(!user.tel){
      wx.navigateTo({
        url: 'pages/binding/binding'
      });
    }
  },
  globalData:{
    userInfo: {},
    userlogin: wx.getStorageSync('userlogin'),
  },
  redirect: function (url, param) {
    wx.navigateTo({
      url: '/pages/' + url + '?' + param
    })
  },
  showModal: function (that) {
    var animation = wx.createAnimation({
      duration: 200
    })
    animation.opacity(0).rotateX(-100).step();
    that.setData({
      animationData: animation.export()
    })
    setTimeout(function () {
      animation.opacity(1).rotateX(0).step();
      that.setData({
        animationData: animation
      });
    }.bind(that), 200)
  },
  showToast: function (that, title) {
    var toast = {};
    toast.toastTitle = title;
    that.setData({
      toast: toast
    })
    var animation = wx.createAnimation({
      duration: 100
    })
    animation.opacity(0).rotateY(-100).step();
    toast.toastStatus = true;
    toast.toastAnimationData = animation.export()
    that.setData({
      toast: toast
    })
    setTimeout(function () {
      animation.opacity(1).rotateY(0).step();
      toast.toastAnimationData = animation
      that.setData({
        toast: toast
      });
    }.bind(that), 100)
    // 定时器关闭 
    setTimeout(function () {
      toast.toastStatus = false
      that.setData({
        toast: toast
      });
    }.bind(that), 2000);
  }
});