var app = getApp()
Page({
  data: {
    address: [],
    radioindex: '',
    pro_id: 0,
    num: 0,
    cartId: 0
  },
  // 下拉刷新
  onPullDownRefresh: function () {
    wx.showNavigationBarLoading() //在标题栏中显示加载
    setTimeout(function () {
      // complete
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1500);
    this.DataonLoad();
  },
  onShow: function () {
    this.DataonLoad();
  },
  onLoad: function (options) {
    wx.setNavigationBarColor({
      frontColor: app.d.frontColor,
      backgroundColor: app.d.bgcolor, //页面标题为路由参数
      animation: {
        duration: 400,
        timingFunc: 'easeIn'
      }
    })
    this.setData({
      bgcolor: app.d.bgcolor
    });
    var that = this;
    // 页面初始化 options为页面跳转所带来的参数
    if (options.cartId){
      var cartId = options.cartId;
    }else{
      var cartId = 0;
    }
    
    wx.request({
      url: app.d.ceshiUrl + '&action=address&m=index',
      data: {
        openid: app.globalData.userInfo.openid
      },
      method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      header: {// 设置请求的 header
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        // success
        var address = res.data.adds;
        if (address == '') {
          var address = []
        }
        that.setData({
          address: address,
          cartId: cartId,
        })
      },
      fail: function () {
        wx.showToast({
          title: '网络异常！',
          duration: 2000
        });
      }
    })
  },
  // 设置默认
  setDefault: function (e) {
    var that = this;
    var addrId = e.currentTarget.dataset.id;
    wx.showModal({
      content: "确认修改地址吗？",
      success: function (t_res) {
        if (t_res.confirm){
          wx.request({
            url: app.d.ceshiUrl + '&action=address&m=set_default',
            data: {
              openid: app.globalData.userInfo.openid,
              addr_id: addrId
            },
            method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
            header: {// 设置请求的 header
              'Content-Type': 'application/x-www-form-urlencoded'
            },
            success: function (res) {
              var status = res.data.status;
              var cartId = that.data.cartId;
              if (status == 1) {
                if (cartId != '0' || cartId == 'group') {
                  wx.navigateBack({
                    delta: 1
                  })
                  return false;
                }
                wx.showToast({
                  title: res.data.err,
                  duration: 2000
                });
                that.DataonLoad();
              } else {
                wx.showToast({
                  title: res.data.err,
                  duration: 2000
                });
              }
            },
            fail: function () {
              // fail
              wx.showToast({
                title: '网络异常！',
                duration: 2000
              });
            }
          });
        }
      }
    });

  },
  // 删除地址
  delAddress: function (e) {
    var that = this;
    var addrId = e.currentTarget.dataset.id;
    wx.showModal({
      title: '提示',
      content: '你确认移除吗',
      success: function (res) {
        res.confirm && wx.request({
          url: app.d.ceshiUrl + '&action=address&m=del_adds',
          data: {
            openid: app.globalData.userInfo.openid,
            id_arr: addrId
          },
          method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
          header: {// 设置请求的 header
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          success: function (res) {
            // success
            var status = res.data.status;
            if (status == 1) {
              that.DataonLoad();
            } else {
              wx.showToast({
                title: res.data.err,
                duration: 2000
              });
            }
          },
          fail: function () {
            // fail
            wx.showToast({
              title: '网络异常！',
              duration: 2000
            });
          }
        });
      }
    });

  },
  // 数据加载
  DataonLoad: function () {
    var that = this;
    // 页面初始化 options为页面跳转所带来的参数
    wx.request({
      url: app.d.ceshiUrl + '&action=address&m=index',
      data: {
        openid: app.globalData.userInfo.openid,
      },
      method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
      header: {// 设置请求的 header
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        var address = res.data.adds;
        if (address == '') {
          var address = []
        }
        that.setData({
          address: address,
        })
      },
      fail: function () {
        wx.showToast({
          title: '网络异常！',
          duration: 2000
        });
      }
    })
  },
  //修改跳转
  upaddress: function (e) {
    var addrId = e.currentTarget.dataset.id
    wx.navigateTo({
      url: '../address/upaddress/upaddress?addr_id='+addrId,
    })
  },
})