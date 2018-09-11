// pages/user/user.js
var app = getApp()
Page({
	data: {
		list: [{
				icon: 'wdsc.png',
				text: '我的收藏',
				url: 'collection/collection'
			},
			{
				icon: 'zj.png',
				text: '历史记录',
				url: 'footprint/footprint'
			},
			{
				icon: 'dz.png',
				text: '地址管理',
				url: 'address/index'
			},
			{
				icon: 'sz.png',
				text: '设置',
				url: 'set/set'
			}
		],
		cont: 1,
		remind: '加载中',
    tjr:false,
	},
	//下拉刷新
	onPullDownRefresh: function() {
		wx.showNavigationBarLoading() //在标题栏中显示加载
		setTimeout(function() {
			wx.hideNavigationBarLoading() //完成停止加载
			wx.stopPullDownRefresh() //停止下拉刷新
		}, 1500);
		this.requestMyData();
	},
  copyText: function (t) { 
    var a = t.currentTarget.dataset.text; 
    wx.setClipboardData({ 
      data: a, 
      success: function () { 
          wx.showToast({ 
            title: "已复制" 
            })
          }
        }) 
    },
	/**
	 * 生命周期函数--监听页面加载
	 */
	onLoad: function(options) {
		this.login();
		wx.setNavigationBarColor({
      frontColor: app.d.frontColor,
      backgroundColor: app.d.bf_color, //页面标题为路由参数7a896c app.d.bgcolor
			animation: {
				duration: 400,
				timingFunc: 'easeIn'
			}
		});
		var plug_ins = app.globalData.userInfo.plug_ins; // 插件
		this.setData({
      bgcolor: app.d.bf_color, // 背景颜色
			plug_ins: plug_ins, // 插件
		});
		this.requestMyData();
	},
	//页面加载完成函数
	onReady: function() {
		var that = this;
		setTimeout(function() {
			that.setData({
				remind: ''
			});
		}, 1000);
	},
	onShow: function() {
		var cont = this.data.cont;
		var that = this;
		if(cont > 1) {
			that.requestMyData();
		} else {
			that.setData({
				cont: cont + 1
			})
		}
	},
	requestMyData: function() {
		var that = this;
		wx.request({
			url: app.d.ceshiUrl + '&action=user&m=index',
			method: 'post',
			data: {
				openid: app.globalData.userInfo.openid
			},
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			success: function(res) {
				var status = res.data.status;
				if(status == 1) {
					var user = res.data.user;
					if(user.wx_name == 'undefined') {
						that.setData({
							userlogin: true
						});
						that.login();
					} else {
						that.setData({
							user: user,
							article: res.data.article,
							logo: res.data.logo,
							company: res.data.company,
							th: res.data.th,
							dfh_num: res.data.dfh_num,
							dfk_num: res.data.dfk_num,
							dpj_num: res.data.dpj_num,
							dsh_num: res.data.dsh_num,
							plug_ins: res.data.plug_ins,
              tjr: res.data.tjr
						});
					}
				} else {
					wx.showToast({
						title: '非法操作！',
						duration: 2000
					});
				}
			},
			error: function(e) {
				wx.showToast({
					title: '网络异常！',
					duration: 2000
				});
			}
		});
	},
	material: function(res) {
		wx.getUserInfo({
			success: function(res) {
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
					success: function(res) {
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
	agreeGetUser: function(e) {
		let that = this
		if(e.detail.errMsg == 'getUserInfo:ok') {
			//获取成功设置状态
			app.globalData.userlogin = true;
			wx.setStorageSync('userlogin', true);
			//设置用户信息本地存储
			try {
				wx.setStorageSync('userInfo', e.detail.userInfo);
			} catch(e) {
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
	login: function() {
		var that = this;
		//取出本地存储用户信息，解决需要每次进入小程序弹框获取用户信息
		var userInfo = wx.getStorageSync('userInfo');
		wx.login({
			success: res => {
				app.globalData.code = res.code
				wx.setStorageSync('code', res.code)
			},
			fail: function() {
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
				if(!res.authSetting['scope.userInfo']) {
					that.setData({
						userlogin: true
					});
				} else {
					//判断用户已经授权。不需要弹框
					if(app.globalData.userlogin) {
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
			fail: function() {
				wx.showToast({
					title: '系统提示:网络错误！',
					icon: 'warn',
					duration: 1500,
				})
			}
		})
	},
	getOP: function(res) {
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
			success: function(res) {
				wx.showToast({
					title: '授权成功!',
					success: 2000
				});
				that.requestMyData();
			}
		})
	},
})