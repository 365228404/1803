<?php

    //只要用到 session 的地方就要用开启 session
    session_start();

    include "link.php";

    $username = !isset($_POST["username"]) ? "" : $_POST["username"];
    $pwd = !isset($_POST["pwd"]) ? "" : $_POST["pwd"];

    $sql = "select * from users where username = '$username' and pwd = '$pwd'";

    $result = query_sql($sql);
    if(count($result) >0){
        //用 session 保存了登录信息
        $_SESSION['user'] = $username;
        echo "{status: true}";
    } else{
        echo "{status: false, message: '登陆失败'}";
    }
?>
