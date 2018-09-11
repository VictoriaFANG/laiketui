var app = getApp();
var cont_time=0;//首页tab点击
Page({
  data: {
    banner: [],
    indicatorDots: true, // 是否显示面板指示点
    autoplay: true, // 是否自动切换
    interval: 5000, // 自动切换时间间隔
    duration: 1000, // 滑动动画时长
    circular: true, // 是否采用衔接滑动
    scrollLeft: 0, //tab标题的滚动条位置
    current: 0,//当前选中的Tab项
    page: 1,
    index: 1,
    cont:1,
    tabid:0,
    loading:false,
    remind: '加载中',
    showModal: false,
    plug: [],
  },
  //下拉事件
  onPullDownRefresh: function () {
    wx.showNavigationBarLoading() //在标题栏中显示加载
    setTimeout(function () {
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1800);
    this.onLoad();
  },
  getMore: function (e) {
    var that = this;
    var page = that.data.page;
    var index = that.data.tabid;
    wx.request({
      url: app.d.ceshiUrl + '&action=Index&m=get_more',
      method: 'post',
      data: {
        page: page,
        index: index,
      },
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        var prolist = res.data.prolist;
        if (prolist == '' || res.data.status == 0) {
          wx.showToast({
            title: '没有更多数据！',
            duration: 2000
          });
          return false;
        }else{
          var twoList = that.data.twoList;
          twoList[index].twodata = prolist;
          that.setData({
            page: page + 1,
            twoList: twoList
          });
        }
      },
      fail: function (e) {
        wx.showToast({
          title: '网络异常！',
          duration: 2000
        });
      }
    })
  },
  inputConfirm: function (e) {
    var that = this, value = e.detail.value;
      this.setData({
        value: e.detail.value,
      });

      if (value != '') {
        wx.navigateTo({
          url: "../listdetail/listdetail?keyword=" + value
        })
      }
  },
  inputBlur: function (e) {
    this.setData({
      value: e.detail.value,
    });
  },
  search_cancel: function () {
    var that = this, value = this.data.value;
    if (value != '' && value != 'undefined' && value) {
      wx.navigateTo({
        url: "../listdetail/listdetail?keyword=" + value
      })
    }else{
      setTimeout(function () {
         that.search_cancel();
      }, 1000);
    }

  },
  search: function () {
    var that = this, value = this.data.value;
    if (value != '') {
      wx.navigateTo({
        url: "../listdetail/listdetail?keyword=" + value
      })
    }
  },
  loadProductDetail: function () {
    var that = this;
    var openid = app.globalData.userInfo.openid ? app.globalData.userInfo.openid:false;
    if (openid) {
      wx.request({
        url: app.d.ceshiUrl + '&action=Index&m=index',
        method: 'post',
        data: {
          user_id: app.globalData.userInfo.user_id
        },
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        success: function (res) {
          var banner = res.data.banner; // 轮播图
          var twoList = res.data.twoList;     //产品显示
          var bgcolor = res.data.bgcolor;     //产品显示
          var plug = res.data.plug;     //抽奖产品
          var title = res.data.title;
          app.d.bgcolor = bgcolor;
          var arr = Object.keys(twoList[0].distributor);
          console.log(arr.length); 
          that.setData({
            distributor: arr,
            banner: banner,
            twoList: twoList,
            bgcolor: bgcolor,
            plug: plug
          });

          wx.setNavigationBarColor({
            frontColor: '#000000',//
            backgroundColor: app.d.bgcolor //页面标题为路由参数
          });
          wx.setNavigationBarTitle({
            title: title,
            success: function () {
            },
          });
        },
        fail: function (e) {
          wx.showToast({
            title: '网络异常！',
            duration: 2000
          });
        },
      })
    }else{
      app.getUserInfo(that);
    }
  },
  //上拉事件
  onReachBottom: function () {
    var that = this;
    setTimeout(function () {
      that.getMore();
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
      that.setData({
        loading: false,
      });
    }, 1800);
    that.setData({
      loading: true,
    });
    
  },
  /**
   * Tab的点击切换事件
   */
  tabItemClick: function (e) {
    //防止点击过快带来的闪屏问题
    var timestamp = Date.parse(new Date());
    timestamp = timestamp / 1000;
    var data = e.currentTarget.dataset;
    var that=this;
    if (cont_time){
      if (timestamp - cont_time >= 1){
        that.nextpic(data);
        cont_time = timestamp;
      }else{
        cont_time = timestamp;
      }
    }else{
      that.nextpic(data);
      cont_time = timestamp;
    } 
    that.checkCor(e); 
  },
  nextpic: function (data) {
    this.setData({
      current: data.pos,
      tabid: data.tabid
    });
  },
  //设置点击tab大于第七个是自动跳到后面
  checkCor: function (e) {
    if (this.data.current > 6) {
      this.setData({
        scrollLeft: 800
      })
    } else {
      this.setData({
        scrollLeft: 0
      })
    }
  },
  /**
   * 内容区域swiper的切换事件
   */
  contentChange: function (e) {
    var that = this;
    var id = e.detail.current;
    var tabid = that.data.twoList[id].id;
    this.setData({
      current: id,
      tabid: tabid,
      page: 1,
    })
    this.checkCor();
  },
  onShow: function () {
    this.login();
    var indexchase = app.d.indexchase;
    var that = this;
    if (indexchase){
      that.onLoad();
      app.d.indexchase = false;
    }
  },
  onReady: function () {
    var that = this;
    setTimeout(function () {
      that.setData({
        remind: ''
      });
    }, 1000);
  },
  onLoad: function (e) {
    var that = this;
    //签到活动弹窗,勿删
    setTimeout(function(){
      that.setData({
        sign_image: app.globalData.userInfo.sign_image, // 签到图片
        sign_status: app.globalData.userInfo.sign_status // 是否签名
      })
      //如果用户今日已签到则不再显示
      if (app.globalData.userInfo.sign_status == 1){
        that.setData({
          showModal: true
        })
      }else{
        that.setData({
          showModal: false
        })
      }
    },5000);
    that.loadProductDetail();
    // wx.request({
    //   url: app.d.ceshiUrl + '&action=Index&m=index',
    //   method: 'post',
    //   data: {},
    //   header: {
    //     'Content-Type': 'application/x-www-form-urlencoded'
    //   },
    //   success: function (res) {
    //     var banner = res.data.banner; // 轮播图
    //     var twoList = res.data.twoList;     //产品显示
    //     var bgcolor = res.data.bgcolor;     //产品显示
    //     var plug = res.data.plug;     //抽奖产品
    //     var title = res.data.title;
    //     app.d.bgcolor = bgcolor;
    //     that.setData({
    //        banner: banner,
    //        twoList: twoList,
    //        bgcolor: bgcolor,
    //        plug: plug
    //     });
        
    //     wx.setNavigationBarColor({
    //       frontColor: app.d.frontColor,//
    //       backgroundColor: app.d.bgcolor //页面标题为路由参数
    //     });
    //     wx.setNavigationBarTitle({
    //       title: title,
    //       success: function () {
    //       },
    //     });
    //   },
    //   fail: function (e) {
    //     wx.showToast({
    //       title: '网络异常！',
    //       duration: 2000
    //     });
    //   },
    // })
  },

  preventTouchMove: function () {

  },
  
  go: function () {
    this.setData({
      showModal: false
    })
  },
  navigate_sign: function (){
    wx.navigateTo({
      url: '../sign_in/sign_in',
    })
  },
  material: function (res) {
    wx.getUserInfo({
      success: function (res) {
        var userInfo = res.userInfo;
        var nickName = userInfo.nickName;
        var avatarUrl = userInfo.avatarUrl;
        var gender = userInfo.gender; //性别 0：未知、1：男、2：女
        wx.request({
          url: app.d.ceshiUrl + '&action=user&m=material',
          method: 'post',
          data: {
            openid: app.globalData.userInfo.openid,
            nickName: nickName,
            avatarUrl: avatarUrl,
            gender: gender
          },
          header: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          success: function (res) {
            wx.showToast({
              title: res.data.info,
              success: 2000
            });
          }
        })
      }
    })
  },
  //获取用户信息新接口
  agreeGetUser: function (e) {
    let that = this
    if (e.detail.errMsg == 'getUserInfo:ok') {
      //获取成功设置状态
      app.globalData.userlogin = true;
      wx.setStorageSync('userlogin', true);
      //设置用户信息本地存储
      try {
        wx.setStorageSync('userInfo', e.detail.userInfo);
      } catch (e) {
        wx.showToast({
          title: '系统提示:网络错误！',
          icon: 'warn',
          duration: 1500,
        })
      }
      wx.showLoading({
        title: '加载中...',
        duration: 1500,
      })
      that.setData({
        userlogin: false
      })
      that.getOP(e.detail.userInfo)
    } else {
      wx.showToast({
        title: '没有授权，不能进入小程序个人中心！',
        icon: 'none',
        duration: 2000
      })
      //没有授权需要弹框 
      that.setData({
        userlogin: true
      });
    }
  },
  login: function () {
    var that = this;
    //取出本地存储用户信息，解决需要每次进入小程序弹框获取用户信息
    var userInfo = wx.getStorageSync('userInfo');
    wx.login({
      success: res => {
        app.globalData.code = res.code
        wx.setStorageSync('code', res.code)
      },
      fail: function () {
        wx.showToast({
          title: '系统提示:网络错误！',
          icon: 'warn',
          duration: 1500,
        })
      }
    })

    wx.getSetting({
      success: (res) => {
        //没有授权需要弹框 
        if (!res.authSetting['scope.userInfo']) {
          that.setData({
            userlogin: true
          });
        } else {
          //判断用户已经授权。不需要弹框
          if (app.globalData.userlogin) {
            that.setData({
              userlogin: false
            })
            app.globalData.userlogin = true;
            wx.setStorageSync('userlogin', true);
          } else {
            that.setData({
              userlogin: true
            });
          }
        }
      },
      fail: function () {
        wx.showToast({
          title: '系统提示:网络错误！',
          icon: 'warn',
          duration: 1500,
        })
      }
    })
  },
  getOP: function (res) {
    //提交用户信息 获取用户id
    let that = this
    let userInfo = res;
    var user = app.globalData.userInfo;
    app.globalData.userInfo['avatarUrl'] = userInfo.avatarUrl; // 头像
    app.globalData.userInfo['nickName'] = userInfo.nickName; // 昵称
    app.globalData.userInfo['gender'] = userInfo.gender; //  性别

    wx.setStorageSync('userInfo', app.globalData.userInfo);
    //写入缓存
    var nickName = userInfo.nickName;
    var avatarUrl = userInfo.avatarUrl;
    var gender = userInfo.gender; //性别 0：未知、1：男、2：女
    wx.request({
      url: app.d.ceshiUrl + '&action=user&m=material',
      method: 'post',
      data: {
        openid: app.globalData.userInfo.openid,
        nickName: nickName,
        avatarUrl: avatarUrl,
        gender: gender
      },
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        wx.showToast({
          title: '授权成功!',
          success: 2000
        });
        that.onLoad();
      }
    })
  },
});