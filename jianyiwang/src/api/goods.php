<?php
    //引用 php 文件
    include 'link.php';
    
    $indexid = !isset($_POST["indexid"]) ? "" : $_POST["indexid"];
    $title = !isset($_POST["title"]) ? "" : $_POST["title"];
    $img = !isset($_POST["img"]) ? "" : $_POST["img"];
    $price = !isset($_POST["price"]) ? "" : $_POST["price"];
    $shuliang = !isset($_POST["shuliang"]) ? "" : $_POST["shuliang"];

   
    //判断当前注册的用户是否存在，如果存在则不能再次注册
    $sql = "select * from gwc where indexid = '$indexid'";
    $result = query_sql($sql);
    if(count($result) > 0){
        // $shuliang = $shuliang + $shuliang;
        $sql = "update `gwc` set shuliang = shuliang+1 where indexid = '$indexid'";
        $result = exec_sql($sql);
        echo "{status:'已经加一'}";
        
    } else{
        $sql = "insert into gwc(indexid,title,img,price,shuliang) values('$indexid','$title','$img','$price','$shuliang')";
        $result = exec_sql($sql); 
        if($result){
            echo "{status: true}";
        } else{
            echo "{status: false, message: '注册失败'}";
        }
    }
?>