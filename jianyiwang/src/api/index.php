<?php

    include "link.php";

    $sql = "select * from xiangmu";

    $result = query_sql($sql);

    $lists = json_encode($result);

    echo "{status: true, data:$lists}";
?>