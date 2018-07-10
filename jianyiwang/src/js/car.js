require(['config'],function(){
    require(['jquery','http'],function($,http){
            // 购物车请求数据库
            http.post('api/car.php',{fuhao:3,indexid:66}).then(function(data){
                data = window.eval('('+ data +')').data;
            var taa = $('#tablecar')[0].children[0];
            var zjia = 0;
            taa.innerHTML = data.map(function(item){
                zjia+=item.shuliang * item.price;
                return `<tr class="bianse" indexid = "${item.indexid}">
                            <td width="40%" class="td1">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tbody><tr id="tr48502-0">
                            <td style="text-align: left; border: none;">
                            <input type="checkbox" value="48502-0" name="checkGoods" checked="checked" class="checkGoods">
                            <input type="hidden" id="jf48502" value="0">
                            </td>
                            <td style="text-align: left; border: none;">
                            <div class="process-01">
                            <a  href="#">
                            <img src="../${item.img}" style="width: 88px; height: 88px;" >
                            </a>
                            </div>
                            </td>
                            <td style="text-align: left; border: none;" class="process-02">
                            <div >
                            <a >
                            ${item.title}   
                            </a>
                            <a href="#" class="orange" style="font-weight: bold;"> </a>
                            <input type="hidden" id="sku48502-0" value="0">
                            </div>
                            </td>
                            </tr>
                            </tbody></table>
                            </td>
                            <td width="8%" class="td2">${item.indexid}</td>
                            <td width="8%" class="td3">${item.title.slice(0,8)}</td>
                            <td width="10%" class="td4">拜耳医药保健有限公司</td>
                            <td width="8%" class="td5">
                            <span class="shopcart-tuijian-price02" id="jyj48502-0">${item.price}</span>
                            </td>
                            <td width="10%" class="td6">
                            <div class="process-num clearfix">
                            <div class="d1">
                            <a class="shopcart-btn" >-</a>
                            </div>
                            <input type="text" value="${item.shuliang}">
                            <div class="d2">
                            <a class="shopcart1-btn">+</a>
                            </div>
                            </div>
                            </td>
                            <td width="8%" class="td7">
                            <span id="sum48502-0" class="sum">${item.shuliang * item.price}</span>
                            </td>
                            <td class="td8"> &nbsp; <a href="javascript:" class="shanchu">删除</a></td>
                        </tr>`
            }).join('\n');
            
            var zjia1 = $('.zjia')[0]
            
            zjia1.innerHTML = zjia

            $('.psc').click(function(){
                taa.innerHTML = '';
                zjia1.innerHTML = '0';
            })
            
            taa.onclick = function(e){
               var target = e.target || e.srcElement;
               if(target.className == 'shanchu'){
                    var aa = target.parentNode.parentNode;
                    
                    http.post('api/car.php',{}).then(function(res){

                    })
                    // console.log(target.parentNode.previousElementSibling.children[0].innerHTML)
                         
                    aa.parentNode.removeChild(aa);
                    zjia1.innerHTML =zjia1.innerHTML- target.parentNode.previousElementSibling.children[0].innerHTML;

               }else if(target.className == 'shopcart-btn'){
                    var bb = target.parentNode.nextElementSibling;

                    bb1=bb.value
                    if(bb1>1){
                        bb1--


                        bb.value = bb1

                        var cc = bb.parentNode.parentNode.previousElementSibling.children[0];
                        cc1 = cc.innerHTML*1;
                        var dd = bb.parentNode.parentNode.nextElementSibling.children[0]
                        dd1 = dd.innerHTML*1
                        dd.innerHTML =  dd1 - cc1;

                        zjia1.innerHTML =zjia1.innerHTML- cc1;


                    }
                                   
                    // console.log(dd1,cc1)
               }else if(target.className =="shopcart1-btn"){
                    var bb = target.parentNode.previousElementSibling;
                    
                    bb1=bb.value
                         
                        bb1++
                
                    bb.value = bb1


                    bb.value = bb1

                    var cc = bb.parentNode.parentNode.nextElementSibling.children[0];
                    cc1 = cc.innerHTML*1;
                    var dd = bb.parentNode.parentNode.previousElementSibling.children[0]
                    dd1 = dd.innerHTML*1
                    cc.innerHTML =  dd1 +cc1;

                    zjia1.innerHTML =zjia1.innerHTML*1 + cc1;
                    // console.log(zjia1.innerHTML,cc1)
                         
               }

            }

        })
       
        
    })
})