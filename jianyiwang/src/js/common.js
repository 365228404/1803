define(['jquery'],function($){
    var hz,box,kz,yt_div;
    return{
        //轮播图
        animate:function (ele,opt,callback){
            //使用属性timerLen记录定时器数量
            ele.timerLen = 0;
            for(var attr in opt){
                ele.timerLen ++;
                (function(attr){
                    var timerName = attr + 'Timer';
                    var target = opt[attr];
                    //添加前先清除之前的同名定时器
                    clearInterval(ele[timerName]);
                    ele[timerName] = setInterval(function(){
                        //获取当前值
                        var current = getCss(ele,attr);
                        //提取单位
                        var unit = current.match(/[a-z]*$/)[0];
                        //提取当前值
                        current = parseFloat(current);
                        //计算缓冲速度
                        var speed = (target - current)/10;

                        //针对opacity属性操作
                        if(attr === 'opacity'){
                            speed = speed > 0? 0.05 : -0.05;
                        }else{
                            //避免speed过小或为0
                            speed = speed>0?Math.ceil(speed) : Math.floor(speed);
                        }

                        current = current + speed;
                        //目标值判断
                        if(current === target){
                            clearInterval(ele[timerName]);
                            //重置当前值
                            current = target;

                            ele.timerLen -- ;

                            //动画完成后执行回调函数
                            if(typeof callback === 'function' && ele.timerLen === 0){
                                callback();
                            }

                        }

                        //设置样式
                        ele.style[attr] = current + unit;
                    },30)
                })(attr)
            }


            function getCss(ele,attr){
                var res;
                // 标准
                if(window.getComputedStyle){
                    res = getComputedStyle(ele)[attr];
                }
                //IE8-
                else if(ele.currentStyle){
                    res = ele.currentStyle[attr];
                }
                //其他浏览器
                else{
                    res = ele.style[attr];
                }
                return res;
            }

        }
        ,
        //tab切换
        tabgao:function (LL,ZL){
          LL[0].className = 'tabactive';
            for(var i=0;i<LL.length;i++){
                if(i>0){
                    ZL[i].style.display = 'none';
                }
                LL[i].onmouseover = function(){
                    var idx;
                    for(var i=0;i<LL.length;i++){
                        if(LL[i]===this){
                            idx=i;
                        }
                        LL[i].className = '';
                        ZL[i].style.display = 'none';
                    }
                    
                    this.className = 'tabactive';
                    ZL[idx].style.display = 'block';
                }
            }
        }
        ,
         // 放大镜
        initialize:function(div){
            // div.css('position', 'relative')
            var zb=div.offset()
                yt_div=div
                kz=div
                box=$('<div>')
            var bs=3
                ck=200
                box.css({
                    'width':ck*bs+'px',
                    'height':ck*bs+'px',
                    'position': 'absolute',
                    'border': 'solid 1px #dfdfdf',
                    'z-index': '999',
                    'overflow': 'hidden',
                    'top':zb.top,
                    'left':zb.left+div.width()+10,
                    'display':'none'
                })
            var img=$('<img>')
                img.css({
                    'width':div.width()*bs,
                    'height':div.height()*bs,
                    'position': 'absolute'
                })
                box.append(img)
            var k=$('<div>')
                k.css({
                    'width':div.width()/bs+'px',
                    'height':div.height()/bs+'px',
                    'background': 'url(../img/mask.png) repeat scroll 0 0 transparent',
                    'position': 'absolute',
                    'top':'0',
                    'left':'0',
                    'display':'none'
                })
                hz=k
            // 必须添加到内部才不会触发离开div事件
            // 用计时器防止被其他操作清理掉
            setTimeout(()=>{div.append(k)},500)
            $('body').append(box)
        },
        // 鼠标移动时的触发方法
        mover:function(e){
            var yt_xy=yt_div.offset()
            var x=e.pageX-hz.width()/2
            var y=e.pageY-hz.height()/2
            if(x-yt_xy.left<0){
                x=yt_xy.left
            }
            if(x+hz.width()>yt_xy.left+kz.width()){
                x=yt_xy.left+kz.width()-hz.width()
            }
            if(y-yt_xy.top<0){
                y=yt_xy.top
            }
            if(y+hz.height()>yt_xy.top+kz.height()){
                y=yt_xy.top+kz.height()-hz.width()
            }
                hz.css({
                    'left':x+'px',
                    'top':y+'px'
                })
                yt_xy
                $('img',box).css({
                    'left':(yt_xy.left-x)*2+'px',
                    'top':(yt_xy.top-y)*2+'px'   
                })

            
        },
        // 鼠标移入事件.自动获取内部的img
        into:function(url){
            // console.log($('img',box))
            box.css('display','block')
            hz.css('display','block')
            $('img',box).attr('src',url)
            if(!$('img',box).attr('src')){
                console.log('空',url)
                     
            }
        },
        // 鼠标移出事件
        leave:function(){
            box.css('display','none')
            hz.css('display','none')
        },
        //页码高亮
        yema_l:function (yeye){
            yeye[0].className = 'yemagl';

            for(var i=0;i<yeye.length;i++){
                
                yeye[i].onclick = function(){
                    
                    for(var i=0;i<yeye.length;i++){
                        yeye[i].className = '';
                    }
                    this.className = 'yemagl';
                }
            }
        }


    }

    
})