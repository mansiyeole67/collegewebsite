<?php
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $rfid = $_POST['rfid'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    //Database Connection
    $conn = new mysqli('localhost','root','','teacher');
    if($conn->connect_error){
        die('Connection Failed :'.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("insert into registrationt(firstname, lastname, rfid, username, password) values(?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss",$firstname,$lastname,$rfid,$username,$password);
        $stmt->execute();
        echo "successfully registered...";
	
        echo <<<HTML
	<a href="loginTeacher.html">login</a>
	HTML;
        $stmt->close();
        $conn->close();
    }
?>