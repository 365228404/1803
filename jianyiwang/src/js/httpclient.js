//Promise请求方法
define(['jquery'], function($){
    var baseUrl = "http://localhost:98/xiangmu4/src/";
    // var baseUrl = "http://10.3.136.67:98/xiangmu4/src/";
    function filterUrl(_url){
        if(_url.startsWith('http')){
            return _url;
        }  
        return baseUrl + _url;
    }

    return {
        get: function(_url, _data){
            return new Promise(function(resolve, reject){
                $.ajax({
                    url: filterUrl(_url),
                    data: _data || {},
                    success: function(res){
                        resolve(res)
                    },
                    error: function(error){
                        reject(error)
                    }
                })
            })
        },
        post: function(_url, _data){
            return new Promise(function(resolve, reject){
                $.ajax({
                    url: filterUrl(_url),
                    data: _data || {},
                    type: 'post',
                    success: function(res){
                        resolve(res)
                    },
                    error: function(error){
                        reject(error)
                    }
                })
            })
        },
    }
})