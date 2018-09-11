// pages/group_buy/comment.js
var app = getApp();
Page({

  /**
   * 页面的初始数据
   */
  data: {
    checked: null,
    remind: true,
    comments: [],
    comnum: {},
    good: '',
    notbad: '',
    bad: '',
    loading: false,
    more: true,
    page: 0
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    var that = this
    that.pid = options.pid
    wx.setNavigationBarColor({
      frontColor: app.d.frontColor,//
      backgroundColor: app.d.bgcolor //页面标题为路由参数
    });
    that.setData({
      good: options.good,
      notbad: options.notbad,
      bad: options.bad
    })
  },
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    var that = this
    app.request.wxRequest({
      url: '&action=groupbuy&m=getcomment',
      data: { pid: that.pid, page: that.data.page, checked: that.data.checked },
      method: 'post',
      success: function (res) {
        that.setData({
          comments: res.comment,
          remind: false
        })
      }
    })
  },
  getMore: function () {
    var that = this
    app.request.wxRequest({
      url: '&action=groupbuy&m=getcomment',
      data: { pid: that.pid, page: that.data.page, checked: that.data.checked },
      method: 'post',
      success: function (res) {
       if (res.comment === false){
         that.setData({
           more: false
         })
       }else{
        that.setData({
          comments: that.data.comments.concat(res.comment),
          loading: false
        })
       }
      }
    })
  },

  //上拉事件
  onReachBottom: function () {
    var that = this;
    if (!that.data.more) {
      return false
    }
    that.setData({
      loading: true,
      page: that.data.page + 1
    })
    setTimeout(function () {
      that.getMore()
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 800);
  },
  
  //下拉事件
  onPullDownRefresh: function () {
    wx.showNavigationBarLoading() //在标题栏中显示加载
    setTimeout(function () {
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1000);
    this.onShow();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },
  
  checkBtn:function (e) {
    var that = this
    var checked = e.currentTarget.dataset.key
       that.setData({
         checked: checked,
         remind: true,
         page: 0,
         comments: []
       })
      app.request.wxRequest({
         url: '&action=groupbuy&m=getcomment',
         data: { pid: that.pid, page: that.data.page, checked: that.data.checked },
         method: 'post',
         success: function (res) {
           that.setData({
             comments: res.comment,
             remind: false
           })
           
         }
       })
       
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

})