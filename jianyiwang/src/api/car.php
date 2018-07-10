<?php

    include "link.php";

    $sql = "select * from gwc";

    $result = query_sql($sql);

    $lists = json_encode($result);

    echo "{status: true, data:$lists}";
    
?>