//获取应用实例  
var app = getApp();
//引入这个插件，使html内容自动转换成wxml内容
var WxParse = require('../../wxParse/wxParse.js');
Page({
  data: {
    bannerApp: true,
    maskHidden:false,
    winWidth: 0,
    winHeight: 0,
    currentTab: 0, //tab切换  
    productId: 0,
    itemData: {},
    wsc: 'bxs',
    sc: 'bxs',
    paytype: 'buynow',
    sizeid: '',
    remind: '加载中',
    bannerItem: [],
    select:[],//选中
    buynum: 1,
    // 产品图片轮播
    value: false,
    autoplay: true,
    interval: 5000,
    duration: 1000,
    xefl:true,//点击选择规格显示状态
    // 属性选择
    firstIndex: -1,
    //数据结构：以一组一组来进行设定  
    commodityAttr: [],
    attrValueList: [],
    show_share:false,
  },
  //分享朋友圈 查看保存图片
  user_share: function () {
    var that = this;
    wx.showToast({
      title: '图片生成中',
      icon: 'loading',
      duration: 1500,
    });
    app.request.wxRequest({
      url: app.d.ceshiUrl + '&action=getcode&m=product_share',
      data: { 
        product_img_path: that.data.itemData.photo_d,
        product_title: that.data.title,
        price: that.data.itemData.price_yh,
        yprice: that.data.itemData.price,
        scene: 'productId=' + that.data.productId + '&openid=' + app.globalData.userInfo.user_id,
        path: 'pages/product/detail', 
        id: app.globalData.userInfo.user_id,
        pid: that.data.productId,
        type:3
       },
      method: 'post',
      success: function (res) {
        console.log(res)
        that.setData({
          maskHidden: true,
          imagePath: res.url,
        });
      }
    })

    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    });
    that.animation = animation;
    animation.translateY(300).step();
    that.setData({
      animationData: animation.export()
    })
    setTimeout(function () {
      animation.translateY(0).step()
      that.setData({
        animationData: animation,
        show_share: false
      })
    }.bind(that), 200)
  },
  //页面加载完成函数
  onReady: function () {
    var that = this;
    setTimeout(function () {
      that.setData({
        remind: ''
      });
    }, 1500);
  },
  // 下拉刷新
  onPullDownRefresh: function () {
    wx.showNavigationBarLoading() //在标题栏中显示加载
    setTimeout(function () {
      // complete
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
    }, 1500);
    this.loadProductDetail();
  },
  // 传值
  onLoad: function (option) {
    var scene = decodeURIComponent(option.scene);
    var that = this;
    if (scene != 'undefined' && scene.length > 1 && scene != '') {
      option = scene;
    }
    that.initNavHeight();
    if (option.referee_openid != '') {
      app.globalData.userInfo['referee_openid'] = option.referee_openid;
    } else {
      app.globalData.userInfo['referee_openid'] = '';
    }
    that.setData({
      productId: option.productId,
      choujiangid: option.choujiangid ? option.choujiangid : '',
      type1: option.type1 ? option.type1 : '',//判断是抽奖还是其他活动
      role: option.role ? option.role : '',
      size: option.size ? option.size : '',
    });
    //显示数据
    that.loadProductDetail();
  },
  // 属性选择
  onShow: function () {
    var that = this;
    that.setData({
      includeGroup: that.data.commodityAttr,
    });
    that.distachAttrValue(that.data.commodityAttr);
    // 只有一个属性组合的时候默认选中  
    if (that.data.commodityAttr.length == 1) {
      for (var i = 0; i < that.data.commodityAttr[0].attrValueList.length; i++) {
        that.data.attrValueList[i].selectedValue = that.data.commodityAttr[0].attrValueList[i].attrValue;
      }
      var sizeid = that.data.commodityAttr[0].priceId;
      that.setData({
        attrValueList: that.data.attrValueList,
        sizeid: sizeid
      });
      that.setimg();
    };
  },
  //接受formid
  getUserformid: function (e) {
    var formid = e.detail.formId;
    this.sendFormid(formid, 'kt1');
    this.setModalStatus(e);
  },
  //接受formid
  sendFormid: function (fromid, page) {
    var that = this
    app.request.wxRequest({
      url: app.d.ceshiUrl + '&action=draw&m=getFormid',
      data: { from_id: fromid, userid: app.globalData.userInfo.openid, page: page },
      method: 'post',
      success: function () {

      }
    })
  },
  // 商品详情数据获取 
  loadProductDetail: function () {
    var that = this;
    var choujiangid = that.data.choujiangid;
    var openid = app.globalData.userInfo.openid;
    console.log(app.globalData.userInfo)
    if (openid) {
      var bgcolor = app.d.bgcolor;
      wx.setNavigationBarColor({
        frontColor: '#ffffff',
        backgroundColor: bgcolor, // 页面标题为路由参数
        animation: {
          duration: 400,
          timingFunc: 'easeIn'
        }
      });

      wx.request({
        url: app.d.ceshiUrl + '&action=product&m=index',
        method: 'post',
        data: {
          pro_id: that.data.productId,
          openid: openid,
          type1: that.data.type1,//判断是抽奖还是其他活动
          choujiangid: that.data.choujiangid,
          role: that.options.role ? that.options.role : '',

          size: that.data.size,
        },
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        success: function (res) {
          var status = res.data.status;
          var is_shou = res.data.type;
          if (status == 1) {
            var pro = res.data.pro;
            var content = pro.content;
            WxParse.wxParse('content', 'html', content, that, 5);
            that.setData({
              bgcolor: bgcolor,
              itemData: pro,
              kucun:pro.num,
              bannerItem: pro.img_arr,
              commodityAttr: res.data.commodityAttr,
              title: pro.name,
              comments: res.data.comments,
              is_shou: res.data.type,
              collection_id: res.data.collection_id,
              choujiangid: that.data.choujiangid,
              role: that.data.role ? that.data.role : '',
              qj_price: res.data.qj_price,
              qj_yprice: res.data.qj_yprice,
            });
          } else if (status == 3) {
            wx.showToast({
              title: res.data.err,
              duration: 2000,
            });
            wx.redirectTo({
              url: '../../pages/draw/draw'
            });
          } else {
            wx.showToast({
              title: res.data.err,
              duration: 2000,
            });
          }
          //判断是否收藏
          if (is_shou) {
            that.setData({
              wsc: 'bxs',
              sc: 'xs',
            })
          } else {
            that.setData({
              wsc: 'xs',
              sc: 'bxs',
            })
          }
          that.onShow();
        },
        error: function (e) {
          wx.showToast({
            title: '网络异常！',
            duration: 2000,
          });
        },
      });
    } else {
      //不存在openid  先获取 在回调  传递that
      app.getUserInfo(that);
    }

  },
  // 弹窗
  setModalStatus: function (e) {
    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    });
    //定义点击的类型
    var type = e.target.dataset.type ? e.target.dataset.type : false;
    //控制两种不同显示方式 
    if(type){
      this.setData({
        xefl: false,
      })
    }else{
      this.setData({
        xefl: true,
      })
      type = this.data.paytype;
    }
    this.animation = animation
    animation.translateY(300).step();
    this.setData({
      paytype: type,
      animationData: animation.export()
    })
    if (e.currentTarget.dataset.status == 1) {
      this.setData({
        showModalStatus: true
      });
    }
    setTimeout(function () {
      animation.translateY(0).step()
      this.setData({
        animationData: animation
      })
      if (e.currentTarget.dataset.status == 0) {
        this.setData({
          showModalStatus: false
        });
      }
    }.bind(this), 200)
  },

  // 加减
  changeNum: function (e) {
    var that = this;
    var num = that.data.itemData.num;
    if (e.target.dataset.alphaBeta == 0) {
      if (this.data.buynum <= 1) {
        buynum: 1
      } else {
        this.setData({
          buynum: this.data.buynum - 1
        })
      };
    } else {
      if (that.data.buynum < num){
        this.setData({
          buynum: this.data.buynum + 1
        })
      }

    };
  },
  //跳转index
  t_index: function () {
    wx.switchTab({
      url: '../index/index'
    })
  },
  //跳转cart
  go_cart: function () {
    wx.switchTab({
      url: '../cart/cart'
    })
  },
  /* 获取数据 */
  distachAttrValue: function (commodityAttr) {
    // 把数据对象的数据（视图使用），写到局部内  
    var attrValueList = this.data.attrValueList;
    // 遍历获取的数据  
    for (var i = 0; i < commodityAttr.length; i++) {
      for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
        var attrIndex = this.getAttrIndex(commodityAttr[i].attrValueList[j].attrKey, attrValueList);
        // 如果还没有属性索引为-1，此时新增属性并设置属性值数组的第一个值；索引大于等于0，表示已存在的属性名的位置  
        if (attrIndex >= 0) {
          // 如果属性值数组中没有该值，push新值；否则不处理  
          if (!this.isValueExist(commodityAttr[i].attrValueList[j].attrValue, attrValueList[attrIndex].attrValues)) {
            attrValueList[attrIndex].attrValues.push(commodityAttr[i].attrValueList[j].attrValue);
          }
        } else {
          attrValueList.push({
            attrKey: commodityAttr[i].attrValueList[j].attrKey,
            attrValues: [commodityAttr[i].attrValueList[j].attrValue]
          });
        }
      }
    }
    for (var i = 0; i < attrValueList.length; i++) {
      for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
        if (attrValueList[i].attrValueStatus) {
          attrValueList[i].attrValueStatus[j] = true;
        } else {
          attrValueList[i].attrValueStatus = [];
          attrValueList[i].attrValueStatus[j] = true;
        }
      }
    }
    this.setData({
      attrValueList: attrValueList
    });
  },
  getAttrIndex: function (attrName, attrValueList) {
    // 判断数组中的attrKey是否有该属性值  
    for (var i = 0; i < attrValueList.length; i++) {
      if (attrName == attrValueList[i].attrKey) {
        break;
      }
    }
    return i < attrValueList.length ? i : -1;
  },
  isValueExist: function (value, valueArr) {
    // 判断是否已有属性值  
    for (var i = 0; i < valueArr.length; i++) {
      if (valueArr[i] == value) {
        break;
      }
    }
    return i < valueArr.length;
  },
  /* 选择属性值事件 */
  selectAttrValue: function (e) {
    var attrValueList = this.data.attrValueList;
    var index = e.currentTarget.dataset.index;//属性索引  
    var key = e.currentTarget.dataset.key; // 属性类型
    var value = e.currentTarget.dataset.value; // 属性名称
    if (e.currentTarget.dataset.status || index == this.data.firstIndex) {
      if (e.currentTarget.dataset.selectedvalue == e.currentTarget.dataset.value) {
        // 取消选中  
        this.disSelectValue(attrValueList, index, key, value);
      } else {
        // 选中  
        this.selectValue(attrValueList, index, key, value);
      }

    }
  },
  /* 选中 */
  selectValue: function (attrValueList, index, key, value, unselectStatus) {
    var that = this;
    var xuan = [], xuan_num = 0;
    attrValueList[index].selectedValue = value;
    for (var m = 0; m < attrValueList.length; m++) {
      if (attrValueList[m].selectedValue) {
        xuan[m] = attrValueList[m].selectedValue;
        xuan_num++;
      } else {
        attrValueList[m].selectedValue = '';
        xuan[m] = '';
      }
    }
    var includeGroup = [];
    if (index == this.data.firstIndex && !unselectStatus) {
      // 如果是第一个选中的属性值，则该属性所有值可选  
      var commodityAttr = this.data.commodityAttr;
      // 其他选中的属性值全都置空  
      for (var i = 0; i < attrValueList.length; i++) {
        for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
          attrValueList[i].selectedValue = '';
        }
      }
    } else {
      var commodityAttr = this.data.includeGroup;
    }
    //参考键名
    var s_keys = ['型号', '规格', '颜色'];
    // var k_keys = ['name', 'size', 'color'];
    var keds = [];//可选词组
    // 判断属性是否可选  根据点击的内容 选择对应属性
    if (xuan_num == 1) {
      for (var i = 0; i < commodityAttr.length; i++) {
        for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
          if (commodityAttr[i].attrValueList[j].attrKey == key && commodityAttr[i].attrValueList[j].attrValue == value) {
            includeGroup.push(commodityAttr[i]);
          }
        }
      }
    } else if (xuan_num == 2) {
      var keys_num = 0;
      for (var i = 0; i < s_keys.length; i++) {
        if (s_keys[i] == key) {
          keys_num = i;
        }
      }

      var new_key = '', new_val = '';
      for (var j = 0; j < xuan.length; j++) {
        if (xuan[j] != '' && xuan[j] != value) {
          console.log(s_keys[j], xuan[j]);
          new_key = s_keys[j];
          new_val = xuan[j];
        }
      }
      commodityAttr = that.data.commodityAttr;

      for (var i = 0; i < commodityAttr.length; i++) {
        for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
          if (keys_num == 0) {
            if (commodityAttr[i].attrValueList[j].attrKey == new_key && commodityAttr[i].attrValueList[j].attrValue == new_val) {
              includeGroup.push(commodityAttr[i]);
            }
          }else{
            if (commodityAttr[i].attrValueList[j].attrKey == key && commodityAttr[i].attrValueList[j].attrValue == value) {
              includeGroup.push(commodityAttr[i]);
            }
          }
        }
      }

      for (var i = 0; i < commodityAttr.length; i++) {
          if (new_key == '型号' && key == '规格'){
            if (commodityAttr[i].name == new_val && commodityAttr[i].size == value){
              keds.push(commodityAttr[i].color);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].name == new_val && commodityAttr[q].color == commodityAttr[i].color) {
                  keds.push(commodityAttr[q].size);
                }
              }
            }
          }
          if (new_key == '型号' && key == '颜色') {
            if (commodityAttr[i].name == new_val && commodityAttr[i].color == value) {
              keds.push(commodityAttr[i].size);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].name == new_val && commodityAttr[q].size == commodityAttr[i].size) {
                  keds.push(commodityAttr[q].color);
                }
              }
            }
          }

          if (new_key == '颜色' && key == '规格') {
            if (commodityAttr[i].color == new_val && commodityAttr[i].size == value) {
              keds.push(commodityAttr[i].name);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].color == new_val && commodityAttr[q].name == commodityAttr[i].name) {
                  keds.push(commodityAttr[q].size);
                }
              }
            }
          }
          if (new_key == '颜色' && key == '型号') {
            if (commodityAttr[i].color == new_val && commodityAttr[i].name == value) {
              keds.push(commodityAttr[i].size);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].color == new_val && commodityAttr[q].size == commodityAttr[i].size) {
                  keds.push(commodityAttr[q].name);
                }
              }
            }
          }

          if (new_key == '规格' && key == '颜色') {
            if (commodityAttr[i].size == new_val && commodityAttr[i].color == value) {
              keds.push(commodityAttr[i].name);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].size == new_val && commodityAttr[q].name == commodityAttr[i].name) {
                  keds.push(commodityAttr[q].color);
                }
              }
            }
          }
          if (new_key == '规格' && key == '型号') {

            if (commodityAttr[i].size == new_val && commodityAttr[i].name == value) {
              keds.push(commodityAttr[i].color);
              for (var q = 0; q < commodityAttr.length; q++) {
                if (commodityAttr[q].name == new_val && commodityAttr[q].color == commodityAttr[i].color) {
                  keds.push(commodityAttr[q].size);
                }
              }
            }
          }
      }
      console.log(keds);
    } else { 
      //选择三个的时候
      var l_key = key,l_val = value;
      for (var s = 0; s < xuan.length; s++) {
        
        if (s == 2) {
          var new_key = s_keys[s], new_val = xuan[s];
          key = s_keys[0]; value = xuan[0];
        }else{
          var new_key = s_keys[s], new_val = xuan[s];
          key = s_keys[s + 1]; value = xuan[s + 1];
        }
        var commodityAttr = that.data.commodityAttr;

        for (var i = 0; i < commodityAttr.length; i++) {
          if (new_key == '型号' && key == '规格') {

            if (commodityAttr[i].name == new_val && commodityAttr[i].size == value) {
              keds.push(commodityAttr[i].color);
            }
          }
          if (new_key == '型号' && key == '颜色') {

            if (commodityAttr[i].name == new_val && commodityAttr[i].color == value) {
              keds.push(commodityAttr[i].size);
            }
          }

          if (new_key == '颜色' && key == '规格') {

            if (commodityAttr[i].color == new_val && commodityAttr[i].size == value) {
              keds.push(commodityAttr[i].name);
            }
          }
          if (new_key == '颜色' && key == '型号') {

            if (commodityAttr[i].color == new_val && commodityAttr[i].name == value) {
              keds.push(commodityAttr[i].size);
            }
          }

          if (new_key == '规格' && key == '颜色') {

            if (commodityAttr[i].size == new_val && commodityAttr[i].color == value) {
              keds.push(commodityAttr[i].name);
            }
          }
          if (new_key == '规格' && key == '型号') {
            if (commodityAttr[i].size == new_val && commodityAttr[i].name == value) {
              keds.push(commodityAttr[i].color);
            }
          }
        }
      }

      key = l_key;
      value = l_val;
      for (var i = 0; i < commodityAttr.length; i++) {
        for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
          if (commodityAttr[i].attrValueList[j].attrKey == key && commodityAttr[i].attrValueList[j].attrValue == value) {
            includeGroup.push(commodityAttr[i]);
          }
        }
      }

    }

    attrValueList[index].selectedValue = value;
    // 判断属性是否可选  
    for (var i = 0; i < attrValueList.length; i++) {
      for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
        attrValueList[i].attrValueStatus[j] = false;
      }
    }
    for (var k = 0; k < attrValueList.length; k++) {
      for (var i = 0; i < includeGroup.length; i++) {
        for (var j = 0; j < includeGroup[i].attrValueList.length; j++) {
          if (attrValueList[k].attrKey == includeGroup[i].attrValueList[j].attrKey) {
            for (var m = 0; m < attrValueList[k].attrValues.length; m++) {
              if (attrValueList[k].attrValues[m] == includeGroup[i].attrValueList[j].attrValue) {
                attrValueList[k].attrValueStatus[m] = true;
              }
              for (var s = 0; s < keds.length; s++) {
                if (attrValueList[k].attrValues[m] == keds[s]) {
                    attrValueList[k].attrValueStatus[m] = true;
                }
              }
            }
          }
        }
      }
    }

    this.setData({
      attrValueList: attrValueList,
      includeGroup: includeGroup,
      new_attrValueList: attrValueList
    });
    var count = 0;
    for (var i = 0; i < attrValueList.length; i++) {
      for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
        if (attrValueList[i].selectedValue) {
          count++;
          break;
        }
      }
    }
    if (count < 2) {
      // 第一次选中，同属性的值都可选  
      this.setData({
        firstIndex: index
      });
    } else {
      this.setData({
        firstIndex: -1
      });
    }
    that.setimg();
  },
  /* 取消选中 */
  disSelectValue: function (attrValueList, index, key, value) {
    var commodityAttr = this.data.commodityAttr;
    var includeGroup = this.data.includeGroup;
    attrValueList[index].selectedValue = '';
    var s_keys = ['型号', '规格', '颜色'];
    var rew = 0;
    var xuan = [], xuan_num = 0, keds = [];
    // 判断属性是否可选  
    for (var i = 0; i < attrValueList.length; i++) {
      for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
        if (attrValueList[i].selectedValue != '') {
          rew = rew + 1;
        }
        attrValueList[i].attrValueStatus[j] = true;
      }
      if (attrValueList[i].selectedValue) {
        xuan[i] = attrValueList[i].selectedValue;
        xuan_num++;
      } else {
        xuan[i] = '';
      }
    }

    var new_key = '', new_val='';
    if (xuan_num == 2){
      
      if(index == 1){
        new_key = s_keys[0];
        new_val = xuan[0];
        key = s_keys[2];
        value = xuan[2];
      }else if(index == 2){
        new_key = s_keys[0];
        new_val = xuan[0];
        key = s_keys[1];
        value = xuan[1];
      }else{
        new_key = s_keys[1];
        new_val = xuan[1];
        key = s_keys[2];
        value = xuan[2];
      }
      for (var i = 0; i < commodityAttr.length; i++) {
        if (new_key == '型号' && key == '规格') {
          if (commodityAttr[i].name == new_val && commodityAttr[i].size == value) {
            keds.push(commodityAttr[i].color);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].name == new_val && commodityAttr[q].color == commodityAttr[i].color) {
                keds.push(commodityAttr[q].size);
              }
            }
          }
        }
        if (new_key == '型号' && key == '颜色') {
          if (commodityAttr[i].name == new_val && commodityAttr[i].color == value) {
            keds.push(commodityAttr[i].size);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].name == new_val && commodityAttr[q].size == commodityAttr[i].size) {
                keds.push(commodityAttr[q].color);
              }
            }
          }
        }

        if (new_key == '颜色' && key == '规格') {
          if (commodityAttr[i].color == new_val && commodityAttr[i].size == value) {
            keds.push(commodityAttr[i].name);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].color == new_val && commodityAttr[q].name == commodityAttr[i].name) {
                keds.push(commodityAttr[q].size);
              }
            }
          }
        }
        if (new_key == '颜色' && key == '型号') {
          if (commodityAttr[i].color == new_val && commodityAttr[i].name == value) {
            keds.push(commodityAttr[i].size);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].color == new_val && commodityAttr[q].size == commodityAttr[i].size) {
                keds.push(commodityAttr[q].name);
              }
            }
          }
        }

        if (new_key == '规格' && key == '颜色') {
          if (commodityAttr[i].size == new_val && commodityAttr[i].color == value) {
            keds.push(commodityAttr[i].name);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].size == new_val && commodityAttr[q].name == commodityAttr[i].name) {
                keds.push(commodityAttr[q].color);
              }
            }
          }
        }
        if (new_key == '规格' && key == '型号') {

          if (commodityAttr[i].size == new_val && commodityAttr[i].name == value) {
            keds.push(commodityAttr[i].color);
            for (var q = 0; q < commodityAttr.length; q++) {
              if (commodityAttr[q].name == new_val && commodityAttr[q].color == commodityAttr[i].color) {
                keds.push(commodityAttr[q].size);
              }
            }
          }
        }
      }

    }else if(xuan_num ==1){
      for (var i = 0; i < xuan.length; i++) {
        if (xuan[i] != ''){
          new_key = s_keys[i];
          new_val = xuan[i];
          index = i;
        }
      }
      for (var i = 0; i < commodityAttr.length; i++) {
        for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
          if (commodityAttr[i].attrValueList[j].attrKey == new_key && commodityAttr[i].attrValueList[j].attrValue == new_val) {
            includeGroup.push(commodityAttr[i]);
          }
        }
      }
      this.setData({
        firstIndex: index
      });
    }

    //先改数据在判断
    for (var i = 0; i < attrValueList.length; i++) {
      for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
        attrValueList[i].attrValueStatus[j] = false;
      }
    }
    for (var k = 0; k < attrValueList.length; k++) {
      for (var i = 0; i < includeGroup.length; i++) {
        for (var j = 0; j < includeGroup[i].attrValueList.length; j++) {
          if (attrValueList[k].attrKey == includeGroup[i].attrValueList[j].attrKey) {
            for (var m = 0; m < attrValueList[k].attrValues.length; m++) {
              if (attrValueList[k].attrValues[m] == includeGroup[i].attrValueList[j].attrValue) {
                attrValueList[k].attrValueStatus[m] = true;
              }
              for (var s = 0; s < keds.length; s++) {
                if (attrValueList[k].attrValues[m] == keds[s]) {
                  attrValueList[k].attrValueStatus[m] = true;
                }
              }
            }
          }
        }
      }
    }
    if(rew == 0){
      var num = this.data.kucun;
      var itemData = this.data.itemData;
      itemData.num = num;
      this.setData({
        itemData: itemData,
      });
    }
    this.setData({
      includeGroup: commodityAttr,
      attrValueList: attrValueList
    });

  },
  /* 点击确定 */
  submit: function (e) {
    var that = this;
    var value = [], xuan = [], attrValueList = this.data.attrValueList;
    for (var i = 0; i < attrValueList.length; i++) {
      if (!attrValueList[i].selectedValue) {
        break;
      }
      value.push(that.data.attrValueList[i].selectedValue);
      if (attrValueList[i].selectedValue) {
        xuan[i] = attrValueList[i].selectedValue;
      } else {
        xuan[i] = '';
      }
    }

    if (i < that.data.attrValueList.length) {
      wx.showToast({
        title: '请完善属性！',
        icon: 'loading',
        duration: 1000
      })
    } else {
      var commodityAttr = that.data.commodityAttr;
      var size_statu = false;
      for (var j = 0; j < that.data.commodityAttr.length; j++) {
        if (commodityAttr[j].name == xuan[0] && commodityAttr[j].size == xuan[1] && commodityAttr[j].color == xuan[2]){
          size_statu = true;
        }
      }
      if (size_statu){
        var type = e.target.dataset.type;
        var sizeid = that.data.sizeid;
        that.addShopCart(e, sizeid);
      }else{
        wx.showToast({
          title: '库存不足，请重新选择！',
          icon: 'none',
          duration: 1000
        })    
      }
    }
  },
  setimg: function (e) {
    //设置数据 全部选好后替换图片和价格属性
    var that = this;
    var value = [];
    for (var i = 0; i < this.data.attrValueList.length; i++) {
      if (!this.data.attrValueList[i].selectedValue) {
        break;
      }
      value.push(that.data.attrValueList[i].selectedValue);
    }
    if (i < that.data.attrValueList.length) {

    } else {
      //设置显示数据
      for (var i = 0; i < that.data.commodityAttr.length; i++) {
        var name = that.data.commodityAttr[i].attrValueList[0].attrValue;
        var size = that.data.commodityAttr[i].attrValueList[1].attrValue;
        var color = that.data.commodityAttr[i].attrValueList[2].attrValue;
        if (name == value[0] && size == value[1] && color == value[2]) {
          var itemData = that.data.itemData;
          itemData.photo_x = that.data.commodityAttr[i].img;
          itemData.price_yh = that.data.commodityAttr[i].price;
          itemData.num = that.data.commodityAttr[i].stock;
          var choujiangid = that.data.choujiangid;
          var sizeid = that.data.commodityAttr[i].priceId;
          console.log('属性id='+sizeid)
          that.setData({
            value: value,
            itemData: itemData,
            sizeid: sizeid,
            choujiangid: choujiangid,
            qj_price: itemData.price_yh
          });
        }
      }
    }
  },
  addShopCart: function (e, sizeid) { 
    //添加到购物车
    var that = this;
    var pro_type = e.target.dataset.type;
    if (pro_type != 'canjiapintuan') {
      wx.request({
        url: app.d.ceshiUrl + '&action=product&m=add_cart',
        method: 'post',
        data: {
          uid: app.globalData.userInfo.openid,
          pid: that.data.productId,
          num: that.data.buynum,
          sizeid: sizeid,
          pro_type: pro_type,
        },
        header: {
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        success: function (res) {
          //设置购物车刷新
          app.d.purchase = 1;
          var data = res.data;
          if (data.status == 1) {
            var ptype = e.currentTarget.dataset.type;
            if (ptype == 'buynow') {
              wx.redirectTo({
                url: '../order/pay?cartId=' + data.cart_id + '&pid=' + that.data.productId,
              });
              return;
            } else {
              wx.showToast({
                title: '加入购物车成功',
                icon: 'success',
                duration: 2000
              });
              that.setData({
                showModalStatus: false
              });
            }
          } else {
            wx.showToast({
              icon: 'loading',
              title: data.err,
              duration: 2000
            });
          }
        },
        fail: function () {
          wx.showToast({
            title: '网络异常！',
            duration: 2000
          });
        }
      });
    } else {
      //抽奖弹框
      var productId = that.data.productId;
      var sizeid = that.data.sizeid;
      var choujiangid = that.data.choujiangid;
      var role = that.options.role;
      if (role == '' || role == 'undefined'){
        role='';
      }
      wx.redirectTo({
        url: '../order/pay?productId=' + productId + '&sizeid=' + sizeid + '&choujiangid=' + choujiangid + '&type1=' + 11 + '&role=' + role,
      });
      return;
    }
  },
  bindChange: function (e) {//滑动切换tab 
    var that = this;
    that.setData({ currentTab: e.detail.current });
  },
  initNavHeight: function () {////获取系统信息
    var that = this;
    wx.getSystemInfo({
      success: function (res) {
        that.setData({
          winWidth: res.windowWidth,
          winHeight: res.windowHeight
        });
      }
    });
  },
  bannerClosed: function () {
    this.setData({
      bannerApp: false,
    })
  },
  swichNav: function (e) {//点击tab切换
    var that = this;
    if (that.data.currentTab === e.target.dataset.current) {
      return false;
    } else {
      that.setData({
        currentTab: e.target.dataset.current
      })
    }
  },
  onShareAppMessage: function (res) {
    var that = this;
    var id = that.data.productId;
    var type1 = that.data.type1;
    var uname = app.globalData.userInfo.nickName ? app.globalData.userInfo.nickName + '超值推荐 ' :'我发现一个好的东西 推荐给你们 ';
    var title = uname+that.data.title;
    var referee_openid = app.globalData.userInfo.openid;
    if (type1 == 1) {
      var drawid = that.data.choujiangid;
      if (res.from === 'button') {
        // 来自页面内转发按 itemData.photo_x
      }
      return {
        title: title,
        imageUrl: that.data.itemData.photo_x,
        path: 'pages/product/detail?productId=' + id + '&type1=1&choujiangid=' + drawid,
        success: function (res) {
          console.log('转发成功');
          var animation = wx.createAnimation({
            duration: 200,
            timingFunction: "linear",
            delay: 0
          });
          that.animation = animation;
          animation.translateY(300).step();
          that.setData({
            animationData: animation.export()
          })
          setTimeout(function () {
            animation.translateY(0).step()
            that.setData({
              animationData: animation,
              show_share: false
            })
          }.bind(that), 200)
        },
        fail: function (res) {
          console.log('转发失败')
        }
      }
    } else {
      if (res.from === 'button') {
        // 来自页面内转发按钮
      }
      return {
        title: title,
        path: 'pages/product/detail?productId=' + id + '&referee_openid=' + referee_openid,
        success: function (res) {
          console.log('转发成功');
          var animation = wx.createAnimation({
            duration: 200,
            timingFunction: "linear",
            delay: 0
          });
          that.animation = animation;
          animation.translateY(300).step();
          that.setData({
            animationData: animation.export()
          })
          setTimeout(function () {
            animation.translateY(0).step()
            that.setData({
              animationData: animation,
              show_share: false
            })
          }.bind(that), 200)
        },
        fail: function (res) {
          console.log('转发失败')
        }
      }
    }
  },
  // 添加到收藏
  addFavorites: function (e) {
    var that = this;
    wx.request({
      url: app.d.ceshiUrl + '&action=addFavorites&m=index',
      method: 'post',
      data: {
        openid: app.globalData.userInfo.openid,
        pid: that.data.productId,
      },
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {

        var data = res.data;
        if (data.status == 1) {
          wx.showToast({
            title: data.succ,
            duration: 2000
          });
          that.setData({
            wsc: 'bxs',
            sc: 'xs',
            collection_id: data.id
          })
          //变成已收藏，但是目前小程序可能不能改变图片，只能改样式
          that.data.itemData.isCollect = false;
        } else {
          wx.showToast({
            title: data.err,
            duration: 2000
          });
          that.setData({
            wsc: 'bxs',
            sc: 'xs',
          })
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
  },
  // 取消收藏
  delFavorites: function (e) {
    var that = this;
    wx.request({
      url: app.d.ceshiUrl + '&action=addFavorites&m=removeFavorites',
      method: 'post',
      data: {
        id: that.data.collection_id,
      },
      header: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      success: function (res) {
        var data = res.data;
        if (data.status == 1) {
          wx.showToast({
            title: data.succ,
            duration: 2000
          });
          //变成未收藏，但是目前小程序可能不能改变图片，只能改样式
          that.setData({
            wsc: 'xs',
            sc: 'bxs',
          })
        } else {
          wx.showToast({
            title: data.err,
            duration: 2000
          });
          that.setData({
            wsc: 'xs',
            sc: 'bxs',
          })
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
  },
  //图片预览
  previewImage: function (e) {
    var current = e.target.dataset.src;
    // 路径和 图片的数组
    var arr = [current];
    // 图片预览函数
    wx.previewImage({
      current: current, // 当前显示图片的http链接  
      urls: arr, // 需要预览的图片http链接列表  
    })
  },
  preventTouchMove: function (e) {

  },
  add_fromid: function (e) {
    // console.log(e.detail.formId);
    // console.log(e);
    var that = this;
    var formId = e.detail.formId;

    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    });
    //定义点击的类型
    var type = e.detail.target.dataset.type ? e.detail.target.dataset.type : false;
    //控制两种不同显示方式 
    if (type) {
      this.setData({
        xefl: false,
      })
    } else {
      this.setData({
        xefl: true,
      })
      type = this.data.paytype;
    }
    this.animation = animation
    animation.translateY(300).step();
    this.setData({
      paytype: type,
      animationData: animation.export()
    })
    if (e.detail.target.dataset.status == 1) {
      this.setData({
        showModalStatus: true
      });
    }
    setTimeout(function () {
      animation.translateY(0).step()
      this.setData({
        animationData: animation
      })
      if (e.detail.target.dataset.status == 0) {
        this.setData({
          showModalStatus: false
        });
      }
    }.bind(this), 200);
    if (formId != 'the formId is a mock one'){
      var page = 'pages/product/detail'
      app.request.wxRequest({
        url: app.d.ceshiUrl + '&action=product&m=save_formid',
        data: { from_id: formId, userid: app.globalData.userInfo.openid},
        method: 'post',
        success: function (res) {
          console.log(res)
        }
      })
    }

  },
  // 弹窗
  set_share: function (e) {
    var taht = this;
    var show_share = taht.data.show_share;
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
    if (e.currentTarget.dataset.status == 1) {
      taht.setData({
        show_share: true
      });
    }
    setTimeout(function () {
      animation.translateY(0).step()
      taht.setData({
        animationData: animation
      })
      if (e.currentTarget.dataset.status == 0) {
        taht.setData({
          show_share: false
        });
      }
    }.bind(this), 200);
  },
  //点击保存到相册
  baocun: function () {
    var that = this;
    console.log('用户点击保存');
    console.log(that.data.itemData.photo_x);
    wx.getSetting({
      success(res) {
        console.log(res)
        if (!res.authSetting['scope.writePhotosAlbum']) {
          wx.authorize({
            scope: 'scope.writePhotosAlbum',
            success() {
              console.log('授权成功')
            }
          })
        }else{
          console.log('qqqqq')
        }
      }
    })

    wx.downloadFile({
      url: that.data.imagePath,
      success: function (res) {
        var tempFilePath = res.tempFilePath;
        console.log(tempFilePath);
        wx.saveImageToPhotosAlbum({
          filePath: tempFilePath,
          success(res) {
            wx.showModal({
              content: '图片已保存到相册，赶紧晒一下吧~',
              showCancel: false,
              confirmText: '好的',
              confirmColor: '#333',
              success: function (res) {
                if (res.confirm) {
                  console.log('用户点击确定');
                  /* 该隐藏的隐藏 */
                  that.setData({
                    maskHidden: false
                  })
                }
              }, fail: function (res) {
                console.log(11111)
              }
            })
          }
        })

      }
    })

  },

  close_share: function (e) {
    var that = this;
    that.setData({
      maskHidden: false
    })
  }
});
