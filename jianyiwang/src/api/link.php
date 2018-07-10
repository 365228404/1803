<?php
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST, GET');
    header('Accees-Control-Request-Headers: accpet,content-type');

    function conn(){
        $servername = 'localhost:3398'; // 数据库的主机
        $serverAccount = 'root'; // 登录数据库的用户名
        $serverPwd = 'root'; // 登录数据库的密码
        $database = 'denglu'; // 要连接的数据库

        $conn = new mysqli($servername, $serverAccount, $serverPwd, $database);
        mysqli_query($conn,'set names utf8');
         //判断是否连接出错
         if($conn->connect_error){
            echo('连接数据库错误');
            return null;
         }
         return $conn;
    }

    //执行逻辑操作
    function exec_sql($sql){
        $conn = conn();
        //insert
        //不需要释放内存(insert into, update, delete)
        $result = $conn->query($sql);
        $conn->close();
        return $result;
    }

    //执行查询操作
    function query_sql($sql){
        $conn=conn();
        $result = $conn->query($sql);

        //定义一个新数组
        $dataset = array();

        while($row = $result->fetch_assoc()){
            $dataset[] = $row;
        }

        $result->free();
        $conn->close();
        return $dataset;
    }

    // $sql = "select * from xiangmu";

    // $result = query_sql($sql);

    // $lists = json_encode($result);

    // echo "{status: true, data:$lists}";
    
    function connect_oop(){
        // 配置参数
        $servername = 'localhost:3398';
        $username = 'root';
        $password = 'root';
        $database = 'denglu';

        //连接数据库
        $conn = new mysqli($servername,$username,$password,$database);

        // 检测连接
        if($conn->connect_error){
            die('连接失败'.$conn->connect_error);
        }

        $conn->set_charset('utf8');
        return $conn;
    }

    //单独执行一条 sql 语句
    function query_oop($sql){
        $jsonData = array();
        $conn = connect_oop();
        $result = $conn->query($sql);
        while ($row = $result->fetch_assoc()){
            $jsonData[] = $row;
        };
        $result->free();//释放内存
        $conn->close();//关闭连接
        return $jsonData;
    }

    function excute_oop($sql){
        $conn = connect_oop();
        $result = $conn->query($sql);
        $conn->close();//关闭连接
        return $result;
    }

    //执行多条 sql 语句
    function multi_query_oop($sql){
        $jsonData = [];
        $conn = connect_oop();
        $flag = 0;
        if ($conn->multi_query($sql)) {
            do {
                $rows = array();
                if ($result = $conn->store_result()) {
                    while ($row = $result->fetch_assoc()) {
                        $rows[] = $row;
                    }
                    $result->free();
                }
                $flag++;
                $data = ["data".$flag=>$rows];
                $jsonData = array_merge($jsonData, $data);
                
            } while ($conn->more_results() && $conn->next_result());
        }

        $conn->close();//关闭连接
        return $jsonData;
    }

    //初始化连接对象方法
    function connect(){
        $servername = "localhost:3398";//
        $username = "root";
        $password = "root";
        $dbname = 'denglu'; 
        //初始化连接，返回一个连接对象(包含所连接数据库的信息)
        $con = mysqli_connect($servername,$username,$password,$dbname); 

        //获取连接对象的错误信息
        if (mysqli_connect_error($con)) 
        { 
            echo "连接 MySQL 失败: " . mysqli_connect_error();
            return null;
        }
        return $con;
    }
    
    //执行查询数据方法
    function query($sql){
        //初始化连接
        $conn = connect();
        //执行 sql 脚本，也叫数据库脚本，返回一个结果集（对象）
        $result = mysqli_query($conn, $sql);
        //定义了一个数组
        $jsonData = array();           
        if ($result)
        {
            
            //在结果集中获取对象(逐行获取)
            while ($obj = mysqli_fetch_object($result))
            {
                //$jsonData.push($obj)
                $jsonData[] = $obj;
                // print_r($obj->email);
            }   
            //将对象转换成 json 格式的字符并打印出来
            //JSON.stringify()            
            // if(!$isCheck){
                // echo json_encode($jsonData, JSON_UNESCAPED_UNICODE);
            // }
            // 释放结果集
            mysqli_free_result($result);
        } 
        //关闭连接
        mysqli_close($conn);   
        return $jsonData;
    }

    //执行逻辑语句
    function excute($sql){
        //初始化连接
        $conn = connect();
        //执行 sql 脚本，也叫数据库脚本，返回一个结果集（对象）
        //返回一个布尔值，true|false，不用释放
        $result = mysqli_query($conn,$sql);
        //关闭连接
        mysqli_close($conn);
        return $result;
    }


?>