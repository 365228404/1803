//把注册信息写入数据库
require(['config'],function(){
    require(['jquery','http'],function($,http){
        $('.btn-ljzc').click(()=>{
            var minzi = $('#username').val();
            var mima = $('#pwd').val();
            if(minzi ==''|| mima==""){
                alert('请填写正确信息')
            }else {
                http.post('api/reg.php',{username:minzi,pwd:mima}).then(function(data){
                    data = window.eval('('+ data +')');
                    
                    if(data.status==true){
                        location.href='../html/login.html'
                    }else{
                        alert(data.message)
                    }

                })
            }
            
        });
        
    })
})