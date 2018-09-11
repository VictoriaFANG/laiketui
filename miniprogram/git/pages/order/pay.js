var app = getApp();
Page({
	data: {
    pays: [],
		itemData: {},
		userId: 0,
		paytype: 'wxPay', //支付方式
		cartId: 0,
		addrId: 0, //收货地址//测试--
		btnDisabled: false,
		productData: [],
    address: {},
		total: 0,
		yuan: 0, //临时储存先前的总价格
		d_yuan: 0, //抵扣余额显示
		vprice: 0,
		vid: 0,
		paswnum: 0,
		reduce_money: 0, //优惠金额
		addemt: 1, //加入次数
		vou: [],
		checked: false,
		score: 0, //用户积分
		allowscore: 0, //当前订单可用积分
    checked01: false,
    red_packet: 0, //用户红包
    allowred_packet: 0, //当前订单可用红包
		allow: 0,
		pass_num: 4,
		remind: '加载中',
		title: '请输入支付密码',
		xsmoney: true, //控制显示金额
		money: false,
    pay_xs:true,
	},
	//下拉刷新
	onPullDownRefresh: function() {
		wx.showNavigationBarLoading() //在标题栏中显示加载
		setTimeout(function() {
			wx.hideNavigationBarLoading() //完成停止加载
			wx.stopPullDownRefresh() //停止下拉刷新
		}, 1500);
		this.Settlement();
	},
	//调取分享
	onShareAppMessage: function(res) {
		var that = this;
		var id = that.data.productId;
		var title = that.data.title;

		return {
			title: title,
			path: '/product/detail?productId=' + id,
			success: function(res) {
				console.log('转发成功')
			},
			fail: function(res) {
				console.log('转发失败')
			}
		}
	},
	onLoad: function(options) {
		var that = this;
    that.get_plug();
    wx.setNavigationBarColor({
      frontColor: app.d.frontColor, //
      backgroundColor: app.d.bgcolor //设置页面参数
    })
		var size = options.sizeid;
		var productId = options.productId;
		var choujiangid = options.choujiangid;
		var type1 = options.type1;
		if(type1 == 11) {
			var uid = app.globalData.userInfo.openid; // 微信id
			var plug_ins = app.globalData.userInfo.plug_ins; // 插件
			var coupon = app.globalData.userInfo.coupon; // 优惠券状态
			var wallet = app.globalData.userInfo.wallet; // 钱包状态
			this.setData({
				size: size, // 购物车id
				productId: productId,
				choujiangid: choujiangid,
        bgcolor: '#FF6347', // 背景颜色
				userId: uid, // 微信id
				plug_ins: plug_ins, // 插件
				coupon: coupon, // 优惠券状态
				wallet: wallet, // 钱包状态
				type1: type1,
			});

			this.Settlement();
		} else {
			var uid = app.globalData.userInfo.openid; // 微信id
			var plug_ins = app.globalData.userInfo.plug_ins; // 插件
			var coupon = app.globalData.userInfo.coupon; // 优惠券状态
			var wallet = app.globalData.userInfo.wallet; // 钱包状态
			this.setData({
				cartId: options.cartId, // 购物车id
        bgcolor: '#FF6347', // 背景颜色
				userId: uid, // 微信id
				plug_ins: plug_ins, // 插件
				coupon: coupon, // 优惠券状态
				wallet: wallet, // 钱包状态
			});
			this.Settlement();
		}

	},
	//页面加载完成函数
	onReady: function() {
		var that = this;
		setTimeout(function() {
			that.setData({
				remind: ''
			});
		}, 800);
	},
	onShow: function() {
		this.Settlement();
	},
	// 进入结算页面
	Settlement: function() {
		var that = this;
		var size = that.data.size;
		var type1 = that.data.type1;
		if(type1 == 11) {
			var role = that.options.role; //分享团ID
			wx.request({
				url: app.d.ceshiUrl + '&action=product&m=choujiangjiesuan',
				method: 'post',
				data: {
					size: that.data.size, //规格id
					productId: that.data.productId, //产品id
					choujiangid: that.data.choujiangid, //抽奖id
					cart_id: that.data.cartId, // 购物车id
					uid: that.data.userId, // 微信id
					type1: 11,
					role: role,
				},
				header: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				success: function(res) {
					var status = res.data.status;
					that.setData({
						addemt: res.data.arr.addemt, // 是否有收货地址
						address: res.data.arr.adds, // 收货地址
            addrId: res.data.arr.adds.id ? res.data.arr.adds.id:'', // 收货地址id
						total: res.data.arr.price, // 总价
						size: res.data.arr.size, //型号
						type1: 11,
					});
					if(status == 0) {
						wx.showToast({
							title: res.data.err,
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
		} else {
			wx.request({
        url: app.d.ceshiUrl + '&action=product&m=Settlement',
				method: 'post',
				data: {
					cart_id: that.data.cartId, // 购物车id
					uid: that.data.userId, // 微信id
				},
				header: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				success: function(res) {
					var status = res.data.status;
          
					if(status) {
						if(that.data.allow) {
							res.data.arr.coupon_money = Number(res.data.arr.coupon_money) - Number(that.data.allow);
						}
						if(that.data.d_yuan) {
							res.data.arr.coupon_money = Number(res.data.arr.coupon_money) - Number(that.data.user_money);
						}
            
						that.setData({
							addemt: res.data.arr.addemt, // 是否有收货地址
							address: res.data.arr.adds, // 收货地址
              addrId: res.data.arr.adds.id ? res.data.arr.adds.id:'', // 收货地址id
							productData: res.data.arr.pro, // 商品信息
							total: res.data.arr.price, // 总价
							money: res.data.arr.money, // 优惠券金额
							coupon_money: res.data.arr.coupon_money, // 优惠后金额
							user_money: res.data.arr.user_money, // 用户余额
              user_consumer_money: res.data.arr.user_consumer_money, // 用户余额
							coupon_id: res.data.arr.coupon_id, // 优惠券id
							name: res.data.arr.name, // 满减活动名称
							reduce_money: res.data.arr.reduce_money, // 满减金额
              scorebl: res.data.arr.scorebl, //积分兑换比例
              discount: res.data.arr.discount,//控制优惠方式
              scorebuy: res.data.arr.scorebuy   //积分消费规则
						});
            
					} else {
            that.setData({
              remind: true
            });
            wx.showToast({
              title: res.data.err,
              icon: 'none',
              duration: 2000,
            });
            setTimeout(function () {
              wx.navigateBack({
                delta: 1
              })
            }, 2000);
					}
				},
				error: function(e) {
					wx.showToast({
						title: '网络异常！',
						duration: 2000
					});
				}
			});
// 红包数据
      wx.request({
        url: app.d.ceshiUrl + '&action=red_packet&m=send',
        method: 'post',
        data: {
          openid: app.globalData.userInfo.openid,
        },
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        success: function (res) {
          that.setData({
            red_total: res.data.total,//红包总金额
            bili: res.data.re01.bili,//红包总金额
          });
        },
      });
		}

	},
	// 点击优惠券
	tapMainMenu: function(e) { // 获取当前显示的一级菜单标识
		var coupon_id = e.target.id;
		var taht = this;
		var showModalStatus = taht.data.showModalStatus;

		taht.getvou(coupon_id);
		taht.setData({
			showModalStatus: false
		});
	},
	// 我的优惠券(可以使用的优惠券)
	my_coupon: function() {
		var that = this;
		wx.request({
			url: app.d.ceshiUrl + '&action=Coupon&m=my_coupon',
			method: 'post',
			data: {
				openid: app.globalData.userInfo.openid,
			},
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			success: function(res) {
				var list = res.data.list;
				that.setData({
					list: list,
				});
			},
			error: function(e) {
				wx.showToast({
					title: '网络异常！',
					duration: 2000
				});
			}
		});
	},
	// 得到优惠券
	getvou: function(id) {
		var that = this;
		wx.request({
			url: app.d.ceshiUrl + '&action=Coupon&m=getvou',
			method: 'post',
			data: {
				cart_id: that.data.cartId, // 购物车id
				coupon_money: that.data.coupon_money, // 付款金额
				openid: app.globalData.userInfo.openid, // 微信id
				coupon_id: id, // 优惠券id
			},
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			success: function(res) {

				if(res.data.status == 0) {
					wx.showToast({
						title: res.data.err,
						icon: 'none',
						duration: 2000
					});
				} else {
					that.setData({
						coupon_id: res.data.id, // 优惠券id
						money: res.data.money, // 优惠券金额
						total: res.data.zong, // 总金额
						coupon_money: res.data.coupon_money, // 优惠券后金额
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
	// 点击抵用积分
	bindcheckbox: function() {
		var that = this;
    var allowscore = that.data.allowscore ? that.data.allowscore : that.data.user_consumer_money;
    var allow = that.data.allow ? that.data.allow:0;
    var pay_type = that.data.pays;
    if (that.data.user_consumer_money < 1) {
			// 当付款金额少于最低抵用额时
			wx.showToast({
        title: '消费金不足 ' + ' ！',
				icon: 'none',
				duration: 1500,
			})
		} else {
      //设置选中
			var checked = !that.data.checked;
			that.setData({
				checked: checked,
			})
      var user_consumer_money = that.data.user_consumer_money, total = that.data.total;
      
      if (Number(total) > Number(user_consumer_money)){
        allow = user_consumer_money;
      }else{
        allow =  that.data.coupon_money;
      }
      console.log(allow, user_consumer_money, total)
			that.setData({
        allow: allow,
        allowscore: that.data.coupon_money
			});
			if(checked) {
        var coupon_money = Number(that.data.coupon_money) - Number(allow); // 付款金额 减去 积分
			} else {
        var coupon_money = Number(that.data.coupon_money) + Number(allowscore); // 付款金额 加上 积分
			}
      if (Number(coupon_money) == 0){
        //设置为余额支付
        console.log(1111)
        for (var j = 0; j < pay_type.length; j++) {
          if (pay_type[j].value == 'wallet_Pay') {
            pay_type[j].checked = true;
          } else {
            pay_type[j].checked = false;
          }
        }
        //设置支付方式和点击默认
        that.setData({
          paytype: 'wallet_Pay',
          pays: pay_type,
          pay_xs:false,
        });
      }else{
        that.setData({
          pay_xs: true,
        });
      }
      that.setData({
        coupon_money: coupon_money.toFixed(2)
      })
		}
	},

  // 点击抵用红包
  bindcheckbox01: function () {
    var that = this;
    // console.log(that);
    // console.log(667755);
      var checked01 = !that.data.checked01;
      var ddd = that.data.bili;//红包抵用比例
      var total01 = that.data.total;//订单金额
      var red_total01 = that.data.red_total;//红包金额
      that.setData({
        checked01: checked01,
      })
      if(total01 >= red_total01 *ddd/100){//当付款金额大于等于红包抵用金额时，红包可以按比例抵扣
        var allowscore01 = (red_total01 * ddd / 100).toFixed(2);//抵用红包金额
        console.log(allowscore01);
        console.log(667755);
        var red_yue = red_total01 - allowscore01;//抵用后剩余金额
      }else{
        var allowscore01 = (red_total01 * ddd / 100).toFixed(2);//抵用红包金额
        var red_yue = red_total01 - allowscore01;//抵用后剩余金额 
      }
      var allow01 = checked01 == true ? allowscore01 : 0;
      that.setData({
        allowscore01: allowscore01,
        allow01: allow01
      });
      if (checked01) {
        var coupon_money = that.data.coupon_money  - allowscore01; // 付款金额 减去 红包
        that.setData({
          coupon_money: coupon_money.toFixed(2)
        })
      } else {
        var coupon_money = Number(that.data.coupon_money) + Number(allowscore01); // 付款金额 加上 红包
        that.setData({
          coupon_money: coupon_money.toFixed(2)
        })
      }
    
  },

	// 选择支付方式
	switchChange: function(e) {
		var that = this;
		var check = e.currentTarget.dataset.check;
		var index = e.currentTarget.dataset.index;
		var value = e.detail.value;
    var checked_one = '';
		var pays = that.data.pays[index];
		if(that.data.type1 !== 11) {
			var coupon_money = that.data.coupon_money;
			var user_money = that.data.user_money;
		} else {
			var coupon_money = that.data.total;
			var user_money = that.data.address.user_money;
		}

    if (Number(coupon_money) >= 0){

		if(value) {
			pays.checked = true;
		} else {
			pays.checked = false;
		}
		var pay_type = that.data.pays;
		var i = 0
		for(var j = 0; j < pay_type.length; j++) {
			if(pay_type[j].checked) {
				i += 1;
        checked_one = pay_type[j].value;
			}
		}
		if(i == 0) {
			that.setData({
				paytype: false,
			});
		} else if(i == 1) {
			//单选支付方式时 设置支付方式
			//如果是之前点击了钱包支付 需要还原金额
			var yuan = that.data.yuan;
			if(yuan) {
				if(that.data.allow) {
					yuan = Number(yuan) - Number(that.data.allow);
				}
				that.setData({
					paytype: check,
					coupon_money: yuan,
					d_yuan: false,
				});
			} else {
				that.setData({
					paytype: check,
				});
			}
			// 如果是余额支付
      if (checked_one == 'wallet_Pay') {
        if (coupon_money == yuan){
          
          if (user_money < coupon_money) {
            wx.showToast({
              title: '余额不足，请更换支付方式或选择组合支付！',
              icon: 'none',
              duration: 2000,
            });
            for (var j = 0; j < pay_type.length; j++) {
              if (pay_type[j].value == 'wxPay') {
                pay_type[j].checked = true;
              } else {
                pay_type[j].checked = false;
              }
            }
            //设置支付方式和点击默认
            that.setData({
              paytype: 'wxPay',
              pays: pay_type
            });
          }
        }else{
          console.log(user_money, coupon_money)
          if (user_money < coupon_money) {
            wx.showToast({
              title: '余额不足，请更换支付方式或选择组合支付！',
              icon: 'none',
              duration: 2000,
            });
            for (var j = 0; j < pay_type.length; j++) {
              if (pay_type[j].value == 'wxPay') {
                pay_type[j].checked = true;
              } else {
                pay_type[j].checked = false;
              }
            }
            //设置支付方式和点击默认
            that.setData({
              paytype: 'wxPay',
              pays: pay_type
            });
          }

        }

			}
		} else if(i == 2) {
			//两种支付方式时当支付金额大于用户余额 则抵扣全部余额 并验证 //否则 直接选择默认钱包支付
			if(Number(user_money) > Number(coupon_money)) {
				for(var j = 0; j < pay_type.length; j++) {
					if(pay_type[j].value == 'wallet_Pay') {
						pay_type[j].checked = true;
					} else {
						pay_type[j].checked = false;
					}
				}
				//设置支付方式和点击默认
				that.setData({
					paytype: 'wallet_Pay',
					pays: pay_type
				});
				//安全提示
				wx.showToast({
					title: '已默认钱包支付',
					icon: 'none',
					duration: 2000,
				});
			} else {
				// 组合支付
        if (Number(user_money) <= 0) {
          for (var j = 0; j < pay_type.length; j++) {
            if (pay_type[j].value == 'wxPay') {
              pay_type[j].checked = true;
            } else {
              pay_type[j].checked = false;
            }
          }
          //设置支付方式和点击默认
          that.setData({
            paytype: 'wxPay',
            pays: pay_type
          });
          //安全提示
          wx.showToast({
            title: '余额不足，已默认微信支付！',
            icon: 'none',
            duration: 2000,
          });
        }else{
          wx.showModal({
            title: '组合支付',
            content: '是否使用余额抵用？',
            success: function (res) {
              if (res.confirm) {
                //组合支付 替换数据
                var price = Number(coupon_money) - Number(user_money); //防止出现小数点后多余2位以上  .toFixed(2)
                that.setData({
                  paytype: 'wxPay',
                  yuan: coupon_money,
                  coupon_money: price.toFixed(2),
                  d_yuan: user_money,
                });
              } else if (res.cancel) {
                //设置支付方式和点击默认
                that.setData({
                  pays: pay_type
                });
                //安全提示
                wx.showToast({
                  title: '已取消',
                  duration: 2000,
                });
              }
            }
          })
        }

			}
		}

    } else {
      wx.showToast({
        title: '付款金额有误！',
        icon: 'none',
        duration: 2000,
      });
      that.setData({
        paytype: false,
      });
    }
	},
	// 提交订单支付
	createProductOrderByWX: function(e) {
		var that = this;
		var paytype = that.data.paytype;
		if(paytype) {
			that.setData({
				paytype: paytype,
			});
		} else {
			wx.showToast({
				title: '已为您选择默认支付方式',
				icon: 'none',
				duration: 2000,
			});
			//当都没有选中时 循环找到默认的支付方式 在设置支付方式数据
			var pays = that.data.pays,
				j = 0;
			for(j = 0; j < pays.length; j++) {
				if(pays[j].value == 'wxPay') {
					pays[j].checked = true;
				} else {
					pays[j].checked = false;
				}
			}
			that.setData({
				pays: pays,
				paytype: 'wxPay',
			});
			paytype = 'wxPay';
		}
		that.setData({
			form_id: e.detail.formId,
		});
		var address = e.detail.value.address;
		if(address) {
			// 收货地址存在
			if(paytype == 'wallet_Pay') {
				wx.showModal({
					title: '余额支付',
					content: '是否使用余额支付？',
					success: function(res) {
						if(res.confirm) {
							//组合支付 替换数据
							that.createProductOrder();
							console.log('用户点击确定');
						} else if(res.cancel) {
							console.log('用户点击取消')
						}
					}
				})
			} else {
				that.createProductOrder();
			}

		} else {
			// 没有收货地址
			wx.showToast({
				title: "请添加收货地址!",
        icon:'none',
				duration: 3000
			});
		}
	},
	// 确认订单
	createProductOrder: function() {
		var that = this;
		this.setData({
			btnDisabled: false,
		})
		var paytype = that.data.paytype;
		var type1 = that.data.type1;
		app.d.purchase = 1; //设置购物车刷新
		if(type1 == 11) { //抽奖
			var role = that.options.role; //分享人ID
			wx.request({
				url: app.d.ceshiUrl + '&action=product&m=choujiangpayment',
				method: 'post',
				data: {
					uid: that.data.userId, // 微信id
					choujiangid: that.data.choujiangid, // 购物车id
					type: paytype, // 支付方式
					remark: that.data.remark, // 用户备注
					total: that.data.total, // 付款金额
					size: that.data.size, // 付款金额
					type1: 11,
					role: role,
				},
				header: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				success: function(res) {
					var data = res.data;
					if(data.status == 1) {
						var err = res.data.err;
						// 余额支付
						if(err != '') {
							wx.showToast({
								title: res.data.err,
								icon: 'none',
								duration: 2500,
							});
							setTimeout(function() {
								if(data.arr.pay_type == 'wallet_Pay') {
									that.wallet_pay(data.arr);
								}
								if(data.arr.pay_type == 'wxPay') {
									// 微信支付
									that.wxpay(data.arr);
								}
							}, 2000);

						} else {
							if(data.arr.pay_type == 'wallet_Pay') {
								that.wallet_pay(data.arr);
							}
							if(data.arr.pay_type == 'wxPay') {
								// 微信支付
								that.wxpay(data.arr);
							}
						}

					} else {
						wx.showToast({
							title: res.data.err,
							icon: 'none',
							duration: 2500
						});
					}
				},
				fail: function(e) {
					wx.showToast({
						title: '网络异常！err:createProductOrder',
						duration: 2000
					});
				}
			});
		} else {
			wx.request({
				url: app.d.ceshiUrl + '&action=product&m=payment',
				method: 'post',
				data: {
					uid: that.data.userId, // 微信id
					cart_id: that.data.cartId, // 购物车id
					type: paytype, // 支付方式
					total: that.data.coupon_money, // 付款金额
					coupon_id: that.data.coupon_id, // 优惠券ID
					allow: that.data.allow, // 用户使用消费金
					name: that.data.name, // 满减金额名称
					reduce_money: that.data.reduce_money, // 满减金额
					dkyuan: that.data.d_yuan,
          red_packet: that.data.allow01, // 使用红包的金额
				},
				header: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				success: function(res) {
					var data = res.data;
          console.log(res)
					if(data.status == 1) {
						// 余额支付
						if(data.arr.pay_type == 'wallet_Pay') {
							that.wallet_pay(data.arr);
						}
						if(data.arr.pay_type == 'wxPay') {
							// 微信支付
							that.wxpay(data.arr);
						}
					} else {
						wx.showToast({
							title: res.data.err,
              icon:'none',
							duration: 2500
						});
					}
				},
				fail: function(e) {
					wx.showToast({
						title: '网络异常！err:createProductOrder',
						duration: 2000
					});
				}
			});
      wx.request({//红包记录
        url: app.d.ceshiUrl + '&action=red_packet&m=jilu',
        method: 'post',
        data: {
          openid: app.globalData.userInfo.openid,
          total: that.data.allow01, // 使用红包的金额
        },
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        fail: function (e) {
          wx.showToast({
            title: '网络异常！err:createProductOrder',
            duration: 2000
          });
        }
      });

		}
	},

	// 发起钱包支付
	wallet_pay: function(order) {
		var that = this;
		var type1 = that.data.type1; // 决定是抽奖还是普通支付
		if(type1 == 11) {
			var total = that.data.total; // 付款金额
		} else {
			var total = that.data.coupon_money; // 付款金额
		}
		if(that.data.coupon_id) {
			var coupon_id = that.data.coupon_id;
		} else {
			var coupon_id = '';
		}
		/*
		1.支付成功
		2.支付失败：提示；清空密码；自动聚焦isFocus:true，拉起键盘再次输入
		*/
		if(type1 == 11) {
			var coupon_money = that.data.total;
			var user_money = that.data.address.user_money;
		} else {
			var coupon_money = that.data.coupon_money;
			var user_money = that.data.user_money;
		}

		if(Number(user_money) > Number(coupon_money)) {
			wx.request({
				url: app.d.ceshiUrl + '&action=product&m=wallet_pay',
				method: 'post',
				data: {
					uid: app.globalData.userInfo.openid, // 微信支付
					total: total, // 付款金额
				},
				header: {
					'Content-Type': 'application/x-www-form-urlencoded'
				},
				success: function(res) {
					var status = res.data.status;
					if(status) {
						//支付成功  修改订单
						that.up_order(order);
					} else {
						//支付失败：提示
						wx.showToast({
							title: '支付失败请重新下单！',
							icon: 'none',
							duration: 2000,
						});
					}
				},
				fail: function() {
					wx.showToast({
						title: '网络异常！',
						duration: 2000
					});
				}
			});
		} else {
			wx.showToast({
				title: '余额不足，请更换支付方式！',
				icon: 'none',
				duration: 2000,
			});
		}

	},
	// 调起微信支付
	wxpay: function(order) {
    console.log(order)
		var that = this;
    var d_yuan = that.data.d_yuan, cmoney = order.coupon_money, oid = order.order_id
		if(d_yuan) {
			cmoney = Number(cmoney) - Number(d_yuan); //防止出现小数点后多余2位以上  .toFixed(2)
		}
		wx.request({
			url: app.d.ceshiUrl + '&action=recharge&m=recharge',
			data: {
				cmoney: cmoney, // 付款金额
				openid: app.globalData.userInfo.openid, // 微信id
				type: 1,
			},
			method: 'POST', // OPTIONS, GET, HEAD, POST, PUT, DELETE, TRACE, CONNECT
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			}, // 设置请求的 header
			success: function(res) {
				if(res.data) {
					var dingdanhao = res.data.out_trade_no;
          that.setData({
            trade_no: dingdanhao
          })
					wx.requestPayment({
						timeStamp: res.data.timeStamp,
						nonceStr: res.data.nonceStr,
						package: res.data.package,
						signType: 'MD5',
						paySign: res.data.paySign,
						success: function(res) {
							// 成功后修改订单状态
							that.up_order(order);
						},
						fail: function(res) {
							wx.showModal({
								content: "取消支付！",
								showCancel: false,
								confirmText: "确定",
								success: function(res) {
                  wx.redirectTo({
                    url: '../order/detail?orderId=' + oid + '&&type1=22'
                  })
								}
							})
						}
					})
				}
			},
			fail: function() {
				// 失败后
				wx.showToast({
					title: '网络异常！err:wxpay',
					duration: 2000
				});
			}
		})
	},
	//修改订单
	up_order: function(order) {
		var that = this;
		var type1 = that.data.type1;
		var d_yuan = that.data.d_yuan;
		var cmoney = order.coupon_money;
    if(that.data.trade_no){
      var trade_no = that.data.trade_no
    }else{
      var trade_no = ''
    }
		if(d_yuan) {
			cmoney = cmoney - d_yuan;
		}
		wx.request({
			url: app.d.ceshiUrl + '&action=product&m=up_order',
			method: 'post',
			data: {
				coupon_id: order.coupon_id, // 优惠券id
				allow: that.data.allow, // 使用积分
				coupon_money: order.coupon_money, // 付款金额
				order_id: order.sNo, // 订单号
				user_id: app.globalData.userInfo.openid, // 微信id
				d_yuan: d_yuan,
        trade_no: trade_no
			},
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			success: function(res) {
        if (!res.data.status){
          wx.showToast({
            title: res.data.err,
            icon:'none',
            duration: 2000
          });
        }
				var orderId = res.data.sNo; // 订单号
				var oid = res.data.id; // 订单id
				var f_pname = res.data.pname; // 拼接的商品名称
				var f_coupon_money = res.data.coupon_money; // 订单价格
				var time = res.data.time; // 当前时间
				var form_id = that.data.form_id;
				var user_id = app.globalData.userInfo.openid; // 微信id
				//控制首页刷新
				app.d.indexchase = true;
				// 调用信息发送
				that.notice(orderId, oid, f_coupon_money, user_id, form_id, f_pname);
				wx.showModal({
					content: "支付成功！",
					showCancel: false,
					confirmText: "确定",
					success: function(res) {
						if(type1 == 11) {
							wx.redirectTo({
                url: '../draw/cantuan?orderId=' + oid + '&&type1=11'
							})
						} else {
							wx.redirectTo({
								url: '../order/detail?orderId=' + oid + '&&type1=22'
							})
						}
					}
				});
			}
		})
	},
  //获取插件
  get_plug: function (e) {
    var that = this;
    wx.request({
      url: app.d.ceshiUrl + '&action=app&m=get_plug',
      method: 'post',
      data: {
        userid: app.globalData.userInfo.openid,
      },
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        var plug_ins = res.data;
        that.setData({
          plug_coupon: plug_ins.coupon,
          plug_wallet: plug_ins.wallet,
          plug_integral: plug_ins.integral,
          pays: plug_ins.pays,
          red_packet: plug_ins.red_packet
        });
      }
    })
  },
	//发送数据到客户微信上
	notice: function(order_id, order_sn, price, user_id, form_id, f_pname) {
		wx.request({
			url: app.d.ceshiUrl + '&action=getcode&m=Send_Prompt',
			method: 'post',
			data: {
				page: 'pages/order/detail?orderId=' + order_sn,
				order_sn: order_id,
				price: price+'元',
				user_id: user_id,
				form_id: form_id,
				f_pname: f_pname
			},
			header: {
				'Content-Type': 'application/x-www-form-urlencoded'
			},
			success: function(res) {
				console.log(form_id)
			}
		})
	},
	// 弹窗
	setModalStatus: function(e) {
		var taht = this;
		var showModalStatus = taht.data.showModalStatus;
		if(showModalStatus) {
			// 点击旁白 无需响应
		} else {
			taht.my_coupon();
		}
		var animation = wx.createAnimation({
			duration: 200,
			timingFunction: "linear",
			delay: 0
		});
		//定义点击的类型
		taht.animation = animation
		animation.translateY(300).step();
		taht.setData({
			animationData: animation.export()
		})
		if(e.currentTarget.dataset.status == 1) {
			taht.setData({
				showModalStatus: true
			});
		}
		setTimeout(function() {
			animation.translateY(0).step()
			taht.setData({
				animationData: animation
			})
			if(e.currentTarget.dataset.status == 0) {
				taht.setData({
					showModalStatus: false
				});
			}
		}.bind(this), 200);

	},
});