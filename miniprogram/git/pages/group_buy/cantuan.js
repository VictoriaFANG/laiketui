
// pages/group/info.js
var app = getApp();
Page({
  data:{
    num:1,
    commodityAttr: [],
    attrValueList: [],
    sum: null, 
    hour: '',
    minute: '',
    miao: '',
    remind: '加载中',
    xefl: true,//点击选择规格显示状态
    bgcolor: '',
    price: '',
    image: '',
    man_num:null //团满人数
  },
  onLoad:function(options){
    var self = this
    self.id = options.id;
    self.groupid = options.groupid;
    self.pro_id = options.pro_id;
    
    self.setData({
      man_num: options.man_num,
      options: options
    })
    
    if (app.globalData.userInfo.openid){
      this.loadProductDetail(options)
      console.log('you id')
    }else{
      console.log('no id')
      app.getUserInfo(self, false);
    }
  },
  onShow: function () {
    var id = this.id;
    var self = this;
  },
  loadProductDetail: function () {
    var self = this, options = this.data.options;
    app.request.wxRequest({
      url: '&action=groupbuy&m=cangroup',
      data: { oid: options.id, groupid: options.groupid, gid: options.pro_id, userid: app.globalData.userInfo.openid },
      method: 'post',
      success: function (res) {
        
        if (res.isplug === '0') {
          wx.showModal({
            title: '温馨提示!',
            content: '拼团功能未开启',
            showCancel: false,
            success: function (res) {
              wx.switchTab({
                url: '../index/index',
              })
            },
          })
          return false;
        }
        if (res.intro) {
          WxParse.wxParse('goodsIntro', 'html', res.intro, self, 5);
        }
        self.goodsInfo = res.groupmsg;
        self.setTimeData(res.groupmsg.leftTime)
        var groupMember = [];
        for (var i = options.man_num - 1; i >= 0; i--) {
          if (res.groupMember[i]) {
            groupMember[i] = res.groupMember[i]
          } else {
            groupMember[i] = {}
          }
        }
        self.setData({
          groupMember, groupMember,
          groupInfo: self.goodsInfo,
          image: self.goodsInfo.img,
          price: self.goodsInfo.p_price,
          yprice: self.goodsInfo.yprice,
          skuBeanList: res.skuBeanList,
          attrList: res.attrList
        })
        
        self.onData();
      }
    });
    self.setData({
       bgcolor: app.d.bgcolor,
    })
    wx.setNavigationBarColor({
      frontColor: app.d.frontColor,//
      backgroundColor: app.d.bgcolor //页面标题为路由参数
    });
  },
  //下拉事件
  onPullDownRefresh: function () {
      wx.hideNavigationBarLoading() //完成停止加载
      wx.stopPullDownRefresh() //停止下拉刷新
  },

  onReady: function () {
    var that = this;
    setTimeout(function () {
      that.setData({
        remind: ''
      });
    }, 1000);
  },
  
  // /* 获取数据 */
  // distachAttrValue: function (commodityAttr) {
  //   /** 
  //     将后台返回的数据组合成类似 
  //     { 
  //       attrKey:'型号', 
  //       attrValueList:['1','2','3'] 
  //     } 
  //   */
  //   // 把数据对象的数据（视图使用），写到局部内  
  //   var attrValueList = this.data.attrValueList;
  //   // 遍历获取的数据  
  //   for (var i = 0; i < commodityAttr.length; i++) {
  //     for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
  //       var attrIndex = this.getAttrIndex(commodityAttr[i].attrValueList[j].attrKey, attrValueList);
  //       // console.log('属性索引', attrIndex);   
  //       // 如果还没有属性索引为-1，此时新增属性并设置属性值数组的第一个值；索引大于等于0，表示已存在的属性名的位置  
  //       if (attrIndex >= 0) {
  //         // 如果属性值数组中没有该值，push新值；否则不处理  
  //         if (!this.isValueExist(commodityAttr[i].attrValueList[j].attrValue, attrValueList[attrIndex].attrValues)) {
  //           attrValueList[attrIndex].attrValues.push(commodityAttr[i].attrValueList[j].attrValue);
  //         }
  //       } else {
  //         attrValueList.push({
  //           attrKey: commodityAttr[i].attrValueList[j].attrKey,
  //           attrValues: [commodityAttr[i].attrValueList[j].attrValue]
  //         });
  //       }
  //     }
  //   }

  //   for (var i = 0; i < attrValueList.length; i++) {
  //     for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
  //       if (attrValueList[i].attrValueStatus) {
  //         attrValueList[i].attrValueStatus[j] = true;
  //       } else {
  //         attrValueList[i].attrValueStatus = [];
  //         attrValueList[i].attrValueStatus[j] = true;
  //       }
  //     }
  //   }
  //   this.setData({
  //     attrValueList: attrValueList
  //   });
  // },
  // getAttrIndex: function (attrName, attrValueList) {
  //   // 判断数组中的attrKey是否有该属性值  
  //   for (var i = 0; i < attrValueList.length; i++) {
  //     if (attrName == attrValueList[i].attrKey) {
  //       break;
  //     }
  //   }
  //   return i < attrValueList.length ? i : -1;
  // },
  // isValueExist: function (value, valueArr) {
  //   // 判断是否已有属性值  
  //   for (var i = 0; i < valueArr.length; i++) {
  //     if (valueArr[i] == value) {
  //       break;
  //     }
  //   }
  //   return i < valueArr.length;
  // },
  // /* 选择属性值事件 */
  // selectAttrValue: function (e) {
  //   /* 
  //   点选属性值，联动判断其他属性值是否可选 
  //   { 
  //     attrKey:'型号', 
  //     attrValueList:['1','2','3'], 
  //     selectedValue:'1', 
  //     attrValueStatus:[true,true,true] 
  //   } 
  //   console.log(e.currentTarget.dataset); 
  //   */
  //   var attrValueList = this.data.attrValueList;
  //   var index = e.currentTarget.dataset.index;//属性索引  
  //   var key = e.currentTarget.dataset.key;
  //   var value = e.currentTarget.dataset.value;
  //   if (e.currentTarget.dataset.status || index == this.data.firstIndex) {
  //     if (e.currentTarget.dataset.selectedvalue == e.currentTarget.dataset.value) {
  //       // 取消选中  
  //       this.disSelectValue(attrValueList, index, key, value);
  //     } else {
  //       // 选中  
  //       this.selectValue(attrValueList, index, key, value);
  //     }

  //   }
  // },
  // /* 选中 */
  // selectValue: function (attrValueList, index, key, value, unselectStatus) {
  //   // console.log('firstIndex', this.data.firstIndex);  
  //   var includeGroup = [];
  //   if (index == this.data.firstIndex && !unselectStatus) { // 如果是第一个选中的属性值，则该属性所有值可选  
  //     var commodityAttr = this.data.commodityAttr;
  //     // 其他选中的属性值全都置空  
  //     // console.log('其他选中的属性值全都置空', index, this.data.firstIndex, !unselectStatus);  
  //     for (var i = 0; i < attrValueList.length; i++) {
  //       for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
  //         attrValueList[i].selectedValue = '';
  //       }
  //     }
  //   } else {
  //     var commodityAttr = this.data.includeGroup;
  //   }

  //   // console.log('选中', commodityAttr, index, key, value);  
  //   for (var i = 0; i < commodityAttr.length; i++) {
  //     for (var j = 0; j < commodityAttr[i].attrValueList.length; j++) {
  //       if (commodityAttr[i].attrValueList[j].attrKey == key && commodityAttr[i].attrValueList[j].attrValue == value) {
  //         includeGroup.push(commodityAttr[i]);
  //       }
  //     }
  //   }
  //   attrValueList[index].selectedValue = value;

  //   // 判断属性是否可选  
  //   for (var i = 0; i < attrValueList.length; i++) {
  //     for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
  //       attrValueList[i].attrValueStatus[j] = false;
  //     }
  //   }
  //   for (var k = 0; k < attrValueList.length; k++) {
  //     for (var i = 0; i < includeGroup.length; i++) {
  //       for (var j = 0; j < includeGroup[i].attrValueList.length; j++) {
  //         if (attrValueList[k].attrKey == includeGroup[i].attrValueList[j].attrKey) {
  //           for (var m = 0; m < attrValueList[k].attrValues.length; m++) {
  //             if (attrValueList[k].attrValues[m] == includeGroup[i].attrValueList[j].attrValue) {
  //               attrValueList[k].attrValueStatus[m] = true;
  //             }
  //           }
  //         }
  //       }
  //     }
  //   }
  //   // console.log('结果', attrValueList);  
  //   this.setData({
  //     attrValueList: attrValueList,
  //     includeGroup: includeGroup
  //   });

  //   var count = 0;
  //   for (var i = 0; i < attrValueList.length; i++) {
  //     for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
  //       if (attrValueList[i].selectedValue) {
  //         count++;
  //         break;
  //       }
  //     }
  //   }
  //   if (count < 2) {// 第一次选中，同属性的值都可选  
  //     this.setData({
  //       firstIndex: index
  //     });
  //   } else {
  //     this.setData({
  //       firstIndex: -1
  //     });
  //   }
  //   this.setimg();
  // },
  // /* 取消选中 */
  // disSelectValue: function (attrValueList, index, key, value) {
  //   var commodityAttr = this.data.commodityAttr;
  //   attrValueList[index].selectedValue = '';

  //   // 判断属性是否可选  
  //   for (var i = 0; i < attrValueList.length; i++) {
  //     for (var j = 0; j < attrValueList[i].attrValues.length; j++) {
  //       attrValueList[i].attrValueStatus[j] = true;
  //     }
  //   }
  //   this.setData({
  //     includeGroup: commodityAttr,
  //     attrValueList: attrValueList
  //   });

  //   for (var i = 0; i < attrValueList.length; i++) {
  //     if (attrValueList[i].selectedValue) {
  //       this.selectValue(attrValueList, i, attrValueList[i].attrKey, attrValueList[i].selectedValue, true);
  //     }
  //   }
  // },

  // setimg: function (e) {
  //   //设置数据 全部选好后替换图片和价格属性
  //   var that = this;
  //   var value = [];
  //   for (var i = 0; i < this.data.attrValueList.length; i++) {
  //     if (!this.data.attrValueList[i].selectedValue) {
  //       break;
  //     }
  //     value.push(that.data.attrValueList[i].selectedValue);
  //   }
  //   if (i < that.data.attrValueList.length) {
  //     console.log('点了')
  //   } else {
  //     //设置显示数据

  //     for (var i = 0; i < that.data.commodityAttr.length; i++) {
  //       var name = that.data.commodityAttr[i].attrValueList[0].attrValue;
  //       var size = that.data.commodityAttr[i].attrValueList[1].attrValue;
  //       var color = that.data.commodityAttr[i].attrValueList[2].attrValue;
  //       if (name == value[0] && size == value[1] && color == value[2]) {
  //         var groupInfo = that.data.groupInfo;
  //         groupInfo.img = that.data.commodityAttr[i].img;
  //         groupInfo.p_price = that.data.commodityAttr[i].price;
  //         groupInfo.p_num = that.data.commodityAttr[i].stock;
  //         var sizeid = that.data.commodityAttr[i].priceId;
  //         that.setData({
  //           groupInfo: groupInfo,
  //           sizeid: sizeid
  //         });
  //       }
  //     }
  //   }
  //   //console.log(that.data.itemData);
  // },

  setTimeData:function(time){
    var self = this;
    var inter = setInterval(function(){
        var t = --time;
        var h =  Math.floor(t/60/60);
        var m = Math.floor((t-h*60*60)/60);
        var s = t%60;
        if(h<10) h = "0"+h;
        if(m<10) m = "0"+m;
        if(s<10) s = "0"+s;
        var timeStr = h+':'+m+':'+s    
      self.setData({
        hour: h,
        minute: m,
        miao: s
      })
    }, 1000)
    if (time <= 0) {
      clearInterval(inter);
      self.setData({
        hour: '00',
        minute: '00',
        miao: '00'
      })
    }
  },
  onShareAppMessage:function(options){
    var self = this;
    var path = '/pages/group_buy/cantuan?id=' + self.id + '&groupid=' + self.groupid + '&man_num=' + this.data.man_num + '&pro_id=' + self.goodsInfo.ptgoods_id;
    console.log(path)
    return {
      title: '【快来拼】' + self.data.price + '元就能拼到 ' +self.goodsInfo.p_name,
        path: path,
        success:function(res){
          console.log(path)
          console.log(res)
        }
      }
  },
  goToHome:function(){
    wx.switchTab({
      url:'/pages/index/index'
    })
  },
  showGoodsDetail:function(e){
    var id = e.currentTarget.dataset.id;
    app.redirect('group_buy/detail', 'gid=' + id + '&sum=' + this.data.groupInfo.sum + '&group_id=' + this.groupid)
  },
  goToBuy:function(){
    var that = this;
    var obj = '';
    var value = [];
    
    if (that.data.num > that.goodsInfo.productnum) {
      wx.showToast({
        title: '抱歉，一次最多只能购买' + that.goodsInfo.productnum + '件产品！',
        icon: 'none',
        duration: 2000
      })
  } else {
    if (that.data.sizeid.length < 1) {
      wx.showToast({
        title: '请完善属性！',
        icon: 'loading',
        duration: 1000
      })
    } else {
      var sizeid = that.data.sizeid;    
      obj += '&pro_name=' + that.goodsInfo.ptgoods_name + '&num=' + that.data.num + '&pro_id=' + that.goodsInfo.ptgoods_id + '&sizeid=' + sizeid + '&groupid=' + that.groupid + '&oid=' + that.id + '&pagefrom=cantuan';
      app.redirect('group_buy/payfor', obj);
    }
  }
  },

  /**
   * Sku核心算法
   * 根据所有出当前类别之外的选择 判断按钮的enable ？ false or true
   */
  onData: function () {

    var attrListIn = this.data.attrList;

    console.log(this.data.attrList, "待扫描 列表清单");
    console.log(this.data.skuBeanList, "待扫描 库存清单");

    for (var i = 0; i < attrListIn.length; i++) {
      var attrListBig = attrListIn[i];

      //当前类别之外的选择列表
      var attrsOtherSelect = [];
      for (var j = 0; j < attrListIn.length; j++) {
        var attrListSmall = attrListIn[j];
        if (attrListSmall.id != attrListBig.id) {
          for (var k = 0; k < attrListSmall.attr.length; k++) {
            var attrListSmallAttr = attrListSmall.attr[k];
            if (attrListSmallAttr.enable && attrListSmallAttr.select) {
              attrsOtherSelect.push(attrListSmallAttr);
            }
          }
        }
      }

      var enableIds = [];

      var skuBeanListIn = this.data.skuBeanList;

      for (var z = 0; z < skuBeanListIn.length; z++) {
        var ism = true;
        var skuBean = skuBeanListIn[z];

        for (var j = 0; j < attrsOtherSelect.length; j++) {
          var enable = false;
          for (var k = 0; k < skuBean.attributes.length; k++) {

            var goodAttrBean = skuBean.attributes[k];
            if (attrsOtherSelect[j].attributeId == goodAttrBean.attributeId
              && attrsOtherSelect[j].id == goodAttrBean.attributeValId) {
              console.log(attrsOtherSelect[j].attributeId, goodAttrBean.attributeId, attrsOtherSelect[j].id, goodAttrBean.attributeValId)
              enable = true;
              break;
            }
          }
          ism = enable && ism;
        }

        if (ism) {
          for (var o = 0; o < skuBean.attributes.length; o++) {
            var goodAttrBean = skuBean.attributes[o];

            if (attrListBig.id == goodAttrBean.attributeId) {
              enableIds.push(goodAttrBean.attributeValId);
            }
          }
        }
      }

      console.log(enableIds, "sku算法 扫描结果");

      var integers = enableIds;
      for (var s = 0; s < attrListBig.attr.length; s++) {
        var attrItem = attrListBig.attr[s];

        attrItem.enable = integers.indexOf(attrItem.id) != -1;

      }
    }

    // 重新赋值
    this.setData({
      attrList: attrListIn,
      skuBeanList: skuBeanListIn
    })
  },

  /**
   * 规格属性点击事件
   */
  onChangeShowState: function (event) {
    var that = this;
    var listItem = this.data.attrList;
    var items = listItem[event.currentTarget.dataset.idx];
    var item = items.attr[event.currentTarget.dataset.index];

    if (!item.enable) {
      return;
    }

    var select = !item.select;

    for (var i = 0; i < items.attr.length; i++) {
      items.attr[i].select = false;
    }

    item.select = select;

    // 获取点击属性列表
    var canGetInfo = [];
    for (var skuIndex = 0; skuIndex < listItem.length; skuIndex++) {
      for (var skuIndexIn = 0; skuIndexIn < listItem[skuIndex].attr.length; skuIndexIn++) {
        if (listItem[skuIndex].attr[skuIndexIn].enable && listItem[skuIndex].attr[skuIndexIn].select) {
          canGetInfo.push(listItem[skuIndex].attr[skuIndexIn]);
        }
      }
    }

    console.log(canGetInfo, "目前点击的属性");

    var canGetInfoLog = "";

    var skuBeanList = this.data.skuBeanList;

    var haveSkuBean = [];
    // 对应库存清单扫描
    for (var skuBeanIndex = 0; skuBeanIndex < skuBeanList.length; skuBeanIndex++) {
      var iListCount = 0;
      for (var skuBeanIndexIn = 0; skuBeanIndexIn < skuBeanList[skuBeanIndex].attributes.length; skuBeanIndexIn++) {
        if (canGetInfo.length == skuBeanList[skuBeanIndex].attributes.length) {
          if (skuBeanList[skuBeanIndex].attributes[skuBeanIndexIn].attributeValId == canGetInfo[skuBeanIndexIn].id) {
            iListCount++;
          }
        } else {
          canGetInfoLog = "库存清单不存在此属性" + " ";

        }
      }
      if (iListCount == skuBeanList[skuBeanIndex].attributes.length) {
        haveSkuBean.push(skuBeanList[skuBeanIndex]);
      }
    }

    console.log(haveSkuBean, "存在于库存清单");

    for (var iox = 0; iox < canGetInfo.length; iox++) {
      canGetInfoLog += canGetInfo[iox].attributeValue + " ";
    }

    if (haveSkuBean.length != 0) {
      console.log(canGetInfoLog)
      // canGetInfoLog += "价钱:" + haveSkuBean[0].price + " 库存量:" + haveSkuBean[0].count + " cid:" + haveSkuBean[0].cid;

      var groupInfo = that.data.groupInfo;
      groupInfo.img = haveSkuBean[0].imgurl;
      groupInfo.p_price = haveSkuBean[0].price;
      groupInfo.p_num = haveSkuBean[0].count;
      var sizeid = haveSkuBean[0].cid;
      console.log(sizeid)
      that.setData({
        groupInfo: groupInfo,
        sizeid: sizeid,
        value: canGetInfoLog
      });
    } else {
      console.log('没选完')
      that.setData({
        sizeid: '',
        value: ''
      });
    }

    // 重新赋值
    this.setData({
      attrList: listItem,
      infoText: canGetInfoLog,
    })

    // 重新sku运算
    this.onData();
  },
  minus:function(){
    var num = this.data.num > 1 ? --this.data.num : 1
    this.setData({
      num : num
    })
  },
  plus:function(){
    var num = ++this.data.num
    this.setData({
      num : num
    })
  },
  getUserformid: function (e) {
    var formid = e.detail.formId;
    this.sendFormid(formid)
    this.setModalStatus(e);
  },
  getformidToo: function (e) {
    var formid = e.detail.formId;
    this.sendFormid(formid)
    this.goToBuy()
  },
  sendFormid: function (fromid, page) {
    app.request.wxRequest({
      url: '&action=groupbuy&m=getFormid',
      data: { from_id: fromid, userid: app.globalData.userInfo.openid },
      method: 'post',
      success: function () {

      }
    })
  },
  // 弹窗
  setModalStatus: function (e) {
    var animation = wx.createAnimation({
      duration: 200,
      timingFunction: "linear",
      delay: 0
    });
    //定义点击的类型
    this.animation = animation
    animation.translateY(300).step();
    this.setData({
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
        if (app.globalData.code){
          app.globalData.code = res.code
        }

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
        that.onLoad(that.data.options);
      }
    })
  },

  toproDetail: function () {
    var self = this
    wx.navigateTo({
      url: "../group_buy/detail?gid=" + self.pro_id + "&sum=" + self.goodsInfo.sum + "&group_id=" + self.groupid
    })
  },
  goIndex: function () {
    wx.switchTab({
      url: "../index/index"
    })
  }
})