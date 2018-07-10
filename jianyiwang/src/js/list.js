require(['config'],function(){
    require(['jquery','http','common'],function($,http,common){
        //请求数据生成商品列表
        var list = $('#listgoods')[0];
        var _num=28
        http.post('api/list.php',{
            shuye:0,
            num:_num
        }).then(function(data){
            data = window.eval('('+ data +')');
            var data1 = data.data.data1;
            // console.log(data1)
            goodslist_(data1)
            var data2 = data.data.data2;
            // console.log(data2);
            
            // console.log(list);
            data2 = data2[0]
            for(var key in data2){
                var ylj = data2[key]
            }

            var ylj1 = Math.ceil(ylj/30);
            // console.log(ylj1);

            var fenye = $('.fenye')[0];
            // console.log(fenye)
            var fenye1 = '';

            //根据数据条数生成页码
            for(var i=1;i<=ylj1;i++){
                fenye1+=`<span><a href="javascript:">${i}</a></span>`
            }
            fenye.innerHTML = fenye1;

            //页码高亮
            var fenyema = fenye.children;
            common.yema_l(fenyema);
            

            //分页请求数据
            fenye.onclick = function(e){
                var target = e.target || e.srcElement;
                if(target.tagName === 'A'){
                    
                    var shuye = (target.innerHTML-1)*_num;
                    // console.log(shuye);
                    http.post('api/list.php',{
                        shuye:shuye,
                        num:_num
                    }).then(function(data){
                        data = window.eval('('+ data +')');
                        // console.log(data)
                        var data1 = data.data.data1;
                        goodslist_(data1)
                        

                    })

                }
            }

            //分页生成方法
            function goodslist_(data){
                // console.log(list.innerHTML='ccc')
                list.innerHTML =data.map(item=>{                    
                    return `<a href="goods.html?indexid=${item.indexid}&img=${window.eval('('+ item.img +')')[0]}&title=${item.title}&price=${item.price}">
                    <li data-guid="${item.indexid}">
                    <img src="../${window.eval('('+ item.img +')')[0]}"  />
                    <div>${item.title}</div>
                    <p>￥<span>${item.price*1}</span></p>
                    </li>
                    </a>`
                    

                }).join('\n') 

        }

        //吸顶and动画返回顶部
        var start = $('#start')[0];
        var nav = $('#nav')[0];
        var liang = $('#liang')[0];
        window.onscroll = function(){

            var scrollY = window.scrollY;
            if(scrollY>=121){
                nav.className = 'activexiding';
                start.className = 'marginhui';
                nav.style.zIndex = 1111;
            }else{
                nav.className = '';
                start.className = '';
            }


            var Y = window.scrollY;
            if(Y>1000){
                liang.style.display = 'block';
            }else{
                liang.style.display = 'none';
            }

        }

        liang.onclick = function(){

            var timer = setInterval(function(){
                var YY = window.scrollY;
                var AA = Math.ceil(YY*0.4);
                scrollBy(0, -AA);
                if(YY<=0 ){
                    clearInterval(timer);
                }

            },30)
        }


        //轮播图
        let hot_cc = document.querySelector('.hot_cc');
        let hd = hot_cc.children[0];
        
        hd.appendChild(hd.children[0].cloneNode(true));

        let hdlen = hd.children.length;

        hd.style.width = hot_cc.clientWidth * hdlen + 'px';

        let hid = 0;

        let htimer = setInterval(showss,3000);

        //鼠标移入移出
        hot_cc.onmouseover = function(){
            clearInterval(htimer);
        }
        hot_cc.onmouseout = function(){
            htimer = setInterval(showss,3000);
        }


        function showss(){
            hid++;

            if(hid>=hdlen){
                hd.style.left = 0;
                hid = 1;
            }else if(hid<0){
                hid = hdlen -1;
            }

            let target = -hid*hot_cc.clientWidth;

            // console.log(target)
                 
            common.animate(hd,{left:target});

        }
            // console.log(666)

        })
})
})
