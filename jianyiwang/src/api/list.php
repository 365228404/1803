<?php
    
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST, GET');
    header('Accees-Control-Request-Headers: accpet,content-type');


    include "link.php";
    $s = !isset($_POST["shuye"]) ? "0" : $_POST["shuye"];
    $num = !isset($_POST["num"]) ? "999" : $_POST["num"];

    $sql = "select * from xiangmu limit $s,$num;select count(*) from xiangmu;";

    $result = multi_query_oop($sql);
    
    $lists = json_encode($result);

   

    echo "{status: true, data:$lists}";

    
?>