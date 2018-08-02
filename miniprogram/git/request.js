var request = new Object();

request.wxRequest = function(obj){
  
  wx.request({
    url: obj.url,
    data:obj.data,
    method:obj.method,
    header:{"Content-Type": "application/x-www-form-urlencoded"},
    success:function(res){
        typeof(obj.success)=='function' && obj.success(res.data);    
    }
  })

}
module.exports = request