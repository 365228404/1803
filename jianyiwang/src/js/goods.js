require(['config'],function(){
    require(['jquery','http','common'],function($,http,common){
        //接受数据改变内容
        var canshu = decodeURI(location.search);
        canshu = canshu.slice(1).split('&');
        // console.log(canshu);
        var obj = {};
        canshu.forEach(function(item){
            var arr = item.split('=');
            obj[arr[0]] = arr[1];
        })
        // console.log(obj)
        if(obj.indexid){
            $('#aimg').html('<img src="../'+obj.img+'" alt="" class="bimg"/>');
            $('.pro_rth').html(obj.title)
            $('#jiage').html(obj.price)
        }
        //简单计算
        var jiashu = $('.a1jia')[0];
        var jianshu = $('.a2jian')[0];
        var jiain = $('.slinput')[0];
        var jiage = $('#jiage')[0];
        var mai = $('.a3mai')[0];
        jiashu.onclick=function(){
            jiain.value++;
            jiage.innerHTML = obj.price*jiain.value;
        }
        jianshu.onclick=function(){
            if(jiain.value>1){
                jiain.value--;
                jiage.innerHTML = obj.price*jiain.value;
            }
            
        }

        
        //请求改变数据库商品数量and飞入购物车效果
        $('.a3mai').click(()=>{
    
            http.post('api/goods.php',{indexid:obj.indexid,title:obj.title,img:obj.img,price:obj.price,shuliang:jiain.value}).then(function(data){
                data = window.eval('('+ data +')');
            })

            //动画添加购物车效果
            var flgwc = $('#aimg')[0];
            var ll = flgwc.appendChild(flgwc.children[0].cloneNode(true))
            $(ll).attr('class','fda')

            ll.style.position = 'absolute';
            ll.style.left = '1px';
            ll.style.top = '1px';
            ll.style.zIndex = '1200';
            
            var X = ll.offsetLeft;
            var Y = ll.offsetTop;
            var W = ll.width;
            var H = ll.height;
            // console.log(W,H)
                 
            var timer = setInterval(function(){
                     
                X+=80;
                Y-=14;
                W-=15;
                H-=15;
                ll.style.left = X+'px';
                ll.style.top = Y +'px';
                ll.style.width = W+'px';
                ll.style.height = H +'px';

                if(X>=950){
                    clearInterval(timer)
                    flgwc.removeChild(ll)
                }

            },30)

            var jiajia = $('.start_bottom423')[0].children[0].innerHTML++;
            // console.log(jiajia)
                 
        });

        
        
        common.yema_l($('.pro_x1')[0].children[0].children)

        function yema_b(yeye){
            yeye[0].className = 'yeyeye';

            for(var i=0;i<yeye.length;i++){
                
                yeye[i].onclick = function(){
                    
                    for(var i=0;i<yeye.length;i++){
                        yeye[i].className = '';
                    }
                    this.className = 'yeyeye';
                }
            }
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

        //放大镜
        common.initialize($('#aimg'))
        // 鼠标进入
        $('#aimg').mouseenter(function(e) {
            e=e.target
            if(!e.src){
                // 鼠标在父对象边框进入的情况
                // src将获取不到
                e=$('img',e)[0] 
            }
                common.into(e.src)
        });
        // 鼠标离开
        $('#aimg').mouseleave(function(e) {
            common.leave()
        });
        // 鼠标移动
        $('#aimg').mousemove(function(e) {
            common.mover(e)
        });


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
        //tab切换
        var tab_p6 = $('.list_t')[0].children[0].children;
        var tab_a6 = $('.list_b')[0].children;
        common.tabgao(tab_p6,tab_a6);


    })
})