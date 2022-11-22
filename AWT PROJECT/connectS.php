<?php
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $username = $_POST['username'];
    $password = $_POST['password'];

    //Database Connection
    $conn = new mysqli('localhost','root','','student');
    if($conn->connect_error){
        die('Connection Failed :'.$conn->connect_error);
    }
    else{
        $stmt = $conn->prepare("insert into registrations(firstname, lastname, username, password) values(?, ?, ?, ?)");
        $stmt->bind_param("ssss",$firstname,$lastname,$username,$password);
        $stmt->execute();
        echo "successfully registered...";
        echo <<<HTML
	<a href="loginStudent.html">login</a>
	HTML;
        $stmt->close();
        $conn->close();
    }
?>