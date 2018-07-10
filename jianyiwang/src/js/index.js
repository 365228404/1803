require(['config'],function(){
    require(['jquery','http','common'],function($,http,common){
        //请求数据生成商品
         http.post('api/index.php',{}).then(function(data){
            data = window.eval('('+ data +')').data;
            var indexlist = $('.banner_lb2ul')[0];
            // console.log(indexlist)
            var content_13 = $('.content_132')[0];
            var indexlists = data.map(function(item){
                if(item.indexid>=1&&item.indexid<=4){
                    return `<li>
                                <div ><a class="a1" href="html/list.html"><img src="${window.eval('('+ item.img +')')[0]}"></a> <a class="a2">${item.title}</a>
                                  <p><span>￥</span><strong>${item.price*1}</strong></p>
                                </div>
                              </li>`
                }
            }).join('\n')

            var content_13a = data.map(function(item){
                if(item.indexid>=5&&item.indexid<=8){
                    return` <dl>
                          <dt>
                            <a href="html/list.html"><img src="${window.eval('('+ item.img +')')[0]}"></a></dt>
                          <dd>
                            <cite>￥${item.price*1}</cite> <a href="html/list.html"> ${item.title}</a></dd>
                        </dl>`
                }

            }).join('\n')
            indexlist.innerHTML = indexlists;
            content_13.innerHTML = content_13a;


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

        })
        



        //轮播图
        let carousel = document.querySelector('.carousel');
        let ul = carousel.children[0];
        //无缝滚动关键: 复制第一张到最后
        ul.appendChild(ul.children[0].cloneNode(true));

        let len = ul.children.length;

        //计算ul的宽度
        //li的宽度*数量
        ul.style.width = carousel.clientWidth * len + 'px';

        //默认索引值
        let index = 0;

        // 添加左右按钮
        let btnPrev = document.createElement('span');
        btnPrev.classList.add('btnPrev');
        btnPrev.innerHTML = '&lt;';
        let btnNext = document.createElement('span');
        btnNext.classList.add('btnNext');
        btnNext.innerHTML = '&gt;'
        carousel.appendChild(btnPrev);
        carousel.appendChild(btnNext);


        // 添加页码
        let page = document.createElement('div');
        page.className = 'page';

        var content = '';
        // 往.page中添加页面
        for(let i=0;i<len-1;i++){
            content += `<span>${i+1}</span>`
        }
        page.innerHTML = content;
        page.children[index].className = 'active';
        // 把page写入页面
        carousel.appendChild(page);

        //动画效果
        let timer = setInterval(show,2000);

        //鼠标移入移出
        carousel.onmouseover = function(){
            clearInterval(timer);
        }
        carousel.onmouseout = function(){
            timer = setInterval(show,2000);
        }

        //上一张 下一张
        carousel.onclick = function(e){
            if(e.target.className === 'btnPrev'){
                if(index<=0){
                 ul.style.left = carousel.clientWidth * (len-1)*-1+ 'px';
                 index=5
             }else{
                index = index -2;
            }
            show();
                // console.log(index)
            }else if(e.target.className === 'btnNext'){

                show();
            }
        }

        //点击页码 滚到对应的图片
        var span = page.children;
        // console.log(span);
        for(var i=0;i<span.length;i++){
            (function(i){
                span[i].onclick = function(){
                    index=i-1;
                    show();
                }
            })(i)
        }


        function show(){
            index++;

            if(index>=len){
                //无缝滚动关键 : 当滚动完成复制图片时,瞬间重回初始状态
                ul.style.left = 0;
                index = 1;
            }else if(index<0){
                index = len -1;
            }

            let target = -index*carousel.clientWidth;

            common.animate(ul,{left:target});


            //高亮页码
            for(let i=0;i<len-1;i++){
                if(i===index){
                    page.children[i].className = 'active';
                }else{
                    page.children[i].className = '';
                }
            }

            if(index === len-1){
                page.children[0].className = 'active';
            }
        }


        
        let banner_ltb = document.querySelector('.banner_ltb');
        let dlt = banner_ltb.children[0];
        
        dlt.appendChild(dlt.children[0].cloneNode(true));

        let dllen = dlt.children.length;

        dlt.style.width = banner_ltb.clientWidth * dllen + 'px';

        let indid = 0;

        let timers = setInterval(shows,2800);

        //鼠标移入移出
        banner_ltb.onmouseover = function(){
            clearInterval(timers);
        }
        banner_ltb.onmouseout = function(){
            timers = setInterval(shows,2800);
        }


        function shows(){
            indid++;

            if(indid>=dllen){
                dlt.style.left = 0;
                indid = 1;
            }else if(indid<0){
                indid = dllen -1;
            }

            let target = -indid*banner_ltb.clientWidth;

            common.animate(dlt,{left:target});

        }

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
        var tab_p1 = $('.banner_p1')[0].children;
        var tab_a1 = $('.banner_r21')[0].children;
        common.tabgao(tab_p1,tab_a1);

        var tab_p2 = $('.xl-tit')[0].children[0].children;
        var tab_a2 = $('.banner_lb2')[0].children;
        common.tabgao(tab_p2,tab_a2);



        var tab_p3 = $('.content_111')[0].children;
        var tab_a3 = $('.tab_div1')[0].children;
        common.tabgao(tab_p3,tab_a3);

        var tab_p4 = $('.content_112')[0].children;
        var tab_a4 = $('.tab_div2')[0].children;
        common.tabgao(tab_p4,tab_a4);


        var tab_p5 = $('.content_113')[0].children;
        var tab_a5 = $('.tab_div3')[0].children;
        common.tabgao(tab_p5,tab_a5);

    })
})