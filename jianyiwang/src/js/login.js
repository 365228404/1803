//判断是否拥有用户 登录成功就进入网站
require(['config'],function(){
    require(['jquery','http'],function($,http){
        $('#btn_login').click(()=>{
            http.post('api/login.php',{username:$('#username').val(),pwd:$('#pwd').val()}).then(function(data){
                data = window.eval('('+ data +')');
                
                if(data.status==true){
                    location.href='../index.html'
                }else{
                    alert(data.message)
                }

            })
        });
        
    })
})