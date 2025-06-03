<?php

    $host = '192.168.1.21';
    $user = 'sakila_user';
    $pass = 'sakila';
    $dbname = 'sakila';
    
    //Crear conexion
    $conn = new mysqli($host, $user, $pass, $dbname);

    //verificar conexion 
    if($conn->connect_error){
        http_response_code(500);
        echo json_encode(['error' => 'Error de conexion: ' . $conn->connect_error]);
        exit;
    }

    //consulta mysql

    $sql = "SELECT * FROM actor";
    $result= $conn->query($sql);

    $actors = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $actors[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($actors);

    //probar http://localhost/api/getActors.php