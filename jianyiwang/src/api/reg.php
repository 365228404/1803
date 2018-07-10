<?php
    //引用 php 文件
    include 'link.php';

    $username = !isset($_POST["username"]) ? "" : $_POST["username"];
    $pwd = !isset($_POST["pwd"]) ? "" : $_POST["pwd"];
    $sql = "select * from users where username = '$username'";
    $result = query_sql($sql);
    if(count($result) > 0){
        echo "{status: false, message: '用户名已注册'}";
    } else{
        $sql = "insert into users(username,pwd) values('$username','$pwd')";
        $result = exec_sql($sql); 
        if($result){
            echo "{status: true}";
        } else{
            echo "{status: false, message: '注册失败'}";
        }
    }


?>